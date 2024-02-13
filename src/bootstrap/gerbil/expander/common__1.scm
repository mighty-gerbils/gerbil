(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g136342_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g136344_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g136346_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g136351_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g136354_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g136359_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g136362_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g136367_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g136370_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g136375_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g136378_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g136485_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj136337
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
           __obj136337
           'gerbil#AST::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj136337
           'syntax
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj136337
           '(e source)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj136337
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj136337
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj136337
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj136337
           '#f
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj136337
           '#f
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp136341 |gx[1]#_g136342_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj136337
           __tmp136341
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp136343 |gx[1]#_g136344_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj136337
           __tmp136343
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp136345 |gx[1]#_g136346_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj136337
           __tmp136345
           '11
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp136347
               (let ((__tmp136352
                      (let ((__tmp136353 |gx[1]#_g136354_|))
                        (declare (not safe))
                        (cons 'e __tmp136353)))
                     (__tmp136348
                      (let ((__tmp136349
                             (let ((__tmp136350 |gx[1]#_g136351_|))
                               (declare (not safe))
                               (cons 'source __tmp136350))))
                        (declare (not safe))
                        (cons __tmp136349 '()))))
                 (declare (not safe))
                 (cons __tmp136352 __tmp136348))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj136337
           __tmp136347
           '12
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp136355
               (let ((__tmp136360
                      (let ((__tmp136361 |gx[1]#_g136362_|))
                        (declare (not safe))
                        (cons 'e __tmp136361)))
                     (__tmp136356
                      (let ((__tmp136357
                             (let ((__tmp136358 |gx[1]#_g136359_|))
                               (declare (not safe))
                               (cons 'source __tmp136358))))
                        (declare (not safe))
                        (cons __tmp136357 '()))))
                 (declare (not safe))
                 (cons __tmp136360 __tmp136356))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj136337
           __tmp136355
           '13
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp136363
               (let ((__tmp136368
                      (let ((__tmp136369 |gx[1]#_g136370_|))
                        (declare (not safe))
                        (cons 'e __tmp136369)))
                     (__tmp136364
                      (let ((__tmp136365
                             (let ((__tmp136366 |gx[1]#_g136367_|))
                               (declare (not safe))
                               (cons 'source __tmp136366))))
                        (declare (not safe))
                        (cons __tmp136365 '()))))
                 (declare (not safe))
                 (cons __tmp136368 __tmp136364))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj136337
           __tmp136363
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp136371
               (let ((__tmp136376
                      (let ((__tmp136377 |gx[1]#_g136378_|))
                        (declare (not safe))
                        (cons 'e __tmp136377)))
                     (__tmp136372
                      (let ((__tmp136373
                             (let ((__tmp136374 |gx[1]#_g136375_|))
                               (declare (not safe))
                               (cons 'source __tmp136374))))
                        (declare (not safe))
                        (cons __tmp136373 '()))))
                 (declare (not safe))
                 (cons __tmp136376 __tmp136372))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj136337
           __tmp136371
           '15
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj136337))
    (define |gx[:0:]#check-procedure|
      (lambda (_$stx130389_)
        (let* ((_g130393130407_
                (lambda (_g130394130403_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g130394130403_)))
               (_g130392130449_
                (lambda (_g130394130411_)
                  (if (gx#stx-pair? _g130394130411_)
                      (let ((_e130396130414_ (gx#syntax-e _g130394130411_)))
                        (let ((_hd130397130418_
                               (let ()
                                 (declare (not safe))
                                 (##car _e130396130414_)))
                              (_tl130398130421_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e130396130414_))))
                          (if (gx#stx-pair? _tl130398130421_)
                              (let ((_e130399130424_
                                     (gx#syntax-e _tl130398130421_)))
                                (let ((_hd130400130428_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e130399130424_)))
                                      (_tl130401130431_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e130399130424_))))
                                  (if (gx#stx-null? _tl130401130431_)
                                      ((lambda (_L130434_)
                                         (let ((__tmp136388
                                                (gx#datum->syntax '#f 'unless))
                                               (__tmp136379
                                                (let ((__tmp136385
                                                       (let ((__tmp136387
                                                              (gx#datum->syntax
                                                               '#f
                                                               'procedure?))
                                                             (__tmp136386
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L130434_ '()))))
                 (declare (not safe))
                 (cons __tmp136387 __tmp136386)))
              (__tmp136380
               (let ((__tmp136381
                      (let ((__tmp136384 (gx#datum->syntax '#f 'error))
                            (__tmp136382
                             (let ((__tmp136383
                                    (let ()
                                      (declare (not safe))
                                      (cons _L130434_ '()))))
                               (declare (not safe))
                               (cons '"expected procedure" __tmp136383))))
                        (declare (not safe))
                        (cons __tmp136384 __tmp136382))))
                 (declare (not safe))
                 (cons __tmp136381 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp136385
                                                        __tmp136380))))
                                           (declare (not safe))
                                           (cons __tmp136388 __tmp136379)))
                                       _hd130400130428_)
                                      (_g130393130407_ _g130394130411_))))
                              (_g130393130407_ _g130394130411_))))
                      (_g130393130407_ _g130394130411_)))))
          (_g130392130449_ _$stx130389_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_stx130453_)
        (letrec ((_generate130456_
                  (lambda (_tgt130605_ _kws130607_ _clauses130608_)
                    (letrec ((_generate-clause130610_
                              (lambda (_hd131520_ _E131522_)
                                (let* ((___stx136240136241_ _hd131520_)
                                       (_g131526131553_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx136240136241_))))
                                  (let ((___kont136243136244_
                                         (lambda (_L131649_ _L131651_)
                                           (_generate1130612_
                                            _hd131520_
                                            _L131651_
                                            '#t
                                            _L131649_
                                            _E131522_)))
                                        (___kont136245136246_
                                         (lambda (_L131601_
                                                  _L131603_
                                                  _L131604_)
                                           (_generate1130612_
                                            _hd131520_
                                            _L131604_
                                            _L131603_
                                            _L131601_
                                            _E131522_)))
                                        (___kont136247136248_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _stx130453_
                                            _hd131520_))))
                                    (if (gx#stx-pair? ___stx136240136241_)
                                        (let ((_e131530131629_
                                               (gx#syntax-e
                                                ___stx136240136241_)))
                                          (let ((_tl131532131636_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e131530131629_)))
                                                (_hd131531131633_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e131530131629_))))
                                            (if (gx#stx-pair? _tl131532131636_)
                                                (let ((_e131533131639_
                                                       (gx#syntax-e
                                                        _tl131532131636_)))
                                                  (let ((_tl131535131646_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e131533131639_)))
                                                        (_hd131534131643_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e131533131639_))))
                                                    (if (gx#stx-null?
                                                         _tl131535131646_)
                                                        (___kont136243136244_
                                                         _hd131534131643_
                                                         _hd131531131633_)
                                                        (if (gx#stx-pair?
                                                             _tl131535131646_)
                                                            (let ((_e131545131591_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl131535131646_)))
                      (let ((_tl131547131598_
                             (let ()
                               (declare (not safe))
                               (##cdr _e131545131591_)))
                            (_hd131546131595_
                             (let ()
                               (declare (not safe))
                               (##car _e131545131591_))))
                        (if (gx#stx-null? _tl131547131598_)
                            (___kont136245136246_
                             _hd131546131595_
                             _hd131534131643_
                             _hd131531131633_)
                            (___kont136247136248_))))
                    (___kont136247136248_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont136247136248_))))
                                        (___kont136247136248_))))))
                             (_generate1130612_
                              (lambda (_where130998_
                                       _hd131000_
                                       _fender131001_
                                       _body131002_
                                       _E131003_)
                                (letrec ((_recur131005_
                                          (lambda (_hd131008_
                                                   _tgt131010_
                                                   _K131011_)
                                            (let* ((___stx136286136287_
                                                    _hd131008_)
                                                   (_g131014131026_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx136286136287_))))
                                              (let ((___kont136289136290_
                                                     (lambda (_L131310_
                                                              _L131312_)
                                                       (let* ((_g131323131331_
                                                               (lambda (_g131324131327_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g131324131327_)))
                      (_g131322131512_
                       (lambda (_g131324131335_)
                         ((lambda (_L131338_)
                            (let ()
                              (let* ((_g131350131358_
                                      (lambda (_g131351131354_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g131351131354_)))
                                     (_g131349131508_
                                      (lambda (_g131351131362_)
                                        ((lambda (_L131365_)
                                           (let ()
                                             (let* ((_g131378131386_
                                                     (lambda (_g131379131382_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g131379131382_)))
                                                    (_g131377131504_
                                                     (lambda (_g131379131390_)
                                                       ((lambda (_L131393_)
                                                          (let ()
                                                            (let* ((_g131406131414_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g131407131410_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g131407131410_)))
                           (_g131405131500_
                            (lambda (_g131407131418_)
                              ((lambda (_L131421_)
                                 (let ()
                                   (let* ((_g131434131442_
                                           (lambda (_g131435131438_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g131435131438_)))
                                          (_g131433131496_
                                           (lambda (_g131435131446_)
                                             ((lambda (_L131449_)
                                                (let ()
                                                  (let* ((_g131462131470_
                                                          (lambda (_g131463131466_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g131463131466_)))
                                                         (_g131461131492_
                                                          (lambda (_g131463131474_)
                                                            ((lambda (_L131477_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((__tmp136421 (gx#datum->syntax '#f 'if))
                                 (__tmp136389
                                  (let ((__tmp136418
                                         (let ((__tmp136420
                                                (gx#datum->syntax
                                                 '#f
                                                 'stx-pair?))
                                               (__tmp136419
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L131338_ '()))))
                                           (declare (not safe))
                                           (cons __tmp136420 __tmp136419)))
                                        (__tmp136390
                                         (let ((__tmp136392
                                                (let ((__tmp136417
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp136393
                                                       (let ((__tmp136411
                                                              (let ((__tmp136412
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp136413
                                    (let ((__tmp136414
                                           (let ((__tmp136416
                                                  (gx#datum->syntax
                                                   '#f
                                                   'syntax-e))
                                                 (__tmp136415
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L131338_ '()))))
                                             (declare (not safe))
                                             (cons __tmp136416 __tmp136415))))
                                      (declare (not safe))
                                      (cons __tmp136414 '()))))
                               (declare (not safe))
                               (cons _L131365_ __tmp136413))))
                        (declare (not safe))
                        (cons __tmp136412 '())))
                     (__tmp136394
                      (let ((__tmp136395
                             (let ((__tmp136410 (gx#datum->syntax '#f 'let))
                                   (__tmp136396
                                    (let ((__tmp136398
                                           (let ((__tmp136405
                                                  (let ((__tmp136406
                                                         (let ((__tmp136407
                                                                (let ((__tmp136409
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '##car))
                              (__tmp136408
                               (let ()
                                 (declare (not safe))
                                 (cons _L131365_ '()))))
                          (declare (not safe))
                          (cons __tmp136409 __tmp136408))))
                   (declare (not safe))
                   (cons __tmp136407 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L131393_
                                                          __tmp136406)))
                                                 (__tmp136399
                                                  (let ((__tmp136400
                                                         (let ((__tmp136401
                                                                (let ((__tmp136402
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp136404
                                      (gx#datum->syntax '#f '##cdr))
                                     (__tmp136403
                                      (let ()
                                        (declare (not safe))
                                        (cons _L131365_ '()))))
                                 (declare (not safe))
                                 (cons __tmp136404 __tmp136403))))
                          (declare (not safe))
                          (cons __tmp136402 '()))))
                   (declare (not safe))
                   (cons _L131421_ __tmp136401))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp136400 '()))))
                                             (declare (not safe))
                                             (cons __tmp136405 __tmp136399)))
                                          (__tmp136397
                                           (let ()
                                             (declare (not safe))
                                             (cons _L131449_ '()))))
                                      (declare (not safe))
                                      (cons __tmp136398 __tmp136397))))
                               (declare (not safe))
                               (cons __tmp136410 __tmp136396))))
                        (declare (not safe))
                        (cons __tmp136395 '()))))
                 (declare (not safe))
                 (cons __tmp136411 __tmp136394))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp136417
                                                        __tmp136393)))
                                               (__tmp136391
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L131477_ '()))))
                                           (declare (not safe))
                                           (cons __tmp136392 __tmp136391))))
                                    (declare (not safe))
                                    (cons __tmp136418 __tmp136390))))
                             (declare (not safe))
                             (cons __tmp136421 __tmp136389)))))
                     _g131463131474_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g131461131492_
                                                     _E131003_))))
                                              _g131435131446_))))
                                     (_g131433131496_
                                      (_recur131005_
                                       _L131312_
                                       _L131393_
                                       (_recur131005_
                                        _L131310_
                                        _L131421_
                                        _K131011_))))))
                               _g131407131418_))))
                      (_g131405131500_ (gx#genident 'tl)))))
                _g131379131390_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g131377131504_
                                                (gx#genident 'hd)))))
                                         _g131351131362_))))
                                (_g131349131508_ (gx#genident 'e)))))
                          _g131324131335_))))
                 (_g131322131512_ _tgt131010_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont136291136292_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _hd131008_)
                                                           (if (gx#underscore?
                                                                _hd131008_)
                                                               _K131011_
                                                               (if (let ((__tmp136422
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g131036131038_)
                                    (gx#bound-identifier=?
                                     _g131036131038_
                                     _hd131008_))))
                             (declare (not safe))
                             (find __tmp136422 _kws130607_))
                           (let* ((_g131042131057_
                                   (lambda (_g131043131053_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g131043131053_)))
                                  (_g131041131108_
                                   (lambda (_g131043131061_)
                                     (if (gx#stx-pair? _g131043131061_)
                                         (let ((_e131046131064_
                                                (gx#syntax-e _g131043131061_)))
                                           (let ((_hd131047131068_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e131046131064_)))
                                                 (_tl131048131071_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e131046131064_))))
                                             (if (gx#stx-pair?
                                                  _tl131048131071_)
                                                 (let ((_e131049131074_
                                                        (gx#syntax-e
                                                         _tl131048131071_)))
                                                   (let ((_hd131050131078_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e131049131074_)))
                                                         (_tl131051131081_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e131049131074_))))
                                                     (if (gx#stx-null?
                                                          _tl131051131081_)
                                                         ((lambda (_L131084_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L131086_)
                    (let ()
                      (let ((__tmp136440 (gx#datum->syntax '#f 'if))
                            (__tmp136423
                             (let ((__tmp136426
                                    (let ((__tmp136439
                                           (gx#datum->syntax '#f 'and))
                                          (__tmp136427
                                           (let ((__tmp136436
                                                  (let ((__tmp136438
                                                         (gx#datum->syntax
                                                          '#f
                                                          'identifier?))
                                                        (__tmp136437
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L131086_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp136438
                                                          __tmp136437)))
                                                 (__tmp136428
                                                  (let ((__tmp136429
                                                         (let ((__tmp136435
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'core-identifier=?))
                       (__tmp136430
                        (let ((__tmp136431
                               (let ((__tmp136432
                                      (let ((__tmp136434
                                             (gx#datum->syntax '#f 'quote))
                                            (__tmp136433
                                             (let ()
                                               (declare (not safe))
                                               (cons _L131084_ '()))))
                                        (declare (not safe))
                                        (cons __tmp136434 __tmp136433))))
                                 (declare (not safe))
                                 (cons __tmp136432 '()))))
                          (declare (not safe))
                          (cons _L131086_ __tmp136431))))
                   (declare (not safe))
                   (cons __tmp136435 __tmp136430))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp136429 '()))))
                                             (declare (not safe))
                                             (cons __tmp136436 __tmp136428))))
                                      (declare (not safe))
                                      (cons __tmp136439 __tmp136427)))
                                   (__tmp136424
                                    (let ((__tmp136425
                                           (let ()
                                             (declare (not safe))
                                             (cons _E131003_ '()))))
                                      (declare (not safe))
                                      (cons _K131011_ __tmp136425))))
                               (declare (not safe))
                               (cons __tmp136426 __tmp136424))))
                        (declare (not safe))
                        (cons __tmp136440 __tmp136423))))
                  _hd131050131078_
                  _hd131047131068_)
                 (_g131042131057_ _g131043131061_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g131042131057_
                                                  _g131043131061_))))
                                         (_g131042131057_ _g131043131061_)))))
                             (_g131041131108_ (list _tgt131010_ _hd131008_)))
                           (let* ((_g131112131127_
                                   (lambda (_g131113131123_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g131113131123_)))
                                  (_g131111131171_
                                   (lambda (_g131113131131_)
                                     (if (gx#stx-pair? _g131113131131_)
                                         (let ((_e131116131134_
                                                (gx#syntax-e _g131113131131_)))
                                           (let ((_hd131117131138_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e131116131134_)))
                                                 (_tl131118131141_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e131116131134_))))
                                             (if (gx#stx-pair?
                                                  _tl131118131141_)
                                                 (let ((_e131119131144_
                                                        (gx#syntax-e
                                                         _tl131118131141_)))
                                                   (let ((_hd131120131148_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e131119131144_)))
                                                         (_tl131121131151_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e131119131144_))))
                                                     (if (gx#stx-null?
                                                          _tl131121131151_)
                                                         ((lambda (_L131154_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L131156_)
                    (let ()
                      (let ((__tmp136446 (gx#datum->syntax '#f 'let))
                            (__tmp136441
                             (let ((__tmp136443
                                    (let ((__tmp136444
                                           (let ((__tmp136445
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L131156_ '()))))
                                             (declare (not safe))
                                             (cons _L131154_ __tmp136445))))
                                      (declare (not safe))
                                      (cons __tmp136444 '())))
                                   (__tmp136442
                                    (let ()
                                      (declare (not safe))
                                      (cons _K131011_ '()))))
                               (declare (not safe))
                               (cons __tmp136443 __tmp136442))))
                        (declare (not safe))
                        (cons __tmp136446 __tmp136441))))
                  _hd131120131148_
                  _hd131117131138_)
                 (_g131112131127_ _g131113131131_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g131112131127_
                                                  _g131113131131_))))
                                         (_g131112131127_ _g131113131131_)))))
                             (_g131111131171_ (list _tgt131010_ _hd131008_)))))
                   (if (gx#stx-null? _hd131008_)
                       (let* ((_g131175131183_
                               (lambda (_g131176131179_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g131176131179_)))
                              (_g131174131201_
                               (lambda (_g131176131187_)
                                 ((lambda (_L131190_)
                                    (let ()
                                      (let ((__tmp136453
                                             (gx#datum->syntax '#f 'if))
                                            (__tmp136447
                                             (let ((__tmp136450
                                                    (let ((__tmp136452
                                                           (gx#datum->syntax
                                                            '#f
                                                            'stx-null?))
                                                          (__tmp136451
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L131190_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp136452 __tmp136451)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp136448
                                                    (let ((__tmp136449
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _E131003_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _K131011_ __tmp136449))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp136450
                                                     __tmp136448))))
                                        (declare (not safe))
                                        (cons __tmp136453 __tmp136447))))
                                  _g131176131187_))))
                         (_g131174131201_ _tgt131010_))
                       (if (gx#stx-datum? _hd131008_)
                           (let* ((_g131205131224_
                                   (lambda (_g131206131220_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g131206131220_)))
                                  (_g131204131282_
                                   (lambda (_g131206131228_)
                                     (if (gx#stx-pair? _g131206131228_)
                                         (let ((_e131210131231_
                                                (gx#syntax-e _g131206131228_)))
                                           (let ((_hd131211131235_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e131210131231_)))
                                                 (_tl131212131238_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e131210131231_))))
                                             (if (gx#stx-pair?
                                                  _tl131212131238_)
                                                 (let ((_e131213131241_
                                                        (gx#syntax-e
                                                         _tl131212131238_)))
                                                   (let ((_hd131214131245_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e131213131241_)))
                                                         (_tl131215131248_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e131213131241_))))
                                                     (if (gx#stx-pair?
                                                          _tl131215131248_)
                                                         (let ((_e131216131251_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl131215131248_)))
                   (let ((_hd131217131255_
                          (let ()
                            (declare (not safe))
                            (##car _e131216131251_)))
                         (_tl131218131258_
                          (let ()
                            (declare (not safe))
                            (##cdr _e131216131251_))))
                     (if (gx#stx-null? _tl131218131258_)
                         ((lambda (_L131261_ _L131263_ _L131264_)
                            (let ()
                              (let ((__tmp136466 (gx#datum->syntax '#f 'if))
                                    (__tmp136454
                                     (let ((__tmp136457
                                            (let ((__tmp136458
                                                   (let ((__tmp136463
                                                          (let ((__tmp136465
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'stx-e))
                        (__tmp136464
                         (let () (declare (not safe)) (cons _L131264_ '()))))
                    (declare (not safe))
                    (cons __tmp136465 __tmp136464)))
                 (__tmp136459
                  (let ((__tmp136460
                         (let ((__tmp136462 (gx#datum->syntax '#f 'quote))
                               (__tmp136461
                                (let ()
                                  (declare (not safe))
                                  (cons _L131263_ '()))))
                           (declare (not safe))
                           (cons __tmp136462 __tmp136461))))
                    (declare (not safe))
                    (cons __tmp136460 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp136463
                                                           __tmp136459))))
                                              (declare (not safe))
                                              (cons _L131261_ __tmp136458)))
                                           (__tmp136455
                                            (let ((__tmp136456
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _E131003_ '()))))
                                              (declare (not safe))
                                              (cons _K131011_ __tmp136456))))
                                       (declare (not safe))
                                       (cons __tmp136457 __tmp136455))))
                                (declare (not safe))
                                (cons __tmp136466 __tmp136454))))
                          _hd131217131255_
                          _hd131214131245_
                          _hd131211131235_)
                         (_g131205131224_ _g131206131228_))))
                 (_g131205131224_ _g131206131228_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g131205131224_
                                                  _g131206131228_))))
                                         (_g131205131224_ _g131206131228_)))))
                             (_g131204131282_
                              (list _tgt131010_
                                    _hd131008_
                                    (let ((_e131286_ (gx#stx-e _hd131008_)))
                                      (if (or (keyword? _e131286_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _e131286_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (let ()
                                                (declare (not safe))
                                                (number? _e131286_))
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _stx130453_
                            _where130998_
                            _hd131008_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx136286136287_)
                                                    (let ((_e131018131300_
                                                           (gx#syntax-e
                                                            ___stx136286136287_)))
                                                      (let ((_tl131020131307_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e131018131300_)))
                    (_hd131019131304_
                     (let () (declare (not safe)) (##car _e131018131300_))))
                (___kont136289136290_ _tl131020131307_ _hd131019131304_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont136291136292_)))))))
                                  (_recur131005_
                                   _hd131000_
                                   _tgt130605_
                                   (let ((__tmp136470
                                          (gx#datum->syntax '#f 'if))
                                         (__tmp136467
                                          (let ((__tmp136468
                                                 (let ((__tmp136469
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _E131003_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _body131002_
                                                         __tmp136469))))
                                            (declare (not safe))
                                            (cons _fender131001_
                                                  __tmp136468))))
                                     (declare (not safe))
                                     (cons __tmp136470 __tmp136467))))))
                             (_generate-clauses130613_
                              (lambda (_clauses130736_)
                                (let _lp130739_ ((_rest130742_ _clauses130736_)
                                                 (_E130744_ (gx#genident 'E))
                                                 (_r130745_ '()))
                                  (let* ((___stx136322136323_ _rest130742_)
                                         (_g130748130760_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx136322136323_))))
                                    (let ((___kont136325136326_
                                           (lambda (_L130825_ _L130827_)
                                             (let* ((___stx136302136303_
                                                     _L130827_)
                                                    (_g130839130850_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        ___stx136302136303_))))
                                               (let ((___kont136305136306_
                                                      (lambda (_L130979_)
                                                        (if (gx#stx-null?
                                                             _L130825_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L130979_)
                             (let ((__tmp136471 (gx#stx-null? _L130979_)))
                               (declare (not safe))
                               (not __tmp136471)))
                        (let ((__tmp136472
                               (let ((__tmp136473
                                      (let ((__tmp136474
                                             (gx#stx-wrap-source
                                              (let ((__tmp136479
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp136475
                                                     (let ((__tmp136476
                                                            (let ((__tmp136477
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp136478 (gx#datum->syntax '#f 'begin)))
                             (declare (not safe))
                             (cons __tmp136478 _L130979_))))
                      (declare (not safe))
                      (cons __tmp136477 '()))))
               (declare (not safe))
               (cons '() __tmp136476))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp136479 __tmp136475))
                                              (gx#stx-source _L130827_))))
                                        (declare (not safe))
                                        (cons __tmp136474 '()))))
                                 (declare (not safe))
                                 (cons _E130744_ __tmp136473))))
                          (declare (not safe))
                          (cons __tmp136472 _r130745_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _stx130453_
                         _L130827_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _stx130453_
                     _L130827_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont136307136308_
                                                      (lambda ()
                                                        (let* ((_g130861130869_
                                                                (lambda (_g130862130865_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g130862130865_)))
                       (_g130860130958_
                        (lambda (_g130862130873_)
                          ((lambda (_L130876_)
                             (let ()
                               (let* ((_g130892130900_
                                       (lambda (_g130893130896_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g130893130896_)))
                                      (_g130891130954_
                                       (lambda (_g130893130904_)
                                         ((lambda (_L130907_)
                                            (let ()
                                              (let* ((_g130920130928_
                                                      (lambda (_g130921130924_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g130921130924_)))
                                                     (_g130919130950_
                                                      (lambda (_g130921130932_)
                                                        ((lambda (_L130935_)
                                                           (let ()
                                                             (let ()
                                                               (_lp130739_
                                                                _L130825_
                                                                _L130876_
                                                                (let ((__tmp136480
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp136481
                                      (let ()
                                        (declare (not safe))
                                        (cons _L130935_ '()))))
                                 (declare (not safe))
                                 (cons _E130744_ __tmp136481))))
                          (declare (not safe))
                          (cons __tmp136480 _r130745_))))))
                 _g130921130932_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g130919130950_
                                                 (gx#stx-wrap-source
                                                  (let ((__tmp136484
                                                         (gx#datum->syntax
                                                          '#f
                                                          'lambda))
                                                        (__tmp136482
                                                         (let ((__tmp136483
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _L130907_ '()))))
                   (declare (not safe))
                   (cons '() __tmp136483))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp136484
                                                          __tmp136482))
                                                  (gx#stx-source
                                                   _L130827_))))))
                                          _g130893130904_))))
                                 (_g130891130954_
                                  (_generate-clause130610_
                                   _L130827_
                                   (let ()
                                     (declare (not safe))
                                     (cons _L130876_ '())))))))
                           _g130862130873_))))
                  (_g130860130958_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      ___stx136302136303_)
                                                     (let ((_e130842130969_
                                                            (gx#syntax-e
                                                             ___stx136302136303_)))
                                                       (let ((_tl130844130976_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e130842130969_)))
                     (_hd130843130973_
                      (let () (declare (not safe)) (##car _e130842130969_))))
                 (if (gx#identifier? _hd130843130973_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g136485_|
                          _hd130843130973_)
                         (___kont136305136306_ _tl130844130976_)
                         (___kont136307136308_))
                     (___kont136307136308_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont136307136308_))))))
                                          (___kont136327136328_
                                           (lambda ()
                                             (let* ((_g130771130779_
                                                     (lambda (_g130772130775_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g130772130775_)))
                                                    (_g130770130804_
                                                     (lambda (_g130772130783_)
                                                       ((lambda (_L130786_)
                                                          (let ()
                                                            (let ((__tmp136486
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp136487
                                  (let ((__tmp136488
                                         (gx#stx-wrap-source
                                          (let ((__tmp136496
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp136489
                                                 (let ((__tmp136490
                                                        (let ((__tmp136491
                                                               (let ((__tmp136495
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'raise-syntax-error))
                             (__tmp136492
                              (let ((__tmp136493
                                     (let ((__tmp136494
                                            (let ()
                                              (declare (not safe))
                                              (cons _L130786_ '()))))
                                       (declare (not safe))
                                       (cons '"Bad syntax; invalid syntax-case clause"
                                             __tmp136494))))
                                (declare (not safe))
                                (cons '#f __tmp136493))))
                         (declare (not safe))
                         (cons __tmp136495 __tmp136492))))
                  (declare (not safe))
                  (cons __tmp136491 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '() __tmp136490))))
                                            (declare (not safe))
                                            (cons __tmp136496 __tmp136489))
                                          (gx#stx-source _stx130453_))))
                                    (declare (not safe))
                                    (cons __tmp136488 '()))))
                             (declare (not safe))
                             (cons _E130744_ __tmp136487))))
                      (declare (not safe))
                      (cons __tmp136486 _r130745_))))
                _g130772130783_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g130770130804_
                                                _tgt130605_)))))
                                      (if (gx#stx-pair? ___stx136322136323_)
                                          (let ((_e130752130815_
                                                 (gx#syntax-e
                                                  ___stx136322136323_)))
                                            (let ((_tl130754130822_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e130752130815_)))
                                                  (_hd130753130819_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e130752130815_))))
                                              (___kont136325136326_
                                               _tl130754130822_
                                               _hd130753130819_)))
                                          (___kont136327136328_))))))))
                      (let* ((_bind130615_
                              (_generate-clauses130613_ _clauses130608_))
                             (_g130618130635_
                              (lambda (_g130619130631_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g130619130631_)))
                             (_g130617130732_
                              (lambda (_g130619130639_)
                                (if (gx#stx-pair/null? _g130619130639_)
                                    (let ((_g136497_
                                           (gx#syntax-split-splice
                                            _g130619130639_
                                            '0)))
                                      (begin
                                        (let ((_g136498_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g136497_)
                                                     (##vector-length
                                                      _g136497_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g136498_ 2)))
                                              (error "Context expects 2 values"
                                                     _g136498_)))
                                        (let ((_target130621130642_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g136497_ 0)))
                                              (_tl130623130645_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g136497_ 1))))
                                          (if (gx#stx-null? _tl130623130645_)
                                              (letrec ((_loop130624130648_
                                                        (lambda (_hd130622130652_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind-try130628130655_)
                  (if (gx#stx-pair? _hd130622130652_)
                      (let ((_e130625130658_ (gx#syntax-e _hd130622130652_)))
                        (let ((_lp-hd130626130662_
                               (let ()
                                 (declare (not safe))
                                 (##car _e130625130658_)))
                              (_lp-tl130627130665_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e130625130658_))))
                          (_loop130624130648_
                           _lp-tl130627130665_
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd130626130662_
                                   _bind-try130628130655_)))))
                      (let ((_bind-try130629130668_
                             (reverse _bind-try130628130655_)))
                        ((lambda (_L130672_)
                           (let ()
                             (let* ((_g130690130698_
                                     (lambda (_g130691130694_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _g130691130694_)))
                                    (_g130689130728_
                                     (lambda (_g130691130702_)
                                       ((lambda (_L130705_)
                                          (let ()
                                            (let ()
                                              (let ((__tmp136504
                                                     (gx#datum->syntax
                                                      '#f
                                                      'let*))
                                                    (__tmp136499
                                                     (let ((__tmp136502
                                                            (let ((__tmp136503
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g130719130722_ _g130720130725_)
                             (let ()
                               (declare (not safe))
                               (cons _g130719130722_ _g130720130725_)))))
                      (declare (not safe))
                      (foldr1 __tmp136503 '() _L130672_)))
                   (__tmp136500
                    (let ((__tmp136501
                           (let () (declare (not safe)) (cons _L130705_ '()))))
                      (declare (not safe))
                      (cons __tmp136501 '()))))
               (declare (not safe))
               (cons __tmp136502 __tmp136500))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp136504
                                                      __tmp136499)))))
                                        _g130691130702_))))
                               (_g130689130728_
                                (car (let ()
                                       (declare (not safe))
                                       (last _bind130615_)))))))
                         _bind-try130629130668_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop130624130648_
                                                 _target130621130642_
                                                 '()))
                                              (_g130618130635_
                                               _g130619130639_)))))
                                    (_g130618130635_ _g130619130639_)))))
                        (_g130617130732_ _bind130615_))))))
          (let* ((_g130459130478_
                  (lambda (_g130460130474_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g130460130474_)))
                 (_g130458130601_
                  (lambda (_g130460130482_)
                    (if (gx#stx-pair? _g130460130482_)
                        (let ((_e130464130485_ (gx#syntax-e _g130460130482_)))
                          (let ((_hd130465130489_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e130464130485_)))
                                (_tl130466130492_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e130464130485_))))
                            (if (gx#stx-pair? _tl130466130492_)
                                (let ((_e130467130495_
                                       (gx#syntax-e _tl130466130492_)))
                                  (let ((_hd130468130499_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e130467130495_)))
                                        (_tl130469130502_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e130467130495_))))
                                    (if (gx#stx-pair? _tl130469130502_)
                                        (let ((_e130470130505_
                                               (gx#syntax-e _tl130469130502_)))
                                          (let ((_hd130471130509_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e130470130505_)))
                                                (_tl130472130512_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e130470130505_))))
                                            ((lambda (_L130515_
                                                      _L130517_
                                                      _L130518_)
                                               (if (and (gx#identifier-list?
                                                         _L130517_)
                                                        (gx#stx-list?
                                                         _L130515_))
                                                   (let* ((_g130536130544_
                                                           (lambda (_g130537130540_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g130537130540_)))
                                                          (_g130535130597_
                                                           (lambda (_g130537130548_)
                                                             ((lambda (_L130551_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g130563130571_
                                  (lambda (_g130564130567_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g130564130567_)))
                                 (_g130562130593_
                                  (lambda (_g130564130575_)
                                    ((lambda (_L130578_)
                                       (let ()
                                         (let ()
                                           (let ((__tmp136510
                                                  (gx#datum->syntax '#f 'let))
                                                 (__tmp136505
                                                  (let ((__tmp136507
                                                         (let ((__tmp136508
                                                                (let ((__tmp136509
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L130518_ '()))))
                          (declare (not safe))
                          (cons _L130551_ __tmp136509))))
                   (declare (not safe))
                   (cons __tmp136508 '())))
                (__tmp136506
                 (let () (declare (not safe)) (cons _L130578_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp136507
                                                          __tmp136506))))
                                             (declare (not safe))
                                             (cons __tmp136510 __tmp136505)))))
                                     _g130564130575_))))
                            (_g130562130593_
                             (_generate130456_
                              _L130551_
                              (gx#syntax->list _L130517_)
                              _L130515_)))))
                      _g130537130548_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g130535130597_
                                                      (gx#genident 'e)))
                                                   (_g130459130478_
                                                    _g130460130482_)))
                                             _tl130472130512_
                                             _hd130471130509_
                                             _hd130468130499_)))
                                        (_g130459130478_ _g130460130482_))))
                                (_g130459130478_ _g130460130482_))))
                        (_g130459130478_ _g130460130482_)))))
            (_g130458130601_ _stx130453_)))))))
