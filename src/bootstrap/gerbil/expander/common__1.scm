(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g134467_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134469_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134471_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134476_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134479_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134484_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134487_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134492_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134495_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134500_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134503_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134610_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj134463
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
           __obj134463
           'gerbil#AST::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134463
           'syntax
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134463
           '(e source)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134463
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134463
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134463
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134463
           '#f
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp134466 |gx[1]#_g134467_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134463
           __tmp134466
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp134468 |gx[1]#_g134469_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134463
           __tmp134468
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp134470 |gx[1]#_g134471_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134463
           __tmp134470
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp134472
               (let ((__tmp134477
                      (let ((__tmp134478 |gx[1]#_g134479_|))
                        (declare (not safe))
                        (cons 'e __tmp134478)))
                     (__tmp134473
                      (let ((__tmp134474
                             (let ((__tmp134475 |gx[1]#_g134476_|))
                               (declare (not safe))
                               (cons 'source __tmp134475))))
                        (declare (not safe))
                        (cons __tmp134474 '()))))
                 (declare (not safe))
                 (cons __tmp134477 __tmp134473))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134463
           __tmp134472
           '11
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp134480
               (let ((__tmp134485
                      (let ((__tmp134486 |gx[1]#_g134487_|))
                        (declare (not safe))
                        (cons 'e __tmp134486)))
                     (__tmp134481
                      (let ((__tmp134482
                             (let ((__tmp134483 |gx[1]#_g134484_|))
                               (declare (not safe))
                               (cons 'source __tmp134483))))
                        (declare (not safe))
                        (cons __tmp134482 '()))))
                 (declare (not safe))
                 (cons __tmp134485 __tmp134481))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134463
           __tmp134480
           '12
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp134488
               (let ((__tmp134493
                      (let ((__tmp134494 |gx[1]#_g134495_|))
                        (declare (not safe))
                        (cons 'e __tmp134494)))
                     (__tmp134489
                      (let ((__tmp134490
                             (let ((__tmp134491 |gx[1]#_g134492_|))
                               (declare (not safe))
                               (cons 'source __tmp134491))))
                        (declare (not safe))
                        (cons __tmp134490 '()))))
                 (declare (not safe))
                 (cons __tmp134493 __tmp134489))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134463
           __tmp134488
           '13
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp134496
               (let ((__tmp134501
                      (let ((__tmp134502 |gx[1]#_g134503_|))
                        (declare (not safe))
                        (cons 'e __tmp134502)))
                     (__tmp134497
                      (let ((__tmp134498
                             (let ((__tmp134499 |gx[1]#_g134500_|))
                               (declare (not safe))
                               (cons 'source __tmp134499))))
                        (declare (not safe))
                        (cons __tmp134498 '()))))
                 (declare (not safe))
                 (cons __tmp134501 __tmp134497))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134463
           __tmp134496
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj134463))
    (define |gx[:0:]#check-procedure|
      (lambda (_$stx128615_)
        (let* ((_g128619128633_
                (lambda (_g128620128629_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g128620128629_)))
               (_g128618128675_
                (lambda (_g128620128637_)
                  (if (gx#stx-pair? _g128620128637_)
                      (let ((_e128624128640_ (gx#syntax-e _g128620128637_)))
                        (let ((_hd128623128644_
                               (let ()
                                 (declare (not safe))
                                 (##car _e128624128640_)))
                              (_tl128622128647_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e128624128640_))))
                          (if (gx#stx-pair? _tl128622128647_)
                              (let ((_e128627128650_
                                     (gx#syntax-e _tl128622128647_)))
                                (let ((_hd128626128654_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e128627128650_)))
                                      (_tl128625128657_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e128627128650_))))
                                  (if (gx#stx-null? _tl128625128657_)
                                      ((lambda (_L128660_)
                                         (let ((__tmp134513
                                                (gx#datum->syntax '#f 'unless))
                                               (__tmp134504
                                                (let ((__tmp134510
                                                       (let ((__tmp134512
                                                              (gx#datum->syntax
                                                               '#f
                                                               'procedure?))
                                                             (__tmp134511
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L128660_ '()))))
                 (declare (not safe))
                 (cons __tmp134512 __tmp134511)))
              (__tmp134505
               (let ((__tmp134506
                      (let ((__tmp134509 (gx#datum->syntax '#f 'error))
                            (__tmp134507
                             (let ((__tmp134508
                                    (let ()
                                      (declare (not safe))
                                      (cons _L128660_ '()))))
                               (declare (not safe))
                               (cons '"expected procedure" __tmp134508))))
                        (declare (not safe))
                        (cons __tmp134509 __tmp134507))))
                 (declare (not safe))
                 (cons __tmp134506 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp134510
                                                        __tmp134505))))
                                           (declare (not safe))
                                           (cons __tmp134513 __tmp134504)))
                                       _hd128626128654_)
                                      (_g128619128633_ _g128620128637_))))
                              (_g128619128633_ _g128620128637_))))
                      (_g128619128633_ _g128620128637_)))))
          (_g128618128675_ _$stx128615_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_stx128679_)
        (letrec ((_generate128682_
                  (lambda (_tgt128831_ _kws128833_ _clauses128834_)
                    (letrec ((_generate-clause128836_
                              (lambda (_hd129746_ _E129748_)
                                (let* ((___stx134366134367_ _hd129746_)
                                       (_g129752129779_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx134366134367_))))
                                  (let ((___kont134369134370_
                                         (lambda (_L129875_ _L129877_)
                                           (_generate1128838_
                                            _hd129746_
                                            _L129877_
                                            '#t
                                            _L129875_
                                            _E129748_)))
                                        (___kont134371134372_
                                         (lambda (_L129827_
                                                  _L129829_
                                                  _L129830_)
                                           (_generate1128838_
                                            _hd129746_
                                            _L129830_
                                            _L129829_
                                            _L129827_
                                            _E129748_)))
                                        (___kont134373134374_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _stx128679_
                                            _hd129746_))))
                                    (if (gx#stx-pair? ___stx134366134367_)
                                        (let ((_e129758129855_
                                               (gx#syntax-e
                                                ___stx134366134367_)))
                                          (let ((_tl129756129862_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e129758129855_)))
                                                (_hd129757129859_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e129758129855_))))
                                            (if (gx#stx-pair? _tl129756129862_)
                                                (let ((_e129761129865_
                                                       (gx#syntax-e
                                                        _tl129756129862_)))
                                                  (let ((_tl129759129872_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e129761129865_)))
                                                        (_hd129760129869_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e129761129865_))))
                                                    (if (gx#stx-null?
                                                         _tl129759129872_)
                                                        (___kont134369134370_
                                                         _hd129760129869_
                                                         _hd129757129859_)
                                                        (if (gx#stx-pair?
                                                             _tl129759129872_)
                                                            (let ((_e129773129817_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl129759129872_)))
                      (let ((_tl129771129824_
                             (let ()
                               (declare (not safe))
                               (##cdr _e129773129817_)))
                            (_hd129772129821_
                             (let ()
                               (declare (not safe))
                               (##car _e129773129817_))))
                        (if (gx#stx-null? _tl129771129824_)
                            (___kont134371134372_
                             _hd129772129821_
                             _hd129760129869_
                             _hd129757129859_)
                            (___kont134373134374_))))
                    (___kont134373134374_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont134373134374_))))
                                        (___kont134373134374_))))))
                             (_generate1128838_
                              (lambda (_where129224_
                                       _hd129226_
                                       _fender129227_
                                       _body129228_
                                       _E129229_)
                                (letrec ((_recur129231_
                                          (lambda (_hd129234_
                                                   _tgt129236_
                                                   _K129237_)
                                            (let* ((___stx134412134413_
                                                    _hd129234_)
                                                   (_g129240129252_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx134412134413_))))
                                              (let ((___kont134415134416_
                                                     (lambda (_L129536_
                                                              _L129538_)
                                                       (let* ((_g129549129557_
                                                               (lambda (_g129550129553_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g129550129553_)))
                      (_g129548129738_
                       (lambda (_g129550129561_)
                         ((lambda (_L129564_)
                            (let ()
                              (let* ((_g129576129584_
                                      (lambda (_g129577129580_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g129577129580_)))
                                     (_g129575129734_
                                      (lambda (_g129577129588_)
                                        ((lambda (_L129591_)
                                           (let ()
                                             (let* ((_g129604129612_
                                                     (lambda (_g129605129608_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g129605129608_)))
                                                    (_g129603129730_
                                                     (lambda (_g129605129616_)
                                                       ((lambda (_L129619_)
                                                          (let ()
                                                            (let* ((_g129632129640_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g129633129636_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g129633129636_)))
                           (_g129631129726_
                            (lambda (_g129633129644_)
                              ((lambda (_L129647_)
                                 (let ()
                                   (let* ((_g129660129668_
                                           (lambda (_g129661129664_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g129661129664_)))
                                          (_g129659129722_
                                           (lambda (_g129661129672_)
                                             ((lambda (_L129675_)
                                                (let ()
                                                  (let* ((_g129688129696_
                                                          (lambda (_g129689129692_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g129689129692_)))
                                                         (_g129687129718_
                                                          (lambda (_g129689129700_)
                                                            ((lambda (_L129703_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((__tmp134546 (gx#datum->syntax '#f 'if))
                                 (__tmp134514
                                  (let ((__tmp134543
                                         (let ((__tmp134545
                                                (gx#datum->syntax
                                                 '#f
                                                 'stx-pair?))
                                               (__tmp134544
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L129564_ '()))))
                                           (declare (not safe))
                                           (cons __tmp134545 __tmp134544)))
                                        (__tmp134515
                                         (let ((__tmp134517
                                                (let ((__tmp134542
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp134518
                                                       (let ((__tmp134536
                                                              (let ((__tmp134537
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp134538
                                    (let ((__tmp134539
                                           (let ((__tmp134541
                                                  (gx#datum->syntax
                                                   '#f
                                                   'syntax-e))
                                                 (__tmp134540
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L129564_ '()))))
                                             (declare (not safe))
                                             (cons __tmp134541 __tmp134540))))
                                      (declare (not safe))
                                      (cons __tmp134539 '()))))
                               (declare (not safe))
                               (cons _L129591_ __tmp134538))))
                        (declare (not safe))
                        (cons __tmp134537 '())))
                     (__tmp134519
                      (let ((__tmp134520
                             (let ((__tmp134535 (gx#datum->syntax '#f 'let))
                                   (__tmp134521
                                    (let ((__tmp134523
                                           (let ((__tmp134530
                                                  (let ((__tmp134531
                                                         (let ((__tmp134532
                                                                (let ((__tmp134534
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '##car))
                              (__tmp134533
                               (let ()
                                 (declare (not safe))
                                 (cons _L129591_ '()))))
                          (declare (not safe))
                          (cons __tmp134534 __tmp134533))))
                   (declare (not safe))
                   (cons __tmp134532 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L129619_
                                                          __tmp134531)))
                                                 (__tmp134524
                                                  (let ((__tmp134525
                                                         (let ((__tmp134526
                                                                (let ((__tmp134527
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp134529
                                      (gx#datum->syntax '#f '##cdr))
                                     (__tmp134528
                                      (let ()
                                        (declare (not safe))
                                        (cons _L129591_ '()))))
                                 (declare (not safe))
                                 (cons __tmp134529 __tmp134528))))
                          (declare (not safe))
                          (cons __tmp134527 '()))))
                   (declare (not safe))
                   (cons _L129647_ __tmp134526))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp134525 '()))))
                                             (declare (not safe))
                                             (cons __tmp134530 __tmp134524)))
                                          (__tmp134522
                                           (let ()
                                             (declare (not safe))
                                             (cons _L129675_ '()))))
                                      (declare (not safe))
                                      (cons __tmp134523 __tmp134522))))
                               (declare (not safe))
                               (cons __tmp134535 __tmp134521))))
                        (declare (not safe))
                        (cons __tmp134520 '()))))
                 (declare (not safe))
                 (cons __tmp134536 __tmp134519))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp134542
                                                        __tmp134518)))
                                               (__tmp134516
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L129703_ '()))))
                                           (declare (not safe))
                                           (cons __tmp134517 __tmp134516))))
                                    (declare (not safe))
                                    (cons __tmp134543 __tmp134515))))
                             (declare (not safe))
                             (cons __tmp134546 __tmp134514)))))
                     _g129689129700_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g129687129718_
                                                     _E129229_))))
                                              _g129661129672_))))
                                     (_g129659129722_
                                      (_recur129231_
                                       _L129538_
                                       _L129619_
                                       (_recur129231_
                                        _L129536_
                                        _L129647_
                                        _K129237_))))))
                               _g129633129644_))))
                      (_g129631129726_ (gx#genident 'tl)))))
                _g129605129616_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g129603129730_
                                                (gx#genident 'hd)))))
                                         _g129577129588_))))
                                (_g129575129734_ (gx#genident 'e)))))
                          _g129550129561_))))
                 (_g129548129738_ _tgt129236_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont134417134418_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _hd129234_)
                                                           (if (gx#underscore?
                                                                _hd129234_)
                                                               _K129237_
                                                               (if (let ((__tmp134591
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g129262129264_)
                                    (gx#bound-identifier=?
                                     _g129262129264_
                                     _hd129234_))))
                             (declare (not safe))
                             (find __tmp134591 _kws128833_))
                           (let* ((_g129268129283_
                                   (lambda (_g129269129279_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g129269129279_)))
                                  (_g129267129334_
                                   (lambda (_g129269129287_)
                                     (if (gx#stx-pair? _g129269129287_)
                                         (let ((_e129274129290_
                                                (gx#syntax-e _g129269129287_)))
                                           (let ((_hd129273129294_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e129274129290_)))
                                                 (_tl129272129297_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e129274129290_))))
                                             (if (gx#stx-pair?
                                                  _tl129272129297_)
                                                 (let ((_e129277129300_
                                                        (gx#syntax-e
                                                         _tl129272129297_)))
                                                   (let ((_hd129276129304_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e129277129300_)))
                                                         (_tl129275129307_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e129277129300_))))
                                                     (if (gx#stx-null?
                                                          _tl129275129307_)
                                                         ((lambda (_L129310_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L129312_)
                    (let ()
                      (let ((__tmp134590 (gx#datum->syntax '#f 'if))
                            (__tmp134573
                             (let ((__tmp134576
                                    (let ((__tmp134589
                                           (gx#datum->syntax '#f 'and))
                                          (__tmp134577
                                           (let ((__tmp134586
                                                  (let ((__tmp134588
                                                         (gx#datum->syntax
                                                          '#f
                                                          'identifier?))
                                                        (__tmp134587
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L129312_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp134588
                                                          __tmp134587)))
                                                 (__tmp134578
                                                  (let ((__tmp134579
                                                         (let ((__tmp134585
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'core-identifier=?))
                       (__tmp134580
                        (let ((__tmp134581
                               (let ((__tmp134582
                                      (let ((__tmp134584
                                             (gx#datum->syntax '#f 'quote))
                                            (__tmp134583
                                             (let ()
                                               (declare (not safe))
                                               (cons _L129310_ '()))))
                                        (declare (not safe))
                                        (cons __tmp134584 __tmp134583))))
                                 (declare (not safe))
                                 (cons __tmp134582 '()))))
                          (declare (not safe))
                          (cons _L129312_ __tmp134581))))
                   (declare (not safe))
                   (cons __tmp134585 __tmp134580))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp134579 '()))))
                                             (declare (not safe))
                                             (cons __tmp134586 __tmp134578))))
                                      (declare (not safe))
                                      (cons __tmp134589 __tmp134577)))
                                   (__tmp134574
                                    (let ((__tmp134575
                                           (let ()
                                             (declare (not safe))
                                             (cons _E129229_ '()))))
                                      (declare (not safe))
                                      (cons _K129237_ __tmp134575))))
                               (declare (not safe))
                               (cons __tmp134576 __tmp134574))))
                        (declare (not safe))
                        (cons __tmp134590 __tmp134573))))
                  _hd129276129304_
                  _hd129273129294_)
                 (_g129268129283_ _g129269129287_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g129268129283_
                                                  _g129269129287_))))
                                         (_g129268129283_ _g129269129287_)))))
                             (_g129267129334_ (list _tgt129236_ _hd129234_)))
                           (let* ((_g129338129353_
                                   (lambda (_g129339129349_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g129339129349_)))
                                  (_g129337129397_
                                   (lambda (_g129339129357_)
                                     (if (gx#stx-pair? _g129339129357_)
                                         (let ((_e129344129360_
                                                (gx#syntax-e _g129339129357_)))
                                           (let ((_hd129343129364_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e129344129360_)))
                                                 (_tl129342129367_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e129344129360_))))
                                             (if (gx#stx-pair?
                                                  _tl129342129367_)
                                                 (let ((_e129347129370_
                                                        (gx#syntax-e
                                                         _tl129342129367_)))
                                                   (let ((_hd129346129374_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e129347129370_)))
                                                         (_tl129345129377_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e129347129370_))))
                                                     (if (gx#stx-null?
                                                          _tl129345129377_)
                                                         ((lambda (_L129380_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L129382_)
                    (let ()
                      (let ((__tmp134572 (gx#datum->syntax '#f 'let))
                            (__tmp134567
                             (let ((__tmp134569
                                    (let ((__tmp134570
                                           (let ((__tmp134571
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L129382_ '()))))
                                             (declare (not safe))
                                             (cons _L129380_ __tmp134571))))
                                      (declare (not safe))
                                      (cons __tmp134570 '())))
                                   (__tmp134568
                                    (let ()
                                      (declare (not safe))
                                      (cons _K129237_ '()))))
                               (declare (not safe))
                               (cons __tmp134569 __tmp134568))))
                        (declare (not safe))
                        (cons __tmp134572 __tmp134567))))
                  _hd129346129374_
                  _hd129343129364_)
                 (_g129338129353_ _g129339129357_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g129338129353_
                                                  _g129339129357_))))
                                         (_g129338129353_ _g129339129357_)))))
                             (_g129337129397_ (list _tgt129236_ _hd129234_)))))
                   (if (gx#stx-null? _hd129234_)
                       (let* ((_g129401129409_
                               (lambda (_g129402129405_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g129402129405_)))
                              (_g129400129427_
                               (lambda (_g129402129413_)
                                 ((lambda (_L129416_)
                                    (let ()
                                      (let ((__tmp134566
                                             (gx#datum->syntax '#f 'if))
                                            (__tmp134560
                                             (let ((__tmp134563
                                                    (let ((__tmp134565
                                                           (gx#datum->syntax
                                                            '#f
                                                            'stx-null?))
                                                          (__tmp134564
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L129416_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp134565 __tmp134564)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp134561
                                                    (let ((__tmp134562
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _E129229_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _K129237_ __tmp134562))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp134563
                                                     __tmp134561))))
                                        (declare (not safe))
                                        (cons __tmp134566 __tmp134560))))
                                  _g129402129413_))))
                         (_g129400129427_ _tgt129236_))
                       (if (gx#stx-datum? _hd129234_)
                           (let* ((_g129431129450_
                                   (lambda (_g129432129446_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g129432129446_)))
                                  (_g129430129508_
                                   (lambda (_g129432129454_)
                                     (if (gx#stx-pair? _g129432129454_)
                                         (let ((_e129438129457_
                                                (gx#syntax-e _g129432129454_)))
                                           (let ((_hd129437129461_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e129438129457_)))
                                                 (_tl129436129464_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e129438129457_))))
                                             (if (gx#stx-pair?
                                                  _tl129436129464_)
                                                 (let ((_e129441129467_
                                                        (gx#syntax-e
                                                         _tl129436129464_)))
                                                   (let ((_hd129440129471_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e129441129467_)))
                                                         (_tl129439129474_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e129441129467_))))
                                                     (if (gx#stx-pair?
                                                          _tl129439129474_)
                                                         (let ((_e129444129477_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl129439129474_)))
                   (let ((_hd129443129481_
                          (let ()
                            (declare (not safe))
                            (##car _e129444129477_)))
                         (_tl129442129484_
                          (let ()
                            (declare (not safe))
                            (##cdr _e129444129477_))))
                     (if (gx#stx-null? _tl129442129484_)
                         ((lambda (_L129487_ _L129489_ _L129490_)
                            (let ()
                              (let ((__tmp134559 (gx#datum->syntax '#f 'if))
                                    (__tmp134547
                                     (let ((__tmp134550
                                            (let ((__tmp134551
                                                   (let ((__tmp134556
                                                          (let ((__tmp134558
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'stx-e))
                        (__tmp134557
                         (let () (declare (not safe)) (cons _L129490_ '()))))
                    (declare (not safe))
                    (cons __tmp134558 __tmp134557)))
                 (__tmp134552
                  (let ((__tmp134553
                         (let ((__tmp134555 (gx#datum->syntax '#f 'quote))
                               (__tmp134554
                                (let ()
                                  (declare (not safe))
                                  (cons _L129489_ '()))))
                           (declare (not safe))
                           (cons __tmp134555 __tmp134554))))
                    (declare (not safe))
                    (cons __tmp134553 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp134556
                                                           __tmp134552))))
                                              (declare (not safe))
                                              (cons _L129487_ __tmp134551)))
                                           (__tmp134548
                                            (let ((__tmp134549
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _E129229_ '()))))
                                              (declare (not safe))
                                              (cons _K129237_ __tmp134549))))
                                       (declare (not safe))
                                       (cons __tmp134550 __tmp134548))))
                                (declare (not safe))
                                (cons __tmp134559 __tmp134547))))
                          _hd129443129481_
                          _hd129440129471_
                          _hd129437129461_)
                         (_g129431129450_ _g129432129454_))))
                 (_g129431129450_ _g129432129454_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g129431129450_
                                                  _g129432129454_))))
                                         (_g129431129450_ _g129432129454_)))))
                             (_g129430129508_
                              (list _tgt129236_
                                    _hd129234_
                                    (let ((_e129512_ (gx#stx-e _hd129234_)))
                                      (if (or (keyword? _e129512_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _e129512_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (let ()
                                                (declare (not safe))
                                                (number? _e129512_))
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _stx128679_
                            _where129224_
                            _hd129234_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx134412134413_)
                                                    (let ((_e129246129526_
                                                           (gx#syntax-e
                                                            ___stx134412134413_)))
                                                      (let ((_tl129244129533_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e129246129526_)))
                    (_hd129245129530_
                     (let () (declare (not safe)) (##car _e129246129526_))))
                (___kont134415134416_ _tl129244129533_ _hd129245129530_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont134417134418_)))))))
                                  (_recur129231_
                                   _hd129226_
                                   _tgt128831_
                                   (let ((__tmp134595
                                          (gx#datum->syntax '#f 'if))
                                         (__tmp134592
                                          (let ((__tmp134593
                                                 (let ((__tmp134594
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _E129229_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _body129228_
                                                         __tmp134594))))
                                            (declare (not safe))
                                            (cons _fender129227_
                                                  __tmp134593))))
                                     (declare (not safe))
                                     (cons __tmp134595 __tmp134592))))))
                             (_generate-clauses128839_
                              (lambda (_clauses128962_)
                                (let _lp128965_ ((_rest128968_ _clauses128962_)
                                                 (_E128970_ (gx#genident 'E))
                                                 (_r128971_ '()))
                                  (let* ((___stx134448134449_ _rest128968_)
                                         (_g128974128986_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx134448134449_))))
                                    (let ((___kont134451134452_
                                           (lambda (_L129051_ _L129053_)
                                             (let* ((___stx134428134429_
                                                     _L129053_)
                                                    (_g129065129076_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        ___stx134428134429_))))
                                               (let ((___kont134431134432_
                                                      (lambda (_L129205_)
                                                        (if (gx#stx-null?
                                                             _L129051_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L129205_)
                             (let ((__tmp134604 (gx#stx-null? _L129205_)))
                               (declare (not safe))
                               (not __tmp134604)))
                        (let ((__tmp134596
                               (let ((__tmp134597
                                      (let ((__tmp134598
                                             (gx#stx-wrap-source
                                              (let ((__tmp134603
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp134599
                                                     (let ((__tmp134600
                                                            (let ((__tmp134601
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp134602 (gx#datum->syntax '#f 'begin)))
                             (declare (not safe))
                             (cons __tmp134602 _L129205_))))
                      (declare (not safe))
                      (cons __tmp134601 '()))))
               (declare (not safe))
               (cons '() __tmp134600))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp134603 __tmp134599))
                                              (gx#stx-source _L129053_))))
                                        (declare (not safe))
                                        (cons __tmp134598 '()))))
                                 (declare (not safe))
                                 (cons _E128970_ __tmp134597))))
                          (declare (not safe))
                          (cons __tmp134596 _r128971_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _stx128679_
                         _L129053_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _stx128679_
                     _L129053_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont134433134434_
                                                      (lambda ()
                                                        (let* ((_g129087129095_
                                                                (lambda (_g129088129091_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g129088129091_)))
                       (_g129086129184_
                        (lambda (_g129088129099_)
                          ((lambda (_L129102_)
                             (let ()
                               (let* ((_g129118129126_
                                       (lambda (_g129119129122_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g129119129122_)))
                                      (_g129117129180_
                                       (lambda (_g129119129130_)
                                         ((lambda (_L129133_)
                                            (let ()
                                              (let* ((_g129146129154_
                                                      (lambda (_g129147129150_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g129147129150_)))
                                                     (_g129145129176_
                                                      (lambda (_g129147129158_)
                                                        ((lambda (_L129161_)
                                                           (let ()
                                                             (let ()
                                                               (_lp128965_
                                                                _L129051_
                                                                _L129102_
                                                                (let ((__tmp134605
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp134606
                                      (let ()
                                        (declare (not safe))
                                        (cons _L129161_ '()))))
                                 (declare (not safe))
                                 (cons _E128970_ __tmp134606))))
                          (declare (not safe))
                          (cons __tmp134605 _r128971_))))))
                 _g129147129158_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g129145129176_
                                                 (gx#stx-wrap-source
                                                  (let ((__tmp134609
                                                         (gx#datum->syntax
                                                          '#f
                                                          'lambda))
                                                        (__tmp134607
                                                         (let ((__tmp134608
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _L129133_ '()))))
                   (declare (not safe))
                   (cons '() __tmp134608))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp134609
                                                          __tmp134607))
                                                  (gx#stx-source
                                                   _L129053_))))))
                                          _g129119129130_))))
                                 (_g129117129180_
                                  (_generate-clause128836_
                                   _L129053_
                                   (let ()
                                     (declare (not safe))
                                     (cons _L129102_ '())))))))
                           _g129088129099_))))
                  (_g129086129184_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      ___stx134428134429_)
                                                     (let ((_e129070129195_
                                                            (gx#syntax-e
                                                             ___stx134428134429_)))
                                                       (let ((_tl129068129202_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e129070129195_)))
                     (_hd129069129199_
                      (let () (declare (not safe)) (##car _e129070129195_))))
                 (if (gx#identifier? _hd129069129199_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g134610_|
                          _hd129069129199_)
                         (___kont134431134432_ _tl129068129202_)
                         (___kont134433134434_))
                     (___kont134433134434_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont134433134434_))))))
                                          (___kont134453134454_
                                           (lambda ()
                                             (let* ((_g128997129005_
                                                     (lambda (_g128998129001_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g128998129001_)))
                                                    (_g128996129030_
                                                     (lambda (_g128998129009_)
                                                       ((lambda (_L129012_)
                                                          (let ()
                                                            (let ((__tmp134611
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp134612
                                  (let ((__tmp134613
                                         (gx#stx-wrap-source
                                          (let ((__tmp134621
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp134614
                                                 (let ((__tmp134615
                                                        (let ((__tmp134616
                                                               (let ((__tmp134620
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'raise-syntax-error))
                             (__tmp134617
                              (let ((__tmp134618
                                     (let ((__tmp134619
                                            (let ()
                                              (declare (not safe))
                                              (cons _L129012_ '()))))
                                       (declare (not safe))
                                       (cons '"Bad syntax; invalid syntax-case clause"
                                             __tmp134619))))
                                (declare (not safe))
                                (cons '#f __tmp134618))))
                         (declare (not safe))
                         (cons __tmp134620 __tmp134617))))
                  (declare (not safe))
                  (cons __tmp134616 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '() __tmp134615))))
                                            (declare (not safe))
                                            (cons __tmp134621 __tmp134614))
                                          (gx#stx-source _stx128679_))))
                                    (declare (not safe))
                                    (cons __tmp134613 '()))))
                             (declare (not safe))
                             (cons _E128970_ __tmp134612))))
                      (declare (not safe))
                      (cons __tmp134611 _r128971_))))
                _g128998129009_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g128996129030_
                                                _tgt128831_)))))
                                      (if (gx#stx-pair? ___stx134448134449_)
                                          (let ((_e128980129041_
                                                 (gx#syntax-e
                                                  ___stx134448134449_)))
                                            (let ((_tl128978129048_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e128980129041_)))
                                                  (_hd128979129045_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e128980129041_))))
                                              (___kont134451134452_
                                               _tl128978129048_
                                               _hd128979129045_)))
                                          (___kont134453134454_))))))))
                      (let* ((_bind128841_
                              (_generate-clauses128839_ _clauses128834_))
                             (_g128844128861_
                              (lambda (_g128845128857_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g128845128857_)))
                             (_g128843128958_
                              (lambda (_g128845128865_)
                                (if (gx#stx-pair/null? _g128845128865_)
                                    (let ((_g134622_
                                           (gx#syntax-split-splice
                                            _g128845128865_
                                            '0)))
                                      (begin
                                        (let ((_g134623_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g134622_)
                                                     (##vector-length
                                                      _g134622_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g134623_ 2)))
                                              (error "Context expects 2 values"
                                                     _g134623_)))
                                        (let ((_target128847128868_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g134622_ 0)))
                                              (_tl128849128871_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g134622_ 1))))
                                          (if (gx#stx-null? _tl128849128871_)
                                              (letrec ((_loop128850128874_
                                                        (lambda (_hd128848128878_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind-try128854128881_)
                  (if (gx#stx-pair? _hd128848128878_)
                      (let ((_e128851128884_ (gx#syntax-e _hd128848128878_)))
                        (let ((_lp-hd128852128888_
                               (let ()
                                 (declare (not safe))
                                 (##car _e128851128884_)))
                              (_lp-tl128853128891_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e128851128884_))))
                          (_loop128850128874_
                           _lp-tl128853128891_
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd128852128888_
                                   _bind-try128854128881_)))))
                      (let ((_bind-try128855128894_
                             (reverse _bind-try128854128881_)))
                        ((lambda (_L128898_)
                           (let ()
                             (let* ((_g128916128924_
                                     (lambda (_g128917128920_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _g128917128920_)))
                                    (_g128915128954_
                                     (lambda (_g128917128928_)
                                       ((lambda (_L128931_)
                                          (let ()
                                            (let ()
                                              (let ((__tmp134629
                                                     (gx#datum->syntax
                                                      '#f
                                                      'let*))
                                                    (__tmp134624
                                                     (let ((__tmp134627
                                                            (let ((__tmp134628
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g128945128948_ _g128946128951_)
                             (let ()
                               (declare (not safe))
                               (cons _g128945128948_ _g128946128951_)))))
                      (declare (not safe))
                      (foldr1 __tmp134628 '() _L128898_)))
                   (__tmp134625
                    (let ((__tmp134626
                           (let () (declare (not safe)) (cons _L128931_ '()))))
                      (declare (not safe))
                      (cons __tmp134626 '()))))
               (declare (not safe))
               (cons __tmp134627 __tmp134625))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp134629
                                                      __tmp134624)))))
                                        _g128917128928_))))
                               (_g128915128954_
                                (car (let ()
                                       (declare (not safe))
                                       (last _bind128841_)))))))
                         _bind-try128855128894_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop128850128874_
                                                 _target128847128868_
                                                 '()))
                                              (_g128844128861_
                                               _g128845128865_)))))
                                    (_g128844128861_ _g128845128865_)))))
                        (_g128843128958_ _bind128841_))))))
          (let* ((_g128685128704_
                  (lambda (_g128686128700_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g128686128700_)))
                 (_g128684128827_
                  (lambda (_g128686128708_)
                    (if (gx#stx-pair? _g128686128708_)
                        (let ((_e128692128711_ (gx#syntax-e _g128686128708_)))
                          (let ((_hd128691128715_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e128692128711_)))
                                (_tl128690128718_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e128692128711_))))
                            (if (gx#stx-pair? _tl128690128718_)
                                (let ((_e128695128721_
                                       (gx#syntax-e _tl128690128718_)))
                                  (let ((_hd128694128725_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e128695128721_)))
                                        (_tl128693128728_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e128695128721_))))
                                    (if (gx#stx-pair? _tl128693128728_)
                                        (let ((_e128698128731_
                                               (gx#syntax-e _tl128693128728_)))
                                          (let ((_hd128697128735_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e128698128731_)))
                                                (_tl128696128738_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e128698128731_))))
                                            ((lambda (_L128741_
                                                      _L128743_
                                                      _L128744_)
                                               (if (and (gx#identifier-list?
                                                         _L128743_)
                                                        (gx#stx-list?
                                                         _L128741_))
                                                   (let* ((_g128762128770_
                                                           (lambda (_g128763128766_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g128763128766_)))
                                                          (_g128761128823_
                                                           (lambda (_g128763128774_)
                                                             ((lambda (_L128777_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g128789128797_
                                  (lambda (_g128790128793_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g128790128793_)))
                                 (_g128788128819_
                                  (lambda (_g128790128801_)
                                    ((lambda (_L128804_)
                                       (let ()
                                         (let ()
                                           (let ((__tmp134635
                                                  (gx#datum->syntax '#f 'let))
                                                 (__tmp134630
                                                  (let ((__tmp134632
                                                         (let ((__tmp134633
                                                                (let ((__tmp134634
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L128744_ '()))))
                          (declare (not safe))
                          (cons _L128777_ __tmp134634))))
                   (declare (not safe))
                   (cons __tmp134633 '())))
                (__tmp134631
                 (let () (declare (not safe)) (cons _L128804_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp134632
                                                          __tmp134631))))
                                             (declare (not safe))
                                             (cons __tmp134635 __tmp134630)))))
                                     _g128790128801_))))
                            (_g128788128819_
                             (_generate128682_
                              _L128777_
                              (gx#syntax->list _L128743_)
                              _L128741_)))))
                      _g128763128774_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g128761128823_
                                                      (gx#genident 'e)))
                                                   (_g128685128704_
                                                    _g128686128708_)))
                                             _tl128696128738_
                                             _hd128697128735_
                                             _hd128694128725_)))
                                        (_g128685128704_ _g128686128708_))))
                                (_g128685128704_ _g128686128708_))))
                        (_g128685128704_ _g128686128708_)))))
            (_g128684128827_ _stx128679_)))))))
