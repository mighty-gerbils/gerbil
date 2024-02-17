(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g143244_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g143246_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g143248_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g143253_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g143256_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g143261_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g143264_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g143269_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g143272_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g143277_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g143280_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g143387_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj143239
             (let ()
               (declare (not safe))
               (##structure
                gerbil/core$<MOP>$<MOP:2>#class-type-info::t
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f
                '#f))))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj143239
           'gerbil#AST::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj143239
           'syntax
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj143239
           '(e source)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj143239
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj143239
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj143239
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj143239
           '#f
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj143239
           '#f
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp143243 |gx[1]#_g143244_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj143239
           __tmp143243
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp143245 |gx[1]#_g143246_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj143239
           __tmp143245
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp143247 |gx[1]#_g143248_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj143239
           __tmp143247
           '11
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp143249
               (let ((__tmp143254
                      (let ((__tmp143255 |gx[1]#_g143256_|))
                        (declare (not safe))
                        (cons 'e __tmp143255)))
                     (__tmp143250
                      (let ((__tmp143251
                             (let ((__tmp143252 |gx[1]#_g143253_|))
                               (declare (not safe))
                               (cons 'source __tmp143252))))
                        (declare (not safe))
                        (cons __tmp143251 '()))))
                 (declare (not safe))
                 (cons __tmp143254 __tmp143250))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj143239
           __tmp143249
           '12
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp143257
               (let ((__tmp143262
                      (let ((__tmp143263 |gx[1]#_g143264_|))
                        (declare (not safe))
                        (cons 'e __tmp143263)))
                     (__tmp143258
                      (let ((__tmp143259
                             (let ((__tmp143260 |gx[1]#_g143261_|))
                               (declare (not safe))
                               (cons 'source __tmp143260))))
                        (declare (not safe))
                        (cons __tmp143259 '()))))
                 (declare (not safe))
                 (cons __tmp143262 __tmp143258))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj143239
           __tmp143257
           '13
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp143265
               (let ((__tmp143270
                      (let ((__tmp143271 |gx[1]#_g143272_|))
                        (declare (not safe))
                        (cons 'e __tmp143271)))
                     (__tmp143266
                      (let ((__tmp143267
                             (let ((__tmp143268 |gx[1]#_g143269_|))
                               (declare (not safe))
                               (cons 'source __tmp143268))))
                        (declare (not safe))
                        (cons __tmp143267 '()))))
                 (declare (not safe))
                 (cons __tmp143270 __tmp143266))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj143239
           __tmp143265
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp143273
               (let ((__tmp143278
                      (let ((__tmp143279 |gx[1]#_g143280_|))
                        (declare (not safe))
                        (cons 'e __tmp143279)))
                     (__tmp143274
                      (let ((__tmp143275
                             (let ((__tmp143276 |gx[1]#_g143277_|))
                               (declare (not safe))
                               (cons 'source __tmp143276))))
                        (declare (not safe))
                        (cons __tmp143275 '()))))
                 (declare (not safe))
                 (cons __tmp143278 __tmp143274))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj143239
           __tmp143273
           '15
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj143239))
    (define |gx[:0:]#check-procedure|
      (lambda (_$stx137291_)
        (let* ((_g137295137309_
                (lambda (_g137296137305_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g137296137305_)))
               (_g137294137351_
                (lambda (_g137296137313_)
                  (if (gx#stx-pair? _g137296137313_)
                      (let ((_e137300137316_ (gx#syntax-e _g137296137313_)))
                        (let ((_hd137299137320_
                               (let ()
                                 (declare (not safe))
                                 (##car _e137300137316_)))
                              (_tl137298137323_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e137300137316_))))
                          (if (gx#stx-pair? _tl137298137323_)
                              (let ((_e137303137326_
                                     (gx#syntax-e _tl137298137323_)))
                                (let ((_hd137302137330_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e137303137326_)))
                                      (_tl137301137333_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e137303137326_))))
                                  (if (gx#stx-null? _tl137301137333_)
                                      ((lambda (_L137336_)
                                         (let ((__tmp143290
                                                (gx#datum->syntax '#f 'unless))
                                               (__tmp143281
                                                (let ((__tmp143287
                                                       (let ((__tmp143289
                                                              (gx#datum->syntax
                                                               '#f
                                                               'procedure?))
                                                             (__tmp143288
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L137336_ '()))))
                 (declare (not safe))
                 (cons __tmp143289 __tmp143288)))
              (__tmp143282
               (let ((__tmp143283
                      (let ((__tmp143286 (gx#datum->syntax '#f 'error))
                            (__tmp143284
                             (let ((__tmp143285
                                    (let ()
                                      (declare (not safe))
                                      (cons _L137336_ '()))))
                               (declare (not safe))
                               (cons '"expected procedure" __tmp143285))))
                        (declare (not safe))
                        (cons __tmp143286 __tmp143284))))
                 (declare (not safe))
                 (cons __tmp143283 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp143287
                                                        __tmp143282))))
                                           (declare (not safe))
                                           (cons __tmp143290 __tmp143281)))
                                       _hd137302137330_)
                                      (_g137295137309_ _g137296137313_))))
                              (_g137295137309_ _g137296137313_))))
                      (_g137295137309_ _g137296137313_)))))
          (_g137294137351_ _$stx137291_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_stx137355_)
        (letrec ((_generate137358_
                  (lambda (_tgt137507_ _kws137509_ _clauses137510_)
                    (letrec ((_generate-clause137512_
                              (lambda (_hd138422_ _E138424_)
                                (let* ((___stx143142143143_ _hd138422_)
                                       (_g138428138455_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx143142143143_))))
                                  (let ((___kont143145143146_
                                         (lambda (_L138551_ _L138553_)
                                           (_generate1137514_
                                            _hd138422_
                                            _L138553_
                                            '#t
                                            _L138551_
                                            _E138424_)))
                                        (___kont143147143148_
                                         (lambda (_L138503_
                                                  _L138505_
                                                  _L138506_)
                                           (_generate1137514_
                                            _hd138422_
                                            _L138506_
                                            _L138505_
                                            _L138503_
                                            _E138424_)))
                                        (___kont143149143150_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _stx137355_
                                            _hd138422_))))
                                    (if (gx#stx-pair? ___stx143142143143_)
                                        (let ((_e138434138531_
                                               (gx#syntax-e
                                                ___stx143142143143_)))
                                          (let ((_tl138432138538_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e138434138531_)))
                                                (_hd138433138535_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e138434138531_))))
                                            (if (gx#stx-pair? _tl138432138538_)
                                                (let ((_e138437138541_
                                                       (gx#syntax-e
                                                        _tl138432138538_)))
                                                  (let ((_tl138435138548_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e138437138541_)))
                                                        (_hd138436138545_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e138437138541_))))
                                                    (if (gx#stx-null?
                                                         _tl138435138548_)
                                                        (___kont143145143146_
                                                         _hd138436138545_
                                                         _hd138433138535_)
                                                        (if (gx#stx-pair?
                                                             _tl138435138548_)
                                                            (let ((_e138449138493_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl138435138548_)))
                      (let ((_tl138447138500_
                             (let ()
                               (declare (not safe))
                               (##cdr _e138449138493_)))
                            (_hd138448138497_
                             (let ()
                               (declare (not safe))
                               (##car _e138449138493_))))
                        (if (gx#stx-null? _tl138447138500_)
                            (___kont143147143148_
                             _hd138448138497_
                             _hd138436138545_
                             _hd138433138535_)
                            (___kont143149143150_))))
                    (___kont143149143150_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont143149143150_))))
                                        (___kont143149143150_))))))
                             (_generate1137514_
                              (lambda (_where137900_
                                       _hd137902_
                                       _fender137903_
                                       _body137904_
                                       _E137905_)
                                (letrec ((_recur137907_
                                          (lambda (_hd137910_
                                                   _tgt137912_
                                                   _K137913_)
                                            (let* ((___stx143188143189_
                                                    _hd137910_)
                                                   (_g137916137928_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx143188143189_))))
                                              (let ((___kont143191143192_
                                                     (lambda (_L138212_
                                                              _L138214_)
                                                       (let* ((_g138225138233_
                                                               (lambda (_g138226138229_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g138226138229_)))
                      (_g138224138414_
                       (lambda (_g138226138237_)
                         ((lambda (_L138240_)
                            (let ()
                              (let* ((_g138252138260_
                                      (lambda (_g138253138256_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g138253138256_)))
                                     (_g138251138410_
                                      (lambda (_g138253138264_)
                                        ((lambda (_L138267_)
                                           (let ()
                                             (let* ((_g138280138288_
                                                     (lambda (_g138281138284_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g138281138284_)))
                                                    (_g138279138406_
                                                     (lambda (_g138281138292_)
                                                       ((lambda (_L138295_)
                                                          (let ()
                                                            (let* ((_g138308138316_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g138309138312_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g138309138312_)))
                           (_g138307138402_
                            (lambda (_g138309138320_)
                              ((lambda (_L138323_)
                                 (let ()
                                   (let* ((_g138336138344_
                                           (lambda (_g138337138340_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g138337138340_)))
                                          (_g138335138398_
                                           (lambda (_g138337138348_)
                                             ((lambda (_L138351_)
                                                (let ()
                                                  (let* ((_g138364138372_
                                                          (lambda (_g138365138368_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g138365138368_)))
                                                         (_g138363138394_
                                                          (lambda (_g138365138376_)
                                                            ((lambda (_L138379_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((__tmp143323 (gx#datum->syntax '#f 'if))
                                 (__tmp143291
                                  (let ((__tmp143320
                                         (let ((__tmp143322
                                                (gx#datum->syntax
                                                 '#f
                                                 'stx-pair?))
                                               (__tmp143321
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L138240_ '()))))
                                           (declare (not safe))
                                           (cons __tmp143322 __tmp143321)))
                                        (__tmp143292
                                         (let ((__tmp143294
                                                (let ((__tmp143319
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp143295
                                                       (let ((__tmp143313
                                                              (let ((__tmp143314
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp143315
                                    (let ((__tmp143316
                                           (let ((__tmp143318
                                                  (gx#datum->syntax
                                                   '#f
                                                   'syntax-e))
                                                 (__tmp143317
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L138240_ '()))))
                                             (declare (not safe))
                                             (cons __tmp143318 __tmp143317))))
                                      (declare (not safe))
                                      (cons __tmp143316 '()))))
                               (declare (not safe))
                               (cons _L138267_ __tmp143315))))
                        (declare (not safe))
                        (cons __tmp143314 '())))
                     (__tmp143296
                      (let ((__tmp143297
                             (let ((__tmp143312 (gx#datum->syntax '#f 'let))
                                   (__tmp143298
                                    (let ((__tmp143300
                                           (let ((__tmp143307
                                                  (let ((__tmp143308
                                                         (let ((__tmp143309
                                                                (let ((__tmp143311
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '##car))
                              (__tmp143310
                               (let ()
                                 (declare (not safe))
                                 (cons _L138267_ '()))))
                          (declare (not safe))
                          (cons __tmp143311 __tmp143310))))
                   (declare (not safe))
                   (cons __tmp143309 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L138295_
                                                          __tmp143308)))
                                                 (__tmp143301
                                                  (let ((__tmp143302
                                                         (let ((__tmp143303
                                                                (let ((__tmp143304
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp143306
                                      (gx#datum->syntax '#f '##cdr))
                                     (__tmp143305
                                      (let ()
                                        (declare (not safe))
                                        (cons _L138267_ '()))))
                                 (declare (not safe))
                                 (cons __tmp143306 __tmp143305))))
                          (declare (not safe))
                          (cons __tmp143304 '()))))
                   (declare (not safe))
                   (cons _L138323_ __tmp143303))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp143302 '()))))
                                             (declare (not safe))
                                             (cons __tmp143307 __tmp143301)))
                                          (__tmp143299
                                           (let ()
                                             (declare (not safe))
                                             (cons _L138351_ '()))))
                                      (declare (not safe))
                                      (cons __tmp143300 __tmp143299))))
                               (declare (not safe))
                               (cons __tmp143312 __tmp143298))))
                        (declare (not safe))
                        (cons __tmp143297 '()))))
                 (declare (not safe))
                 (cons __tmp143313 __tmp143296))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp143319
                                                        __tmp143295)))
                                               (__tmp143293
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L138379_ '()))))
                                           (declare (not safe))
                                           (cons __tmp143294 __tmp143293))))
                                    (declare (not safe))
                                    (cons __tmp143320 __tmp143292))))
                             (declare (not safe))
                             (cons __tmp143323 __tmp143291)))))
                     _g138365138376_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g138363138394_
                                                     _E137905_))))
                                              _g138337138348_))))
                                     (_g138335138398_
                                      (_recur137907_
                                       _L138214_
                                       _L138295_
                                       (_recur137907_
                                        _L138212_
                                        _L138323_
                                        _K137913_))))))
                               _g138309138320_))))
                      (_g138307138402_ (gx#genident 'tl)))))
                _g138281138292_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g138279138406_
                                                (gx#genident 'hd)))))
                                         _g138253138264_))))
                                (_g138251138410_ (gx#genident 'e)))))
                          _g138226138237_))))
                 (_g138224138414_ _tgt137912_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont143193143194_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _hd137910_)
                                                           (if (gx#underscore?
                                                                _hd137910_)
                                                               _K137913_
                                                               (if (let ((__tmp143368
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g137938137940_)
                                    (gx#bound-identifier=?
                                     _g137938137940_
                                     _hd137910_))))
                             (declare (not safe))
                             (find __tmp143368 _kws137509_))
                           (let* ((_g137944137959_
                                   (lambda (_g137945137955_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g137945137955_)))
                                  (_g137943138010_
                                   (lambda (_g137945137963_)
                                     (if (gx#stx-pair? _g137945137963_)
                                         (let ((_e137950137966_
                                                (gx#syntax-e _g137945137963_)))
                                           (let ((_hd137949137970_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e137950137966_)))
                                                 (_tl137948137973_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e137950137966_))))
                                             (if (gx#stx-pair?
                                                  _tl137948137973_)
                                                 (let ((_e137953137976_
                                                        (gx#syntax-e
                                                         _tl137948137973_)))
                                                   (let ((_hd137952137980_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e137953137976_)))
                                                         (_tl137951137983_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e137953137976_))))
                                                     (if (gx#stx-null?
                                                          _tl137951137983_)
                                                         ((lambda (_L137986_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L137988_)
                    (let ()
                      (let ((__tmp143367 (gx#datum->syntax '#f 'if))
                            (__tmp143350
                             (let ((__tmp143353
                                    (let ((__tmp143366
                                           (gx#datum->syntax '#f 'and))
                                          (__tmp143354
                                           (let ((__tmp143363
                                                  (let ((__tmp143365
                                                         (gx#datum->syntax
                                                          '#f
                                                          'identifier?))
                                                        (__tmp143364
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L137988_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp143365
                                                          __tmp143364)))
                                                 (__tmp143355
                                                  (let ((__tmp143356
                                                         (let ((__tmp143362
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'core-identifier=?))
                       (__tmp143357
                        (let ((__tmp143358
                               (let ((__tmp143359
                                      (let ((__tmp143361
                                             (gx#datum->syntax '#f 'quote))
                                            (__tmp143360
                                             (let ()
                                               (declare (not safe))
                                               (cons _L137986_ '()))))
                                        (declare (not safe))
                                        (cons __tmp143361 __tmp143360))))
                                 (declare (not safe))
                                 (cons __tmp143359 '()))))
                          (declare (not safe))
                          (cons _L137988_ __tmp143358))))
                   (declare (not safe))
                   (cons __tmp143362 __tmp143357))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp143356 '()))))
                                             (declare (not safe))
                                             (cons __tmp143363 __tmp143355))))
                                      (declare (not safe))
                                      (cons __tmp143366 __tmp143354)))
                                   (__tmp143351
                                    (let ((__tmp143352
                                           (let ()
                                             (declare (not safe))
                                             (cons _E137905_ '()))))
                                      (declare (not safe))
                                      (cons _K137913_ __tmp143352))))
                               (declare (not safe))
                               (cons __tmp143353 __tmp143351))))
                        (declare (not safe))
                        (cons __tmp143367 __tmp143350))))
                  _hd137952137980_
                  _hd137949137970_)
                 (_g137944137959_ _g137945137963_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g137944137959_
                                                  _g137945137963_))))
                                         (_g137944137959_ _g137945137963_)))))
                             (_g137943138010_ (list _tgt137912_ _hd137910_)))
                           (let* ((_g138014138029_
                                   (lambda (_g138015138025_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g138015138025_)))
                                  (_g138013138073_
                                   (lambda (_g138015138033_)
                                     (if (gx#stx-pair? _g138015138033_)
                                         (let ((_e138020138036_
                                                (gx#syntax-e _g138015138033_)))
                                           (let ((_hd138019138040_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e138020138036_)))
                                                 (_tl138018138043_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e138020138036_))))
                                             (if (gx#stx-pair?
                                                  _tl138018138043_)
                                                 (let ((_e138023138046_
                                                        (gx#syntax-e
                                                         _tl138018138043_)))
                                                   (let ((_hd138022138050_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e138023138046_)))
                                                         (_tl138021138053_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e138023138046_))))
                                                     (if (gx#stx-null?
                                                          _tl138021138053_)
                                                         ((lambda (_L138056_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L138058_)
                    (let ()
                      (let ((__tmp143349 (gx#datum->syntax '#f 'let))
                            (__tmp143344
                             (let ((__tmp143346
                                    (let ((__tmp143347
                                           (let ((__tmp143348
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L138058_ '()))))
                                             (declare (not safe))
                                             (cons _L138056_ __tmp143348))))
                                      (declare (not safe))
                                      (cons __tmp143347 '())))
                                   (__tmp143345
                                    (let ()
                                      (declare (not safe))
                                      (cons _K137913_ '()))))
                               (declare (not safe))
                               (cons __tmp143346 __tmp143345))))
                        (declare (not safe))
                        (cons __tmp143349 __tmp143344))))
                  _hd138022138050_
                  _hd138019138040_)
                 (_g138014138029_ _g138015138033_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g138014138029_
                                                  _g138015138033_))))
                                         (_g138014138029_ _g138015138033_)))))
                             (_g138013138073_ (list _tgt137912_ _hd137910_)))))
                   (if (gx#stx-null? _hd137910_)
                       (let* ((_g138077138085_
                               (lambda (_g138078138081_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g138078138081_)))
                              (_g138076138103_
                               (lambda (_g138078138089_)
                                 ((lambda (_L138092_)
                                    (let ()
                                      (let ((__tmp143343
                                             (gx#datum->syntax '#f 'if))
                                            (__tmp143337
                                             (let ((__tmp143340
                                                    (let ((__tmp143342
                                                           (gx#datum->syntax
                                                            '#f
                                                            'stx-null?))
                                                          (__tmp143341
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L138092_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp143342 __tmp143341)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp143338
                                                    (let ((__tmp143339
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _E137905_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _K137913_ __tmp143339))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp143340
                                                     __tmp143338))))
                                        (declare (not safe))
                                        (cons __tmp143343 __tmp143337))))
                                  _g138078138089_))))
                         (_g138076138103_ _tgt137912_))
                       (if (gx#stx-datum? _hd137910_)
                           (let* ((_g138107138126_
                                   (lambda (_g138108138122_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g138108138122_)))
                                  (_g138106138184_
                                   (lambda (_g138108138130_)
                                     (if (gx#stx-pair? _g138108138130_)
                                         (let ((_e138114138133_
                                                (gx#syntax-e _g138108138130_)))
                                           (let ((_hd138113138137_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e138114138133_)))
                                                 (_tl138112138140_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e138114138133_))))
                                             (if (gx#stx-pair?
                                                  _tl138112138140_)
                                                 (let ((_e138117138143_
                                                        (gx#syntax-e
                                                         _tl138112138140_)))
                                                   (let ((_hd138116138147_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e138117138143_)))
                                                         (_tl138115138150_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e138117138143_))))
                                                     (if (gx#stx-pair?
                                                          _tl138115138150_)
                                                         (let ((_e138120138153_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl138115138150_)))
                   (let ((_hd138119138157_
                          (let ()
                            (declare (not safe))
                            (##car _e138120138153_)))
                         (_tl138118138160_
                          (let ()
                            (declare (not safe))
                            (##cdr _e138120138153_))))
                     (if (gx#stx-null? _tl138118138160_)
                         ((lambda (_L138163_ _L138165_ _L138166_)
                            (let ()
                              (let ((__tmp143336 (gx#datum->syntax '#f 'if))
                                    (__tmp143324
                                     (let ((__tmp143327
                                            (let ((__tmp143328
                                                   (let ((__tmp143333
                                                          (let ((__tmp143335
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'stx-e))
                        (__tmp143334
                         (let () (declare (not safe)) (cons _L138166_ '()))))
                    (declare (not safe))
                    (cons __tmp143335 __tmp143334)))
                 (__tmp143329
                  (let ((__tmp143330
                         (let ((__tmp143332 (gx#datum->syntax '#f 'quote))
                               (__tmp143331
                                (let ()
                                  (declare (not safe))
                                  (cons _L138165_ '()))))
                           (declare (not safe))
                           (cons __tmp143332 __tmp143331))))
                    (declare (not safe))
                    (cons __tmp143330 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp143333
                                                           __tmp143329))))
                                              (declare (not safe))
                                              (cons _L138163_ __tmp143328)))
                                           (__tmp143325
                                            (let ((__tmp143326
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _E137905_ '()))))
                                              (declare (not safe))
                                              (cons _K137913_ __tmp143326))))
                                       (declare (not safe))
                                       (cons __tmp143327 __tmp143325))))
                                (declare (not safe))
                                (cons __tmp143336 __tmp143324))))
                          _hd138119138157_
                          _hd138116138147_
                          _hd138113138137_)
                         (_g138107138126_ _g138108138130_))))
                 (_g138107138126_ _g138108138130_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g138107138126_
                                                  _g138108138130_))))
                                         (_g138107138126_ _g138108138130_)))))
                             (_g138106138184_
                              (list _tgt137912_
                                    _hd137910_
                                    (let ((_e138188_ (gx#stx-e _hd137910_)))
                                      (if (or (keyword? _e138188_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _e138188_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (let ()
                                                (declare (not safe))
                                                (number? _e138188_))
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _stx137355_
                            _where137900_
                            _hd137910_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx143188143189_)
                                                    (let ((_e137922138202_
                                                           (gx#syntax-e
                                                            ___stx143188143189_)))
                                                      (let ((_tl137920138209_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e137922138202_)))
                    (_hd137921138206_
                     (let () (declare (not safe)) (##car _e137922138202_))))
                (___kont143191143192_ _tl137920138209_ _hd137921138206_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont143193143194_)))))))
                                  (_recur137907_
                                   _hd137902_
                                   _tgt137507_
                                   (let ((__tmp143372
                                          (gx#datum->syntax '#f 'if))
                                         (__tmp143369
                                          (let ((__tmp143370
                                                 (let ((__tmp143371
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _E137905_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _body137904_
                                                         __tmp143371))))
                                            (declare (not safe))
                                            (cons _fender137903_
                                                  __tmp143370))))
                                     (declare (not safe))
                                     (cons __tmp143372 __tmp143369))))))
                             (_generate-clauses137515_
                              (lambda (_clauses137638_)
                                (let _lp137641_ ((_rest137644_ _clauses137638_)
                                                 (_E137646_ (gx#genident 'E))
                                                 (_r137647_ '()))
                                  (let* ((___stx143224143225_ _rest137644_)
                                         (_g137650137662_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx143224143225_))))
                                    (let ((___kont143227143228_
                                           (lambda (_L137727_ _L137729_)
                                             (let* ((___stx143204143205_
                                                     _L137729_)
                                                    (_g137741137752_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        ___stx143204143205_))))
                                               (let ((___kont143207143208_
                                                      (lambda (_L137881_)
                                                        (if (gx#stx-null?
                                                             _L137727_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L137881_)
                             (let ((__tmp143381 (gx#stx-null? _L137881_)))
                               (declare (not safe))
                               (not __tmp143381)))
                        (let ((__tmp143373
                               (let ((__tmp143374
                                      (let ((__tmp143375
                                             (gx#stx-wrap-source
                                              (let ((__tmp143380
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp143376
                                                     (let ((__tmp143377
                                                            (let ((__tmp143378
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp143379 (gx#datum->syntax '#f 'begin)))
                             (declare (not safe))
                             (cons __tmp143379 _L137881_))))
                      (declare (not safe))
                      (cons __tmp143378 '()))))
               (declare (not safe))
               (cons '() __tmp143377))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp143380 __tmp143376))
                                              (gx#stx-source _L137729_))))
                                        (declare (not safe))
                                        (cons __tmp143375 '()))))
                                 (declare (not safe))
                                 (cons _E137646_ __tmp143374))))
                          (declare (not safe))
                          (cons __tmp143373 _r137647_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _stx137355_
                         _L137729_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _stx137355_
                     _L137729_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont143209143210_
                                                      (lambda ()
                                                        (let* ((_g137763137771_
                                                                (lambda (_g137764137767_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g137764137767_)))
                       (_g137762137860_
                        (lambda (_g137764137775_)
                          ((lambda (_L137778_)
                             (let ()
                               (let* ((_g137794137802_
                                       (lambda (_g137795137798_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g137795137798_)))
                                      (_g137793137856_
                                       (lambda (_g137795137806_)
                                         ((lambda (_L137809_)
                                            (let ()
                                              (let* ((_g137822137830_
                                                      (lambda (_g137823137826_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g137823137826_)))
                                                     (_g137821137852_
                                                      (lambda (_g137823137834_)
                                                        ((lambda (_L137837_)
                                                           (let ()
                                                             (let ()
                                                               (_lp137641_
                                                                _L137727_
                                                                _L137778_
                                                                (let ((__tmp143382
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp143383
                                      (let ()
                                        (declare (not safe))
                                        (cons _L137837_ '()))))
                                 (declare (not safe))
                                 (cons _E137646_ __tmp143383))))
                          (declare (not safe))
                          (cons __tmp143382 _r137647_))))))
                 _g137823137834_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g137821137852_
                                                 (gx#stx-wrap-source
                                                  (let ((__tmp143386
                                                         (gx#datum->syntax
                                                          '#f
                                                          'lambda))
                                                        (__tmp143384
                                                         (let ((__tmp143385
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _L137809_ '()))))
                   (declare (not safe))
                   (cons '() __tmp143385))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp143386
                                                          __tmp143384))
                                                  (gx#stx-source
                                                   _L137729_))))))
                                          _g137795137806_))))
                                 (_g137793137856_
                                  (_generate-clause137512_
                                   _L137729_
                                   (let ()
                                     (declare (not safe))
                                     (cons _L137778_ '())))))))
                           _g137764137775_))))
                  (_g137762137860_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      ___stx143204143205_)
                                                     (let ((_e137746137871_
                                                            (gx#syntax-e
                                                             ___stx143204143205_)))
                                                       (let ((_tl137744137878_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e137746137871_)))
                     (_hd137745137875_
                      (let () (declare (not safe)) (##car _e137746137871_))))
                 (if (gx#identifier? _hd137745137875_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g143387_|
                          _hd137745137875_)
                         (___kont143207143208_ _tl137744137878_)
                         (___kont143209143210_))
                     (___kont143209143210_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont143209143210_))))))
                                          (___kont143229143230_
                                           (lambda ()
                                             (let* ((_g137673137681_
                                                     (lambda (_g137674137677_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g137674137677_)))
                                                    (_g137672137706_
                                                     (lambda (_g137674137685_)
                                                       ((lambda (_L137688_)
                                                          (let ()
                                                            (let ((__tmp143388
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp143389
                                  (let ((__tmp143390
                                         (gx#stx-wrap-source
                                          (let ((__tmp143398
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp143391
                                                 (let ((__tmp143392
                                                        (let ((__tmp143393
                                                               (let ((__tmp143397
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'raise-syntax-error))
                             (__tmp143394
                              (let ((__tmp143395
                                     (let ((__tmp143396
                                            (let ()
                                              (declare (not safe))
                                              (cons _L137688_ '()))))
                                       (declare (not safe))
                                       (cons '"Bad syntax; invalid syntax-case clause"
                                             __tmp143396))))
                                (declare (not safe))
                                (cons '#f __tmp143395))))
                         (declare (not safe))
                         (cons __tmp143397 __tmp143394))))
                  (declare (not safe))
                  (cons __tmp143393 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '() __tmp143392))))
                                            (declare (not safe))
                                            (cons __tmp143398 __tmp143391))
                                          (gx#stx-source _stx137355_))))
                                    (declare (not safe))
                                    (cons __tmp143390 '()))))
                             (declare (not safe))
                             (cons _E137646_ __tmp143389))))
                      (declare (not safe))
                      (cons __tmp143388 _r137647_))))
                _g137674137685_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g137672137706_
                                                _tgt137507_)))))
                                      (if (gx#stx-pair? ___stx143224143225_)
                                          (let ((_e137656137717_
                                                 (gx#syntax-e
                                                  ___stx143224143225_)))
                                            (let ((_tl137654137724_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e137656137717_)))
                                                  (_hd137655137721_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e137656137717_))))
                                              (___kont143227143228_
                                               _tl137654137724_
                                               _hd137655137721_)))
                                          (___kont143229143230_))))))))
                      (let* ((_bind137517_
                              (_generate-clauses137515_ _clauses137510_))
                             (_g137520137537_
                              (lambda (_g137521137533_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g137521137533_)))
                             (_g137519137634_
                              (lambda (_g137521137541_)
                                (if (gx#stx-pair/null? _g137521137541_)
                                    (let ((_g143399_
                                           (gx#syntax-split-splice
                                            _g137521137541_
                                            '0)))
                                      (begin
                                        (let ((_g143400_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g143399_)
                                                     (##vector-length
                                                      _g143399_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g143400_ 2)))
                                              (error "Context expects 2 values"
                                                     _g143400_)))
                                        (let ((_target137523137544_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g143399_ 0)))
                                              (_tl137525137547_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g143399_ 1))))
                                          (if (gx#stx-null? _tl137525137547_)
                                              (letrec ((_loop137526137550_
                                                        (lambda (_hd137524137554_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind-try137530137557_)
                  (if (gx#stx-pair? _hd137524137554_)
                      (let ((_e137527137560_ (gx#syntax-e _hd137524137554_)))
                        (let ((_lp-hd137528137564_
                               (let ()
                                 (declare (not safe))
                                 (##car _e137527137560_)))
                              (_lp-tl137529137567_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e137527137560_))))
                          (_loop137526137550_
                           _lp-tl137529137567_
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd137528137564_
                                   _bind-try137530137557_)))))
                      (let ((_bind-try137531137570_
                             (reverse _bind-try137530137557_)))
                        ((lambda (_L137574_)
                           (let ()
                             (let* ((_g137592137600_
                                     (lambda (_g137593137596_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _g137593137596_)))
                                    (_g137591137630_
                                     (lambda (_g137593137604_)
                                       ((lambda (_L137607_)
                                          (let ()
                                            (let ()
                                              (let ((__tmp143406
                                                     (gx#datum->syntax
                                                      '#f
                                                      'let*))
                                                    (__tmp143401
                                                     (let ((__tmp143404
                                                            (let ((__tmp143405
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g137621137624_ _g137622137627_)
                             (let ()
                               (declare (not safe))
                               (cons _g137621137624_ _g137622137627_)))))
                      (declare (not safe))
                      (foldr1 __tmp143405 '() _L137574_)))
                   (__tmp143402
                    (let ((__tmp143403
                           (let () (declare (not safe)) (cons _L137607_ '()))))
                      (declare (not safe))
                      (cons __tmp143403 '()))))
               (declare (not safe))
               (cons __tmp143404 __tmp143402))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp143406
                                                      __tmp143401)))))
                                        _g137593137604_))))
                               (_g137591137630_
                                (car (let ()
                                       (declare (not safe))
                                       (last _bind137517_)))))))
                         _bind-try137531137570_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop137526137550_
                                                 _target137523137544_
                                                 '()))
                                              (_g137520137537_
                                               _g137521137541_)))))
                                    (_g137520137537_ _g137521137541_)))))
                        (_g137519137634_ _bind137517_))))))
          (let* ((_g137361137380_
                  (lambda (_g137362137376_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g137362137376_)))
                 (_g137360137503_
                  (lambda (_g137362137384_)
                    (if (gx#stx-pair? _g137362137384_)
                        (let ((_e137368137387_ (gx#syntax-e _g137362137384_)))
                          (let ((_hd137367137391_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e137368137387_)))
                                (_tl137366137394_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e137368137387_))))
                            (if (gx#stx-pair? _tl137366137394_)
                                (let ((_e137371137397_
                                       (gx#syntax-e _tl137366137394_)))
                                  (let ((_hd137370137401_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e137371137397_)))
                                        (_tl137369137404_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e137371137397_))))
                                    (if (gx#stx-pair? _tl137369137404_)
                                        (let ((_e137374137407_
                                               (gx#syntax-e _tl137369137404_)))
                                          (let ((_hd137373137411_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e137374137407_)))
                                                (_tl137372137414_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e137374137407_))))
                                            ((lambda (_L137417_
                                                      _L137419_
                                                      _L137420_)
                                               (if (and (gx#identifier-list?
                                                         _L137419_)
                                                        (gx#stx-list?
                                                         _L137417_))
                                                   (let* ((_g137438137446_
                                                           (lambda (_g137439137442_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g137439137442_)))
                                                          (_g137437137499_
                                                           (lambda (_g137439137450_)
                                                             ((lambda (_L137453_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g137465137473_
                                  (lambda (_g137466137469_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g137466137469_)))
                                 (_g137464137495_
                                  (lambda (_g137466137477_)
                                    ((lambda (_L137480_)
                                       (let ()
                                         (let ()
                                           (let ((__tmp143412
                                                  (gx#datum->syntax '#f 'let))
                                                 (__tmp143407
                                                  (let ((__tmp143409
                                                         (let ((__tmp143410
                                                                (let ((__tmp143411
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L137420_ '()))))
                          (declare (not safe))
                          (cons _L137453_ __tmp143411))))
                   (declare (not safe))
                   (cons __tmp143410 '())))
                (__tmp143408
                 (let () (declare (not safe)) (cons _L137480_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp143409
                                                          __tmp143408))))
                                             (declare (not safe))
                                             (cons __tmp143412 __tmp143407)))))
                                     _g137466137477_))))
                            (_g137464137495_
                             (_generate137358_
                              _L137453_
                              (gx#syntax->list _L137419_)
                              _L137417_)))))
                      _g137439137450_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g137437137499_
                                                      (gx#genident 'e)))
                                                   (_g137361137380_
                                                    _g137362137384_)))
                                             _tl137372137414_
                                             _hd137373137411_
                                             _hd137370137401_)))
                                        (_g137361137380_ _g137362137384_))))
                                (_g137361137380_ _g137362137384_))))
                        (_g137361137380_ _g137362137384_)))))
            (_g137360137503_ _stx137355_)))))))
