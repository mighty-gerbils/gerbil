(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g14355_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14361_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14374_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-marks-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14376_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-phi-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14378_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-context-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14380_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-where-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14382_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-irritants-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14384_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-message-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14392_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-marks
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14394_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-phi
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14396_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-context
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14398_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-where
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14400_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-irritants
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14402_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError-message
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14404_|
    (##structure
     gx#syntax-quote::t
     'SyntaxError?
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14406_|
    (##structure
     gx#syntax-quote::t
     'make-SyntaxError
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14410_|
    (##structure
     gx#syntax-quote::t
     'Exception::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14411_|
    (##structure
     gx#syntax-quote::t
     'Exception
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14412_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14421_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14423_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14427_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14429_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14431_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g14433_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |[:0:]#core-ast-case|
      (lambda (_$stx12572_)
        (let* ((_g1257612600_
                (lambda (_g1257712596_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1257712596_)))
               (_g1257512686_
                (lambda (_g1257712604_)
                  (if (gx#stx-pair? _g1257712604_)
                      (let ((_e1258212607_ (gx#syntax-e _g1257712604_)))
                        (let ((_hd1258112611_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1258212607_)))
                              (_tl1258012614_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1258212607_))))
                          (if (gx#stx-pair? _tl1258012614_)
                              (let ((_e1258512617_
                                     (gx#syntax-e _tl1258012614_)))
                                (let ((_hd1258412621_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1258512617_)))
                                      (_tl1258312624_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1258512617_))))
                                  (if (gx#stx-pair/null? _tl1258312624_)
                                      (let ((_g14251_
                                             (gx#syntax-split-splice
                                              _tl1258312624_
                                              '0)))
                                        (begin
                                          (let ((_g14252_
                                                 (let ()
                                                   (declare (not safe))
                                                   (if (##values? _g14251_)
                                                       (##vector-length
                                                        _g14251_)
                                                       1))))
                                            (if (not (let ()
                                                       (declare (not safe))
                                                       (##fx= _g14252_ 2)))
                                                (error "Context expects 2 values"
                                                       _g14252_)))
                                          (let ((_target1258612627_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g14251_ 0)))
                                                (_tl1258812630_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref _g14251_ 1))))
                                            (if (gx#stx-null? _tl1258812630_)
                                                (letrec ((_loop1258912633_
                                                          (lambda (_hd1258712637_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body1259312640_)
                    (if (gx#stx-pair? _hd1258712637_)
                        (let ((_e1259012643_ (gx#syntax-e _hd1258712637_)))
                          (let ((_lp-hd1259112647_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1259012643_)))
                                (_lp-tl1259212650_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1259012643_))))
                            (_loop1258912633_
                             _lp-tl1259212650_
                             (let ()
                               (declare (not safe))
                               (cons _lp-hd1259112647_ _body1259312640_)))))
                        (let ((_body1259412653_
                               (let ()
                                 (declare (not safe))
                                 (reverse _body1259312640_))))
                          ((lambda (_L12657_ _L12659_)
                             (let ((__tmp14264 (gx#datum->syntax '#f 'let))
                                   (__tmp14253
                                    (let ((__tmp14261
                                           (let ((__tmp14263
                                                  (gx#datum->syntax '#f '$e))
                                                 (__tmp14262
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L12659_ '()))))
                                             (declare (not safe))
                                             (cons __tmp14263 __tmp14262)))
                                          (__tmp14254
                                           (let ((__tmp14255
                                                  (let ((__tmp14260
                                                         (gx#datum->syntax
                                                          '#f
                                                          'core-ast-case%))
                                                        (__tmp14256
                                                         (let ((__tmp14259
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '$e))
                       (__tmp14257
                        (let ((__tmp14258
                               (lambda (_g1267712680_ _g1267812683_)
                                 (let ()
                                   (declare (not safe))
                                   (cons _g1267712680_ _g1267812683_)))))
                          (declare (not safe))
                          (foldr1 __tmp14258 '() _L12657_))))
                   (declare (not safe))
                   (cons __tmp14259 __tmp14257))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp14260
                                                          __tmp14256))))
                                             (declare (not safe))
                                             (cons __tmp14255 '()))))
                                      (declare (not safe))
                                      (cons __tmp14261 __tmp14254))))
                               (declare (not safe))
                               (cons __tmp14264 __tmp14253)))
                           _body1259412653_
                           _hd1258412621_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop1258912633_
                                                   _target1258612627_
                                                   '()))
                                                (_g1257612600_
                                                 _g1257712604_)))))
                                      (_g1257612600_ _g1257712604_))))
                              (_g1257612600_ _g1257712604_))))
                      (_g1257612600_ _g1257712604_)))))
          (_g1257512686_ _$stx12572_))))
    (define |[:0:]#core-ast-case%|
      (lambda (_stx12691_)
        (letrec ((_generate112694_
                  (lambda (_hd13235_ _tgt13237_ _K13238_ _E13239_ _kws13240_)
                    (let* ((_g1324213250_
                            (lambda (_g1324313246_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _g1324313246_)))
                           (_g1324113677_
                            (lambda (_g1324313254_)
                              ((lambda (_L13257_)
                                 (let ()
                                   (let* ((___stx1415414155_ _hd13235_)
                                          (_g1327113285_
                                           (lambda ()
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax"
                                              ___stx1415414155_))))
                                     (let ((___kont1415714158_
                                            (lambda (_L13499_ _L13501_)
                                              (let* ((_g1351213520_
                                                      (lambda (_g1351313516_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g1351313516_)))
                                                     (_g1351113669_
                                                      (lambda (_g1351313524_)
                                                        ((lambda (_L13527_)
                                                           (let ()
                                                             (let* ((_g1353913547_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_g1354013543_)
                               (gx#raise-syntax-error
                                '#f
                                '"Bad syntax"
                                _g1354013543_)))
                            (_g1353813665_
                             (lambda (_g1354013551_)
                               ((lambda (_L13554_)
                                  (let ()
                                    (let* ((_g1356713575_
                                            (lambda (_g1356813571_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax"
                                               _g1356813571_)))
                                           (_g1356613661_
                                            (lambda (_g1356813579_)
                                              ((lambda (_L13582_)
                                                 (let ()
                                                   (let* ((_g1359513603_
                                                           (lambda (_g1359613599_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax"
                                                              _g1359613599_)))
                                                          (_g1359413657_
                                                           (lambda (_g1359613607_)
                                                             ((lambda (_L13610_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g1362313631_
                                  (lambda (_g1362413627_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _g1362413627_)))
                                 (_g1362213653_
                                  (lambda (_g1362413635_)
                                    ((lambda (_L13638_)
                                       (let ()
                                         (let ()
                                           (let ((__tmp14293
                                                  (gx#datum->syntax '#f 'if))
                                                 (__tmp14265
                                                  (let ((__tmp14290
                                                         (let ((__tmp14292
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '__AST-pair?))
                       (__tmp14291
                        (let () (declare (not safe)) (cons _L13257_ '()))))
                   (declare (not safe))
                   (cons __tmp14292 __tmp14291)))
                (__tmp14266
                 (let ((__tmp14268
                        (let ((__tmp14289 (gx#datum->syntax '#f 'let*))
                              (__tmp14269
                               (let ((__tmp14271
                                      (let ((__tmp14284
                                             (let ((__tmp14285
                                                    (let ((__tmp14286
                                                           (let ((__tmp14288
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f '__AST-e))
                         (__tmp14287
                          (let () (declare (not safe)) (cons _L13257_ '()))))
                     (declare (not safe))
                     (cons __tmp14288 __tmp14287))))
              (declare (not safe))
              (cons __tmp14286 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L13527_ __tmp14285)))
                                            (__tmp14272
                                             (let ((__tmp14279
                                                    (let ((__tmp14280
                                                           (let ((__tmp14281
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp14283 (gx#datum->syntax '#f '##car))
                                (__tmp14282
                                 (let ()
                                   (declare (not safe))
                                   (cons _L13527_ '()))))
                            (declare (not safe))
                            (cons __tmp14283 __tmp14282))))
                     (declare (not safe))
                     (cons __tmp14281 '()))))
              (declare (not safe))
              (cons _L13554_ __tmp14280)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp14273
                                                    (let ((__tmp14274
                                                           (let ((__tmp14275
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp14276
                                 (let ((__tmp14278
                                        (gx#datum->syntax '#f '##cdr))
                                       (__tmp14277
                                        (let ()
                                          (declare (not safe))
                                          (cons _L13527_ '()))))
                                   (declare (not safe))
                                   (cons __tmp14278 __tmp14277))))
                            (declare (not safe))
                            (cons __tmp14276 '()))))
                     (declare (not safe))
                     (cons _L13582_ __tmp14275))))
              (declare (not safe))
              (cons __tmp14274 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp14279 __tmp14273))))
                                        (declare (not safe))
                                        (cons __tmp14284 __tmp14272)))
                                     (__tmp14270
                                      (let ()
                                        (declare (not safe))
                                        (cons _L13610_ '()))))
                                 (declare (not safe))
                                 (cons __tmp14271 __tmp14270))))
                          (declare (not safe))
                          (cons __tmp14289 __tmp14269)))
                       (__tmp14267
                        (let () (declare (not safe)) (cons _L13638_ '()))))
                   (declare (not safe))
                   (cons __tmp14268 __tmp14267))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp14290
                                                          __tmp14266))))
                                             (declare (not safe))
                                             (cons __tmp14293 __tmp14265)))))
                                     _g1362413635_))))
                            (_g1362213653_ _E13239_))))
                      _g1359613607_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g1359413657_
                                                      (_generate112694_
                                                       _L13501_
                                                       _L13554_
                                                       (_generate112694_
                                                        _L13499_
                                                        _L13582_
                                                        _K13238_
                                                        _E13239_
                                                        _kws13240_)
                                                       _E13239_
                                                       _kws13240_)))))
                                               _g1356813579_))))
                                      (_g1356613661_ (gx#genident '$tl)))))
                                _g1354013551_))))
                       (_g1353813665_ (gx#genident '$hd)))))
                 _g1351313524_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1351113669_
                                                 (gx#genident '$tgt)))))
                                           (___kont1415914160_
                                            (lambda (_L13374_)
                                              (if (gx#underscore? _L13374_)
                                                  _K13238_
                                                  (if (let ((__tmp14322
                                                             (lambda (_g1338213384_)
                                                               (gx#bound-identifier=?
                                                                _g1338213384_
                                                                _L13374_)))
                                                            (__tmp14321
                                                             (gx#syntax->list
                                                              _kws13240_)))
                                                        (declare (not safe))
                                                        (find __tmp14322
                                                              __tmp14321))
                                                      (let* ((_g1338813403_
                                                              (lambda (_g1338913399_)
                                                                (gx#raise-syntax-error
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '"Bad syntax"
                         _g1338913399_)))
                     (_g1338713448_
                      (lambda (_g1338913407_)
                        (if (gx#stx-pair? _g1338913407_)
                            (let ((_e1339413410_ (gx#syntax-e _g1338913407_)))
                              (let ((_hd1339313414_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1339413410_)))
                                    (_tl1339213417_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1339413410_))))
                                (if (gx#stx-pair? _tl1339213417_)
                                    (let ((_e1339713420_
                                           (gx#syntax-e _tl1339213417_)))
                                      (let ((_hd1339613424_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e1339713420_)))
                                            (_tl1339513427_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e1339713420_))))
                                        (if (gx#stx-null? _tl1339513427_)
                                            ((lambda (_L13430_ _L13432_)
                                               (let ()
                                                 (let ((__tmp14320
                                                        (gx#datum->syntax
                                                         '#f
                                                         'if))
                                                       (__tmp14300
                                                        (let ((__tmp14303
                                                               (let ((__tmp14319
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'and))
                             (__tmp14304
                              (let ((__tmp14316
                                     (let ((__tmp14318
                                            (gx#datum->syntax '#f '__AST-id?))
                                           (__tmp14317
                                            (let ()
                                              (declare (not safe))
                                              (cons _L13257_ '()))))
                                       (declare (not safe))
                                       (cons __tmp14318 __tmp14317)))
                                    (__tmp14305
                                     (let ((__tmp14306
                                            (let ((__tmp14315
                                                   (gx#datum->syntax '#f 'eq?))
                                                  (__tmp14307
                                                   (let ((__tmp14312
                                                          (let ((__tmp14314
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f '__AST-e))
                        (__tmp14313
                         (let () (declare (not safe)) (cons _L13257_ '()))))
                    (declare (not safe))
                    (cons __tmp14314 __tmp14313)))
                 (__tmp14308
                  (let ((__tmp14309
                         (let ((__tmp14311 (gx#datum->syntax '#f 'quote))
                               (__tmp14310
                                (let ()
                                  (declare (not safe))
                                  (cons _L13374_ '()))))
                           (declare (not safe))
                           (cons __tmp14311 __tmp14310))))
                    (declare (not safe))
                    (cons __tmp14309 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp14312
                                                           __tmp14308))))
                                              (declare (not safe))
                                              (cons __tmp14315 __tmp14307))))
                                       (declare (not safe))
                                       (cons __tmp14306 '()))))
                                (declare (not safe))
                                (cons __tmp14316 __tmp14305))))
                         (declare (not safe))
                         (cons __tmp14319 __tmp14304)))
                      (__tmp14301
                       (let ((__tmp14302
                              (let ()
                                (declare (not safe))
                                (cons _L13430_ '()))))
                         (declare (not safe))
                         (cons _L13432_ __tmp14302))))
                  (declare (not safe))
                  (cons __tmp14303 __tmp14301))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp14320
                                                         __tmp14300))))
                                             _hd1339613424_
                                             _hd1339313414_)
                                            (_g1338813403_ _g1338913407_))))
                                    (_g1338813403_ _g1338913407_))))
                            (_g1338813403_ _g1338913407_)))))
                (_g1338713448_ (list _K13238_ _E13239_)))
              (let* ((_g1345213460_
                      (lambda (_g1345313456_)
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax"
                         _g1345313456_)))
                     (_g1345113478_
                      (lambda (_g1345313464_)
                        ((lambda (_L13467_)
                           (let ()
                             (let ((__tmp14299 (gx#datum->syntax '#f 'let))
                                   (__tmp14294
                                    (let ((__tmp14296
                                           (let ((__tmp14297
                                                  (let ((__tmp14298
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L13257_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L13374_
                                                          __tmp14298))))
                                             (declare (not safe))
                                             (cons __tmp14297 '())))
                                          (__tmp14295
                                           (let ()
                                             (declare (not safe))
                                             (cons _L13467_ '()))))
                                      (declare (not safe))
                                      (cons __tmp14296 __tmp14295))))
                               (declare (not safe))
                               (cons __tmp14299 __tmp14294))))
                         _g1345313464_))))
                (_g1345113478_ _K13238_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (___kont1416114162_
                                            (lambda (_L13292_)
                                              (let* ((_g1330313318_
                                                      (lambda (_g1330413314_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _g1330413314_)))
                                                     (_g1330213363_
                                                      (lambda (_g1330413322_)
                                                        (if (gx#stx-pair?
                                                             _g1330413322_)
                                                            (let ((_e1330913325_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _g1330413322_)))
                      (let ((_hd1330813329_
                             (let ()
                               (declare (not safe))
                               (##car _e1330913325_)))
                            (_tl1330713332_
                             (let ()
                               (declare (not safe))
                               (##cdr _e1330913325_))))
                        (if (gx#stx-pair? _tl1330713332_)
                            (let ((_e1331213335_ (gx#syntax-e _tl1330713332_)))
                              (let ((_hd1331113339_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e1331213335_)))
                                    (_tl1331013342_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e1331213335_))))
                                (if (gx#stx-null? _tl1331013342_)
                                    ((lambda (_L13345_ _L13347_)
                                       (let ()
                                         (let ((__tmp14336
                                                (gx#datum->syntax '#f 'if))
                                               (__tmp14323
                                                (let ((__tmp14326
                                                       (let ((__tmp14335
                                                              (gx#datum->syntax
                                                               '#f
                                                               'equal?))
                                                             (__tmp14327
                                                              (let ((__tmp14332
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp14334 (gx#datum->syntax '#f '__AST-e))
                                   (__tmp14333
                                    (let ()
                                      (declare (not safe))
                                      (cons _L13257_ '()))))
                               (declare (not safe))
                               (cons __tmp14334 __tmp14333)))
                            (__tmp14328
                             (let ((__tmp14329
                                    (let ((__tmp14331
                                           (gx#datum->syntax '#f 'quote))
                                          (__tmp14330
                                           (let ()
                                             (declare (not safe))
                                             (cons _L13292_ '()))))
                                      (declare (not safe))
                                      (cons __tmp14331 __tmp14330))))
                               (declare (not safe))
                               (cons __tmp14329 '()))))
                        (declare (not safe))
                        (cons __tmp14332 __tmp14328))))
                 (declare (not safe))
                 (cons __tmp14335 __tmp14327)))
              (__tmp14324
               (let ((__tmp14325
                      (let () (declare (not safe)) (cons _L13345_ '()))))
                 (declare (not safe))
                 (cons _L13347_ __tmp14325))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp14326
                                                        __tmp14324))))
                                           (declare (not safe))
                                           (cons __tmp14336 __tmp14323))))
                                     _hd1331113339_
                                     _hd1330813329_)
                                    (_g1330313318_ _g1330413322_))))
                            (_g1330313318_ _g1330413322_))))
                    (_g1330313318_ _g1330413322_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1330213363_
                                                 (list _K13238_ _E13239_))))))
                                       (let ((_g1326913482_
                                              (lambda ()
                                                (let ((_L13374_
                                                       ___stx1415414155_))
                                                  (if (gx#identifier? _L13374_)
                                                      (___kont1415914160_
                                                       _L13374_)
                                                      (___kont1416114162_
                                                       ___stx1415414155_))))))
                                         (if (gx#stx-pair? ___stx1415414155_)
                                             (let ((_e1327713489_
                                                    (gx#syntax-e
                                                     ___stx1415414155_)))
                                               (let ((_tl1327513496_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _e1327713489_)))
                                                     (_hd1327613493_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _e1327713489_))))
                                                 (___kont1415714158_
                                                  _tl1327513496_
                                                  _hd1327613493_)))
                                             (let ()
                                               (declare (not safe))
                                               (_g1326913482_))))))))
                               _g1324313254_))))
                      (_g1324113677_ _tgt13237_)))))
          (let* ((_g1269712725_
                  (lambda (_g1269812721_)
                    (gx#raise-syntax-error '#f '"Bad syntax" _g1269812721_)))
                 (_g1269613231_
                  (lambda (_g1269812729_)
                    (if (gx#stx-pair? _g1269812729_)
                        (let ((_e1270412732_ (gx#syntax-e _g1269812729_)))
                          (let ((_hd1270312736_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e1270412732_)))
                                (_tl1270212739_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e1270412732_))))
                            (if (gx#stx-pair? _tl1270212739_)
                                (let ((_e1270712742_
                                       (gx#syntax-e _tl1270212739_)))
                                  (let ((_hd1270612746_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1270712742_)))
                                        (_tl1270512749_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1270712742_))))
                                    (if (gx#stx-pair? _tl1270512749_)
                                        (let ((_e1271012752_
                                               (gx#syntax-e _tl1270512749_)))
                                          (let ((_hd1270912756_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e1271012752_)))
                                                (_tl1270812759_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e1271012752_))))
                                            (if (gx#stx-pair/null?
                                                 _tl1270812759_)
                                                (let ((_g14337_
                                                       (gx#syntax-split-splice
                                                        _tl1270812759_
                                                        '0)))
                                                  (begin
                                                    (let ((_g14338_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g14337_)
                         (##vector-length _g14337_)
                         1))))
              (if (not (let () (declare (not safe)) (##fx= _g14338_ 2)))
                  (error "Context expects 2 values" _g14338_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_target1271112762_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g14337_
                                                              0)))
                                                          (_tl1271312765_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##vector-ref
                                                              _g14337_
                                                              1))))
                                                      (if (gx#stx-null?
                                                           _tl1271312765_)
                                                          (letrec ((_loop1271412768_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_hd1271212772_ _clause1271812775_)
                              (if (gx#stx-pair? _hd1271212772_)
                                  (let ((_e1271512778_
                                         (gx#syntax-e _hd1271212772_)))
                                    (let ((_lp-hd1271612782_
                                           (let ()
                                             (declare (not safe))
                                             (##car _e1271512778_)))
                                          (_lp-tl1271712785_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _e1271512778_))))
                                      (_loop1271412768_
                                       _lp-tl1271712785_
                                       (let ()
                                         (declare (not safe))
                                         (cons _lp-hd1271612782_
                                               _clause1271812775_)))))
                                  (let ((_clause1271912788_
                                         (let ()
                                           (declare (not safe))
                                           (reverse _clause1271812775_))))
                                    ((lambda (_L12792_ _L12794_ _L12795_)
                                       (let _recur12817_ ((_rest12820_
                                                           (let ((__tmp14360
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_g1322213225_ _g1322313228_)
                            (let ()
                              (declare (not safe))
                              (cons _g1322213225_ _g1322313228_)))))
                     (declare (not safe))
                     (foldr1 __tmp14360 '() _L12792_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (let* ((_rest1282212831_ _rest12820_)
                                                (_E1282512837_
                                                 (lambda ()
                                                   (let ()
                                                     (declare (not safe))
                                                     (error '"No clause matching"
                                                            _rest1282212831_)))))
                                           (let ((_K1282713207_
                                                  (lambda (_rest12853_
                                                           _hd12855_)
                                                    (let* ((_g1285712865_
                                                            (lambda (_g1285812861_)
                                                              (gx#raise-syntax-error
                                                               '#f
                                                               '"Bad syntax"
                                                               _g1285812861_)))
                                                           (_g1285613203_
                                                            (lambda (_g1285812869_)
                                                              ((lambda (_L12872_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let* ((_g1289012898_
                                   (lambda (_g1289112894_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax"
                                      _g1289112894_)))
                                  (_g1288913199_
                                   (lambda (_g1289112902_)
                                     ((lambda (_L12905_)
                                        (let ()
                                          (let* ((_g1291812926_
                                                  (lambda (_g1291912922_)
                                                    (gx#raise-syntax-error
                                                     '#f
                                                     '"Bad syntax"
                                                     _g1291912922_)))
                                                 (_g1291713195_
                                                  (lambda (_g1291912930_)
                                                    ((lambda (_L12933_)
                                                       (let ()
                                                         (let* ((_g1294612954_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g1294712950_)
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax"
                            _g1294712950_)))
                        (_g1294512976_
                         (lambda (_g1294712958_)
                           ((lambda (_L12961_)
                              (let ()
                                (let ()
                                  (let ((__tmp14347
                                         (gx#datum->syntax '#f 'let))
                                        (__tmp14339
                                         (let ((__tmp14341
                                                (let ((__tmp14342
                                                       (let ((__tmp14343
                                                              (let ((__tmp14346
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'lambda))
                            (__tmp14344
                             (let ((__tmp14345
                                    (let ()
                                      (declare (not safe))
                                      (cons _L12933_ '()))))
                               (declare (not safe))
                               (cons '() __tmp14345))))
                        (declare (not safe))
                        (cons __tmp14346 __tmp14344))))
                 (declare (not safe))
                 (cons __tmp14343 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L12872_ __tmp14342)))
                                               (__tmp14340
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L12961_ '()))))
                                           (declare (not safe))
                                           (cons __tmp14341 __tmp14340))))
                                    (declare (not safe))
                                    (cons __tmp14347 __tmp14339)))))
                            _g1294712958_))))
                   (_g1294512976_
                    (let* ((___stx1417214173_ _hd12855_)
                           (_g1298213022_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               ___stx1417214173_))))
                      (let ((___kont1417514176_
                             (lambda (_L13168_)
                               (let ((__tmp14350 (gx#datum->syntax '#f 'begin))
                                     (__tmp14348
                                      (let ((__tmp14349
                                             (lambda (_g1318213185_
                                                      _g1318313188_)
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g1318213185_
                                                       _g1318313188_)))))
                                        (declare (not safe))
                                        (foldr1 __tmp14349 '() _L13168_))))
                                 (declare (not safe))
                                 (cons __tmp14350 __tmp14348))))
                            (___kont1417914180_
                             (lambda (_L13106_ _L13108_)
                               (_generate112694_
                                _L13108_
                                _L12795_
                                _L13106_
                                _L12905_
                                _L12794_)))
                            (___kont1418114182_
                             (lambda (_L13059_ _L13061_ _L13062_)
                               (_generate112694_
                                _L13062_
                                _L12795_
                                (let ((__tmp14354 (gx#datum->syntax '#f 'if))
                                      (__tmp14351
                                       (let ((__tmp14352
                                              (let ((__tmp14353
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L12905_ '()))))
                                                (declare (not safe))
                                                (cons _L13059_ __tmp14353))))
                                         (declare (not safe))
                                         (cons _L13061_ __tmp14352))))
                                  (declare (not safe))
                                  (cons __tmp14354 __tmp14351))
                                _L12905_
                                _L12794_))))
                        (let ((___match1420114202_
                               (lambda (_e1298713128_
                                        _hd1298613132_
                                        _tl1298513135_
                                        ___splice1417714178_
                                        _target1298813138_
                                        _tl1299013141_)
                                 (letrec ((_loop1299113144_
                                           (lambda (_hd1298913148_
                                                    _expr1299513151_)
                                             (if (gx#stx-pair? _hd1298913148_)
                                                 (let ((_e1299213154_
                                                        (gx#syntax-e
                                                         _hd1298913148_)))
                                                   (let ((_lp-tl1299413161_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e1299213154_)))
                                                         (_lp-hd1299313158_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e1299213154_))))
                                                     (_loop1299113144_
                                                      _lp-tl1299413161_
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _lp-hd1299313158_
                                                              _expr1299513151_)))))
                                                 (let ((_expr1299613164_
                                                        (let ()
                                                          (declare (not safe))
                                                          (reverse _expr1299513151_))))
                                                   (___kont1417514176_
                                                    _expr1299613164_))))))
                                   (_loop1299113144_
                                    _target1298813138_
                                    '())))))
                          (if (gx#stx-pair? ___stx1417214173_)
                              (let ((_e1298713128_
                                     (gx#syntax-e ___stx1417214173_)))
                                (let ((_tl1298513135_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1298713128_)))
                                      (_hd1298613132_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1298713128_))))
                                  (if (gx#identifier? _hd1298613132_)
                                      (if (gx#free-identifier=?
                                           |[1]#_g14355_|
                                           _hd1298613132_)
                                          (if (gx#stx-pair/null?
                                               _tl1298513135_)
                                              (let ((___splice1417714178_
                                                     (gx#syntax-split-splice
                                                      _tl1298513135_
                                                      '0)))
                                                (let ((_tl1299013141_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice1417714178_
                                                          '1)))
                                                      (_target1298813138_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice1417714178_
                                                          '0))))
                                                  (if (gx#stx-null?
                                                       _tl1299013141_)
                                                      (___match1420114202_
                                                       _e1298713128_
                                                       _hd1298613132_
                                                       _tl1298513135_
                                                       ___splice1417714178_
                                                       _target1298813138_
                                                       _tl1299013141_)
                                                      (if (gx#stx-pair?
                                                           _tl1298513135_)
                                                          (let ((_e1300413096_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1298513135_)))
                    (let ((_tl1300213103_
                           (let () (declare (not safe)) (##cdr _e1300413096_)))
                          (_hd1300313100_
                           (let ()
                             (declare (not safe))
                             (##car _e1300413096_))))
                      (if (gx#stx-null? _tl1300213103_)
                          (___kont1417914180_ _hd1300313100_ _hd1298613132_)
                          (if (gx#stx-pair? _tl1300213103_)
                              (let ((_e1301613049_
                                     (gx#syntax-e _tl1300213103_)))
                                (let ((_tl1301413056_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1301613049_)))
                                      (_hd1301513053_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1301613049_))))
                                  (if (gx#stx-null? _tl1301413056_)
                                      (___kont1418114182_
                                       _hd1301513053_
                                       _hd1300313100_
                                       _hd1298613132_)
                                      (let ()
                                        (declare (not safe))
                                        (_g1298213022_)))))
                              (let () (declare (not safe)) (_g1298213022_))))))
                  (let () (declare (not safe)) (_g1298213022_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-pair? _tl1298513135_)
                                                  (let ((_e1300413096_
                                                         (gx#syntax-e
                                                          _tl1298513135_)))
                                                    (let ((_tl1300213103_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e1300413096_)))
                                                          (_hd1300313100_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e1300413096_))))
                                                      (if (gx#stx-null?
                                                           _tl1300213103_)
                                                          (___kont1417914180_
                                                           _hd1300313100_
                                                           _hd1298613132_)
                                                          (if (gx#stx-pair?
                                                               _tl1300213103_)
                                                              (let ((_e1301613049_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl1300213103_)))
                        (let ((_tl1301413056_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1301613049_)))
                              (_hd1301513053_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1301613049_))))
                          (if (gx#stx-null? _tl1301413056_)
                              (___kont1418114182_
                               _hd1301513053_
                               _hd1300313100_
                               _hd1298613132_)
                              (let () (declare (not safe)) (_g1298213022_)))))
                      (let () (declare (not safe)) (_g1298213022_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g1298213022_))))
                                          (if (gx#stx-pair? _tl1298513135_)
                                              (let ((_e1300413096_
                                                     (gx#syntax-e
                                                      _tl1298513135_)))
                                                (let ((_tl1300213103_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e1300413096_)))
                                                      (_hd1300313100_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e1300413096_))))
                                                  (if (gx#stx-null?
                                                       _tl1300213103_)
                                                      (___kont1417914180_
                                                       _hd1300313100_
                                                       _hd1298613132_)
                                                      (if (gx#stx-pair?
                                                           _tl1300213103_)
                                                          (let ((_e1301613049_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1300213103_)))
                    (let ((_tl1301413056_
                           (let () (declare (not safe)) (##cdr _e1301613049_)))
                          (_hd1301513053_
                           (let ()
                             (declare (not safe))
                             (##car _e1301613049_))))
                      (if (gx#stx-null? _tl1301413056_)
                          (___kont1418114182_
                           _hd1301513053_
                           _hd1300313100_
                           _hd1298613132_)
                          (let () (declare (not safe)) (_g1298213022_)))))
                  (let () (declare (not safe)) (_g1298213022_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ()
                                                (declare (not safe))
                                                (_g1298213022_))))
                                      (if (gx#stx-pair? _tl1298513135_)
                                          (let ((_e1300413096_
                                                 (gx#syntax-e _tl1298513135_)))
                                            (let ((_tl1300213103_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e1300413096_)))
                                                  (_hd1300313100_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e1300413096_))))
                                              (if (gx#stx-null? _tl1300213103_)
                                                  (___kont1417914180_
                                                   _hd1300313100_
                                                   _hd1298613132_)
                                                  (if (gx#stx-pair?
                                                       _tl1300213103_)
                                                      (let ((_e1301613049_
                                                             (gx#syntax-e
                                                              _tl1300213103_)))
                                                        (let ((_tl1301413056_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e1301613049_)))
                      (_hd1301513053_
                       (let () (declare (not safe)) (##car _e1301613049_))))
                  (if (gx#stx-null? _tl1301413056_)
                      (___kont1418114182_
                       _hd1301513053_
                       _hd1300313100_
                       _hd1298613132_)
                      (let () (declare (not safe)) (_g1298213022_)))))
              (let () (declare (not safe)) (_g1298213022_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (let ()
                                            (declare (not safe))
                                            (_g1298213022_))))))
                              (let ()
                                (declare (not safe))
                                (_g1298213022_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _g1291912930_))))
                                            (_g1291713195_
                                             (_recur12817_ _rest12853_)))))
                                      _g1289112902_))))
                             (_g1288913199_
                              (let ()
                                (declare (not safe))
                                (cons _L12872_ '()))))))
                       _g1285812869_))))
              (_g1285613203_ (gx#genident '$E)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_K1282612845_
                                                  (lambda ()
                                                    (let ((__tmp14359
                                                           (gx#datum->syntax
                                                            '#f
                                                            '__raise-syntax-error))
                                                          (__tmp14356
                                                           (let ((__tmp14357
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp14358
                                 (let ()
                                   (declare (not safe))
                                   (cons _L12795_ '()))))
                            (declare (not safe))
                            (cons '"Bad syntax" __tmp14358))))
                     (declare (not safe))
                     (cons '#f __tmp14357))))
              (declare (not safe))
              (cons __tmp14359 __tmp14356)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ((_try-match1282412849_
                                                    (lambda ()
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (##null? _rest1282212831_))
                                                          (_K1282612845_)
                                                          (_E1282512837_)))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##pair? _rest1282212831_))
                                                   (let ((_tl1282913214_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _rest1282212831_)))
                                                         (_hd1282813211_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _rest1282212831_))))
                                                     (let ((_hd13217_
                                                            _hd1282813211_)
                                                           (_rest13220_
                                                            _tl1282913214_))
                                                       (_K1282713207_
                                                        _rest13220_
                                                        _hd13217_)))
                                                   (_try-match1282412849_)))))))
                                     _clause1271912788_
                                     _hd1270912756_
                                     _hd1270612746_))))))
                    (_loop1271412768_ _target1271112762_ '()))
                  (_g1269712725_ _g1269812729_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g1269712725_
                                                 _g1269812729_))))
                                        (_g1269712725_ _g1269812729_))))
                                (_g1269712725_ _g1269812729_))))
                        (_g1269712725_ _g1269812729_)))))
            (_g1269613231_ _stx12691_)))))
    (define |[:0:]#SyntaxError|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-class-info|
       'runtime-identifier:
       |[1]#_g14361_|
       'expander-identifiers:
       (let ((__tmp14408
              (let ((__tmp14409 |[1]#_g14410_|))
                (declare (not safe))
                (cons __tmp14409 '())))
             (__tmp14362
              (let ((__tmp14407 |[1]#_g14361_|)
                    (__tmp14363
                     (let ((__tmp14405 |[1]#_g14406_|)
                           (__tmp14364
                            (let ((__tmp14403 |[1]#_g14404_|)
                                  (__tmp14365
                                   (let ((__tmp14385
                                          (let ((__tmp14401 |[1]#_g14402_|)
                                                (__tmp14386
                                                 (let ((__tmp14399
                                                        |[1]#_g14400_|)
                                                       (__tmp14387
                                                        (let ((__tmp14397
                                                               |[1]#_g14398_|)
                                                              (__tmp14388
                                                               (let ((__tmp14395
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              |[1]#_g14396_|)
                             (__tmp14389
                              (let ((__tmp14393 |[1]#_g14394_|)
                                    (__tmp14390
                                     (let ((__tmp14391 |[1]#_g14392_|))
                                       (declare (not safe))
                                       (cons __tmp14391 '()))))
                                (declare (not safe))
                                (cons __tmp14393 __tmp14390))))
                         (declare (not safe))
                         (cons __tmp14395 __tmp14389))))
                  (declare (not safe))
                  (cons __tmp14397 __tmp14388))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp14399
                                                         __tmp14387))))
                                            (declare (not safe))
                                            (cons __tmp14401 __tmp14386)))
                                         (__tmp14366
                                          (let ((__tmp14367
                                                 (let ((__tmp14383
                                                        |[1]#_g14384_|)
                                                       (__tmp14368
                                                        (let ((__tmp14381
                                                               |[1]#_g14382_|)
                                                              (__tmp14369
                                                               (let ((__tmp14379
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              |[1]#_g14380_|)
                             (__tmp14370
                              (let ((__tmp14377 |[1]#_g14378_|)
                                    (__tmp14371
                                     (let ((__tmp14375 |[1]#_g14376_|)
                                           (__tmp14372
                                            (let ((__tmp14373 |[1]#_g14374_|))
                                              (declare (not safe))
                                              (cons __tmp14373 '()))))
                                       (declare (not safe))
                                       (cons __tmp14375 __tmp14372))))
                                (declare (not safe))
                                (cons __tmp14377 __tmp14371))))
                         (declare (not safe))
                         (cons __tmp14379 __tmp14370))))
                  (declare (not safe))
                  (cons __tmp14381 __tmp14369))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp14383
                                                         __tmp14368))))
                                            (declare (not safe))
                                            (cons __tmp14367 '()))))
                                     (declare (not safe))
                                     (cons __tmp14385 __tmp14366))))
                              (declare (not safe))
                              (cons __tmp14403 __tmp14365))))
                       (declare (not safe))
                       (cons __tmp14405 __tmp14364))))
                (declare (not safe))
                (cons __tmp14407 __tmp14363))))
         (declare (not safe))
         (cons __tmp14408 __tmp14362))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-exhibitor|
        '#f
        (list |[1]#_g14411_|)
        'SyntaxError
        '#f
        '((final: . #t))
        '(message irritants where context phi marks))))
    (define |[:0:]#AST|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-struct-info|
       'runtime-identifier:
       |[1]#_g14412_|
       'expander-identifiers:
       (let ((__tmp14413
              (let ((__tmp14434 |[1]#_g14412_|)
                    (__tmp14414
                     (let ((__tmp14432 |[1]#_g14433_|)
                           (__tmp14415
                            (let ((__tmp14430 |[1]#_g14431_|)
                                  (__tmp14416
                                   (let ((__tmp14424
                                          (let ((__tmp14428 |[1]#_g14429_|)
                                                (__tmp14425
                                                 (let ((__tmp14426
                                                        |[1]#_g14427_|))
                                                   (declare (not safe))
                                                   (cons __tmp14426 '()))))
                                            (declare (not safe))
                                            (cons __tmp14428 __tmp14425)))
                                         (__tmp14417
                                          (let ((__tmp14418
                                                 (let ((__tmp14422
                                                        |[1]#_g14423_|)
                                                       (__tmp14419
                                                        (let ((__tmp14420
                                                               |[1]#_g14421_|))
                                                          (declare (not safe))
                                                          (cons __tmp14420
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp14422
                                                         __tmp14419))))
                                            (declare (not safe))
                                            (cons __tmp14418 '()))))
                                     (declare (not safe))
                                     (cons __tmp14424 __tmp14417))))
                              (declare (not safe))
                              (cons __tmp14430 __tmp14416))))
                       (declare (not safe))
                       (cons __tmp14432 __tmp14415))))
                (declare (not safe))
                (cons __tmp14434 __tmp14414))))
         (declare (not safe))
         (cons '#f __tmp14413))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-struct-exhibitor|
        'gerbil#AST::t
        '#f
        'syntax
        '#f
        '()
        '(e source))))))
