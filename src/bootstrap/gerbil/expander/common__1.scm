(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g135249_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135251_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135253_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135258_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135261_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135266_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135269_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135274_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135277_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135282_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135285_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135392_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj135244
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
           __obj135244
           'gerbil#AST::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135244
           'syntax
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135244
           '(e source)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135244
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135244
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135244
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135244
           '#f
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135244
           '#f
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp135248 |gx[1]#_g135249_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135244
           __tmp135248
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp135250 |gx[1]#_g135251_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135244
           __tmp135250
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp135252 |gx[1]#_g135253_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135244
           __tmp135252
           '11
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp135254
               (let ((__tmp135259
                      (let ((__tmp135260 |gx[1]#_g135261_|))
                        (declare (not safe))
                        (cons 'e __tmp135260)))
                     (__tmp135255
                      (let ((__tmp135256
                             (let ((__tmp135257 |gx[1]#_g135258_|))
                               (declare (not safe))
                               (cons 'source __tmp135257))))
                        (declare (not safe))
                        (cons __tmp135256 '()))))
                 (declare (not safe))
                 (cons __tmp135259 __tmp135255))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135244
           __tmp135254
           '12
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp135262
               (let ((__tmp135267
                      (let ((__tmp135268 |gx[1]#_g135269_|))
                        (declare (not safe))
                        (cons 'e __tmp135268)))
                     (__tmp135263
                      (let ((__tmp135264
                             (let ((__tmp135265 |gx[1]#_g135266_|))
                               (declare (not safe))
                               (cons 'source __tmp135265))))
                        (declare (not safe))
                        (cons __tmp135264 '()))))
                 (declare (not safe))
                 (cons __tmp135267 __tmp135263))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135244
           __tmp135262
           '13
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp135270
               (let ((__tmp135275
                      (let ((__tmp135276 |gx[1]#_g135277_|))
                        (declare (not safe))
                        (cons 'e __tmp135276)))
                     (__tmp135271
                      (let ((__tmp135272
                             (let ((__tmp135273 |gx[1]#_g135274_|))
                               (declare (not safe))
                               (cons 'source __tmp135273))))
                        (declare (not safe))
                        (cons __tmp135272 '()))))
                 (declare (not safe))
                 (cons __tmp135275 __tmp135271))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135244
           __tmp135270
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp135278
               (let ((__tmp135283
                      (let ((__tmp135284 |gx[1]#_g135285_|))
                        (declare (not safe))
                        (cons 'e __tmp135284)))
                     (__tmp135279
                      (let ((__tmp135280
                             (let ((__tmp135281 |gx[1]#_g135282_|))
                               (declare (not safe))
                               (cons 'source __tmp135281))))
                        (declare (not safe))
                        (cons __tmp135280 '()))))
                 (declare (not safe))
                 (cons __tmp135283 __tmp135279))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135244
           __tmp135278
           '15
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj135244))
    (define |gx[:0:]#check-procedure|
      (lambda (_$stx129797_)
        (let* ((_g129801129815_
                (lambda (_g129802129811_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g129802129811_)))
               (_g129800129857_
                (lambda (_g129802129819_)
                  (if (gx#stx-pair? _g129802129819_)
                      (let ((_e129806129822_ (gx#syntax-e _g129802129819_)))
                        (let ((_hd129805129826_
                               (let ()
                                 (declare (not safe))
                                 (##car _e129806129822_)))
                              (_tl129804129829_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e129806129822_))))
                          (if (gx#stx-pair? _tl129804129829_)
                              (let ((_e129809129832_
                                     (gx#syntax-e _tl129804129829_)))
                                (let ((_hd129808129836_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e129809129832_)))
                                      (_tl129807129839_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e129809129832_))))
                                  (if (gx#stx-null? _tl129807129839_)
                                      ((lambda (_L129842_)
                                         (let ((__tmp135295
                                                (gx#datum->syntax '#f 'unless))
                                               (__tmp135286
                                                (let ((__tmp135292
                                                       (let ((__tmp135294
                                                              (gx#datum->syntax
                                                               '#f
                                                               'procedure?))
                                                             (__tmp135293
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L129842_ '()))))
                 (declare (not safe))
                 (cons __tmp135294 __tmp135293)))
              (__tmp135287
               (let ((__tmp135288
                      (let ((__tmp135291 (gx#datum->syntax '#f 'error))
                            (__tmp135289
                             (let ((__tmp135290
                                    (let ()
                                      (declare (not safe))
                                      (cons _L129842_ '()))))
                               (declare (not safe))
                               (cons '"expected procedure" __tmp135290))))
                        (declare (not safe))
                        (cons __tmp135291 __tmp135289))))
                 (declare (not safe))
                 (cons __tmp135288 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp135292
                                                        __tmp135287))))
                                           (declare (not safe))
                                           (cons __tmp135295 __tmp135286)))
                                       _hd129808129836_)
                                      (_g129801129815_ _g129802129819_))))
                              (_g129801129815_ _g129802129819_))))
                      (_g129801129815_ _g129802129819_)))))
          (_g129800129857_ _$stx129797_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_stx129861_)
        (letrec ((_generate129864_
                  (lambda (_tgt130013_ _kws130015_ _clauses130016_)
                    (letrec ((_generate-clause130018_
                              (lambda (_hd130928_ _E130930_)
                                (let* ((___stx135147135148_ _hd130928_)
                                       (_g130934130961_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx135147135148_))))
                                  (let ((___kont135150135151_
                                         (lambda (_L131057_ _L131059_)
                                           (_generate1130020_
                                            _hd130928_
                                            _L131059_
                                            '#t
                                            _L131057_
                                            _E130930_)))
                                        (___kont135152135153_
                                         (lambda (_L131009_
                                                  _L131011_
                                                  _L131012_)
                                           (_generate1130020_
                                            _hd130928_
                                            _L131012_
                                            _L131011_
                                            _L131009_
                                            _E130930_)))
                                        (___kont135154135155_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _stx129861_
                                            _hd130928_))))
                                    (if (gx#stx-pair? ___stx135147135148_)
                                        (let ((_e130940131037_
                                               (gx#syntax-e
                                                ___stx135147135148_)))
                                          (let ((_tl130938131044_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e130940131037_)))
                                                (_hd130939131041_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e130940131037_))))
                                            (if (gx#stx-pair? _tl130938131044_)
                                                (let ((_e130943131047_
                                                       (gx#syntax-e
                                                        _tl130938131044_)))
                                                  (let ((_tl130941131054_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e130943131047_)))
                                                        (_hd130942131051_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e130943131047_))))
                                                    (if (gx#stx-null?
                                                         _tl130941131054_)
                                                        (___kont135150135151_
                                                         _hd130942131051_
                                                         _hd130939131041_)
                                                        (if (gx#stx-pair?
                                                             _tl130941131054_)
                                                            (let ((_e130955130999_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl130941131054_)))
                      (let ((_tl130953131006_
                             (let ()
                               (declare (not safe))
                               (##cdr _e130955130999_)))
                            (_hd130954131003_
                             (let ()
                               (declare (not safe))
                               (##car _e130955130999_))))
                        (if (gx#stx-null? _tl130953131006_)
                            (___kont135152135153_
                             _hd130954131003_
                             _hd130942131051_
                             _hd130939131041_)
                            (___kont135154135155_))))
                    (___kont135154135155_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont135154135155_))))
                                        (___kont135154135155_))))))
                             (_generate1130020_
                              (lambda (_where130406_
                                       _hd130408_
                                       _fender130409_
                                       _body130410_
                                       _E130411_)
                                (letrec ((_recur130413_
                                          (lambda (_hd130416_
                                                   _tgt130418_
                                                   _K130419_)
                                            (let* ((___stx135193135194_
                                                    _hd130416_)
                                                   (_g130422130434_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx135193135194_))))
                                              (let ((___kont135196135197_
                                                     (lambda (_L130718_
                                                              _L130720_)
                                                       (let* ((_g130731130739_
                                                               (lambda (_g130732130735_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g130732130735_)))
                      (_g130730130920_
                       (lambda (_g130732130743_)
                         ((lambda (_L130746_)
                            (let ()
                              (let* ((_g130758130766_
                                      (lambda (_g130759130762_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g130759130762_)))
                                     (_g130757130916_
                                      (lambda (_g130759130770_)
                                        ((lambda (_L130773_)
                                           (let ()
                                             (let* ((_g130786130794_
                                                     (lambda (_g130787130790_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g130787130790_)))
                                                    (_g130785130912_
                                                     (lambda (_g130787130798_)
                                                       ((lambda (_L130801_)
                                                          (let ()
                                                            (let* ((_g130814130822_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g130815130818_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g130815130818_)))
                           (_g130813130908_
                            (lambda (_g130815130826_)
                              ((lambda (_L130829_)
                                 (let ()
                                   (let* ((_g130842130850_
                                           (lambda (_g130843130846_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g130843130846_)))
                                          (_g130841130904_
                                           (lambda (_g130843130854_)
                                             ((lambda (_L130857_)
                                                (let ()
                                                  (let* ((_g130870130878_
                                                          (lambda (_g130871130874_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g130871130874_)))
                                                         (_g130869130900_
                                                          (lambda (_g130871130882_)
                                                            ((lambda (_L130885_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((__tmp135328 (gx#datum->syntax '#f 'if))
                                 (__tmp135296
                                  (let ((__tmp135325
                                         (let ((__tmp135327
                                                (gx#datum->syntax
                                                 '#f
                                                 'stx-pair?))
                                               (__tmp135326
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L130746_ '()))))
                                           (declare (not safe))
                                           (cons __tmp135327 __tmp135326)))
                                        (__tmp135297
                                         (let ((__tmp135299
                                                (let ((__tmp135324
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp135300
                                                       (let ((__tmp135318
                                                              (let ((__tmp135319
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp135320
                                    (let ((__tmp135321
                                           (let ((__tmp135323
                                                  (gx#datum->syntax
                                                   '#f
                                                   'syntax-e))
                                                 (__tmp135322
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L130746_ '()))))
                                             (declare (not safe))
                                             (cons __tmp135323 __tmp135322))))
                                      (declare (not safe))
                                      (cons __tmp135321 '()))))
                               (declare (not safe))
                               (cons _L130773_ __tmp135320))))
                        (declare (not safe))
                        (cons __tmp135319 '())))
                     (__tmp135301
                      (let ((__tmp135302
                             (let ((__tmp135317 (gx#datum->syntax '#f 'let))
                                   (__tmp135303
                                    (let ((__tmp135305
                                           (let ((__tmp135312
                                                  (let ((__tmp135313
                                                         (let ((__tmp135314
                                                                (let ((__tmp135316
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '##car))
                              (__tmp135315
                               (let ()
                                 (declare (not safe))
                                 (cons _L130773_ '()))))
                          (declare (not safe))
                          (cons __tmp135316 __tmp135315))))
                   (declare (not safe))
                   (cons __tmp135314 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L130801_
                                                          __tmp135313)))
                                                 (__tmp135306
                                                  (let ((__tmp135307
                                                         (let ((__tmp135308
                                                                (let ((__tmp135309
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp135311
                                      (gx#datum->syntax '#f '##cdr))
                                     (__tmp135310
                                      (let ()
                                        (declare (not safe))
                                        (cons _L130773_ '()))))
                                 (declare (not safe))
                                 (cons __tmp135311 __tmp135310))))
                          (declare (not safe))
                          (cons __tmp135309 '()))))
                   (declare (not safe))
                   (cons _L130829_ __tmp135308))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135307 '()))))
                                             (declare (not safe))
                                             (cons __tmp135312 __tmp135306)))
                                          (__tmp135304
                                           (let ()
                                             (declare (not safe))
                                             (cons _L130857_ '()))))
                                      (declare (not safe))
                                      (cons __tmp135305 __tmp135304))))
                               (declare (not safe))
                               (cons __tmp135317 __tmp135303))))
                        (declare (not safe))
                        (cons __tmp135302 '()))))
                 (declare (not safe))
                 (cons __tmp135318 __tmp135301))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp135324
                                                        __tmp135300)))
                                               (__tmp135298
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L130885_ '()))))
                                           (declare (not safe))
                                           (cons __tmp135299 __tmp135298))))
                                    (declare (not safe))
                                    (cons __tmp135325 __tmp135297))))
                             (declare (not safe))
                             (cons __tmp135328 __tmp135296)))))
                     _g130871130882_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g130869130900_
                                                     _E130411_))))
                                              _g130843130854_))))
                                     (_g130841130904_
                                      (_recur130413_
                                       _L130720_
                                       _L130801_
                                       (_recur130413_
                                        _L130718_
                                        _L130829_
                                        _K130419_))))))
                               _g130815130826_))))
                      (_g130813130908_ (gx#genident 'tl)))))
                _g130787130798_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g130785130912_
                                                (gx#genident 'hd)))))
                                         _g130759130770_))))
                                (_g130757130916_ (gx#genident 'e)))))
                          _g130732130743_))))
                 (_g130730130920_ _tgt130418_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont135198135199_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _hd130416_)
                                                           (if (gx#underscore?
                                                                _hd130416_)
                                                               _K130419_
                                                               (if (let ((__tmp135373
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g130444130446_)
                                    (gx#bound-identifier=?
                                     _g130444130446_
                                     _hd130416_))))
                             (declare (not safe))
                             (find __tmp135373 _kws130015_))
                           (let* ((_g130450130465_
                                   (lambda (_g130451130461_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g130451130461_)))
                                  (_g130449130516_
                                   (lambda (_g130451130469_)
                                     (if (gx#stx-pair? _g130451130469_)
                                         (let ((_e130456130472_
                                                (gx#syntax-e _g130451130469_)))
                                           (let ((_hd130455130476_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e130456130472_)))
                                                 (_tl130454130479_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e130456130472_))))
                                             (if (gx#stx-pair?
                                                  _tl130454130479_)
                                                 (let ((_e130459130482_
                                                        (gx#syntax-e
                                                         _tl130454130479_)))
                                                   (let ((_hd130458130486_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e130459130482_)))
                                                         (_tl130457130489_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e130459130482_))))
                                                     (if (gx#stx-null?
                                                          _tl130457130489_)
                                                         ((lambda (_L130492_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L130494_)
                    (let ()
                      (let ((__tmp135372 (gx#datum->syntax '#f 'if))
                            (__tmp135355
                             (let ((__tmp135358
                                    (let ((__tmp135371
                                           (gx#datum->syntax '#f 'and))
                                          (__tmp135359
                                           (let ((__tmp135368
                                                  (let ((__tmp135370
                                                         (gx#datum->syntax
                                                          '#f
                                                          'identifier?))
                                                        (__tmp135369
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L130494_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135370
                                                          __tmp135369)))
                                                 (__tmp135360
                                                  (let ((__tmp135361
                                                         (let ((__tmp135367
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'core-identifier=?))
                       (__tmp135362
                        (let ((__tmp135363
                               (let ((__tmp135364
                                      (let ((__tmp135366
                                             (gx#datum->syntax '#f 'quote))
                                            (__tmp135365
                                             (let ()
                                               (declare (not safe))
                                               (cons _L130492_ '()))))
                                        (declare (not safe))
                                        (cons __tmp135366 __tmp135365))))
                                 (declare (not safe))
                                 (cons __tmp135364 '()))))
                          (declare (not safe))
                          (cons _L130494_ __tmp135363))))
                   (declare (not safe))
                   (cons __tmp135367 __tmp135362))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135361 '()))))
                                             (declare (not safe))
                                             (cons __tmp135368 __tmp135360))))
                                      (declare (not safe))
                                      (cons __tmp135371 __tmp135359)))
                                   (__tmp135356
                                    (let ((__tmp135357
                                           (let ()
                                             (declare (not safe))
                                             (cons _E130411_ '()))))
                                      (declare (not safe))
                                      (cons _K130419_ __tmp135357))))
                               (declare (not safe))
                               (cons __tmp135358 __tmp135356))))
                        (declare (not safe))
                        (cons __tmp135372 __tmp135355))))
                  _hd130458130486_
                  _hd130455130476_)
                 (_g130450130465_ _g130451130469_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g130450130465_
                                                  _g130451130469_))))
                                         (_g130450130465_ _g130451130469_)))))
                             (_g130449130516_ (list _tgt130418_ _hd130416_)))
                           (let* ((_g130520130535_
                                   (lambda (_g130521130531_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g130521130531_)))
                                  (_g130519130579_
                                   (lambda (_g130521130539_)
                                     (if (gx#stx-pair? _g130521130539_)
                                         (let ((_e130526130542_
                                                (gx#syntax-e _g130521130539_)))
                                           (let ((_hd130525130546_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e130526130542_)))
                                                 (_tl130524130549_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e130526130542_))))
                                             (if (gx#stx-pair?
                                                  _tl130524130549_)
                                                 (let ((_e130529130552_
                                                        (gx#syntax-e
                                                         _tl130524130549_)))
                                                   (let ((_hd130528130556_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e130529130552_)))
                                                         (_tl130527130559_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e130529130552_))))
                                                     (if (gx#stx-null?
                                                          _tl130527130559_)
                                                         ((lambda (_L130562_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L130564_)
                    (let ()
                      (let ((__tmp135354 (gx#datum->syntax '#f 'let))
                            (__tmp135349
                             (let ((__tmp135351
                                    (let ((__tmp135352
                                           (let ((__tmp135353
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L130564_ '()))))
                                             (declare (not safe))
                                             (cons _L130562_ __tmp135353))))
                                      (declare (not safe))
                                      (cons __tmp135352 '())))
                                   (__tmp135350
                                    (let ()
                                      (declare (not safe))
                                      (cons _K130419_ '()))))
                               (declare (not safe))
                               (cons __tmp135351 __tmp135350))))
                        (declare (not safe))
                        (cons __tmp135354 __tmp135349))))
                  _hd130528130556_
                  _hd130525130546_)
                 (_g130520130535_ _g130521130539_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g130520130535_
                                                  _g130521130539_))))
                                         (_g130520130535_ _g130521130539_)))))
                             (_g130519130579_ (list _tgt130418_ _hd130416_)))))
                   (if (gx#stx-null? _hd130416_)
                       (let* ((_g130583130591_
                               (lambda (_g130584130587_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g130584130587_)))
                              (_g130582130609_
                               (lambda (_g130584130595_)
                                 ((lambda (_L130598_)
                                    (let ()
                                      (let ((__tmp135348
                                             (gx#datum->syntax '#f 'if))
                                            (__tmp135342
                                             (let ((__tmp135345
                                                    (let ((__tmp135347
                                                           (gx#datum->syntax
                                                            '#f
                                                            'stx-null?))
                                                          (__tmp135346
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L130598_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp135347 __tmp135346)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp135343
                                                    (let ((__tmp135344
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _E130411_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _K130419_ __tmp135344))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp135345
                                                     __tmp135343))))
                                        (declare (not safe))
                                        (cons __tmp135348 __tmp135342))))
                                  _g130584130595_))))
                         (_g130582130609_ _tgt130418_))
                       (if (gx#stx-datum? _hd130416_)
                           (let* ((_g130613130632_
                                   (lambda (_g130614130628_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g130614130628_)))
                                  (_g130612130690_
                                   (lambda (_g130614130636_)
                                     (if (gx#stx-pair? _g130614130636_)
                                         (let ((_e130620130639_
                                                (gx#syntax-e _g130614130636_)))
                                           (let ((_hd130619130643_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e130620130639_)))
                                                 (_tl130618130646_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e130620130639_))))
                                             (if (gx#stx-pair?
                                                  _tl130618130646_)
                                                 (let ((_e130623130649_
                                                        (gx#syntax-e
                                                         _tl130618130646_)))
                                                   (let ((_hd130622130653_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e130623130649_)))
                                                         (_tl130621130656_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e130623130649_))))
                                                     (if (gx#stx-pair?
                                                          _tl130621130656_)
                                                         (let ((_e130626130659_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl130621130656_)))
                   (let ((_hd130625130663_
                          (let ()
                            (declare (not safe))
                            (##car _e130626130659_)))
                         (_tl130624130666_
                          (let ()
                            (declare (not safe))
                            (##cdr _e130626130659_))))
                     (if (gx#stx-null? _tl130624130666_)
                         ((lambda (_L130669_ _L130671_ _L130672_)
                            (let ()
                              (let ((__tmp135341 (gx#datum->syntax '#f 'if))
                                    (__tmp135329
                                     (let ((__tmp135332
                                            (let ((__tmp135333
                                                   (let ((__tmp135338
                                                          (let ((__tmp135340
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'stx-e))
                        (__tmp135339
                         (let () (declare (not safe)) (cons _L130672_ '()))))
                    (declare (not safe))
                    (cons __tmp135340 __tmp135339)))
                 (__tmp135334
                  (let ((__tmp135335
                         (let ((__tmp135337 (gx#datum->syntax '#f 'quote))
                               (__tmp135336
                                (let ()
                                  (declare (not safe))
                                  (cons _L130671_ '()))))
                           (declare (not safe))
                           (cons __tmp135337 __tmp135336))))
                    (declare (not safe))
                    (cons __tmp135335 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp135338
                                                           __tmp135334))))
                                              (declare (not safe))
                                              (cons _L130669_ __tmp135333)))
                                           (__tmp135330
                                            (let ((__tmp135331
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _E130411_ '()))))
                                              (declare (not safe))
                                              (cons _K130419_ __tmp135331))))
                                       (declare (not safe))
                                       (cons __tmp135332 __tmp135330))))
                                (declare (not safe))
                                (cons __tmp135341 __tmp135329))))
                          _hd130625130663_
                          _hd130622130653_
                          _hd130619130643_)
                         (_g130613130632_ _g130614130636_))))
                 (_g130613130632_ _g130614130636_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g130613130632_
                                                  _g130614130636_))))
                                         (_g130613130632_ _g130614130636_)))))
                             (_g130612130690_
                              (list _tgt130418_
                                    _hd130416_
                                    (let ((_e130694_ (gx#stx-e _hd130416_)))
                                      (if (or (keyword? _e130694_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _e130694_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (let ()
                                                (declare (not safe))
                                                (number? _e130694_))
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _stx129861_
                            _where130406_
                            _hd130416_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx135193135194_)
                                                    (let ((_e130428130708_
                                                           (gx#syntax-e
                                                            ___stx135193135194_)))
                                                      (let ((_tl130426130715_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e130428130708_)))
                    (_hd130427130712_
                     (let () (declare (not safe)) (##car _e130428130708_))))
                (___kont135196135197_ _tl130426130715_ _hd130427130712_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont135198135199_)))))))
                                  (_recur130413_
                                   _hd130408_
                                   _tgt130013_
                                   (let ((__tmp135377
                                          (gx#datum->syntax '#f 'if))
                                         (__tmp135374
                                          (let ((__tmp135375
                                                 (let ((__tmp135376
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _E130411_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _body130410_
                                                         __tmp135376))))
                                            (declare (not safe))
                                            (cons _fender130409_
                                                  __tmp135375))))
                                     (declare (not safe))
                                     (cons __tmp135377 __tmp135374))))))
                             (_generate-clauses130021_
                              (lambda (_clauses130144_)
                                (let _lp130147_ ((_rest130150_ _clauses130144_)
                                                 (_E130152_ (gx#genident 'E))
                                                 (_r130153_ '()))
                                  (let* ((___stx135229135230_ _rest130150_)
                                         (_g130156130168_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx135229135230_))))
                                    (let ((___kont135232135233_
                                           (lambda (_L130233_ _L130235_)
                                             (let* ((___stx135209135210_
                                                     _L130235_)
                                                    (_g130247130258_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        ___stx135209135210_))))
                                               (let ((___kont135212135213_
                                                      (lambda (_L130387_)
                                                        (if (gx#stx-null?
                                                             _L130233_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L130387_)
                             (let ((__tmp135386 (gx#stx-null? _L130387_)))
                               (declare (not safe))
                               (not __tmp135386)))
                        (let ((__tmp135378
                               (let ((__tmp135379
                                      (let ((__tmp135380
                                             (gx#stx-wrap-source
                                              (let ((__tmp135385
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp135381
                                                     (let ((__tmp135382
                                                            (let ((__tmp135383
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp135384 (gx#datum->syntax '#f 'begin)))
                             (declare (not safe))
                             (cons __tmp135384 _L130387_))))
                      (declare (not safe))
                      (cons __tmp135383 '()))))
               (declare (not safe))
               (cons '() __tmp135382))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp135385 __tmp135381))
                                              (gx#stx-source _L130235_))))
                                        (declare (not safe))
                                        (cons __tmp135380 '()))))
                                 (declare (not safe))
                                 (cons _E130152_ __tmp135379))))
                          (declare (not safe))
                          (cons __tmp135378 _r130153_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _stx129861_
                         _L130235_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _stx129861_
                     _L130235_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont135214135215_
                                                      (lambda ()
                                                        (let* ((_g130269130277_
                                                                (lambda (_g130270130273_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g130270130273_)))
                       (_g130268130366_
                        (lambda (_g130270130281_)
                          ((lambda (_L130284_)
                             (let ()
                               (let* ((_g130300130308_
                                       (lambda (_g130301130304_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g130301130304_)))
                                      (_g130299130362_
                                       (lambda (_g130301130312_)
                                         ((lambda (_L130315_)
                                            (let ()
                                              (let* ((_g130328130336_
                                                      (lambda (_g130329130332_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g130329130332_)))
                                                     (_g130327130358_
                                                      (lambda (_g130329130340_)
                                                        ((lambda (_L130343_)
                                                           (let ()
                                                             (let ()
                                                               (_lp130147_
                                                                _L130233_
                                                                _L130284_
                                                                (let ((__tmp135387
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp135388
                                      (let ()
                                        (declare (not safe))
                                        (cons _L130343_ '()))))
                                 (declare (not safe))
                                 (cons _E130152_ __tmp135388))))
                          (declare (not safe))
                          (cons __tmp135387 _r130153_))))))
                 _g130329130340_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g130327130358_
                                                 (gx#stx-wrap-source
                                                  (let ((__tmp135391
                                                         (gx#datum->syntax
                                                          '#f
                                                          'lambda))
                                                        (__tmp135389
                                                         (let ((__tmp135390
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _L130315_ '()))))
                   (declare (not safe))
                   (cons '() __tmp135390))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135391
                                                          __tmp135389))
                                                  (gx#stx-source
                                                   _L130235_))))))
                                          _g130301130312_))))
                                 (_g130299130362_
                                  (_generate-clause130018_
                                   _L130235_
                                   (let ()
                                     (declare (not safe))
                                     (cons _L130284_ '())))))))
                           _g130270130281_))))
                  (_g130268130366_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      ___stx135209135210_)
                                                     (let ((_e130252130377_
                                                            (gx#syntax-e
                                                             ___stx135209135210_)))
                                                       (let ((_tl130250130384_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e130252130377_)))
                     (_hd130251130381_
                      (let () (declare (not safe)) (##car _e130252130377_))))
                 (if (gx#identifier? _hd130251130381_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g135392_|
                          _hd130251130381_)
                         (___kont135212135213_ _tl130250130384_)
                         (___kont135214135215_))
                     (___kont135214135215_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont135214135215_))))))
                                          (___kont135234135235_
                                           (lambda ()
                                             (let* ((_g130179130187_
                                                     (lambda (_g130180130183_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g130180130183_)))
                                                    (_g130178130212_
                                                     (lambda (_g130180130191_)
                                                       ((lambda (_L130194_)
                                                          (let ()
                                                            (let ((__tmp135393
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp135394
                                  (let ((__tmp135395
                                         (gx#stx-wrap-source
                                          (let ((__tmp135403
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp135396
                                                 (let ((__tmp135397
                                                        (let ((__tmp135398
                                                               (let ((__tmp135402
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'raise-syntax-error))
                             (__tmp135399
                              (let ((__tmp135400
                                     (let ((__tmp135401
                                            (let ()
                                              (declare (not safe))
                                              (cons _L130194_ '()))))
                                       (declare (not safe))
                                       (cons '"Bad syntax; invalid syntax-case clause"
                                             __tmp135401))))
                                (declare (not safe))
                                (cons '#f __tmp135400))))
                         (declare (not safe))
                         (cons __tmp135402 __tmp135399))))
                  (declare (not safe))
                  (cons __tmp135398 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '() __tmp135397))))
                                            (declare (not safe))
                                            (cons __tmp135403 __tmp135396))
                                          (gx#stx-source _stx129861_))))
                                    (declare (not safe))
                                    (cons __tmp135395 '()))))
                             (declare (not safe))
                             (cons _E130152_ __tmp135394))))
                      (declare (not safe))
                      (cons __tmp135393 _r130153_))))
                _g130180130191_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g130178130212_
                                                _tgt130013_)))))
                                      (if (gx#stx-pair? ___stx135229135230_)
                                          (let ((_e130162130223_
                                                 (gx#syntax-e
                                                  ___stx135229135230_)))
                                            (let ((_tl130160130230_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e130162130223_)))
                                                  (_hd130161130227_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e130162130223_))))
                                              (___kont135232135233_
                                               _tl130160130230_
                                               _hd130161130227_)))
                                          (___kont135234135235_))))))))
                      (let* ((_bind130023_
                              (_generate-clauses130021_ _clauses130016_))
                             (_g130026130043_
                              (lambda (_g130027130039_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g130027130039_)))
                             (_g130025130140_
                              (lambda (_g130027130047_)
                                (if (gx#stx-pair/null? _g130027130047_)
                                    (let ((_g135404_
                                           (gx#syntax-split-splice
                                            _g130027130047_
                                            '0)))
                                      (begin
                                        (let ((_g135405_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g135404_)
                                                     (##vector-length
                                                      _g135404_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g135405_ 2)))
                                              (error "Context expects 2 values"
                                                     _g135405_)))
                                        (let ((_target130029130050_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g135404_ 0)))
                                              (_tl130031130053_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g135404_ 1))))
                                          (if (gx#stx-null? _tl130031130053_)
                                              (letrec ((_loop130032130056_
                                                        (lambda (_hd130030130060_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind-try130036130063_)
                  (if (gx#stx-pair? _hd130030130060_)
                      (let ((_e130033130066_ (gx#syntax-e _hd130030130060_)))
                        (let ((_lp-hd130034130070_
                               (let ()
                                 (declare (not safe))
                                 (##car _e130033130066_)))
                              (_lp-tl130035130073_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e130033130066_))))
                          (_loop130032130056_
                           _lp-tl130035130073_
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd130034130070_
                                   _bind-try130036130063_)))))
                      (let ((_bind-try130037130076_
                             (reverse _bind-try130036130063_)))
                        ((lambda (_L130080_)
                           (let ()
                             (let* ((_g130098130106_
                                     (lambda (_g130099130102_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _g130099130102_)))
                                    (_g130097130136_
                                     (lambda (_g130099130110_)
                                       ((lambda (_L130113_)
                                          (let ()
                                            (let ()
                                              (let ((__tmp135411
                                                     (gx#datum->syntax
                                                      '#f
                                                      'let*))
                                                    (__tmp135406
                                                     (let ((__tmp135409
                                                            (let ((__tmp135410
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g130127130130_ _g130128130133_)
                             (let ()
                               (declare (not safe))
                               (cons _g130127130130_ _g130128130133_)))))
                      (declare (not safe))
                      (foldr1 __tmp135410 '() _L130080_)))
                   (__tmp135407
                    (let ((__tmp135408
                           (let () (declare (not safe)) (cons _L130113_ '()))))
                      (declare (not safe))
                      (cons __tmp135408 '()))))
               (declare (not safe))
               (cons __tmp135409 __tmp135407))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp135411
                                                      __tmp135406)))))
                                        _g130099130110_))))
                               (_g130097130136_
                                (car (let ()
                                       (declare (not safe))
                                       (last _bind130023_)))))))
                         _bind-try130037130076_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop130032130056_
                                                 _target130029130050_
                                                 '()))
                                              (_g130026130043_
                                               _g130027130047_)))))
                                    (_g130026130043_ _g130027130047_)))))
                        (_g130025130140_ _bind130023_))))))
          (let* ((_g129867129886_
                  (lambda (_g129868129882_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g129868129882_)))
                 (_g129866130009_
                  (lambda (_g129868129890_)
                    (if (gx#stx-pair? _g129868129890_)
                        (let ((_e129874129893_ (gx#syntax-e _g129868129890_)))
                          (let ((_hd129873129897_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e129874129893_)))
                                (_tl129872129900_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e129874129893_))))
                            (if (gx#stx-pair? _tl129872129900_)
                                (let ((_e129877129903_
                                       (gx#syntax-e _tl129872129900_)))
                                  (let ((_hd129876129907_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e129877129903_)))
                                        (_tl129875129910_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e129877129903_))))
                                    (if (gx#stx-pair? _tl129875129910_)
                                        (let ((_e129880129913_
                                               (gx#syntax-e _tl129875129910_)))
                                          (let ((_hd129879129917_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e129880129913_)))
                                                (_tl129878129920_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e129880129913_))))
                                            ((lambda (_L129923_
                                                      _L129925_
                                                      _L129926_)
                                               (if (and (gx#identifier-list?
                                                         _L129925_)
                                                        (gx#stx-list?
                                                         _L129923_))
                                                   (let* ((_g129944129952_
                                                           (lambda (_g129945129948_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g129945129948_)))
                                                          (_g129943130005_
                                                           (lambda (_g129945129956_)
                                                             ((lambda (_L129959_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g129971129979_
                                  (lambda (_g129972129975_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g129972129975_)))
                                 (_g129970130001_
                                  (lambda (_g129972129983_)
                                    ((lambda (_L129986_)
                                       (let ()
                                         (let ()
                                           (let ((__tmp135417
                                                  (gx#datum->syntax '#f 'let))
                                                 (__tmp135412
                                                  (let ((__tmp135414
                                                         (let ((__tmp135415
                                                                (let ((__tmp135416
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L129926_ '()))))
                          (declare (not safe))
                          (cons _L129959_ __tmp135416))))
                   (declare (not safe))
                   (cons __tmp135415 '())))
                (__tmp135413
                 (let () (declare (not safe)) (cons _L129986_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135414
                                                          __tmp135413))))
                                             (declare (not safe))
                                             (cons __tmp135417 __tmp135412)))))
                                     _g129972129983_))))
                            (_g129970130001_
                             (_generate129864_
                              _L129959_
                              (gx#syntax->list _L129925_)
                              _L129923_)))))
                      _g129945129956_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g129943130005_
                                                      (gx#genident 'e)))
                                                   (_g129867129886_
                                                    _g129868129890_)))
                                             _tl129878129920_
                                             _hd129879129917_
                                             _hd129876129907_)))
                                        (_g129867129886_ _g129868129890_))))
                                (_g129867129886_ _g129868129890_))))
                        (_g129867129886_ _g129868129890_)))))
            (_g129866130009_ _stx129861_)))))))
