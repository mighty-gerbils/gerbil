(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g134460_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134462_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134464_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134469_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134472_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134477_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134480_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134485_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134488_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134493_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134496_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134603_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj134456
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
                '#f))))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134456
           'gerbil#AST::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134456
           'syntax
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134456
           '(e source)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134456
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134456
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134456
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134456
           '#f
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp134459 |gx[1]#_g134460_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134456
           __tmp134459
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp134461 |gx[1]#_g134462_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134456
           __tmp134461
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp134463 |gx[1]#_g134464_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134456
           __tmp134463
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp134465
               (let ((__tmp134470
                      (let ((__tmp134471 |gx[1]#_g134472_|))
                        (declare (not safe))
                        (cons 'e __tmp134471)))
                     (__tmp134466
                      (let ((__tmp134467
                             (let ((__tmp134468 |gx[1]#_g134469_|))
                               (declare (not safe))
                               (cons 'source __tmp134468))))
                        (declare (not safe))
                        (cons __tmp134467 '()))))
                 (declare (not safe))
                 (cons __tmp134470 __tmp134466))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134456
           __tmp134465
           '11
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp134473
               (let ((__tmp134478
                      (let ((__tmp134479 |gx[1]#_g134480_|))
                        (declare (not safe))
                        (cons 'e __tmp134479)))
                     (__tmp134474
                      (let ((__tmp134475
                             (let ((__tmp134476 |gx[1]#_g134477_|))
                               (declare (not safe))
                               (cons 'source __tmp134476))))
                        (declare (not safe))
                        (cons __tmp134475 '()))))
                 (declare (not safe))
                 (cons __tmp134478 __tmp134474))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134456
           __tmp134473
           '12
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp134481
               (let ((__tmp134486
                      (let ((__tmp134487 |gx[1]#_g134488_|))
                        (declare (not safe))
                        (cons 'e __tmp134487)))
                     (__tmp134482
                      (let ((__tmp134483
                             (let ((__tmp134484 |gx[1]#_g134485_|))
                               (declare (not safe))
                               (cons 'source __tmp134484))))
                        (declare (not safe))
                        (cons __tmp134483 '()))))
                 (declare (not safe))
                 (cons __tmp134486 __tmp134482))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134456
           __tmp134481
           '13
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp134489
               (let ((__tmp134494
                      (let ((__tmp134495 |gx[1]#_g134496_|))
                        (declare (not safe))
                        (cons 'e __tmp134495)))
                     (__tmp134490
                      (let ((__tmp134491
                             (let ((__tmp134492 |gx[1]#_g134493_|))
                               (declare (not safe))
                               (cons 'source __tmp134492))))
                        (declare (not safe))
                        (cons __tmp134491 '()))))
                 (declare (not safe))
                 (cons __tmp134494 __tmp134490))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134456
           __tmp134489
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj134456))
    (define |gx[:0:]#check-procedure|
      (lambda (_$stx128608_)
        (let* ((_g128612128626_
                (lambda (_g128613128622_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g128613128622_)))
               (_g128611128668_
                (lambda (_g128613128630_)
                  (if (gx#stx-pair? _g128613128630_)
                      (let ((_e128617128633_ (gx#syntax-e _g128613128630_)))
                        (let ((_hd128616128637_
                               (let ()
                                 (declare (not safe))
                                 (##car _e128617128633_)))
                              (_tl128615128640_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e128617128633_))))
                          (if (gx#stx-pair? _tl128615128640_)
                              (let ((_e128620128643_
                                     (gx#syntax-e _tl128615128640_)))
                                (let ((_hd128619128647_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e128620128643_)))
                                      (_tl128618128650_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e128620128643_))))
                                  (if (gx#stx-null? _tl128618128650_)
                                      ((lambda (_L128653_)
                                         (let ((__tmp134506
                                                (gx#datum->syntax '#f 'unless))
                                               (__tmp134497
                                                (let ((__tmp134503
                                                       (let ((__tmp134505
                                                              (gx#datum->syntax
                                                               '#f
                                                               'procedure?))
                                                             (__tmp134504
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L128653_ '()))))
                 (declare (not safe))
                 (cons __tmp134505 __tmp134504)))
              (__tmp134498
               (let ((__tmp134499
                      (let ((__tmp134502 (gx#datum->syntax '#f 'error))
                            (__tmp134500
                             (let ((__tmp134501
                                    (let ()
                                      (declare (not safe))
                                      (cons _L128653_ '()))))
                               (declare (not safe))
                               (cons '"expected procedure" __tmp134501))))
                        (declare (not safe))
                        (cons __tmp134502 __tmp134500))))
                 (declare (not safe))
                 (cons __tmp134499 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp134503
                                                        __tmp134498))))
                                           (declare (not safe))
                                           (cons __tmp134506 __tmp134497)))
                                       _hd128619128647_)
                                      (_g128612128626_ _g128613128630_))))
                              (_g128612128626_ _g128613128630_))))
                      (_g128612128626_ _g128613128630_)))))
          (_g128611128668_ _$stx128608_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_stx128672_)
        (letrec ((_generate128675_
                  (lambda (_tgt128824_ _kws128826_ _clauses128827_)
                    (letrec ((_generate-clause128829_
                              (lambda (_hd129739_ _E129741_)
                                (let* ((___stx134359134360_ _hd129739_)
                                       (_g129745129772_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx134359134360_))))
                                  (let ((___kont134362134363_
                                         (lambda (_L129868_ _L129870_)
                                           (_generate1128831_
                                            _hd129739_
                                            _L129870_
                                            '#t
                                            _L129868_
                                            _E129741_)))
                                        (___kont134364134365_
                                         (lambda (_L129820_
                                                  _L129822_
                                                  _L129823_)
                                           (_generate1128831_
                                            _hd129739_
                                            _L129823_
                                            _L129822_
                                            _L129820_
                                            _E129741_)))
                                        (___kont134366134367_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _stx128672_
                                            _hd129739_))))
                                    (if (gx#stx-pair? ___stx134359134360_)
                                        (let ((_e129751129848_
                                               (gx#syntax-e
                                                ___stx134359134360_)))
                                          (let ((_tl129749129855_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e129751129848_)))
                                                (_hd129750129852_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e129751129848_))))
                                            (if (gx#stx-pair? _tl129749129855_)
                                                (let ((_e129754129858_
                                                       (gx#syntax-e
                                                        _tl129749129855_)))
                                                  (let ((_tl129752129865_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e129754129858_)))
                                                        (_hd129753129862_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e129754129858_))))
                                                    (if (gx#stx-null?
                                                         _tl129752129865_)
                                                        (___kont134362134363_
                                                         _hd129753129862_
                                                         _hd129750129852_)
                                                        (if (gx#stx-pair?
                                                             _tl129752129865_)
                                                            (let ((_e129766129810_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl129752129865_)))
                      (let ((_tl129764129817_
                             (let ()
                               (declare (not safe))
                               (##cdr _e129766129810_)))
                            (_hd129765129814_
                             (let ()
                               (declare (not safe))
                               (##car _e129766129810_))))
                        (if (gx#stx-null? _tl129764129817_)
                            (___kont134364134365_
                             _hd129765129814_
                             _hd129753129862_
                             _hd129750129852_)
                            (___kont134366134367_))))
                    (___kont134366134367_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont134366134367_))))
                                        (___kont134366134367_))))))
                             (_generate1128831_
                              (lambda (_where129217_
                                       _hd129219_
                                       _fender129220_
                                       _body129221_
                                       _E129222_)
                                (letrec ((_recur129224_
                                          (lambda (_hd129227_
                                                   _tgt129229_
                                                   _K129230_)
                                            (let* ((___stx134405134406_
                                                    _hd129227_)
                                                   (_g129233129245_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx134405134406_))))
                                              (let ((___kont134408134409_
                                                     (lambda (_L129529_
                                                              _L129531_)
                                                       (let* ((_g129542129550_
                                                               (lambda (_g129543129546_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g129543129546_)))
                      (_g129541129731_
                       (lambda (_g129543129554_)
                         ((lambda (_L129557_)
                            (let ()
                              (let* ((_g129569129577_
                                      (lambda (_g129570129573_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g129570129573_)))
                                     (_g129568129727_
                                      (lambda (_g129570129581_)
                                        ((lambda (_L129584_)
                                           (let ()
                                             (let* ((_g129597129605_
                                                     (lambda (_g129598129601_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g129598129601_)))
                                                    (_g129596129723_
                                                     (lambda (_g129598129609_)
                                                       ((lambda (_L129612_)
                                                          (let ()
                                                            (let* ((_g129625129633_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g129626129629_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g129626129629_)))
                           (_g129624129719_
                            (lambda (_g129626129637_)
                              ((lambda (_L129640_)
                                 (let ()
                                   (let* ((_g129653129661_
                                           (lambda (_g129654129657_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g129654129657_)))
                                          (_g129652129715_
                                           (lambda (_g129654129665_)
                                             ((lambda (_L129668_)
                                                (let ()
                                                  (let* ((_g129681129689_
                                                          (lambda (_g129682129685_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g129682129685_)))
                                                         (_g129680129711_
                                                          (lambda (_g129682129693_)
                                                            ((lambda (_L129696_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((__tmp134539 (gx#datum->syntax '#f 'if))
                                 (__tmp134507
                                  (let ((__tmp134536
                                         (let ((__tmp134538
                                                (gx#datum->syntax
                                                 '#f
                                                 'stx-pair?))
                                               (__tmp134537
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L129557_ '()))))
                                           (declare (not safe))
                                           (cons __tmp134538 __tmp134537)))
                                        (__tmp134508
                                         (let ((__tmp134510
                                                (let ((__tmp134535
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp134511
                                                       (let ((__tmp134529
                                                              (let ((__tmp134530
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp134531
                                    (let ((__tmp134532
                                           (let ((__tmp134534
                                                  (gx#datum->syntax
                                                   '#f
                                                   'syntax-e))
                                                 (__tmp134533
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L129557_ '()))))
                                             (declare (not safe))
                                             (cons __tmp134534 __tmp134533))))
                                      (declare (not safe))
                                      (cons __tmp134532 '()))))
                               (declare (not safe))
                               (cons _L129584_ __tmp134531))))
                        (declare (not safe))
                        (cons __tmp134530 '())))
                     (__tmp134512
                      (let ((__tmp134513
                             (let ((__tmp134528 (gx#datum->syntax '#f 'let))
                                   (__tmp134514
                                    (let ((__tmp134516
                                           (let ((__tmp134523
                                                  (let ((__tmp134524
                                                         (let ((__tmp134525
                                                                (let ((__tmp134527
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '##car))
                              (__tmp134526
                               (let ()
                                 (declare (not safe))
                                 (cons _L129584_ '()))))
                          (declare (not safe))
                          (cons __tmp134527 __tmp134526))))
                   (declare (not safe))
                   (cons __tmp134525 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L129612_
                                                          __tmp134524)))
                                                 (__tmp134517
                                                  (let ((__tmp134518
                                                         (let ((__tmp134519
                                                                (let ((__tmp134520
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp134522
                                      (gx#datum->syntax '#f '##cdr))
                                     (__tmp134521
                                      (let ()
                                        (declare (not safe))
                                        (cons _L129584_ '()))))
                                 (declare (not safe))
                                 (cons __tmp134522 __tmp134521))))
                          (declare (not safe))
                          (cons __tmp134520 '()))))
                   (declare (not safe))
                   (cons _L129640_ __tmp134519))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp134518 '()))))
                                             (declare (not safe))
                                             (cons __tmp134523 __tmp134517)))
                                          (__tmp134515
                                           (let ()
                                             (declare (not safe))
                                             (cons _L129668_ '()))))
                                      (declare (not safe))
                                      (cons __tmp134516 __tmp134515))))
                               (declare (not safe))
                               (cons __tmp134528 __tmp134514))))
                        (declare (not safe))
                        (cons __tmp134513 '()))))
                 (declare (not safe))
                 (cons __tmp134529 __tmp134512))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp134535
                                                        __tmp134511)))
                                               (__tmp134509
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L129696_ '()))))
                                           (declare (not safe))
                                           (cons __tmp134510 __tmp134509))))
                                    (declare (not safe))
                                    (cons __tmp134536 __tmp134508))))
                             (declare (not safe))
                             (cons __tmp134539 __tmp134507)))))
                     _g129682129693_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g129680129711_
                                                     _E129222_))))
                                              _g129654129665_))))
                                     (_g129652129715_
                                      (_recur129224_
                                       _L129531_
                                       _L129612_
                                       (_recur129224_
                                        _L129529_
                                        _L129640_
                                        _K129230_))))))
                               _g129626129637_))))
                      (_g129624129719_ (gx#genident 'tl)))))
                _g129598129609_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g129596129723_
                                                (gx#genident 'hd)))))
                                         _g129570129581_))))
                                (_g129568129727_ (gx#genident 'e)))))
                          _g129543129554_))))
                 (_g129541129731_ _tgt129229_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont134410134411_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _hd129227_)
                                                           (if (gx#underscore?
                                                                _hd129227_)
                                                               _K129230_
                                                               (if (let ((__tmp134584
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g129255129257_)
                                    (gx#bound-identifier=?
                                     _g129255129257_
                                     _hd129227_))))
                             (declare (not safe))
                             (find __tmp134584 _kws128826_))
                           (let* ((_g129261129276_
                                   (lambda (_g129262129272_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g129262129272_)))
                                  (_g129260129327_
                                   (lambda (_g129262129280_)
                                     (if (gx#stx-pair? _g129262129280_)
                                         (let ((_e129267129283_
                                                (gx#syntax-e _g129262129280_)))
                                           (let ((_hd129266129287_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e129267129283_)))
                                                 (_tl129265129290_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e129267129283_))))
                                             (if (gx#stx-pair?
                                                  _tl129265129290_)
                                                 (let ((_e129270129293_
                                                        (gx#syntax-e
                                                         _tl129265129290_)))
                                                   (let ((_hd129269129297_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e129270129293_)))
                                                         (_tl129268129300_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e129270129293_))))
                                                     (if (gx#stx-null?
                                                          _tl129268129300_)
                                                         ((lambda (_L129303_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L129305_)
                    (let ()
                      (let ((__tmp134583 (gx#datum->syntax '#f 'if))
                            (__tmp134566
                             (let ((__tmp134569
                                    (let ((__tmp134582
                                           (gx#datum->syntax '#f 'and))
                                          (__tmp134570
                                           (let ((__tmp134579
                                                  (let ((__tmp134581
                                                         (gx#datum->syntax
                                                          '#f
                                                          'identifier?))
                                                        (__tmp134580
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L129305_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp134581
                                                          __tmp134580)))
                                                 (__tmp134571
                                                  (let ((__tmp134572
                                                         (let ((__tmp134578
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'core-identifier=?))
                       (__tmp134573
                        (let ((__tmp134574
                               (let ((__tmp134575
                                      (let ((__tmp134577
                                             (gx#datum->syntax '#f 'quote))
                                            (__tmp134576
                                             (let ()
                                               (declare (not safe))
                                               (cons _L129303_ '()))))
                                        (declare (not safe))
                                        (cons __tmp134577 __tmp134576))))
                                 (declare (not safe))
                                 (cons __tmp134575 '()))))
                          (declare (not safe))
                          (cons _L129305_ __tmp134574))))
                   (declare (not safe))
                   (cons __tmp134578 __tmp134573))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp134572 '()))))
                                             (declare (not safe))
                                             (cons __tmp134579 __tmp134571))))
                                      (declare (not safe))
                                      (cons __tmp134582 __tmp134570)))
                                   (__tmp134567
                                    (let ((__tmp134568
                                           (let ()
                                             (declare (not safe))
                                             (cons _E129222_ '()))))
                                      (declare (not safe))
                                      (cons _K129230_ __tmp134568))))
                               (declare (not safe))
                               (cons __tmp134569 __tmp134567))))
                        (declare (not safe))
                        (cons __tmp134583 __tmp134566))))
                  _hd129269129297_
                  _hd129266129287_)
                 (_g129261129276_ _g129262129280_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g129261129276_
                                                  _g129262129280_))))
                                         (_g129261129276_ _g129262129280_)))))
                             (_g129260129327_ (list _tgt129229_ _hd129227_)))
                           (let* ((_g129331129346_
                                   (lambda (_g129332129342_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g129332129342_)))
                                  (_g129330129390_
                                   (lambda (_g129332129350_)
                                     (if (gx#stx-pair? _g129332129350_)
                                         (let ((_e129337129353_
                                                (gx#syntax-e _g129332129350_)))
                                           (let ((_hd129336129357_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e129337129353_)))
                                                 (_tl129335129360_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e129337129353_))))
                                             (if (gx#stx-pair?
                                                  _tl129335129360_)
                                                 (let ((_e129340129363_
                                                        (gx#syntax-e
                                                         _tl129335129360_)))
                                                   (let ((_hd129339129367_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e129340129363_)))
                                                         (_tl129338129370_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e129340129363_))))
                                                     (if (gx#stx-null?
                                                          _tl129338129370_)
                                                         ((lambda (_L129373_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L129375_)
                    (let ()
                      (let ((__tmp134565 (gx#datum->syntax '#f 'let))
                            (__tmp134560
                             (let ((__tmp134562
                                    (let ((__tmp134563
                                           (let ((__tmp134564
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L129375_ '()))))
                                             (declare (not safe))
                                             (cons _L129373_ __tmp134564))))
                                      (declare (not safe))
                                      (cons __tmp134563 '())))
                                   (__tmp134561
                                    (let ()
                                      (declare (not safe))
                                      (cons _K129230_ '()))))
                               (declare (not safe))
                               (cons __tmp134562 __tmp134561))))
                        (declare (not safe))
                        (cons __tmp134565 __tmp134560))))
                  _hd129339129367_
                  _hd129336129357_)
                 (_g129331129346_ _g129332129350_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g129331129346_
                                                  _g129332129350_))))
                                         (_g129331129346_ _g129332129350_)))))
                             (_g129330129390_ (list _tgt129229_ _hd129227_)))))
                   (if (gx#stx-null? _hd129227_)
                       (let* ((_g129394129402_
                               (lambda (_g129395129398_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g129395129398_)))
                              (_g129393129420_
                               (lambda (_g129395129406_)
                                 ((lambda (_L129409_)
                                    (let ()
                                      (let ((__tmp134559
                                             (gx#datum->syntax '#f 'if))
                                            (__tmp134553
                                             (let ((__tmp134556
                                                    (let ((__tmp134558
                                                           (gx#datum->syntax
                                                            '#f
                                                            'stx-null?))
                                                          (__tmp134557
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L129409_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp134558 __tmp134557)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp134554
                                                    (let ((__tmp134555
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _E129222_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _K129230_ __tmp134555))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp134556
                                                     __tmp134554))))
                                        (declare (not safe))
                                        (cons __tmp134559 __tmp134553))))
                                  _g129395129406_))))
                         (_g129393129420_ _tgt129229_))
                       (if (gx#stx-datum? _hd129227_)
                           (let* ((_g129424129443_
                                   (lambda (_g129425129439_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g129425129439_)))
                                  (_g129423129501_
                                   (lambda (_g129425129447_)
                                     (if (gx#stx-pair? _g129425129447_)
                                         (let ((_e129431129450_
                                                (gx#syntax-e _g129425129447_)))
                                           (let ((_hd129430129454_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e129431129450_)))
                                                 (_tl129429129457_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e129431129450_))))
                                             (if (gx#stx-pair?
                                                  _tl129429129457_)
                                                 (let ((_e129434129460_
                                                        (gx#syntax-e
                                                         _tl129429129457_)))
                                                   (let ((_hd129433129464_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e129434129460_)))
                                                         (_tl129432129467_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e129434129460_))))
                                                     (if (gx#stx-pair?
                                                          _tl129432129467_)
                                                         (let ((_e129437129470_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl129432129467_)))
                   (let ((_hd129436129474_
                          (let ()
                            (declare (not safe))
                            (##car _e129437129470_)))
                         (_tl129435129477_
                          (let ()
                            (declare (not safe))
                            (##cdr _e129437129470_))))
                     (if (gx#stx-null? _tl129435129477_)
                         ((lambda (_L129480_ _L129482_ _L129483_)
                            (let ()
                              (let ((__tmp134552 (gx#datum->syntax '#f 'if))
                                    (__tmp134540
                                     (let ((__tmp134543
                                            (let ((__tmp134544
                                                   (let ((__tmp134549
                                                          (let ((__tmp134551
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'stx-e))
                        (__tmp134550
                         (let () (declare (not safe)) (cons _L129483_ '()))))
                    (declare (not safe))
                    (cons __tmp134551 __tmp134550)))
                 (__tmp134545
                  (let ((__tmp134546
                         (let ((__tmp134548 (gx#datum->syntax '#f 'quote))
                               (__tmp134547
                                (let ()
                                  (declare (not safe))
                                  (cons _L129482_ '()))))
                           (declare (not safe))
                           (cons __tmp134548 __tmp134547))))
                    (declare (not safe))
                    (cons __tmp134546 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp134549
                                                           __tmp134545))))
                                              (declare (not safe))
                                              (cons _L129480_ __tmp134544)))
                                           (__tmp134541
                                            (let ((__tmp134542
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _E129222_ '()))))
                                              (declare (not safe))
                                              (cons _K129230_ __tmp134542))))
                                       (declare (not safe))
                                       (cons __tmp134543 __tmp134541))))
                                (declare (not safe))
                                (cons __tmp134552 __tmp134540))))
                          _hd129436129474_
                          _hd129433129464_
                          _hd129430129454_)
                         (_g129424129443_ _g129425129447_))))
                 (_g129424129443_ _g129425129447_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g129424129443_
                                                  _g129425129447_))))
                                         (_g129424129443_ _g129425129447_)))))
                             (_g129423129501_
                              (list _tgt129229_
                                    _hd129227_
                                    (let ((_e129505_ (gx#stx-e _hd129227_)))
                                      (if (or (keyword? _e129505_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _e129505_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (let ()
                                                (declare (not safe))
                                                (number? _e129505_))
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _stx128672_
                            _where129217_
                            _hd129227_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx134405134406_)
                                                    (let ((_e129239129519_
                                                           (gx#syntax-e
                                                            ___stx134405134406_)))
                                                      (let ((_tl129237129526_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e129239129519_)))
                    (_hd129238129523_
                     (let () (declare (not safe)) (##car _e129239129519_))))
                (___kont134408134409_ _tl129237129526_ _hd129238129523_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont134410134411_)))))))
                                  (_recur129224_
                                   _hd129219_
                                   _tgt128824_
                                   (let ((__tmp134588
                                          (gx#datum->syntax '#f 'if))
                                         (__tmp134585
                                          (let ((__tmp134586
                                                 (let ((__tmp134587
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _E129222_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _body129221_
                                                         __tmp134587))))
                                            (declare (not safe))
                                            (cons _fender129220_
                                                  __tmp134586))))
                                     (declare (not safe))
                                     (cons __tmp134588 __tmp134585))))))
                             (_generate-clauses128832_
                              (lambda (_clauses128955_)
                                (let _lp128958_ ((_rest128961_ _clauses128955_)
                                                 (_E128963_ (gx#genident 'E))
                                                 (_r128964_ '()))
                                  (let* ((___stx134441134442_ _rest128961_)
                                         (_g128967128979_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx134441134442_))))
                                    (let ((___kont134444134445_
                                           (lambda (_L129044_ _L129046_)
                                             (let* ((___stx134421134422_
                                                     _L129046_)
                                                    (_g129058129069_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        ___stx134421134422_))))
                                               (let ((___kont134424134425_
                                                      (lambda (_L129198_)
                                                        (if (gx#stx-null?
                                                             _L129044_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L129198_)
                             (let ((__tmp134597 (gx#stx-null? _L129198_)))
                               (declare (not safe))
                               (not __tmp134597)))
                        (let ((__tmp134589
                               (let ((__tmp134590
                                      (let ((__tmp134591
                                             (gx#stx-wrap-source
                                              (let ((__tmp134596
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp134592
                                                     (let ((__tmp134593
                                                            (let ((__tmp134594
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp134595 (gx#datum->syntax '#f 'begin)))
                             (declare (not safe))
                             (cons __tmp134595 _L129198_))))
                      (declare (not safe))
                      (cons __tmp134594 '()))))
               (declare (not safe))
               (cons '() __tmp134593))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp134596 __tmp134592))
                                              (gx#stx-source _L129046_))))
                                        (declare (not safe))
                                        (cons __tmp134591 '()))))
                                 (declare (not safe))
                                 (cons _E128963_ __tmp134590))))
                          (declare (not safe))
                          (cons __tmp134589 _r128964_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _stx128672_
                         _L129046_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _stx128672_
                     _L129046_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont134426134427_
                                                      (lambda ()
                                                        (let* ((_g129080129088_
                                                                (lambda (_g129081129084_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g129081129084_)))
                       (_g129079129177_
                        (lambda (_g129081129092_)
                          ((lambda (_L129095_)
                             (let ()
                               (let* ((_g129111129119_
                                       (lambda (_g129112129115_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g129112129115_)))
                                      (_g129110129173_
                                       (lambda (_g129112129123_)
                                         ((lambda (_L129126_)
                                            (let ()
                                              (let* ((_g129139129147_
                                                      (lambda (_g129140129143_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g129140129143_)))
                                                     (_g129138129169_
                                                      (lambda (_g129140129151_)
                                                        ((lambda (_L129154_)
                                                           (let ()
                                                             (let ()
                                                               (_lp128958_
                                                                _L129044_
                                                                _L129095_
                                                                (let ((__tmp134598
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp134599
                                      (let ()
                                        (declare (not safe))
                                        (cons _L129154_ '()))))
                                 (declare (not safe))
                                 (cons _E128963_ __tmp134599))))
                          (declare (not safe))
                          (cons __tmp134598 _r128964_))))))
                 _g129140129151_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g129138129169_
                                                 (gx#stx-wrap-source
                                                  (let ((__tmp134602
                                                         (gx#datum->syntax
                                                          '#f
                                                          'lambda))
                                                        (__tmp134600
                                                         (let ((__tmp134601
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _L129126_ '()))))
                   (declare (not safe))
                   (cons '() __tmp134601))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp134602
                                                          __tmp134600))
                                                  (gx#stx-source
                                                   _L129046_))))))
                                          _g129112129123_))))
                                 (_g129110129173_
                                  (_generate-clause128829_
                                   _L129046_
                                   (let ()
                                     (declare (not safe))
                                     (cons _L129095_ '())))))))
                           _g129081129092_))))
                  (_g129079129177_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      ___stx134421134422_)
                                                     (let ((_e129063129188_
                                                            (gx#syntax-e
                                                             ___stx134421134422_)))
                                                       (let ((_tl129061129195_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e129063129188_)))
                     (_hd129062129192_
                      (let () (declare (not safe)) (##car _e129063129188_))))
                 (if (gx#identifier? _hd129062129192_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g134603_|
                          _hd129062129192_)
                         (___kont134424134425_ _tl129061129195_)
                         (___kont134426134427_))
                     (___kont134426134427_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont134426134427_))))))
                                          (___kont134446134447_
                                           (lambda ()
                                             (let* ((_g128990128998_
                                                     (lambda (_g128991128994_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g128991128994_)))
                                                    (_g128989129023_
                                                     (lambda (_g128991129002_)
                                                       ((lambda (_L129005_)
                                                          (let ()
                                                            (let ((__tmp134604
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp134605
                                  (let ((__tmp134606
                                         (gx#stx-wrap-source
                                          (let ((__tmp134614
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp134607
                                                 (let ((__tmp134608
                                                        (let ((__tmp134609
                                                               (let ((__tmp134613
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'raise-syntax-error))
                             (__tmp134610
                              (let ((__tmp134611
                                     (let ((__tmp134612
                                            (let ()
                                              (declare (not safe))
                                              (cons _L129005_ '()))))
                                       (declare (not safe))
                                       (cons '"Bad syntax; invalid syntax-case clause"
                                             __tmp134612))))
                                (declare (not safe))
                                (cons '#f __tmp134611))))
                         (declare (not safe))
                         (cons __tmp134613 __tmp134610))))
                  (declare (not safe))
                  (cons __tmp134609 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '() __tmp134608))))
                                            (declare (not safe))
                                            (cons __tmp134614 __tmp134607))
                                          (gx#stx-source _stx128672_))))
                                    (declare (not safe))
                                    (cons __tmp134606 '()))))
                             (declare (not safe))
                             (cons _E128963_ __tmp134605))))
                      (declare (not safe))
                      (cons __tmp134604 _r128964_))))
                _g128991129002_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g128989129023_
                                                _tgt128824_)))))
                                      (if (gx#stx-pair? ___stx134441134442_)
                                          (let ((_e128973129034_
                                                 (gx#syntax-e
                                                  ___stx134441134442_)))
                                            (let ((_tl128971129041_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e128973129034_)))
                                                  (_hd128972129038_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e128973129034_))))
                                              (___kont134444134445_
                                               _tl128971129041_
                                               _hd128972129038_)))
                                          (___kont134446134447_))))))))
                      (let* ((_bind128834_
                              (_generate-clauses128832_ _clauses128827_))
                             (_g128837128854_
                              (lambda (_g128838128850_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g128838128850_)))
                             (_g128836128951_
                              (lambda (_g128838128858_)
                                (if (gx#stx-pair/null? _g128838128858_)
                                    (let ((_g134615_
                                           (gx#syntax-split-splice
                                            _g128838128858_
                                            '0)))
                                      (begin
                                        (let ((_g134616_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g134615_)
                                                     (##vector-length
                                                      _g134615_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g134616_ 2)))
                                              (error "Context expects 2 values"
                                                     _g134616_)))
                                        (let ((_target128840128861_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g134615_ 0)))
                                              (_tl128842128864_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g134615_ 1))))
                                          (if (gx#stx-null? _tl128842128864_)
                                              (letrec ((_loop128843128867_
                                                        (lambda (_hd128841128871_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind-try128847128874_)
                  (if (gx#stx-pair? _hd128841128871_)
                      (let ((_e128844128877_ (gx#syntax-e _hd128841128871_)))
                        (let ((_lp-hd128845128881_
                               (let ()
                                 (declare (not safe))
                                 (##car _e128844128877_)))
                              (_lp-tl128846128884_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e128844128877_))))
                          (_loop128843128867_
                           _lp-tl128846128884_
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd128845128881_
                                   _bind-try128847128874_)))))
                      (let ((_bind-try128848128887_
                             (reverse _bind-try128847128874_)))
                        ((lambda (_L128891_)
                           (let ()
                             (let* ((_g128909128917_
                                     (lambda (_g128910128913_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _g128910128913_)))
                                    (_g128908128947_
                                     (lambda (_g128910128921_)
                                       ((lambda (_L128924_)
                                          (let ()
                                            (let ()
                                              (let ((__tmp134622
                                                     (gx#datum->syntax
                                                      '#f
                                                      'let*))
                                                    (__tmp134617
                                                     (let ((__tmp134620
                                                            (let ((__tmp134621
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g128938128941_ _g128939128944_)
                             (let ()
                               (declare (not safe))
                               (cons _g128938128941_ _g128939128944_)))))
                      (declare (not safe))
                      (foldr1 __tmp134621 '() _L128891_)))
                   (__tmp134618
                    (let ((__tmp134619
                           (let () (declare (not safe)) (cons _L128924_ '()))))
                      (declare (not safe))
                      (cons __tmp134619 '()))))
               (declare (not safe))
               (cons __tmp134620 __tmp134618))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp134622
                                                      __tmp134617)))))
                                        _g128910128921_))))
                               (_g128908128947_
                                (car (let ()
                                       (declare (not safe))
                                       (last _bind128834_)))))))
                         _bind-try128848128887_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop128843128867_
                                                 _target128840128861_
                                                 '()))
                                              (_g128837128854_
                                               _g128838128858_)))))
                                    (_g128837128854_ _g128838128858_)))))
                        (_g128836128951_ _bind128834_))))))
          (let* ((_g128678128697_
                  (lambda (_g128679128693_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g128679128693_)))
                 (_g128677128820_
                  (lambda (_g128679128701_)
                    (if (gx#stx-pair? _g128679128701_)
                        (let ((_e128685128704_ (gx#syntax-e _g128679128701_)))
                          (let ((_hd128684128708_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e128685128704_)))
                                (_tl128683128711_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e128685128704_))))
                            (if (gx#stx-pair? _tl128683128711_)
                                (let ((_e128688128714_
                                       (gx#syntax-e _tl128683128711_)))
                                  (let ((_hd128687128718_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e128688128714_)))
                                        (_tl128686128721_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e128688128714_))))
                                    (if (gx#stx-pair? _tl128686128721_)
                                        (let ((_e128691128724_
                                               (gx#syntax-e _tl128686128721_)))
                                          (let ((_hd128690128728_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e128691128724_)))
                                                (_tl128689128731_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e128691128724_))))
                                            ((lambda (_L128734_
                                                      _L128736_
                                                      _L128737_)
                                               (if (and (gx#identifier-list?
                                                         _L128736_)
                                                        (gx#stx-list?
                                                         _L128734_))
                                                   (let* ((_g128755128763_
                                                           (lambda (_g128756128759_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g128756128759_)))
                                                          (_g128754128816_
                                                           (lambda (_g128756128767_)
                                                             ((lambda (_L128770_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g128782128790_
                                  (lambda (_g128783128786_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g128783128786_)))
                                 (_g128781128812_
                                  (lambda (_g128783128794_)
                                    ((lambda (_L128797_)
                                       (let ()
                                         (let ()
                                           (let ((__tmp134628
                                                  (gx#datum->syntax '#f 'let))
                                                 (__tmp134623
                                                  (let ((__tmp134625
                                                         (let ((__tmp134626
                                                                (let ((__tmp134627
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L128737_ '()))))
                          (declare (not safe))
                          (cons _L128770_ __tmp134627))))
                   (declare (not safe))
                   (cons __tmp134626 '())))
                (__tmp134624
                 (let () (declare (not safe)) (cons _L128797_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp134625
                                                          __tmp134624))))
                                             (declare (not safe))
                                             (cons __tmp134628 __tmp134623)))))
                                     _g128783128794_))))
                            (_g128781128812_
                             (_generate128675_
                              _L128770_
                              (gx#syntax->list _L128736_)
                              _L128734_)))))
                      _g128756128767_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g128754128816_
                                                      (gx#genident 'e)))
                                                   (_g128678128697_
                                                    _g128679128701_)))
                                             _tl128689128731_
                                             _hd128690128728_
                                             _hd128687128718_)))
                                        (_g128678128697_ _g128679128701_))))
                                (_g128678128697_ _g128679128701_))))
                        (_g128678128697_ _g128679128701_)))))
            (_g128677128820_ _stx128672_)))))))
