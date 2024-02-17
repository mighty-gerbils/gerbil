(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g135246_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135248_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135250_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135255_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135258_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135263_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135266_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135271_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135274_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135279_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135282_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135389_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj135241
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
           __obj135241
           'gerbil#AST::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135241
           'syntax
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135241
           '(e source)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135241
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135241
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135241
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135241
           '#f
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135241
           '#f
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp135245 |gx[1]#_g135246_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135241
           __tmp135245
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp135247 |gx[1]#_g135248_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135241
           __tmp135247
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp135249 |gx[1]#_g135250_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135241
           __tmp135249
           '11
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp135251
               (let ((__tmp135256
                      (let ((__tmp135257 |gx[1]#_g135258_|))
                        (declare (not safe))
                        (cons 'e __tmp135257)))
                     (__tmp135252
                      (let ((__tmp135253
                             (let ((__tmp135254 |gx[1]#_g135255_|))
                               (declare (not safe))
                               (cons 'source __tmp135254))))
                        (declare (not safe))
                        (cons __tmp135253 '()))))
                 (declare (not safe))
                 (cons __tmp135256 __tmp135252))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135241
           __tmp135251
           '12
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp135259
               (let ((__tmp135264
                      (let ((__tmp135265 |gx[1]#_g135266_|))
                        (declare (not safe))
                        (cons 'e __tmp135265)))
                     (__tmp135260
                      (let ((__tmp135261
                             (let ((__tmp135262 |gx[1]#_g135263_|))
                               (declare (not safe))
                               (cons 'source __tmp135262))))
                        (declare (not safe))
                        (cons __tmp135261 '()))))
                 (declare (not safe))
                 (cons __tmp135264 __tmp135260))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135241
           __tmp135259
           '13
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp135267
               (let ((__tmp135272
                      (let ((__tmp135273 |gx[1]#_g135274_|))
                        (declare (not safe))
                        (cons 'e __tmp135273)))
                     (__tmp135268
                      (let ((__tmp135269
                             (let ((__tmp135270 |gx[1]#_g135271_|))
                               (declare (not safe))
                               (cons 'source __tmp135270))))
                        (declare (not safe))
                        (cons __tmp135269 '()))))
                 (declare (not safe))
                 (cons __tmp135272 __tmp135268))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135241
           __tmp135267
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp135275
               (let ((__tmp135280
                      (let ((__tmp135281 |gx[1]#_g135282_|))
                        (declare (not safe))
                        (cons 'e __tmp135281)))
                     (__tmp135276
                      (let ((__tmp135277
                             (let ((__tmp135278 |gx[1]#_g135279_|))
                               (declare (not safe))
                               (cons 'source __tmp135278))))
                        (declare (not safe))
                        (cons __tmp135277 '()))))
                 (declare (not safe))
                 (cons __tmp135280 __tmp135276))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135241
           __tmp135275
           '15
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj135241))
    (define |gx[:0:]#check-procedure|
      (lambda (_$stx129794_)
        (let* ((_g129798129812_
                (lambda (_g129799129808_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g129799129808_)))
               (_g129797129854_
                (lambda (_g129799129816_)
                  (if (gx#stx-pair? _g129799129816_)
                      (let ((_e129803129819_ (gx#syntax-e _g129799129816_)))
                        (let ((_hd129802129823_
                               (let ()
                                 (declare (not safe))
                                 (##car _e129803129819_)))
                              (_tl129801129826_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e129803129819_))))
                          (if (gx#stx-pair? _tl129801129826_)
                              (let ((_e129806129829_
                                     (gx#syntax-e _tl129801129826_)))
                                (let ((_hd129805129833_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e129806129829_)))
                                      (_tl129804129836_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e129806129829_))))
                                  (if (gx#stx-null? _tl129804129836_)
                                      ((lambda (_L129839_)
                                         (let ((__tmp135292
                                                (gx#datum->syntax '#f 'unless))
                                               (__tmp135283
                                                (let ((__tmp135289
                                                       (let ((__tmp135291
                                                              (gx#datum->syntax
                                                               '#f
                                                               'procedure?))
                                                             (__tmp135290
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L129839_ '()))))
                 (declare (not safe))
                 (cons __tmp135291 __tmp135290)))
              (__tmp135284
               (let ((__tmp135285
                      (let ((__tmp135288 (gx#datum->syntax '#f 'error))
                            (__tmp135286
                             (let ((__tmp135287
                                    (let ()
                                      (declare (not safe))
                                      (cons _L129839_ '()))))
                               (declare (not safe))
                               (cons '"expected procedure" __tmp135287))))
                        (declare (not safe))
                        (cons __tmp135288 __tmp135286))))
                 (declare (not safe))
                 (cons __tmp135285 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp135289
                                                        __tmp135284))))
                                           (declare (not safe))
                                           (cons __tmp135292 __tmp135283)))
                                       _hd129805129833_)
                                      (_g129798129812_ _g129799129816_))))
                              (_g129798129812_ _g129799129816_))))
                      (_g129798129812_ _g129799129816_)))))
          (_g129797129854_ _$stx129794_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_stx129858_)
        (letrec ((_generate129861_
                  (lambda (_tgt130010_ _kws130012_ _clauses130013_)
                    (letrec ((_generate-clause130015_
                              (lambda (_hd130925_ _E130927_)
                                (let* ((___stx135144135145_ _hd130925_)
                                       (_g130931130958_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx135144135145_))))
                                  (let ((___kont135147135148_
                                         (lambda (_L131054_ _L131056_)
                                           (_generate1130017_
                                            _hd130925_
                                            _L131056_
                                            '#t
                                            _L131054_
                                            _E130927_)))
                                        (___kont135149135150_
                                         (lambda (_L131006_
                                                  _L131008_
                                                  _L131009_)
                                           (_generate1130017_
                                            _hd130925_
                                            _L131009_
                                            _L131008_
                                            _L131006_
                                            _E130927_)))
                                        (___kont135151135152_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _stx129858_
                                            _hd130925_))))
                                    (if (gx#stx-pair? ___stx135144135145_)
                                        (let ((_e130937131034_
                                               (gx#syntax-e
                                                ___stx135144135145_)))
                                          (let ((_tl130935131041_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e130937131034_)))
                                                (_hd130936131038_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e130937131034_))))
                                            (if (gx#stx-pair? _tl130935131041_)
                                                (let ((_e130940131044_
                                                       (gx#syntax-e
                                                        _tl130935131041_)))
                                                  (let ((_tl130938131051_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e130940131044_)))
                                                        (_hd130939131048_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e130940131044_))))
                                                    (if (gx#stx-null?
                                                         _tl130938131051_)
                                                        (___kont135147135148_
                                                         _hd130939131048_
                                                         _hd130936131038_)
                                                        (if (gx#stx-pair?
                                                             _tl130938131051_)
                                                            (let ((_e130952130996_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl130938131051_)))
                      (let ((_tl130950131003_
                             (let ()
                               (declare (not safe))
                               (##cdr _e130952130996_)))
                            (_hd130951131000_
                             (let ()
                               (declare (not safe))
                               (##car _e130952130996_))))
                        (if (gx#stx-null? _tl130950131003_)
                            (___kont135149135150_
                             _hd130951131000_
                             _hd130939131048_
                             _hd130936131038_)
                            (___kont135151135152_))))
                    (___kont135151135152_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont135151135152_))))
                                        (___kont135151135152_))))))
                             (_generate1130017_
                              (lambda (_where130403_
                                       _hd130405_
                                       _fender130406_
                                       _body130407_
                                       _E130408_)
                                (letrec ((_recur130410_
                                          (lambda (_hd130413_
                                                   _tgt130415_
                                                   _K130416_)
                                            (let* ((___stx135190135191_
                                                    _hd130413_)
                                                   (_g130419130431_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx135190135191_))))
                                              (let ((___kont135193135194_
                                                     (lambda (_L130715_
                                                              _L130717_)
                                                       (let* ((_g130728130736_
                                                               (lambda (_g130729130732_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g130729130732_)))
                      (_g130727130917_
                       (lambda (_g130729130740_)
                         ((lambda (_L130743_)
                            (let ()
                              (let* ((_g130755130763_
                                      (lambda (_g130756130759_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g130756130759_)))
                                     (_g130754130913_
                                      (lambda (_g130756130767_)
                                        ((lambda (_L130770_)
                                           (let ()
                                             (let* ((_g130783130791_
                                                     (lambda (_g130784130787_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g130784130787_)))
                                                    (_g130782130909_
                                                     (lambda (_g130784130795_)
                                                       ((lambda (_L130798_)
                                                          (let ()
                                                            (let* ((_g130811130819_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g130812130815_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g130812130815_)))
                           (_g130810130905_
                            (lambda (_g130812130823_)
                              ((lambda (_L130826_)
                                 (let ()
                                   (let* ((_g130839130847_
                                           (lambda (_g130840130843_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g130840130843_)))
                                          (_g130838130901_
                                           (lambda (_g130840130851_)
                                             ((lambda (_L130854_)
                                                (let ()
                                                  (let* ((_g130867130875_
                                                          (lambda (_g130868130871_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g130868130871_)))
                                                         (_g130866130897_
                                                          (lambda (_g130868130879_)
                                                            ((lambda (_L130882_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((__tmp135325 (gx#datum->syntax '#f 'if))
                                 (__tmp135293
                                  (let ((__tmp135322
                                         (let ((__tmp135324
                                                (gx#datum->syntax
                                                 '#f
                                                 'stx-pair?))
                                               (__tmp135323
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L130743_ '()))))
                                           (declare (not safe))
                                           (cons __tmp135324 __tmp135323)))
                                        (__tmp135294
                                         (let ((__tmp135296
                                                (let ((__tmp135321
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp135297
                                                       (let ((__tmp135315
                                                              (let ((__tmp135316
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp135317
                                    (let ((__tmp135318
                                           (let ((__tmp135320
                                                  (gx#datum->syntax
                                                   '#f
                                                   'syntax-e))
                                                 (__tmp135319
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L130743_ '()))))
                                             (declare (not safe))
                                             (cons __tmp135320 __tmp135319))))
                                      (declare (not safe))
                                      (cons __tmp135318 '()))))
                               (declare (not safe))
                               (cons _L130770_ __tmp135317))))
                        (declare (not safe))
                        (cons __tmp135316 '())))
                     (__tmp135298
                      (let ((__tmp135299
                             (let ((__tmp135314 (gx#datum->syntax '#f 'let))
                                   (__tmp135300
                                    (let ((__tmp135302
                                           (let ((__tmp135309
                                                  (let ((__tmp135310
                                                         (let ((__tmp135311
                                                                (let ((__tmp135313
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '##car))
                              (__tmp135312
                               (let ()
                                 (declare (not safe))
                                 (cons _L130770_ '()))))
                          (declare (not safe))
                          (cons __tmp135313 __tmp135312))))
                   (declare (not safe))
                   (cons __tmp135311 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L130798_
                                                          __tmp135310)))
                                                 (__tmp135303
                                                  (let ((__tmp135304
                                                         (let ((__tmp135305
                                                                (let ((__tmp135306
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp135308
                                      (gx#datum->syntax '#f '##cdr))
                                     (__tmp135307
                                      (let ()
                                        (declare (not safe))
                                        (cons _L130770_ '()))))
                                 (declare (not safe))
                                 (cons __tmp135308 __tmp135307))))
                          (declare (not safe))
                          (cons __tmp135306 '()))))
                   (declare (not safe))
                   (cons _L130826_ __tmp135305))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135304 '()))))
                                             (declare (not safe))
                                             (cons __tmp135309 __tmp135303)))
                                          (__tmp135301
                                           (let ()
                                             (declare (not safe))
                                             (cons _L130854_ '()))))
                                      (declare (not safe))
                                      (cons __tmp135302 __tmp135301))))
                               (declare (not safe))
                               (cons __tmp135314 __tmp135300))))
                        (declare (not safe))
                        (cons __tmp135299 '()))))
                 (declare (not safe))
                 (cons __tmp135315 __tmp135298))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp135321
                                                        __tmp135297)))
                                               (__tmp135295
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L130882_ '()))))
                                           (declare (not safe))
                                           (cons __tmp135296 __tmp135295))))
                                    (declare (not safe))
                                    (cons __tmp135322 __tmp135294))))
                             (declare (not safe))
                             (cons __tmp135325 __tmp135293)))))
                     _g130868130879_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g130866130897_
                                                     _E130408_))))
                                              _g130840130851_))))
                                     (_g130838130901_
                                      (_recur130410_
                                       _L130717_
                                       _L130798_
                                       (_recur130410_
                                        _L130715_
                                        _L130826_
                                        _K130416_))))))
                               _g130812130823_))))
                      (_g130810130905_ (gx#genident 'tl)))))
                _g130784130795_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g130782130909_
                                                (gx#genident 'hd)))))
                                         _g130756130767_))))
                                (_g130754130913_ (gx#genident 'e)))))
                          _g130729130740_))))
                 (_g130727130917_ _tgt130415_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont135195135196_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _hd130413_)
                                                           (if (gx#underscore?
                                                                _hd130413_)
                                                               _K130416_
                                                               (if (let ((__tmp135370
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g130441130443_)
                                    (gx#bound-identifier=?
                                     _g130441130443_
                                     _hd130413_))))
                             (declare (not safe))
                             (find __tmp135370 _kws130012_))
                           (let* ((_g130447130462_
                                   (lambda (_g130448130458_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g130448130458_)))
                                  (_g130446130513_
                                   (lambda (_g130448130466_)
                                     (if (gx#stx-pair? _g130448130466_)
                                         (let ((_e130453130469_
                                                (gx#syntax-e _g130448130466_)))
                                           (let ((_hd130452130473_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e130453130469_)))
                                                 (_tl130451130476_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e130453130469_))))
                                             (if (gx#stx-pair?
                                                  _tl130451130476_)
                                                 (let ((_e130456130479_
                                                        (gx#syntax-e
                                                         _tl130451130476_)))
                                                   (let ((_hd130455130483_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e130456130479_)))
                                                         (_tl130454130486_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e130456130479_))))
                                                     (if (gx#stx-null?
                                                          _tl130454130486_)
                                                         ((lambda (_L130489_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L130491_)
                    (let ()
                      (let ((__tmp135369 (gx#datum->syntax '#f 'if))
                            (__tmp135352
                             (let ((__tmp135355
                                    (let ((__tmp135368
                                           (gx#datum->syntax '#f 'and))
                                          (__tmp135356
                                           (let ((__tmp135365
                                                  (let ((__tmp135367
                                                         (gx#datum->syntax
                                                          '#f
                                                          'identifier?))
                                                        (__tmp135366
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L130491_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135367
                                                          __tmp135366)))
                                                 (__tmp135357
                                                  (let ((__tmp135358
                                                         (let ((__tmp135364
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'core-identifier=?))
                       (__tmp135359
                        (let ((__tmp135360
                               (let ((__tmp135361
                                      (let ((__tmp135363
                                             (gx#datum->syntax '#f 'quote))
                                            (__tmp135362
                                             (let ()
                                               (declare (not safe))
                                               (cons _L130489_ '()))))
                                        (declare (not safe))
                                        (cons __tmp135363 __tmp135362))))
                                 (declare (not safe))
                                 (cons __tmp135361 '()))))
                          (declare (not safe))
                          (cons _L130491_ __tmp135360))))
                   (declare (not safe))
                   (cons __tmp135364 __tmp135359))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135358 '()))))
                                             (declare (not safe))
                                             (cons __tmp135365 __tmp135357))))
                                      (declare (not safe))
                                      (cons __tmp135368 __tmp135356)))
                                   (__tmp135353
                                    (let ((__tmp135354
                                           (let ()
                                             (declare (not safe))
                                             (cons _E130408_ '()))))
                                      (declare (not safe))
                                      (cons _K130416_ __tmp135354))))
                               (declare (not safe))
                               (cons __tmp135355 __tmp135353))))
                        (declare (not safe))
                        (cons __tmp135369 __tmp135352))))
                  _hd130455130483_
                  _hd130452130473_)
                 (_g130447130462_ _g130448130466_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g130447130462_
                                                  _g130448130466_))))
                                         (_g130447130462_ _g130448130466_)))))
                             (_g130446130513_ (list _tgt130415_ _hd130413_)))
                           (let* ((_g130517130532_
                                   (lambda (_g130518130528_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g130518130528_)))
                                  (_g130516130576_
                                   (lambda (_g130518130536_)
                                     (if (gx#stx-pair? _g130518130536_)
                                         (let ((_e130523130539_
                                                (gx#syntax-e _g130518130536_)))
                                           (let ((_hd130522130543_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e130523130539_)))
                                                 (_tl130521130546_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e130523130539_))))
                                             (if (gx#stx-pair?
                                                  _tl130521130546_)
                                                 (let ((_e130526130549_
                                                        (gx#syntax-e
                                                         _tl130521130546_)))
                                                   (let ((_hd130525130553_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e130526130549_)))
                                                         (_tl130524130556_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e130526130549_))))
                                                     (if (gx#stx-null?
                                                          _tl130524130556_)
                                                         ((lambda (_L130559_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L130561_)
                    (let ()
                      (let ((__tmp135351 (gx#datum->syntax '#f 'let))
                            (__tmp135346
                             (let ((__tmp135348
                                    (let ((__tmp135349
                                           (let ((__tmp135350
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L130561_ '()))))
                                             (declare (not safe))
                                             (cons _L130559_ __tmp135350))))
                                      (declare (not safe))
                                      (cons __tmp135349 '())))
                                   (__tmp135347
                                    (let ()
                                      (declare (not safe))
                                      (cons _K130416_ '()))))
                               (declare (not safe))
                               (cons __tmp135348 __tmp135347))))
                        (declare (not safe))
                        (cons __tmp135351 __tmp135346))))
                  _hd130525130553_
                  _hd130522130543_)
                 (_g130517130532_ _g130518130536_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g130517130532_
                                                  _g130518130536_))))
                                         (_g130517130532_ _g130518130536_)))))
                             (_g130516130576_ (list _tgt130415_ _hd130413_)))))
                   (if (gx#stx-null? _hd130413_)
                       (let* ((_g130580130588_
                               (lambda (_g130581130584_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g130581130584_)))
                              (_g130579130606_
                               (lambda (_g130581130592_)
                                 ((lambda (_L130595_)
                                    (let ()
                                      (let ((__tmp135345
                                             (gx#datum->syntax '#f 'if))
                                            (__tmp135339
                                             (let ((__tmp135342
                                                    (let ((__tmp135344
                                                           (gx#datum->syntax
                                                            '#f
                                                            'stx-null?))
                                                          (__tmp135343
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L130595_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp135344 __tmp135343)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp135340
                                                    (let ((__tmp135341
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _E130408_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _K130416_ __tmp135341))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp135342
                                                     __tmp135340))))
                                        (declare (not safe))
                                        (cons __tmp135345 __tmp135339))))
                                  _g130581130592_))))
                         (_g130579130606_ _tgt130415_))
                       (if (gx#stx-datum? _hd130413_)
                           (let* ((_g130610130629_
                                   (lambda (_g130611130625_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g130611130625_)))
                                  (_g130609130687_
                                   (lambda (_g130611130633_)
                                     (if (gx#stx-pair? _g130611130633_)
                                         (let ((_e130617130636_
                                                (gx#syntax-e _g130611130633_)))
                                           (let ((_hd130616130640_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e130617130636_)))
                                                 (_tl130615130643_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e130617130636_))))
                                             (if (gx#stx-pair?
                                                  _tl130615130643_)
                                                 (let ((_e130620130646_
                                                        (gx#syntax-e
                                                         _tl130615130643_)))
                                                   (let ((_hd130619130650_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e130620130646_)))
                                                         (_tl130618130653_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e130620130646_))))
                                                     (if (gx#stx-pair?
                                                          _tl130618130653_)
                                                         (let ((_e130623130656_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl130618130653_)))
                   (let ((_hd130622130660_
                          (let ()
                            (declare (not safe))
                            (##car _e130623130656_)))
                         (_tl130621130663_
                          (let ()
                            (declare (not safe))
                            (##cdr _e130623130656_))))
                     (if (gx#stx-null? _tl130621130663_)
                         ((lambda (_L130666_ _L130668_ _L130669_)
                            (let ()
                              (let ((__tmp135338 (gx#datum->syntax '#f 'if))
                                    (__tmp135326
                                     (let ((__tmp135329
                                            (let ((__tmp135330
                                                   (let ((__tmp135335
                                                          (let ((__tmp135337
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'stx-e))
                        (__tmp135336
                         (let () (declare (not safe)) (cons _L130669_ '()))))
                    (declare (not safe))
                    (cons __tmp135337 __tmp135336)))
                 (__tmp135331
                  (let ((__tmp135332
                         (let ((__tmp135334 (gx#datum->syntax '#f 'quote))
                               (__tmp135333
                                (let ()
                                  (declare (not safe))
                                  (cons _L130668_ '()))))
                           (declare (not safe))
                           (cons __tmp135334 __tmp135333))))
                    (declare (not safe))
                    (cons __tmp135332 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp135335
                                                           __tmp135331))))
                                              (declare (not safe))
                                              (cons _L130666_ __tmp135330)))
                                           (__tmp135327
                                            (let ((__tmp135328
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _E130408_ '()))))
                                              (declare (not safe))
                                              (cons _K130416_ __tmp135328))))
                                       (declare (not safe))
                                       (cons __tmp135329 __tmp135327))))
                                (declare (not safe))
                                (cons __tmp135338 __tmp135326))))
                          _hd130622130660_
                          _hd130619130650_
                          _hd130616130640_)
                         (_g130610130629_ _g130611130633_))))
                 (_g130610130629_ _g130611130633_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g130610130629_
                                                  _g130611130633_))))
                                         (_g130610130629_ _g130611130633_)))))
                             (_g130609130687_
                              (list _tgt130415_
                                    _hd130413_
                                    (let ((_e130691_ (gx#stx-e _hd130413_)))
                                      (if (or (keyword? _e130691_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _e130691_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (let ()
                                                (declare (not safe))
                                                (number? _e130691_))
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _stx129858_
                            _where130403_
                            _hd130413_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx135190135191_)
                                                    (let ((_e130425130705_
                                                           (gx#syntax-e
                                                            ___stx135190135191_)))
                                                      (let ((_tl130423130712_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e130425130705_)))
                    (_hd130424130709_
                     (let () (declare (not safe)) (##car _e130425130705_))))
                (___kont135193135194_ _tl130423130712_ _hd130424130709_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont135195135196_)))))))
                                  (_recur130410_
                                   _hd130405_
                                   _tgt130010_
                                   (let ((__tmp135374
                                          (gx#datum->syntax '#f 'if))
                                         (__tmp135371
                                          (let ((__tmp135372
                                                 (let ((__tmp135373
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _E130408_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _body130407_
                                                         __tmp135373))))
                                            (declare (not safe))
                                            (cons _fender130406_
                                                  __tmp135372))))
                                     (declare (not safe))
                                     (cons __tmp135374 __tmp135371))))))
                             (_generate-clauses130018_
                              (lambda (_clauses130141_)
                                (let _lp130144_ ((_rest130147_ _clauses130141_)
                                                 (_E130149_ (gx#genident 'E))
                                                 (_r130150_ '()))
                                  (let* ((___stx135226135227_ _rest130147_)
                                         (_g130153130165_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx135226135227_))))
                                    (let ((___kont135229135230_
                                           (lambda (_L130230_ _L130232_)
                                             (let* ((___stx135206135207_
                                                     _L130232_)
                                                    (_g130244130255_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        ___stx135206135207_))))
                                               (let ((___kont135209135210_
                                                      (lambda (_L130384_)
                                                        (if (gx#stx-null?
                                                             _L130230_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L130384_)
                             (let ((__tmp135383 (gx#stx-null? _L130384_)))
                               (declare (not safe))
                               (not __tmp135383)))
                        (let ((__tmp135375
                               (let ((__tmp135376
                                      (let ((__tmp135377
                                             (gx#stx-wrap-source
                                              (let ((__tmp135382
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp135378
                                                     (let ((__tmp135379
                                                            (let ((__tmp135380
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp135381 (gx#datum->syntax '#f 'begin)))
                             (declare (not safe))
                             (cons __tmp135381 _L130384_))))
                      (declare (not safe))
                      (cons __tmp135380 '()))))
               (declare (not safe))
               (cons '() __tmp135379))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp135382 __tmp135378))
                                              (gx#stx-source _L130232_))))
                                        (declare (not safe))
                                        (cons __tmp135377 '()))))
                                 (declare (not safe))
                                 (cons _E130149_ __tmp135376))))
                          (declare (not safe))
                          (cons __tmp135375 _r130150_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _stx129858_
                         _L130232_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _stx129858_
                     _L130232_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont135211135212_
                                                      (lambda ()
                                                        (let* ((_g130266130274_
                                                                (lambda (_g130267130270_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g130267130270_)))
                       (_g130265130363_
                        (lambda (_g130267130278_)
                          ((lambda (_L130281_)
                             (let ()
                               (let* ((_g130297130305_
                                       (lambda (_g130298130301_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g130298130301_)))
                                      (_g130296130359_
                                       (lambda (_g130298130309_)
                                         ((lambda (_L130312_)
                                            (let ()
                                              (let* ((_g130325130333_
                                                      (lambda (_g130326130329_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g130326130329_)))
                                                     (_g130324130355_
                                                      (lambda (_g130326130337_)
                                                        ((lambda (_L130340_)
                                                           (let ()
                                                             (let ()
                                                               (_lp130144_
                                                                _L130230_
                                                                _L130281_
                                                                (let ((__tmp135384
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp135385
                                      (let ()
                                        (declare (not safe))
                                        (cons _L130340_ '()))))
                                 (declare (not safe))
                                 (cons _E130149_ __tmp135385))))
                          (declare (not safe))
                          (cons __tmp135384 _r130150_))))))
                 _g130326130337_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g130324130355_
                                                 (gx#stx-wrap-source
                                                  (let ((__tmp135388
                                                         (gx#datum->syntax
                                                          '#f
                                                          'lambda))
                                                        (__tmp135386
                                                         (let ((__tmp135387
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _L130312_ '()))))
                   (declare (not safe))
                   (cons '() __tmp135387))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135388
                                                          __tmp135386))
                                                  (gx#stx-source
                                                   _L130232_))))))
                                          _g130298130309_))))
                                 (_g130296130359_
                                  (_generate-clause130015_
                                   _L130232_
                                   (let ()
                                     (declare (not safe))
                                     (cons _L130281_ '())))))))
                           _g130267130278_))))
                  (_g130265130363_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      ___stx135206135207_)
                                                     (let ((_e130249130374_
                                                            (gx#syntax-e
                                                             ___stx135206135207_)))
                                                       (let ((_tl130247130381_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e130249130374_)))
                     (_hd130248130378_
                      (let () (declare (not safe)) (##car _e130249130374_))))
                 (if (gx#identifier? _hd130248130378_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g135389_|
                          _hd130248130378_)
                         (___kont135209135210_ _tl130247130381_)
                         (___kont135211135212_))
                     (___kont135211135212_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont135211135212_))))))
                                          (___kont135231135232_
                                           (lambda ()
                                             (let* ((_g130176130184_
                                                     (lambda (_g130177130180_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g130177130180_)))
                                                    (_g130175130209_
                                                     (lambda (_g130177130188_)
                                                       ((lambda (_L130191_)
                                                          (let ()
                                                            (let ((__tmp135390
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp135391
                                  (let ((__tmp135392
                                         (gx#stx-wrap-source
                                          (let ((__tmp135400
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp135393
                                                 (let ((__tmp135394
                                                        (let ((__tmp135395
                                                               (let ((__tmp135399
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'raise-syntax-error))
                             (__tmp135396
                              (let ((__tmp135397
                                     (let ((__tmp135398
                                            (let ()
                                              (declare (not safe))
                                              (cons _L130191_ '()))))
                                       (declare (not safe))
                                       (cons '"Bad syntax; invalid syntax-case clause"
                                             __tmp135398))))
                                (declare (not safe))
                                (cons '#f __tmp135397))))
                         (declare (not safe))
                         (cons __tmp135399 __tmp135396))))
                  (declare (not safe))
                  (cons __tmp135395 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '() __tmp135394))))
                                            (declare (not safe))
                                            (cons __tmp135400 __tmp135393))
                                          (gx#stx-source _stx129858_))))
                                    (declare (not safe))
                                    (cons __tmp135392 '()))))
                             (declare (not safe))
                             (cons _E130149_ __tmp135391))))
                      (declare (not safe))
                      (cons __tmp135390 _r130150_))))
                _g130177130188_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g130175130209_
                                                _tgt130010_)))))
                                      (if (gx#stx-pair? ___stx135226135227_)
                                          (let ((_e130159130220_
                                                 (gx#syntax-e
                                                  ___stx135226135227_)))
                                            (let ((_tl130157130227_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e130159130220_)))
                                                  (_hd130158130224_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e130159130220_))))
                                              (___kont135229135230_
                                               _tl130157130227_
                                               _hd130158130224_)))
                                          (___kont135231135232_))))))))
                      (let* ((_bind130020_
                              (_generate-clauses130018_ _clauses130013_))
                             (_g130023130040_
                              (lambda (_g130024130036_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g130024130036_)))
                             (_g130022130137_
                              (lambda (_g130024130044_)
                                (if (gx#stx-pair/null? _g130024130044_)
                                    (let ((_g135401_
                                           (gx#syntax-split-splice
                                            _g130024130044_
                                            '0)))
                                      (begin
                                        (let ((_g135402_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g135401_)
                                                     (##vector-length
                                                      _g135401_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g135402_ 2)))
                                              (error "Context expects 2 values"
                                                     _g135402_)))
                                        (let ((_target130026130047_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g135401_ 0)))
                                              (_tl130028130050_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g135401_ 1))))
                                          (if (gx#stx-null? _tl130028130050_)
                                              (letrec ((_loop130029130053_
                                                        (lambda (_hd130027130057_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind-try130033130060_)
                  (if (gx#stx-pair? _hd130027130057_)
                      (let ((_e130030130063_ (gx#syntax-e _hd130027130057_)))
                        (let ((_lp-hd130031130067_
                               (let ()
                                 (declare (not safe))
                                 (##car _e130030130063_)))
                              (_lp-tl130032130070_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e130030130063_))))
                          (_loop130029130053_
                           _lp-tl130032130070_
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd130031130067_
                                   _bind-try130033130060_)))))
                      (let ((_bind-try130034130073_
                             (reverse _bind-try130033130060_)))
                        ((lambda (_L130077_)
                           (let ()
                             (let* ((_g130095130103_
                                     (lambda (_g130096130099_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _g130096130099_)))
                                    (_g130094130133_
                                     (lambda (_g130096130107_)
                                       ((lambda (_L130110_)
                                          (let ()
                                            (let ()
                                              (let ((__tmp135408
                                                     (gx#datum->syntax
                                                      '#f
                                                      'let*))
                                                    (__tmp135403
                                                     (let ((__tmp135406
                                                            (let ((__tmp135407
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g130124130127_ _g130125130130_)
                             (let ()
                               (declare (not safe))
                               (cons _g130124130127_ _g130125130130_)))))
                      (declare (not safe))
                      (foldr1 __tmp135407 '() _L130077_)))
                   (__tmp135404
                    (let ((__tmp135405
                           (let () (declare (not safe)) (cons _L130110_ '()))))
                      (declare (not safe))
                      (cons __tmp135405 '()))))
               (declare (not safe))
               (cons __tmp135406 __tmp135404))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp135408
                                                      __tmp135403)))))
                                        _g130096130107_))))
                               (_g130094130133_
                                (car (let ()
                                       (declare (not safe))
                                       (last _bind130020_)))))))
                         _bind-try130034130073_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop130029130053_
                                                 _target130026130047_
                                                 '()))
                                              (_g130023130040_
                                               _g130024130044_)))))
                                    (_g130023130040_ _g130024130044_)))))
                        (_g130022130137_ _bind130020_))))))
          (let* ((_g129864129883_
                  (lambda (_g129865129879_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g129865129879_)))
                 (_g129863130006_
                  (lambda (_g129865129887_)
                    (if (gx#stx-pair? _g129865129887_)
                        (let ((_e129871129890_ (gx#syntax-e _g129865129887_)))
                          (let ((_hd129870129894_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e129871129890_)))
                                (_tl129869129897_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e129871129890_))))
                            (if (gx#stx-pair? _tl129869129897_)
                                (let ((_e129874129900_
                                       (gx#syntax-e _tl129869129897_)))
                                  (let ((_hd129873129904_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e129874129900_)))
                                        (_tl129872129907_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e129874129900_))))
                                    (if (gx#stx-pair? _tl129872129907_)
                                        (let ((_e129877129910_
                                               (gx#syntax-e _tl129872129907_)))
                                          (let ((_hd129876129914_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e129877129910_)))
                                                (_tl129875129917_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e129877129910_))))
                                            ((lambda (_L129920_
                                                      _L129922_
                                                      _L129923_)
                                               (if (and (gx#identifier-list?
                                                         _L129922_)
                                                        (gx#stx-list?
                                                         _L129920_))
                                                   (let* ((_g129941129949_
                                                           (lambda (_g129942129945_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g129942129945_)))
                                                          (_g129940130002_
                                                           (lambda (_g129942129953_)
                                                             ((lambda (_L129956_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g129968129976_
                                  (lambda (_g129969129972_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g129969129972_)))
                                 (_g129967129998_
                                  (lambda (_g129969129980_)
                                    ((lambda (_L129983_)
                                       (let ()
                                         (let ()
                                           (let ((__tmp135414
                                                  (gx#datum->syntax '#f 'let))
                                                 (__tmp135409
                                                  (let ((__tmp135411
                                                         (let ((__tmp135412
                                                                (let ((__tmp135413
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L129923_ '()))))
                          (declare (not safe))
                          (cons _L129956_ __tmp135413))))
                   (declare (not safe))
                   (cons __tmp135412 '())))
                (__tmp135410
                 (let () (declare (not safe)) (cons _L129983_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135411
                                                          __tmp135410))))
                                             (declare (not safe))
                                             (cons __tmp135414 __tmp135409)))))
                                     _g129969129980_))))
                            (_g129967129998_
                             (_generate129861_
                              _L129956_
                              (gx#syntax->list _L129922_)
                              _L129920_)))))
                      _g129942129953_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g129940130002_
                                                      (gx#genident 'e)))
                                                   (_g129864129883_
                                                    _g129865129887_)))
                                             _tl129875129917_
                                             _hd129876129914_
                                             _hd129873129904_)))
                                        (_g129864129883_ _g129865129887_))))
                                (_g129864129883_ _g129865129887_))))
                        (_g129864129883_ _g129865129887_)))))
            (_g129863130006_ _stx129858_)))))))
