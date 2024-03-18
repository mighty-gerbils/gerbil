(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gerbil/core/expander~SyntaxSugar[1]#_g8320_|
    (##structure
     gx#syntax-quote::t
     'values
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gerbil/core/expander~SyntaxSugar[:0:]#syntax-rules|
      (lambda (_stx6685_)
        (let* ((_g66886712_
                (lambda (_g66896708_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g66896708_)))
               (_g66877018_
                (lambda (_g66896716_)
                  (if (gx#stx-pair? _g66896716_)
                      (let ((_e66946719_ (gx#syntax-e _g66896716_)))
                        (let ((_hd66936723_
                               (let ()
                                 (declare (not safe))
                                 (##car _e66946719_)))
                              (_tl66926726_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e66946719_))))
                          (if (gx#stx-pair? _tl66926726_)
                              (let ((_e66976729_ (gx#syntax-e _tl66926726_)))
                                (let ((_hd66966733_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e66976729_)))
                                      (_tl66956736_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e66976729_))))
                                  (if (gx#stx-pair/null? _tl66956736_)
                                      (let ((_g8240_ (gx#syntax-split-splice
                                                      _tl66956736_
                                                      '0)))
                                        (begin
                                          (let ((_g8241_ (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g8240_)
                                                               (##vector-length
                                                                _g8240_)
                                                               1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g8241_ 2)))
                                                (error "Context expects 2 values"
                                                       _g8241_)))
                                          (let ((_target66986739_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g8240_ 0)))
                                                (_tl67006742_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g8240_ 1))))
                                            (if (gx#stx-null? _tl67006742_)
                                                (letrec ((_loop67016745_
                                                          (lambda (_hd66996749_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clauses67056752_)
                    (if (gx#stx-pair? _hd66996749_)
                        (let ((_e67026755_ (gx#syntax-e _hd66996749_)))
                          (let ((_lp-hd67036759_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e67026755_)))
                                (_lp-tl67046762_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e67026755_))))
                            (_loop67016745_
                             _lp-tl67046762_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd67036759_ _clauses67056752_)))))
                        (let ((_clauses67066765_ (reverse _clauses67056752_)))
                          ((lambda (_L6769_ _L6771_)
                             (if (gx#identifier-list? _L6771_)
                                 (let* ((_body6935_
                                         (gx#stx-map
                                          (lambda (_clause6792_)
                                            (let* ((___stx79777978_
                                                    _clause6792_)
                                                   (_g67966823_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx79777978_))))
                                              (let ((___kont79807981_
                                                     (lambda (_L6908_ _L6910_)
                                                       (let ((__tmp8242
                                                              (let ((__tmp8243
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp8245 (gx#datum->syntax '#f 'syntax))
                                   (__tmp8244
                                    (let ()
                                      (declare (not safe))
                                      (cons _L6908_ '()))))
                               (declare (not safe))
                               (cons __tmp8245 __tmp8244))))
                        (declare (not safe))
                        (cons __tmp8243 '()))))
                 (declare (not safe))
                 (cons _L6910_ __tmp8242))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont79827983_
                                                     (lambda (_L6860_
                                                              _L6862_
                                                              _L6863_)
                                                       (let ((__tmp8246
                                                              (let ((__tmp8247
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp8248
                                    (let ((__tmp8250
                                           (gx#datum->syntax '#f 'syntax))
                                          (__tmp8249
                                           (let ()
                                             (declare (not safe))
                                             (cons _L6860_ '()))))
                                      (declare (not safe))
                                      (cons __tmp8250 __tmp8249))))
                               (declare (not safe))
                               (cons __tmp8248 '()))))
                        (declare (not safe))
                        (cons _L6862_ __tmp8247))))
                 (declare (not safe))
                 (cons _L6863_ __tmp8246)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx79777978_)
                                                    (let ((_e68026888_
                                                           (gx#syntax-e
                                                            ___stx79777978_)))
                                                      (let ((_tl68006895_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e68026888_)))
                    (_hd68016892_
                     (let () (declare (not safe)) (##car _e68026888_))))
                (if (gx#stx-pair? _tl68006895_)
                    (let ((_e68056898_ (gx#syntax-e _tl68006895_)))
                      (let ((_tl68036905_
                             (let () (declare (not safe)) (##cdr _e68056898_)))
                            (_hd68046902_
                             (let ()
                               (declare (not safe))
                               (##car _e68056898_))))
                        (if (gx#stx-null? _tl68036905_)
                            (___kont79807981_ _hd68046902_ _hd68016892_)
                            (if (gx#stx-pair? _tl68036905_)
                                (let ((_e68176850_ (gx#syntax-e _tl68036905_)))
                                  (let ((_tl68156857_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e68176850_)))
                                        (_hd68166854_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e68176850_))))
                                    (if (gx#stx-null? _tl68156857_)
                                        (___kont79827983_
                                         _hd68166854_
                                         _hd68046902_
                                         _hd68016892_)
                                        (let ()
                                          (declare (not safe))
                                          (_g67966823_)))))
                                (let () (declare (not safe)) (_g67966823_))))))
                    (let () (declare (not safe)) (_g67966823_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g67966823_))))))
                                          (let ((__tmp8251
                                                 (lambda (_g69266929_
                                                          _g69276932_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g69266929_
                                                           _g69276932_)))))
                                            (declare (not safe))
                                            (foldr1 __tmp8251 '() _L6769_))))
                                        (_g69386955_
                                         (lambda (_g69396951_)
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _g69396951_)))
                                        (_g69377014_
                                         (lambda (_g69396959_)
                                           (if (gx#stx-pair/null? _g69396959_)
                                               (let ((_g8252_ (gx#syntax-split-splice
                                                               _g69396959_
                                                               '0)))
                                                 (begin
                                                   (let ((_g8253_ (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (if (##values? _g8252_)
                                (##vector-length _g8252_)
                                1))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (not (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##fx= _g8253_ 2)))
                 (error "Context expects 2 values" _g8253_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_target69416962_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g8252_
                                                             0)))
                                                         (_tl69436965_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##vector-ref
                                                             _g8252_
                                                             1))))
                                                     (if (gx#stx-null?
                                                          _tl69436965_)
                                                         (letrec ((_loop69446968_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_hd69426972_ _clause69486975_)
                             (if (gx#stx-pair? _hd69426972_)
                                 (let ((_e69456978_
                                        (gx#syntax-e _hd69426972_)))
                                   (let ((_lp-hd69466982_
                                          (let ()
                                            (declare (not safe))
                                            (##car _e69456978_)))
                                         (_lp-tl69476985_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _e69456978_))))
                                     (_loop69446968_
                                      _lp-tl69476985_
                                      (let ()
                                        (declare (not safe))
                                        (cons _lp-hd69466982_
                                              _clause69486975_)))))
                                 (let ((_clause69496988_
                                        (reverse _clause69486975_)))
                                   ((lambda (_L6992_)
                                      (let ((__tmp8265
                                             (gx#datum->syntax '#f 'lambda%))
                                            (__tmp8254
                                             (let ((__tmp8263
                                                    (let ((__tmp8264
                                                           (gx#datum->syntax
                                                            '#f
                                                            '$stx)))
                                                      (declare (not safe))
                                                      (cons __tmp8264 '())))
                                                   (__tmp8255
                                                    (let ((__tmp8256
                                                           (let ((__tmp8262
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'syntax-case))
                         (__tmp8257
                          (let ((__tmp8261 (gx#datum->syntax '#f '$stx))
                                (__tmp8258
                                 (let ((__tmp8259
                                        (let ((__tmp8260
                                               (lambda (_g70057008_
                                                        _g70067011_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g70057008_
                                                         _g70067011_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp8260 '() _L6992_))))
                                   (declare (not safe))
                                   (cons _L6771_ __tmp8259))))
                            (declare (not safe))
                            (cons __tmp8261 __tmp8258))))
                     (declare (not safe))
                     (cons __tmp8262 __tmp8257))))
              (declare (not safe))
              (cons __tmp8256 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp8263 __tmp8255))))
                                        (declare (not safe))
                                        (cons __tmp8265 __tmp8254)))
                                    _clause69496988_))))))
                   (_loop69446968_ _target69416962_ '()))
                 (_g69386955_ _g69396959_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g69386955_ _g69396959_)))))
                                   (_g69377014_ _body6935_))
                                 (_g66886712_ _g66896716_)))
                           _clauses67066765_
                           _hd66966733_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop67016745_
                                                   _target66986739_
                                                   '()))
                                                (_g66886712_ _g66896716_)))))
                                      (_g66886712_ _g66896716_))))
                              (_g66886712_ _g66896716_))))
                      (_g66886712_ _g66896716_)))))
          (_g66877018_ _stx6685_))))
    (define |gerbil/core/expander~SyntaxSugar[:0:]#with-syntax|
      (lambda (_stx7024_)
        (let* ((___stx80218022_ _stx7024_)
               (_g70297114_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx80218022_))))
          (let ((___kont80248025_
                 (lambda (_L7454_)
                   (let ((__tmp8269 (gx#datum->syntax '#f 'let-values))
                         (__tmp8266
                          (let ((__tmp8267
                                 (let ((__tmp8268
                                        (lambda (_g74707473_ _g74717476_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g74707473_ _g74717476_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp8268 '() _L7454_))))
                            (declare (not safe))
                            (cons '() __tmp8267))))
                     (declare (not safe))
                     (cons __tmp8269 __tmp8266))))
                (___kont80288029_
                 (lambda (_L7362_ _L7364_ _L7365_)
                   (let ((__tmp8280 (gx#datum->syntax '#f 'syntax-case))
                         (__tmp8270
                          (let ((__tmp8271
                                 (let ((__tmp8272
                                        (let ((__tmp8273
                                               (let ((__tmp8274
                                                      (let ((__tmp8275
                                                             (let ((__tmp8279
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'let-values))
                           (__tmp8276
                            (let ((__tmp8277
                                   (let ((__tmp8278
                                          (lambda (_g73887391_ _g73897394_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g73887391_
                                                    _g73897394_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp8278 '() _L7362_))))
                              (declare (not safe))
                              (cons '() __tmp8277))))
                       (declare (not safe))
                       (cons __tmp8279 __tmp8276))))
                (declare (not safe))
                (cons __tmp8275 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L7365_ __tmp8274))))
                                          (declare (not safe))
                                          (cons __tmp8273 '()))))
                                   (declare (not safe))
                                   (cons '() __tmp8272))))
                            (declare (not safe))
                            (cons _L7364_ __tmp8271))))
                     (declare (not safe))
                     (cons __tmp8280 __tmp8270))))
                (___kont80328033_
                 (lambda (_L7225_ _L7227_ _L7228_)
                   (let ((__tmp8297 (gx#datum->syntax '#f 'syntax-case))
                         (__tmp8281
                          (let ((__tmp8293
                                 (let ((__tmp8296 (gx#datum->syntax '#f 'list))
                                       (__tmp8294
                                        (let ((__tmp8295
                                               (lambda (_g72547257_
                                                        _g72557260_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (cons _g72547257_
                                                         _g72557260_)))))
                                          (declare (not safe))
                                          (foldr1 __tmp8295 '() _L7227_))))
                                   (declare (not safe))
                                   (cons __tmp8296 __tmp8294)))
                                (__tmp8282
                                 (let ((__tmp8283
                                        (let ((__tmp8284
                                               (let ((__tmp8291
                                                      (let ((__tmp8292
                                                             (lambda (_g72527263_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g72537266_)
                       (let ()
                         (declare (not safe))
                         (cons _g72527263_ _g72537266_)))))
                (declare (not safe))
                (foldr1 __tmp8292 '() _L7228_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__tmp8285
                                                      (let ((__tmp8286
                                                             (let ((__tmp8290
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#datum->syntax '#f 'let-values))
                           (__tmp8287
                            (let ((__tmp8288
                                   (let ((__tmp8289
                                          (lambda (_g72507269_ _g72517272_)
                                            (let ()
                                              (declare (not safe))
                                              (cons _g72507269_
                                                    _g72517272_)))))
                                     (declare (not safe))
                                     (foldr1 __tmp8289 '() _L7225_))))
                              (declare (not safe))
                              (cons '() __tmp8288))))
                       (declare (not safe))
                       (cons __tmp8290 __tmp8287))))
                (declare (not safe))
                (cons __tmp8286 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp8291 __tmp8285))))
                                          (declare (not safe))
                                          (cons __tmp8284 '()))))
                                   (declare (not safe))
                                   (cons '() __tmp8283))))
                            (declare (not safe))
                            (cons __tmp8293 __tmp8282))))
                     (declare (not safe))
                     (cons __tmp8297 __tmp8281)))))
            (let* ((___match81228123_
                    (lambda (_e70797121_
                             _hd70787125_
                             _tl70777128_
                             _e70827131_
                             _hd70817135_
                             _tl70807138_
                             ___splice80348035_
                             _target70837141_
                             _tl70857144_)
                      (letrec ((_loop70867147_
                                (lambda (_hd70847151_
                                         _e70907154_
                                         _pat70917156_)
                                  (if (gx#stx-pair? _hd70847151_)
                                      (let ((_e70877159_
                                             (gx#syntax-e _hd70847151_)))
                                        (let ((_lp-tl70897166_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e70877159_)))
                                              (_lp-hd70887163_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e70877159_))))
                                          (if (gx#stx-pair? _lp-hd70887163_)
                                              (let ((_e70967169_
                                                     (gx#syntax-e
                                                      _lp-hd70887163_)))
                                                (let ((_tl70947176_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e70967169_)))
                                                      (_hd70957173_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e70967169_))))
                                                  (if (gx#stx-pair?
                                                       _tl70947176_)
                                                      (let ((_e70997179_
                                                             (gx#syntax-e
                                                              _tl70947176_)))
                                                        (let ((_tl70977186_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e70997179_)))
                      (_hd70987183_
                       (let () (declare (not safe)) (##car _e70997179_))))
                  (if (gx#stx-null? _tl70977186_)
                      (_loop70867147_
                       _lp-tl70897166_
                       (let ()
                         (declare (not safe))
                         (cons _hd70987183_ _e70907154_))
                       (let ()
                         (declare (not safe))
                         (cons _hd70957173_ _pat70917156_)))
                      (let () (declare (not safe)) (_g70297114_)))))
              (let () (declare (not safe)) (_g70297114_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g70297114_)))))
                                      (let ((_pat70937192_
                                             (reverse _pat70917156_))
                                            (_e70927189_
                                             (reverse _e70907154_)))
                                        (if (gx#stx-pair/null? _tl70807138_)
                                            (let ((___splice80368037_
                                                   (gx#syntax-split-splice
                                                    _tl70807138_
                                                    '0)))
                                              (let ((_tl71027198_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice80368037_
                                                        '1)))
                                                    (_target71007195_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice80368037_
                                                        '0))))
                                                (if (gx#stx-null? _tl71027198_)
                                                    (letrec ((_loop71037201_
                                                              (lambda (_hd71017205_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _body71077208_)
                        (if (gx#stx-pair? _hd71017205_)
                            (let ((_e71047211_ (gx#syntax-e _hd71017205_)))
                              (let ((_lp-tl71067218_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e71047211_)))
                                    (_lp-hd71057215_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e71047211_))))
                                (_loop71037201_
                                 _lp-tl71067218_
                                 (let ()
                                   (declare (not safe))
                                   (cons _lp-hd71057215_ _body71077208_)))))
                            (let ((_body71087221_ (reverse _body71077208_)))
                              (___kont80328033_
                               _body71087221_
                               _e70927189_
                               _pat70937192_))))))
              (_loop71037201_ _target71007195_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g70297114_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g70297114_))))))))
                        (_loop70867147_ _target70837141_ '() '()))))
                   (___match81028103_
                    (lambda (_e70527282_
                             _hd70517286_
                             _tl70507289_
                             _e70557292_
                             _hd70547296_
                             _tl70537299_
                             _e70587302_
                             _hd70577306_
                             _tl70567309_
                             _e70617312_
                             _hd70607316_
                             _tl70597319_
                             _e70647322_
                             _hd70637326_
                             _tl70627329_
                             ___splice80308031_
                             _target70657332_
                             _tl70677335_)
                      (letrec ((_loop70687338_
                                (lambda (_hd70667342_ _body70727345_)
                                  (if (gx#stx-pair? _hd70667342_)
                                      (let ((_e70697348_
                                             (gx#syntax-e _hd70667342_)))
                                        (let ((_lp-tl70717355_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e70697348_)))
                                              (_lp-hd70707352_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e70697348_))))
                                          (_loop70687338_
                                           _lp-tl70717355_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd70707352_
                                                   _body70727345_)))))
                                      (let ((_body70737358_
                                             (reverse _body70727345_)))
                                        (___kont80288029_
                                         _body70737358_
                                         _hd70637326_
                                         _hd70607316_))))))
                        (_loop70687338_ _target70657332_ '()))))
                   (___match80608061_
                    (lambda (_e70347404_
                             _hd70337408_
                             _tl70327411_
                             _e70377414_
                             _hd70367418_
                             _tl70357421_
                             ___splice80268027_
                             _target70387424_
                             _tl70407427_)
                      (letrec ((_loop70417430_
                                (lambda (_hd70397434_ _body70457437_)
                                  (if (gx#stx-pair? _hd70397434_)
                                      (let ((_e70427440_
                                             (gx#syntax-e _hd70397434_)))
                                        (let ((_lp-tl70447447_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e70427440_)))
                                              (_lp-hd70437444_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e70427440_))))
                                          (_loop70417430_
                                           _lp-tl70447447_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd70437444_
                                                   _body70457437_)))))
                                      (let ((_body70467450_
                                             (reverse _body70457437_)))
                                        (___kont80248025_ _body70467450_))))))
                        (_loop70417430_ _target70387424_ '())))))
              (if (gx#stx-pair? ___stx80218022_)
                  (let ((_e70347404_ (gx#syntax-e ___stx80218022_)))
                    (let ((_tl70327411_
                           (let () (declare (not safe)) (##cdr _e70347404_)))
                          (_hd70337408_
                           (let () (declare (not safe)) (##car _e70347404_))))
                      (if (gx#stx-pair? _tl70327411_)
                          (let ((_e70377414_ (gx#syntax-e _tl70327411_)))
                            (let ((_tl70357421_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e70377414_)))
                                  (_hd70367418_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e70377414_))))
                              (if (gx#stx-null? _hd70367418_)
                                  (if (gx#stx-pair/null? _tl70357421_)
                                      (let ((___splice80268027_
                                             (gx#syntax-split-splice
                                              _tl70357421_
                                              '0)))
                                        (let ((_tl70407427_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice80268027_
                                                  '1)))
                                              (_target70387424_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice80268027_
                                                  '0))))
                                          (if (gx#stx-null? _tl70407427_)
                                              (___match80608061_
                                               _e70347404_
                                               _hd70337408_
                                               _tl70327411_
                                               _e70377414_
                                               _hd70367418_
                                               _tl70357421_
                                               ___splice80268027_
                                               _target70387424_
                                               _tl70407427_)
                                              (if (gx#stx-pair/null?
                                                   _hd70367418_)
                                                  (let ((___splice80348035_
                                                         (gx#syntax-split-splice
                                                          _hd70367418_
                                                          '0)))
                                                    (let ((_tl70857144_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice80348035_
                                                              '1)))
                                                          (_target70837141_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice80348035_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl70857144_)
                                                          (___match81228123_
                                                           _e70347404_
                                                           _hd70337408_
                                                           _tl70327411_
                                                           _e70377414_
                                                           _hd70367418_
                                                           _tl70357421_
                                                           ___splice80348035_
                                                           _target70837141_
                                                           _tl70857144_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g70297114_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g70297114_))))))
                                      (if (gx#stx-pair/null? _hd70367418_)
                                          (let ((___splice80348035_
                                                 (gx#syntax-split-splice
                                                  _hd70367418_
                                                  '0)))
                                            (let ((_tl70857144_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice80348035_
                                                      '1)))
                                                  (_target70837141_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice80348035_
                                                      '0))))
                                              (if (gx#stx-null? _tl70857144_)
                                                  (___match81228123_
                                                   _e70347404_
                                                   _hd70337408_
                                                   _tl70327411_
                                                   _e70377414_
                                                   _hd70367418_
                                                   _tl70357421_
                                                   ___splice80348035_
                                                   _target70837141_
                                                   _tl70857144_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g70297114_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g70297114_))))
                                  (if (gx#stx-pair? _hd70367418_)
                                      (let ((_e70587302_
                                             (gx#syntax-e _hd70367418_)))
                                        (let ((_tl70567309_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e70587302_)))
                                              (_hd70577306_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e70587302_))))
                                          (if (gx#stx-pair? _hd70577306_)
                                              (let ((_e70617312_
                                                     (gx#syntax-e
                                                      _hd70577306_)))
                                                (let ((_tl70597319_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e70617312_)))
                                                      (_hd70607316_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e70617312_))))
                                                  (if (gx#stx-pair?
                                                       _tl70597319_)
                                                      (let ((_e70647322_
                                                             (gx#syntax-e
                                                              _tl70597319_)))
                                                        (let ((_tl70627329_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e70647322_)))
                      (_hd70637326_
                       (let () (declare (not safe)) (##car _e70647322_))))
                  (if (gx#stx-null? _tl70627329_)
                      (if (gx#stx-null? _tl70567309_)
                          (if (gx#stx-pair/null? _tl70357421_)
                              (let ((___splice80308031_
                                     (gx#syntax-split-splice _tl70357421_ '0)))
                                (let ((_tl70677335_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref ___splice80308031_ '1)))
                                      (_target70657332_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice80308031_
                                          '0))))
                                  (if (gx#stx-null? _tl70677335_)
                                      (___match81028103_
                                       _e70347404_
                                       _hd70337408_
                                       _tl70327411_
                                       _e70377414_
                                       _hd70367418_
                                       _tl70357421_
                                       _e70587302_
                                       _hd70577306_
                                       _tl70567309_
                                       _e70617312_
                                       _hd70607316_
                                       _tl70597319_
                                       _e70647322_
                                       _hd70637326_
                                       _tl70627329_
                                       ___splice80308031_
                                       _target70657332_
                                       _tl70677335_)
                                      (if (gx#stx-pair/null? _hd70367418_)
                                          (let ((___splice80348035_
                                                 (gx#syntax-split-splice
                                                  _hd70367418_
                                                  '0)))
                                            (let ((_tl70857144_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice80348035_
                                                      '1)))
                                                  (_target70837141_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice80348035_
                                                      '0))))
                                              (if (gx#stx-null? _tl70857144_)
                                                  (___match81228123_
                                                   _e70347404_
                                                   _hd70337408_
                                                   _tl70327411_
                                                   _e70377414_
                                                   _hd70367418_
                                                   _tl70357421_
                                                   ___splice80348035_
                                                   _target70837141_
                                                   _tl70857144_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g70297114_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g70297114_))))))
                              (if (gx#stx-pair/null? _hd70367418_)
                                  (let ((___splice80348035_
                                         (gx#syntax-split-splice
                                          _hd70367418_
                                          '0)))
                                    (let ((_tl70857144_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice80348035_
                                              '1)))
                                          (_target70837141_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice80348035_
                                              '0))))
                                      (if (gx#stx-null? _tl70857144_)
                                          (___match81228123_
                                           _e70347404_
                                           _hd70337408_
                                           _tl70327411_
                                           _e70377414_
                                           _hd70367418_
                                           _tl70357421_
                                           ___splice80348035_
                                           _target70837141_
                                           _tl70857144_)
                                          (let ()
                                            (declare (not safe))
                                            (_g70297114_)))))
                                  (let () (declare (not safe)) (_g70297114_))))
                          (if (gx#stx-pair/null? _hd70367418_)
                              (let ((___splice80348035_
                                     (gx#syntax-split-splice _hd70367418_ '0)))
                                (let ((_tl70857144_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref ___splice80348035_ '1)))
                                      (_target70837141_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice80348035_
                                          '0))))
                                  (if (gx#stx-null? _tl70857144_)
                                      (___match81228123_
                                       _e70347404_
                                       _hd70337408_
                                       _tl70327411_
                                       _e70377414_
                                       _hd70367418_
                                       _tl70357421_
                                       ___splice80348035_
                                       _target70837141_
                                       _tl70857144_)
                                      (let ()
                                        (declare (not safe))
                                        (_g70297114_)))))
                              (let () (declare (not safe)) (_g70297114_))))
                      (if (gx#stx-pair/null? _hd70367418_)
                          (let ((___splice80348035_
                                 (gx#syntax-split-splice _hd70367418_ '0)))
                            (let ((_tl70857144_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice80348035_ '1)))
                                  (_target70837141_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice80348035_ '0))))
                              (if (gx#stx-null? _tl70857144_)
                                  (___match81228123_
                                   _e70347404_
                                   _hd70337408_
                                   _tl70327411_
                                   _e70377414_
                                   _hd70367418_
                                   _tl70357421_
                                   ___splice80348035_
                                   _target70837141_
                                   _tl70857144_)
                                  (let ()
                                    (declare (not safe))
                                    (_g70297114_)))))
                          (let () (declare (not safe)) (_g70297114_))))))
              (if (gx#stx-pair/null? _hd70367418_)
                  (let ((___splice80348035_
                         (gx#syntax-split-splice _hd70367418_ '0)))
                    (let ((_tl70857144_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice80348035_ '1)))
                          (_target70837141_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice80348035_ '0))))
                      (if (gx#stx-null? _tl70857144_)
                          (___match81228123_
                           _e70347404_
                           _hd70337408_
                           _tl70327411_
                           _e70377414_
                           _hd70367418_
                           _tl70357421_
                           ___splice80348035_
                           _target70837141_
                           _tl70857144_)
                          (let () (declare (not safe)) (_g70297114_)))))
                  (let () (declare (not safe)) (_g70297114_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _hd70367418_)
                                                  (let ((___splice80348035_
                                                         (gx#syntax-split-splice
                                                          _hd70367418_
                                                          '0)))
                                                    (let ((_tl70857144_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice80348035_
                                                              '1)))
                                                          (_target70837141_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice80348035_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl70857144_)
                                                          (___match81228123_
                                                           _e70347404_
                                                           _hd70337408_
                                                           _tl70327411_
                                                           _e70377414_
                                                           _hd70367418_
                                                           _tl70357421_
                                                           ___splice80348035_
                                                           _target70837141_
                                                           _tl70857144_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g70297114_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g70297114_))))))
                                      (if (gx#stx-pair/null? _hd70367418_)
                                          (let ((___splice80348035_
                                                 (gx#syntax-split-splice
                                                  _hd70367418_
                                                  '0)))
                                            (let ((_tl70857144_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice80348035_
                                                      '1)))
                                                  (_target70837141_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice80348035_
                                                      '0))))
                                              (if (gx#stx-null? _tl70857144_)
                                                  (___match81228123_
                                                   _e70347404_
                                                   _hd70337408_
                                                   _tl70327411_
                                                   _e70377414_
                                                   _hd70367418_
                                                   _tl70357421_
                                                   ___splice80348035_
                                                   _target70837141_
                                                   _tl70857144_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g70297114_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g70297114_)))))))
                          (let () (declare (not safe)) (_g70297114_)))))
                  (let () (declare (not safe)) (_g70297114_))))))))
    (define |gerbil/core/expander~SyntaxSugar[:0:]#with-syntax*|
      (lambda (_stx7487_)
        (let* ((___stx81258126_ _stx7487_)
               (_g74927569_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx81258126_))))
          (let ((___kont81288129_
                 (lambda (_L7865_)
                   (let ((__tmp8301 (gx#datum->syntax '#f 'let-values))
                         (__tmp8298
                          (let ((__tmp8299
                                 (let ((__tmp8300
                                        (lambda (_g78817884_ _g78827887_)
                                          (let ()
                                            (declare (not safe))
                                            (cons _g78817884_ _g78827887_)))))
                                   (declare (not safe))
                                   (foldr1 __tmp8300 '() _L7865_))))
                            (declare (not safe))
                            (cons '() __tmp8299))))
                     (declare (not safe))
                     (cons __tmp8301 __tmp8298))))
                (___kont81328133_
                 (lambda (_L7767_ _L7769_ _L7770_ _L7771_ _L7772_)
                   (let ((__tmp8311 (gx#datum->syntax '#f 'let-values))
                         (__tmp8302
                          (let ((__tmp8308
                                 (let ((__tmp8309
                                        (let ((__tmp8310
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L7770_ '()))))
                                          (declare (not safe))
                                          (cons _L7771_ __tmp8310))))
                                   (declare (not safe))
                                   (cons __tmp8309 '())))
                                (__tmp8303
                                 (let ((__tmp8304
                                        (let ((__tmp8305
                                               (let ((__tmp8306
                                                      (let ((__tmp8307
                                                             (lambda (_g77997802_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g78007805_)
                       (let ()
                         (declare (not safe))
                         (cons _g77997802_ _g78007805_)))))
                (declare (not safe))
                (foldr1 __tmp8307 '() _L7767_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L7769_ __tmp8306))))
                                          (declare (not safe))
                                          (cons _L7772_ __tmp8305))))
                                   (declare (not safe))
                                   (cons __tmp8304 '()))))
                            (declare (not safe))
                            (cons __tmp8308 __tmp8303))))
                     (declare (not safe))
                     (cons __tmp8311 __tmp8302))))
                (___kont81368137_
                 (lambda (_L7636_ _L7638_ _L7639_ _L7640_)
                   (let ((__tmp8319 (gx#datum->syntax '#f 'with-syntax))
                         (__tmp8312
                          (let ((__tmp8318
                                 (let ()
                                   (declare (not safe))
                                   (cons _L7639_ '())))
                                (__tmp8313
                                 (let ((__tmp8314
                                        (let ((__tmp8315
                                               (let ((__tmp8316
                                                      (let ((__tmp8317
                                                             (lambda (_g76617664_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _g76627667_)
                       (let ()
                         (declare (not safe))
                         (cons _g76617664_ _g76627667_)))))
                (declare (not safe))
                (foldr1 __tmp8317 '() _L7636_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L7638_ __tmp8316))))
                                          (declare (not safe))
                                          (cons _L7640_ __tmp8315))))
                                   (declare (not safe))
                                   (cons __tmp8314 '()))))
                            (declare (not safe))
                            (cons __tmp8318 __tmp8313))))
                     (declare (not safe))
                     (cons __tmp8319 __tmp8312)))))
            (let* ((___match82388239_
                    (lambda (_e75487576_
                             _hd75477580_
                             _tl75467583_
                             _e75517586_
                             _hd75507590_
                             _tl75497593_
                             _e75547596_
                             _hd75537600_
                             _tl75527603_
                             ___splice81388139_
                             _target75557606_
                             _tl75577609_)
                      (letrec ((_loop75587612_
                                (lambda (_hd75567616_ _body75627619_)
                                  (if (gx#stx-pair? _hd75567616_)
                                      (let ((_e75597622_
                                             (gx#syntax-e _hd75567616_)))
                                        (let ((_lp-tl75617629_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e75597622_)))
                                              (_lp-hd75607626_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e75597622_))))
                                          (_loop75587612_
                                           _lp-tl75617629_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd75607626_
                                                   _body75627619_)))))
                                      (let ((_body75637632_
                                             (reverse _body75627619_)))
                                        (___kont81368137_
                                         _body75637632_
                                         _tl75527603_
                                         _hd75537600_
                                         _hd75477580_))))))
                        (_loop75587612_ _target75557606_ '()))))
                   (___match82128213_
                    (lambda (_e75177677_
                             _hd75167681_
                             _tl75157684_
                             _e75207687_
                             _hd75197691_
                             _tl75187694_
                             _e75237697_
                             _hd75227701_
                             _tl75217704_
                             _e75267707_
                             _hd75257711_
                             _tl75247714_
                             _e75297717_
                             _hd75287721_
                             _tl75277724_
                             _e75327727_
                             _hd75317731_
                             _tl75307734_
                             ___splice81348135_
                             _target75337737_
                             _tl75357740_)
                      (letrec ((_loop75367743_
                                (lambda (_hd75347747_ _body75407750_)
                                  (if (gx#stx-pair? _hd75347747_)
                                      (let ((_e75377753_
                                             (gx#syntax-e _hd75347747_)))
                                        (let ((_lp-tl75397760_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e75377753_)))
                                              (_lp-hd75387757_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e75377753_))))
                                          (_loop75367743_
                                           _lp-tl75397760_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd75387757_
                                                   _body75407750_)))))
                                      (let ((_body75417763_
                                             (reverse _body75407750_)))
                                        (___kont81328133_
                                         _body75417763_
                                         _tl75217704_
                                         _hd75317731_
                                         _tl75277724_
                                         _hd75167681_))))))
                        (_loop75367743_ _target75337737_ '()))))
                   (___match81628163_
                    (lambda (_e74977815_
                             _hd74967819_
                             _tl74957822_
                             _e75007825_
                             _hd74997829_
                             _tl74987832_
                             ___splice81308131_
                             _target75017835_
                             _tl75037838_)
                      (letrec ((_loop75047841_
                                (lambda (_hd75027845_ _body75087848_)
                                  (if (gx#stx-pair? _hd75027845_)
                                      (let ((_e75057851_
                                             (gx#syntax-e _hd75027845_)))
                                        (let ((_lp-tl75077858_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e75057851_)))
                                              (_lp-hd75067855_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e75057851_))))
                                          (_loop75047841_
                                           _lp-tl75077858_
                                           (let ()
                                             (declare (not safe))
                                             (cons _lp-hd75067855_
                                                   _body75087848_)))))
                                      (let ((_body75097861_
                                             (reverse _body75087848_)))
                                        (___kont81288129_ _body75097861_))))))
                        (_loop75047841_ _target75017835_ '())))))
              (if (gx#stx-pair? ___stx81258126_)
                  (let ((_e74977815_ (gx#syntax-e ___stx81258126_)))
                    (let ((_tl74957822_
                           (let () (declare (not safe)) (##cdr _e74977815_)))
                          (_hd74967819_
                           (let () (declare (not safe)) (##car _e74977815_))))
                      (if (gx#stx-pair? _tl74957822_)
                          (let ((_e75007825_ (gx#syntax-e _tl74957822_)))
                            (let ((_tl74987832_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _e75007825_)))
                                  (_hd74997829_
                                   (let ()
                                     (declare (not safe))
                                     (##car _e75007825_))))
                              (if (gx#stx-null? _hd74997829_)
                                  (if (gx#stx-pair/null? _tl74987832_)
                                      (let ((___splice81308131_
                                             (gx#syntax-split-splice
                                              _tl74987832_
                                              '0)))
                                        (let ((_tl75037838_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice81308131_
                                                  '1)))
                                              (_target75017835_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  ___splice81308131_
                                                  '0))))
                                          (if (gx#stx-null? _tl75037838_)
                                              (___match81628163_
                                               _e74977815_
                                               _hd74967819_
                                               _tl74957822_
                                               _e75007825_
                                               _hd74997829_
                                               _tl74987832_
                                               ___splice81308131_
                                               _target75017835_
                                               _tl75037838_)
                                              (let ()
                                                (declare (not safe))
                                                (_g74927569_)))))
                                      (let ()
                                        (declare (not safe))
                                        (_g74927569_)))
                                  (if (gx#stx-pair? _hd74997829_)
                                      (let ((_e75237697_
                                             (gx#syntax-e _hd74997829_)))
                                        (let ((_tl75217704_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e75237697_)))
                                              (_hd75227701_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e75237697_))))
                                          (if (gx#stx-pair? _hd75227701_)
                                              (let ((_e75267707_
                                                     (gx#syntax-e
                                                      _hd75227701_)))
                                                (let ((_tl75247714_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e75267707_)))
                                                      (_hd75257711_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e75267707_))))
                                                  (if (gx#stx-pair?
                                                       _hd75257711_)
                                                      (let ((_e75297717_
                                                             (gx#syntax-e
                                                              _hd75257711_)))
                                                        (let ((_tl75277724_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e75297717_)))
                      (_hd75287721_
                       (let () (declare (not safe)) (##car _e75297717_))))
                  (if (gx#identifier? _hd75287721_)
                      (if (gx#free-identifier=?
                           |gerbil/core/expander~SyntaxSugar[1]#_g8320_|
                           _hd75287721_)
                          (if (gx#stx-pair? _tl75247714_)
                              (let ((_e75327727_ (gx#syntax-e _tl75247714_)))
                                (let ((_tl75307734_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e75327727_)))
                                      (_hd75317731_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e75327727_))))
                                  (if (gx#stx-null? _tl75307734_)
                                      (if (gx#stx-pair/null? _tl74987832_)
                                          (let ((___splice81348135_
                                                 (gx#syntax-split-splice
                                                  _tl74987832_
                                                  '0)))
                                            (let ((_tl75357740_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice81348135_
                                                      '1)))
                                                  (_target75337737_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice81348135_
                                                      '0))))
                                              (if (gx#stx-null? _tl75357740_)
                                                  (___match82128213_
                                                   _e74977815_
                                                   _hd74967819_
                                                   _tl74957822_
                                                   _e75007825_
                                                   _hd74997829_
                                                   _tl74987832_
                                                   _e75237697_
                                                   _hd75227701_
                                                   _tl75217704_
                                                   _e75267707_
                                                   _hd75257711_
                                                   _tl75247714_
                                                   _e75297717_
                                                   _hd75287721_
                                                   _tl75277724_
                                                   _e75327727_
                                                   _hd75317731_
                                                   _tl75307734_
                                                   ___splice81348135_
                                                   _target75337737_
                                                   _tl75357740_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g74927569_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g74927569_)))
                                      (if (gx#stx-pair/null? _tl74987832_)
                                          (let ((___splice81388139_
                                                 (gx#syntax-split-splice
                                                  _tl74987832_
                                                  '0)))
                                            (let ((_tl75577609_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice81388139_
                                                      '1)))
                                                  (_target75557606_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice81388139_
                                                      '0))))
                                              (if (gx#stx-null? _tl75577609_)
                                                  (___match82388239_
                                                   _e74977815_
                                                   _hd74967819_
                                                   _tl74957822_
                                                   _e75007825_
                                                   _hd74997829_
                                                   _tl74987832_
                                                   _e75237697_
                                                   _hd75227701_
                                                   _tl75217704_
                                                   ___splice81388139_
                                                   _target75557606_
                                                   _tl75577609_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g74927569_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g74927569_))))))
                              (if (gx#stx-pair/null? _tl74987832_)
                                  (let ((___splice81388139_
                                         (gx#syntax-split-splice
                                          _tl74987832_
                                          '0)))
                                    (let ((_tl75577609_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice81388139_
                                              '1)))
                                          (_target75557606_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice81388139_
                                              '0))))
                                      (if (gx#stx-null? _tl75577609_)
                                          (___match82388239_
                                           _e74977815_
                                           _hd74967819_
                                           _tl74957822_
                                           _e75007825_
                                           _hd74997829_
                                           _tl74987832_
                                           _e75237697_
                                           _hd75227701_
                                           _tl75217704_
                                           ___splice81388139_
                                           _target75557606_
                                           _tl75577609_)
                                          (let ()
                                            (declare (not safe))
                                            (_g74927569_)))))
                                  (let () (declare (not safe)) (_g74927569_))))
                          (if (gx#stx-pair/null? _tl74987832_)
                              (let ((___splice81388139_
                                     (gx#syntax-split-splice _tl74987832_ '0)))
                                (let ((_tl75577609_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref ___splice81388139_ '1)))
                                      (_target75557606_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice81388139_
                                          '0))))
                                  (if (gx#stx-null? _tl75577609_)
                                      (___match82388239_
                                       _e74977815_
                                       _hd74967819_
                                       _tl74957822_
                                       _e75007825_
                                       _hd74997829_
                                       _tl74987832_
                                       _e75237697_
                                       _hd75227701_
                                       _tl75217704_
                                       ___splice81388139_
                                       _target75557606_
                                       _tl75577609_)
                                      (let ()
                                        (declare (not safe))
                                        (_g74927569_)))))
                              (let () (declare (not safe)) (_g74927569_))))
                      (if (gx#stx-pair/null? _tl74987832_)
                          (let ((___splice81388139_
                                 (gx#syntax-split-splice _tl74987832_ '0)))
                            (let ((_tl75577609_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice81388139_ '1)))
                                  (_target75557606_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice81388139_ '0))))
                              (if (gx#stx-null? _tl75577609_)
                                  (___match82388239_
                                   _e74977815_
                                   _hd74967819_
                                   _tl74957822_
                                   _e75007825_
                                   _hd74997829_
                                   _tl74987832_
                                   _e75237697_
                                   _hd75227701_
                                   _tl75217704_
                                   ___splice81388139_
                                   _target75557606_
                                   _tl75577609_)
                                  (let ()
                                    (declare (not safe))
                                    (_g74927569_)))))
                          (let () (declare (not safe)) (_g74927569_))))))
              (if (gx#stx-pair/null? _tl74987832_)
                  (let ((___splice81388139_
                         (gx#syntax-split-splice _tl74987832_ '0)))
                    (let ((_tl75577609_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice81388139_ '1)))
                          (_target75557606_
                           (let ()
                             (declare (not safe))
                             (##vector-ref ___splice81388139_ '0))))
                      (if (gx#stx-null? _tl75577609_)
                          (___match82388239_
                           _e74977815_
                           _hd74967819_
                           _tl74957822_
                           _e75007825_
                           _hd74997829_
                           _tl74987832_
                           _e75237697_
                           _hd75227701_
                           _tl75217704_
                           ___splice81388139_
                           _target75557606_
                           _tl75577609_)
                          (let () (declare (not safe)) (_g74927569_)))))
                  (let () (declare (not safe)) (_g74927569_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair/null?
                                                   _tl74987832_)
                                                  (let ((___splice81388139_
                                                         (gx#syntax-split-splice
                                                          _tl74987832_
                                                          '0)))
                                                    (let ((_tl75577609_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice81388139_
                                                              '1)))
                                                          (_target75557606_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              ___splice81388139_
                                                              '0))))
                                                      (if (gx#stx-null?
                                                           _tl75577609_)
                                                          (___match82388239_
                                                           _e74977815_
                                                           _hd74967819_
                                                           _tl74957822_
                                                           _e75007825_
                                                           _hd74997829_
                                                           _tl74987832_
                                                           _e75237697_
                                                           _hd75227701_
                                                           _tl75217704_
                                                           ___splice81388139_
                                                           _target75557606_
                                                           _tl75577609_)
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (_g74927569_)))))
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g74927569_))))))
                                      (let ()
                                        (declare (not safe))
                                        (_g74927569_))))))
                          (let () (declare (not safe)) (_g74927569_)))))
                  (let () (declare (not safe)) (_g74927569_))))))))
    (define |gerbil/core/expander~SyntaxSugar[:0:]#syntax/loc|
      (lambda (_stx7897_)
        (let* ((_g79007918_
                (lambda (_g79017914_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g79017914_)))
               (_g78997973_
                (lambda (_g79017922_)
                  (if (gx#stx-pair? _g79017922_)
                      (let ((_e79067925_ (gx#syntax-e _g79017922_)))
                        (let ((_hd79057929_
                               (let ()
                                 (declare (not safe))
                                 (##car _e79067925_)))
                              (_tl79047932_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e79067925_))))
                          (if (gx#stx-pair? _tl79047932_)
                              (let ((_e79097935_ (gx#syntax-e _tl79047932_)))
                                (let ((_hd79087939_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e79097935_)))
                                      (_tl79077942_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e79097935_))))
                                  (if (gx#stx-pair? _tl79077942_)
                                      (let ((_e79127945_
                                             (gx#syntax-e _tl79077942_)))
                                        (let ((_hd79117949_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e79127945_)))
                                              (_tl79107952_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e79127945_))))
                                          (if (gx#stx-null? _tl79107952_)
                                              ((lambda (_L7955_ _L7957_)
                                                 (let ((__tmp8329
                                                        (gx#datum->syntax
                                                         '#f
                                                         'stx-wrap-source))
                                                       (__tmp8321
                                                        (let ((__tmp8326
                                                               (let ((__tmp8328
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'syntax))
                             (__tmp8327
                              (let ()
                                (declare (not safe))
                                (cons _L7955_ '()))))
                         (declare (not safe))
                         (cons __tmp8328 __tmp8327)))
                      (__tmp8322
                       (let ((__tmp8323
                              (let ((__tmp8325
                                     (gx#datum->syntax '#f 'stx-source))
                                    (__tmp8324
                                     (let ()
                                       (declare (not safe))
                                       (cons _L7957_ '()))))
                                (declare (not safe))
                                (cons __tmp8325 __tmp8324))))
                         (declare (not safe))
                         (cons __tmp8323 '()))))
                  (declare (not safe))
                  (cons __tmp8326 __tmp8322))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp8329 __tmp8321)))
                                               _hd79117949_
                                               _hd79087939_)
                                              (_g79007918_ _g79017922_))))
                                      (_g79007918_ _g79017922_))))
                              (_g79007918_ _g79017922_))))
                      (_g79007918_ _g79017922_)))))
          (_g78997973_ _stx7897_))))))
