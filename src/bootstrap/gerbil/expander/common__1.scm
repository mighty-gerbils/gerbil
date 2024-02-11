(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g134464_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134466_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134468_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134473_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134476_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134481_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134484_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134489_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134492_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134497_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134500_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134607_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj134460
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
           __obj134460
           'gerbil#AST::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134460
           'syntax
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134460
           '(e source)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134460
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134460
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134460
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134460
           '#f
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp134463 |gx[1]#_g134464_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134460
           __tmp134463
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp134465 |gx[1]#_g134466_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134460
           __tmp134465
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp134467 |gx[1]#_g134468_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134460
           __tmp134467
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp134469
               (let ((__tmp134474
                      (let ((__tmp134475 |gx[1]#_g134476_|))
                        (declare (not safe))
                        (cons 'e __tmp134475)))
                     (__tmp134470
                      (let ((__tmp134471
                             (let ((__tmp134472 |gx[1]#_g134473_|))
                               (declare (not safe))
                               (cons 'source __tmp134472))))
                        (declare (not safe))
                        (cons __tmp134471 '()))))
                 (declare (not safe))
                 (cons __tmp134474 __tmp134470))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134460
           __tmp134469
           '11
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp134477
               (let ((__tmp134482
                      (let ((__tmp134483 |gx[1]#_g134484_|))
                        (declare (not safe))
                        (cons 'e __tmp134483)))
                     (__tmp134478
                      (let ((__tmp134479
                             (let ((__tmp134480 |gx[1]#_g134481_|))
                               (declare (not safe))
                               (cons 'source __tmp134480))))
                        (declare (not safe))
                        (cons __tmp134479 '()))))
                 (declare (not safe))
                 (cons __tmp134482 __tmp134478))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134460
           __tmp134477
           '12
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp134485
               (let ((__tmp134490
                      (let ((__tmp134491 |gx[1]#_g134492_|))
                        (declare (not safe))
                        (cons 'e __tmp134491)))
                     (__tmp134486
                      (let ((__tmp134487
                             (let ((__tmp134488 |gx[1]#_g134489_|))
                               (declare (not safe))
                               (cons 'source __tmp134488))))
                        (declare (not safe))
                        (cons __tmp134487 '()))))
                 (declare (not safe))
                 (cons __tmp134490 __tmp134486))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134460
           __tmp134485
           '13
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp134493
               (let ((__tmp134498
                      (let ((__tmp134499 |gx[1]#_g134500_|))
                        (declare (not safe))
                        (cons 'e __tmp134499)))
                     (__tmp134494
                      (let ((__tmp134495
                             (let ((__tmp134496 |gx[1]#_g134497_|))
                               (declare (not safe))
                               (cons 'source __tmp134496))))
                        (declare (not safe))
                        (cons __tmp134495 '()))))
                 (declare (not safe))
                 (cons __tmp134498 __tmp134494))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134460
           __tmp134493
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj134460))
    (define |gx[:0:]#check-procedure|
      (lambda (_$stx128612_)
        (let* ((_g128616128630_
                (lambda (_g128617128626_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g128617128626_)))
               (_g128615128672_
                (lambda (_g128617128634_)
                  (if (gx#stx-pair? _g128617128634_)
                      (let ((_e128621128637_ (gx#syntax-e _g128617128634_)))
                        (let ((_hd128620128641_
                               (let ()
                                 (declare (not safe))
                                 (##car _e128621128637_)))
                              (_tl128619128644_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e128621128637_))))
                          (if (gx#stx-pair? _tl128619128644_)
                              (let ((_e128624128647_
                                     (gx#syntax-e _tl128619128644_)))
                                (let ((_hd128623128651_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e128624128647_)))
                                      (_tl128622128654_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e128624128647_))))
                                  (if (gx#stx-null? _tl128622128654_)
                                      ((lambda (_L128657_)
                                         (let ((__tmp134510
                                                (gx#datum->syntax '#f 'unless))
                                               (__tmp134501
                                                (let ((__tmp134507
                                                       (let ((__tmp134509
                                                              (gx#datum->syntax
                                                               '#f
                                                               'procedure?))
                                                             (__tmp134508
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L128657_ '()))))
                 (declare (not safe))
                 (cons __tmp134509 __tmp134508)))
              (__tmp134502
               (let ((__tmp134503
                      (let ((__tmp134506 (gx#datum->syntax '#f 'error))
                            (__tmp134504
                             (let ((__tmp134505
                                    (let ()
                                      (declare (not safe))
                                      (cons _L128657_ '()))))
                               (declare (not safe))
                               (cons '"expected procedure" __tmp134505))))
                        (declare (not safe))
                        (cons __tmp134506 __tmp134504))))
                 (declare (not safe))
                 (cons __tmp134503 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp134507
                                                        __tmp134502))))
                                           (declare (not safe))
                                           (cons __tmp134510 __tmp134501)))
                                       _hd128623128651_)
                                      (_g128616128630_ _g128617128634_))))
                              (_g128616128630_ _g128617128634_))))
                      (_g128616128630_ _g128617128634_)))))
          (_g128615128672_ _$stx128612_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_stx128676_)
        (letrec ((_generate128679_
                  (lambda (_tgt128828_ _kws128830_ _clauses128831_)
                    (letrec ((_generate-clause128833_
                              (lambda (_hd129743_ _E129745_)
                                (let* ((___stx134363134364_ _hd129743_)
                                       (_g129749129776_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx134363134364_))))
                                  (let ((___kont134366134367_
                                         (lambda (_L129872_ _L129874_)
                                           (_generate1128835_
                                            _hd129743_
                                            _L129874_
                                            '#t
                                            _L129872_
                                            _E129745_)))
                                        (___kont134368134369_
                                         (lambda (_L129824_
                                                  _L129826_
                                                  _L129827_)
                                           (_generate1128835_
                                            _hd129743_
                                            _L129827_
                                            _L129826_
                                            _L129824_
                                            _E129745_)))
                                        (___kont134370134371_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _stx128676_
                                            _hd129743_))))
                                    (if (gx#stx-pair? ___stx134363134364_)
                                        (let ((_e129755129852_
                                               (gx#syntax-e
                                                ___stx134363134364_)))
                                          (let ((_tl129753129859_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e129755129852_)))
                                                (_hd129754129856_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e129755129852_))))
                                            (if (gx#stx-pair? _tl129753129859_)
                                                (let ((_e129758129862_
                                                       (gx#syntax-e
                                                        _tl129753129859_)))
                                                  (let ((_tl129756129869_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e129758129862_)))
                                                        (_hd129757129866_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e129758129862_))))
                                                    (if (gx#stx-null?
                                                         _tl129756129869_)
                                                        (___kont134366134367_
                                                         _hd129757129866_
                                                         _hd129754129856_)
                                                        (if (gx#stx-pair?
                                                             _tl129756129869_)
                                                            (let ((_e129770129814_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl129756129869_)))
                      (let ((_tl129768129821_
                             (let ()
                               (declare (not safe))
                               (##cdr _e129770129814_)))
                            (_hd129769129818_
                             (let ()
                               (declare (not safe))
                               (##car _e129770129814_))))
                        (if (gx#stx-null? _tl129768129821_)
                            (___kont134368134369_
                             _hd129769129818_
                             _hd129757129866_
                             _hd129754129856_)
                            (___kont134370134371_))))
                    (___kont134370134371_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont134370134371_))))
                                        (___kont134370134371_))))))
                             (_generate1128835_
                              (lambda (_where129221_
                                       _hd129223_
                                       _fender129224_
                                       _body129225_
                                       _E129226_)
                                (letrec ((_recur129228_
                                          (lambda (_hd129231_
                                                   _tgt129233_
                                                   _K129234_)
                                            (let* ((___stx134409134410_
                                                    _hd129231_)
                                                   (_g129237129249_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx134409134410_))))
                                              (let ((___kont134412134413_
                                                     (lambda (_L129533_
                                                              _L129535_)
                                                       (let* ((_g129546129554_
                                                               (lambda (_g129547129550_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g129547129550_)))
                      (_g129545129735_
                       (lambda (_g129547129558_)
                         ((lambda (_L129561_)
                            (let ()
                              (let* ((_g129573129581_
                                      (lambda (_g129574129577_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g129574129577_)))
                                     (_g129572129731_
                                      (lambda (_g129574129585_)
                                        ((lambda (_L129588_)
                                           (let ()
                                             (let* ((_g129601129609_
                                                     (lambda (_g129602129605_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g129602129605_)))
                                                    (_g129600129727_
                                                     (lambda (_g129602129613_)
                                                       ((lambda (_L129616_)
                                                          (let ()
                                                            (let* ((_g129629129637_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g129630129633_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g129630129633_)))
                           (_g129628129723_
                            (lambda (_g129630129641_)
                              ((lambda (_L129644_)
                                 (let ()
                                   (let* ((_g129657129665_
                                           (lambda (_g129658129661_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g129658129661_)))
                                          (_g129656129719_
                                           (lambda (_g129658129669_)
                                             ((lambda (_L129672_)
                                                (let ()
                                                  (let* ((_g129685129693_
                                                          (lambda (_g129686129689_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g129686129689_)))
                                                         (_g129684129715_
                                                          (lambda (_g129686129697_)
                                                            ((lambda (_L129700_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((__tmp134543 (gx#datum->syntax '#f 'if))
                                 (__tmp134511
                                  (let ((__tmp134540
                                         (let ((__tmp134542
                                                (gx#datum->syntax
                                                 '#f
                                                 'stx-pair?))
                                               (__tmp134541
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L129561_ '()))))
                                           (declare (not safe))
                                           (cons __tmp134542 __tmp134541)))
                                        (__tmp134512
                                         (let ((__tmp134514
                                                (let ((__tmp134539
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp134515
                                                       (let ((__tmp134533
                                                              (let ((__tmp134534
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp134535
                                    (let ((__tmp134536
                                           (let ((__tmp134538
                                                  (gx#datum->syntax
                                                   '#f
                                                   'syntax-e))
                                                 (__tmp134537
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L129561_ '()))))
                                             (declare (not safe))
                                             (cons __tmp134538 __tmp134537))))
                                      (declare (not safe))
                                      (cons __tmp134536 '()))))
                               (declare (not safe))
                               (cons _L129588_ __tmp134535))))
                        (declare (not safe))
                        (cons __tmp134534 '())))
                     (__tmp134516
                      (let ((__tmp134517
                             (let ((__tmp134532 (gx#datum->syntax '#f 'let))
                                   (__tmp134518
                                    (let ((__tmp134520
                                           (let ((__tmp134527
                                                  (let ((__tmp134528
                                                         (let ((__tmp134529
                                                                (let ((__tmp134531
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '##car))
                              (__tmp134530
                               (let ()
                                 (declare (not safe))
                                 (cons _L129588_ '()))))
                          (declare (not safe))
                          (cons __tmp134531 __tmp134530))))
                   (declare (not safe))
                   (cons __tmp134529 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L129616_
                                                          __tmp134528)))
                                                 (__tmp134521
                                                  (let ((__tmp134522
                                                         (let ((__tmp134523
                                                                (let ((__tmp134524
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp134526
                                      (gx#datum->syntax '#f '##cdr))
                                     (__tmp134525
                                      (let ()
                                        (declare (not safe))
                                        (cons _L129588_ '()))))
                                 (declare (not safe))
                                 (cons __tmp134526 __tmp134525))))
                          (declare (not safe))
                          (cons __tmp134524 '()))))
                   (declare (not safe))
                   (cons _L129644_ __tmp134523))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp134522 '()))))
                                             (declare (not safe))
                                             (cons __tmp134527 __tmp134521)))
                                          (__tmp134519
                                           (let ()
                                             (declare (not safe))
                                             (cons _L129672_ '()))))
                                      (declare (not safe))
                                      (cons __tmp134520 __tmp134519))))
                               (declare (not safe))
                               (cons __tmp134532 __tmp134518))))
                        (declare (not safe))
                        (cons __tmp134517 '()))))
                 (declare (not safe))
                 (cons __tmp134533 __tmp134516))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp134539
                                                        __tmp134515)))
                                               (__tmp134513
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L129700_ '()))))
                                           (declare (not safe))
                                           (cons __tmp134514 __tmp134513))))
                                    (declare (not safe))
                                    (cons __tmp134540 __tmp134512))))
                             (declare (not safe))
                             (cons __tmp134543 __tmp134511)))))
                     _g129686129697_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g129684129715_
                                                     _E129226_))))
                                              _g129658129669_))))
                                     (_g129656129719_
                                      (_recur129228_
                                       _L129535_
                                       _L129616_
                                       (_recur129228_
                                        _L129533_
                                        _L129644_
                                        _K129234_))))))
                               _g129630129641_))))
                      (_g129628129723_ (gx#genident 'tl)))))
                _g129602129613_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g129600129727_
                                                (gx#genident 'hd)))))
                                         _g129574129585_))))
                                (_g129572129731_ (gx#genident 'e)))))
                          _g129547129558_))))
                 (_g129545129735_ _tgt129233_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont134414134415_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _hd129231_)
                                                           (if (gx#underscore?
                                                                _hd129231_)
                                                               _K129234_
                                                               (if (let ((__tmp134588
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g129259129261_)
                                    (gx#bound-identifier=?
                                     _g129259129261_
                                     _hd129231_))))
                             (declare (not safe))
                             (find __tmp134588 _kws128830_))
                           (let* ((_g129265129280_
                                   (lambda (_g129266129276_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g129266129276_)))
                                  (_g129264129331_
                                   (lambda (_g129266129284_)
                                     (if (gx#stx-pair? _g129266129284_)
                                         (let ((_e129271129287_
                                                (gx#syntax-e _g129266129284_)))
                                           (let ((_hd129270129291_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e129271129287_)))
                                                 (_tl129269129294_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e129271129287_))))
                                             (if (gx#stx-pair?
                                                  _tl129269129294_)
                                                 (let ((_e129274129297_
                                                        (gx#syntax-e
                                                         _tl129269129294_)))
                                                   (let ((_hd129273129301_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e129274129297_)))
                                                         (_tl129272129304_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e129274129297_))))
                                                     (if (gx#stx-null?
                                                          _tl129272129304_)
                                                         ((lambda (_L129307_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L129309_)
                    (let ()
                      (let ((__tmp134587 (gx#datum->syntax '#f 'if))
                            (__tmp134570
                             (let ((__tmp134573
                                    (let ((__tmp134586
                                           (gx#datum->syntax '#f 'and))
                                          (__tmp134574
                                           (let ((__tmp134583
                                                  (let ((__tmp134585
                                                         (gx#datum->syntax
                                                          '#f
                                                          'identifier?))
                                                        (__tmp134584
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L129309_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp134585
                                                          __tmp134584)))
                                                 (__tmp134575
                                                  (let ((__tmp134576
                                                         (let ((__tmp134582
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'core-identifier=?))
                       (__tmp134577
                        (let ((__tmp134578
                               (let ((__tmp134579
                                      (let ((__tmp134581
                                             (gx#datum->syntax '#f 'quote))
                                            (__tmp134580
                                             (let ()
                                               (declare (not safe))
                                               (cons _L129307_ '()))))
                                        (declare (not safe))
                                        (cons __tmp134581 __tmp134580))))
                                 (declare (not safe))
                                 (cons __tmp134579 '()))))
                          (declare (not safe))
                          (cons _L129309_ __tmp134578))))
                   (declare (not safe))
                   (cons __tmp134582 __tmp134577))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp134576 '()))))
                                             (declare (not safe))
                                             (cons __tmp134583 __tmp134575))))
                                      (declare (not safe))
                                      (cons __tmp134586 __tmp134574)))
                                   (__tmp134571
                                    (let ((__tmp134572
                                           (let ()
                                             (declare (not safe))
                                             (cons _E129226_ '()))))
                                      (declare (not safe))
                                      (cons _K129234_ __tmp134572))))
                               (declare (not safe))
                               (cons __tmp134573 __tmp134571))))
                        (declare (not safe))
                        (cons __tmp134587 __tmp134570))))
                  _hd129273129301_
                  _hd129270129291_)
                 (_g129265129280_ _g129266129284_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g129265129280_
                                                  _g129266129284_))))
                                         (_g129265129280_ _g129266129284_)))))
                             (_g129264129331_ (list _tgt129233_ _hd129231_)))
                           (let* ((_g129335129350_
                                   (lambda (_g129336129346_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g129336129346_)))
                                  (_g129334129394_
                                   (lambda (_g129336129354_)
                                     (if (gx#stx-pair? _g129336129354_)
                                         (let ((_e129341129357_
                                                (gx#syntax-e _g129336129354_)))
                                           (let ((_hd129340129361_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e129341129357_)))
                                                 (_tl129339129364_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e129341129357_))))
                                             (if (gx#stx-pair?
                                                  _tl129339129364_)
                                                 (let ((_e129344129367_
                                                        (gx#syntax-e
                                                         _tl129339129364_)))
                                                   (let ((_hd129343129371_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e129344129367_)))
                                                         (_tl129342129374_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e129344129367_))))
                                                     (if (gx#stx-null?
                                                          _tl129342129374_)
                                                         ((lambda (_L129377_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L129379_)
                    (let ()
                      (let ((__tmp134569 (gx#datum->syntax '#f 'let))
                            (__tmp134564
                             (let ((__tmp134566
                                    (let ((__tmp134567
                                           (let ((__tmp134568
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L129379_ '()))))
                                             (declare (not safe))
                                             (cons _L129377_ __tmp134568))))
                                      (declare (not safe))
                                      (cons __tmp134567 '())))
                                   (__tmp134565
                                    (let ()
                                      (declare (not safe))
                                      (cons _K129234_ '()))))
                               (declare (not safe))
                               (cons __tmp134566 __tmp134565))))
                        (declare (not safe))
                        (cons __tmp134569 __tmp134564))))
                  _hd129343129371_
                  _hd129340129361_)
                 (_g129335129350_ _g129336129354_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g129335129350_
                                                  _g129336129354_))))
                                         (_g129335129350_ _g129336129354_)))))
                             (_g129334129394_ (list _tgt129233_ _hd129231_)))))
                   (if (gx#stx-null? _hd129231_)
                       (let* ((_g129398129406_
                               (lambda (_g129399129402_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g129399129402_)))
                              (_g129397129424_
                               (lambda (_g129399129410_)
                                 ((lambda (_L129413_)
                                    (let ()
                                      (let ((__tmp134563
                                             (gx#datum->syntax '#f 'if))
                                            (__tmp134557
                                             (let ((__tmp134560
                                                    (let ((__tmp134562
                                                           (gx#datum->syntax
                                                            '#f
                                                            'stx-null?))
                                                          (__tmp134561
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L129413_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp134562 __tmp134561)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp134558
                                                    (let ((__tmp134559
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _E129226_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _K129234_ __tmp134559))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp134560
                                                     __tmp134558))))
                                        (declare (not safe))
                                        (cons __tmp134563 __tmp134557))))
                                  _g129399129410_))))
                         (_g129397129424_ _tgt129233_))
                       (if (gx#stx-datum? _hd129231_)
                           (let* ((_g129428129447_
                                   (lambda (_g129429129443_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g129429129443_)))
                                  (_g129427129505_
                                   (lambda (_g129429129451_)
                                     (if (gx#stx-pair? _g129429129451_)
                                         (let ((_e129435129454_
                                                (gx#syntax-e _g129429129451_)))
                                           (let ((_hd129434129458_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e129435129454_)))
                                                 (_tl129433129461_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e129435129454_))))
                                             (if (gx#stx-pair?
                                                  _tl129433129461_)
                                                 (let ((_e129438129464_
                                                        (gx#syntax-e
                                                         _tl129433129461_)))
                                                   (let ((_hd129437129468_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e129438129464_)))
                                                         (_tl129436129471_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e129438129464_))))
                                                     (if (gx#stx-pair?
                                                          _tl129436129471_)
                                                         (let ((_e129441129474_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl129436129471_)))
                   (let ((_hd129440129478_
                          (let ()
                            (declare (not safe))
                            (##car _e129441129474_)))
                         (_tl129439129481_
                          (let ()
                            (declare (not safe))
                            (##cdr _e129441129474_))))
                     (if (gx#stx-null? _tl129439129481_)
                         ((lambda (_L129484_ _L129486_ _L129487_)
                            (let ()
                              (let ((__tmp134556 (gx#datum->syntax '#f 'if))
                                    (__tmp134544
                                     (let ((__tmp134547
                                            (let ((__tmp134548
                                                   (let ((__tmp134553
                                                          (let ((__tmp134555
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'stx-e))
                        (__tmp134554
                         (let () (declare (not safe)) (cons _L129487_ '()))))
                    (declare (not safe))
                    (cons __tmp134555 __tmp134554)))
                 (__tmp134549
                  (let ((__tmp134550
                         (let ((__tmp134552 (gx#datum->syntax '#f 'quote))
                               (__tmp134551
                                (let ()
                                  (declare (not safe))
                                  (cons _L129486_ '()))))
                           (declare (not safe))
                           (cons __tmp134552 __tmp134551))))
                    (declare (not safe))
                    (cons __tmp134550 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp134553
                                                           __tmp134549))))
                                              (declare (not safe))
                                              (cons _L129484_ __tmp134548)))
                                           (__tmp134545
                                            (let ((__tmp134546
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _E129226_ '()))))
                                              (declare (not safe))
                                              (cons _K129234_ __tmp134546))))
                                       (declare (not safe))
                                       (cons __tmp134547 __tmp134545))))
                                (declare (not safe))
                                (cons __tmp134556 __tmp134544))))
                          _hd129440129478_
                          _hd129437129468_
                          _hd129434129458_)
                         (_g129428129447_ _g129429129451_))))
                 (_g129428129447_ _g129429129451_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g129428129447_
                                                  _g129429129451_))))
                                         (_g129428129447_ _g129429129451_)))))
                             (_g129427129505_
                              (list _tgt129233_
                                    _hd129231_
                                    (let ((_e129509_ (gx#stx-e _hd129231_)))
                                      (if (or (keyword? _e129509_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _e129509_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (let ()
                                                (declare (not safe))
                                                (number? _e129509_))
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _stx128676_
                            _where129221_
                            _hd129231_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx134409134410_)
                                                    (let ((_e129243129523_
                                                           (gx#syntax-e
                                                            ___stx134409134410_)))
                                                      (let ((_tl129241129530_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e129243129523_)))
                    (_hd129242129527_
                     (let () (declare (not safe)) (##car _e129243129523_))))
                (___kont134412134413_ _tl129241129530_ _hd129242129527_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont134414134415_)))))))
                                  (_recur129228_
                                   _hd129223_
                                   _tgt128828_
                                   (let ((__tmp134592
                                          (gx#datum->syntax '#f 'if))
                                         (__tmp134589
                                          (let ((__tmp134590
                                                 (let ((__tmp134591
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _E129226_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _body129225_
                                                         __tmp134591))))
                                            (declare (not safe))
                                            (cons _fender129224_
                                                  __tmp134590))))
                                     (declare (not safe))
                                     (cons __tmp134592 __tmp134589))))))
                             (_generate-clauses128836_
                              (lambda (_clauses128959_)
                                (let _lp128962_ ((_rest128965_ _clauses128959_)
                                                 (_E128967_ (gx#genident 'E))
                                                 (_r128968_ '()))
                                  (let* ((___stx134445134446_ _rest128965_)
                                         (_g128971128983_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx134445134446_))))
                                    (let ((___kont134448134449_
                                           (lambda (_L129048_ _L129050_)
                                             (let* ((___stx134425134426_
                                                     _L129050_)
                                                    (_g129062129073_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        ___stx134425134426_))))
                                               (let ((___kont134428134429_
                                                      (lambda (_L129202_)
                                                        (if (gx#stx-null?
                                                             _L129048_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L129202_)
                             (let ((__tmp134601 (gx#stx-null? _L129202_)))
                               (declare (not safe))
                               (not __tmp134601)))
                        (let ((__tmp134593
                               (let ((__tmp134594
                                      (let ((__tmp134595
                                             (gx#stx-wrap-source
                                              (let ((__tmp134600
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp134596
                                                     (let ((__tmp134597
                                                            (let ((__tmp134598
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp134599 (gx#datum->syntax '#f 'begin)))
                             (declare (not safe))
                             (cons __tmp134599 _L129202_))))
                      (declare (not safe))
                      (cons __tmp134598 '()))))
               (declare (not safe))
               (cons '() __tmp134597))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp134600 __tmp134596))
                                              (gx#stx-source _L129050_))))
                                        (declare (not safe))
                                        (cons __tmp134595 '()))))
                                 (declare (not safe))
                                 (cons _E128967_ __tmp134594))))
                          (declare (not safe))
                          (cons __tmp134593 _r128968_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _stx128676_
                         _L129050_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _stx128676_
                     _L129050_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont134430134431_
                                                      (lambda ()
                                                        (let* ((_g129084129092_
                                                                (lambda (_g129085129088_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g129085129088_)))
                       (_g129083129181_
                        (lambda (_g129085129096_)
                          ((lambda (_L129099_)
                             (let ()
                               (let* ((_g129115129123_
                                       (lambda (_g129116129119_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g129116129119_)))
                                      (_g129114129177_
                                       (lambda (_g129116129127_)
                                         ((lambda (_L129130_)
                                            (let ()
                                              (let* ((_g129143129151_
                                                      (lambda (_g129144129147_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g129144129147_)))
                                                     (_g129142129173_
                                                      (lambda (_g129144129155_)
                                                        ((lambda (_L129158_)
                                                           (let ()
                                                             (let ()
                                                               (_lp128962_
                                                                _L129048_
                                                                _L129099_
                                                                (let ((__tmp134602
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp134603
                                      (let ()
                                        (declare (not safe))
                                        (cons _L129158_ '()))))
                                 (declare (not safe))
                                 (cons _E128967_ __tmp134603))))
                          (declare (not safe))
                          (cons __tmp134602 _r128968_))))))
                 _g129144129155_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g129142129173_
                                                 (gx#stx-wrap-source
                                                  (let ((__tmp134606
                                                         (gx#datum->syntax
                                                          '#f
                                                          'lambda))
                                                        (__tmp134604
                                                         (let ((__tmp134605
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _L129130_ '()))))
                   (declare (not safe))
                   (cons '() __tmp134605))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp134606
                                                          __tmp134604))
                                                  (gx#stx-source
                                                   _L129050_))))))
                                          _g129116129127_))))
                                 (_g129114129177_
                                  (_generate-clause128833_
                                   _L129050_
                                   (let ()
                                     (declare (not safe))
                                     (cons _L129099_ '())))))))
                           _g129085129096_))))
                  (_g129083129181_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      ___stx134425134426_)
                                                     (let ((_e129067129192_
                                                            (gx#syntax-e
                                                             ___stx134425134426_)))
                                                       (let ((_tl129065129199_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e129067129192_)))
                     (_hd129066129196_
                      (let () (declare (not safe)) (##car _e129067129192_))))
                 (if (gx#identifier? _hd129066129196_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g134607_|
                          _hd129066129196_)
                         (___kont134428134429_ _tl129065129199_)
                         (___kont134430134431_))
                     (___kont134430134431_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont134430134431_))))))
                                          (___kont134450134451_
                                           (lambda ()
                                             (let* ((_g128994129002_
                                                     (lambda (_g128995128998_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g128995128998_)))
                                                    (_g128993129027_
                                                     (lambda (_g128995129006_)
                                                       ((lambda (_L129009_)
                                                          (let ()
                                                            (let ((__tmp134608
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp134609
                                  (let ((__tmp134610
                                         (gx#stx-wrap-source
                                          (let ((__tmp134618
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp134611
                                                 (let ((__tmp134612
                                                        (let ((__tmp134613
                                                               (let ((__tmp134617
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'raise-syntax-error))
                             (__tmp134614
                              (let ((__tmp134615
                                     (let ((__tmp134616
                                            (let ()
                                              (declare (not safe))
                                              (cons _L129009_ '()))))
                                       (declare (not safe))
                                       (cons '"Bad syntax; invalid syntax-case clause"
                                             __tmp134616))))
                                (declare (not safe))
                                (cons '#f __tmp134615))))
                         (declare (not safe))
                         (cons __tmp134617 __tmp134614))))
                  (declare (not safe))
                  (cons __tmp134613 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '() __tmp134612))))
                                            (declare (not safe))
                                            (cons __tmp134618 __tmp134611))
                                          (gx#stx-source _stx128676_))))
                                    (declare (not safe))
                                    (cons __tmp134610 '()))))
                             (declare (not safe))
                             (cons _E128967_ __tmp134609))))
                      (declare (not safe))
                      (cons __tmp134608 _r128968_))))
                _g128995129006_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g128993129027_
                                                _tgt128828_)))))
                                      (if (gx#stx-pair? ___stx134445134446_)
                                          (let ((_e128977129038_
                                                 (gx#syntax-e
                                                  ___stx134445134446_)))
                                            (let ((_tl128975129045_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e128977129038_)))
                                                  (_hd128976129042_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e128977129038_))))
                                              (___kont134448134449_
                                               _tl128975129045_
                                               _hd128976129042_)))
                                          (___kont134450134451_))))))))
                      (let* ((_bind128838_
                              (_generate-clauses128836_ _clauses128831_))
                             (_g128841128858_
                              (lambda (_g128842128854_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g128842128854_)))
                             (_g128840128955_
                              (lambda (_g128842128862_)
                                (if (gx#stx-pair/null? _g128842128862_)
                                    (let ((_g134619_
                                           (gx#syntax-split-splice
                                            _g128842128862_
                                            '0)))
                                      (begin
                                        (let ((_g134620_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g134619_)
                                                     (##vector-length
                                                      _g134619_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g134620_ 2)))
                                              (error "Context expects 2 values"
                                                     _g134620_)))
                                        (let ((_target128844128865_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g134619_ 0)))
                                              (_tl128846128868_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g134619_ 1))))
                                          (if (gx#stx-null? _tl128846128868_)
                                              (letrec ((_loop128847128871_
                                                        (lambda (_hd128845128875_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind-try128851128878_)
                  (if (gx#stx-pair? _hd128845128875_)
                      (let ((_e128848128881_ (gx#syntax-e _hd128845128875_)))
                        (let ((_lp-hd128849128885_
                               (let ()
                                 (declare (not safe))
                                 (##car _e128848128881_)))
                              (_lp-tl128850128888_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e128848128881_))))
                          (_loop128847128871_
                           _lp-tl128850128888_
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd128849128885_
                                   _bind-try128851128878_)))))
                      (let ((_bind-try128852128891_
                             (reverse _bind-try128851128878_)))
                        ((lambda (_L128895_)
                           (let ()
                             (let* ((_g128913128921_
                                     (lambda (_g128914128917_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _g128914128917_)))
                                    (_g128912128951_
                                     (lambda (_g128914128925_)
                                       ((lambda (_L128928_)
                                          (let ()
                                            (let ()
                                              (let ((__tmp134626
                                                     (gx#datum->syntax
                                                      '#f
                                                      'let*))
                                                    (__tmp134621
                                                     (let ((__tmp134624
                                                            (let ((__tmp134625
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g128942128945_ _g128943128948_)
                             (let ()
                               (declare (not safe))
                               (cons _g128942128945_ _g128943128948_)))))
                      (declare (not safe))
                      (foldr1 __tmp134625 '() _L128895_)))
                   (__tmp134622
                    (let ((__tmp134623
                           (let () (declare (not safe)) (cons _L128928_ '()))))
                      (declare (not safe))
                      (cons __tmp134623 '()))))
               (declare (not safe))
               (cons __tmp134624 __tmp134622))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp134626
                                                      __tmp134621)))))
                                        _g128914128925_))))
                               (_g128912128951_
                                (car (let ()
                                       (declare (not safe))
                                       (last _bind128838_)))))))
                         _bind-try128852128891_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop128847128871_
                                                 _target128844128865_
                                                 '()))
                                              (_g128841128858_
                                               _g128842128862_)))))
                                    (_g128841128858_ _g128842128862_)))))
                        (_g128840128955_ _bind128838_))))))
          (let* ((_g128682128701_
                  (lambda (_g128683128697_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g128683128697_)))
                 (_g128681128824_
                  (lambda (_g128683128705_)
                    (if (gx#stx-pair? _g128683128705_)
                        (let ((_e128689128708_ (gx#syntax-e _g128683128705_)))
                          (let ((_hd128688128712_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e128689128708_)))
                                (_tl128687128715_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e128689128708_))))
                            (if (gx#stx-pair? _tl128687128715_)
                                (let ((_e128692128718_
                                       (gx#syntax-e _tl128687128715_)))
                                  (let ((_hd128691128722_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e128692128718_)))
                                        (_tl128690128725_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e128692128718_))))
                                    (if (gx#stx-pair? _tl128690128725_)
                                        (let ((_e128695128728_
                                               (gx#syntax-e _tl128690128725_)))
                                          (let ((_hd128694128732_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e128695128728_)))
                                                (_tl128693128735_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e128695128728_))))
                                            ((lambda (_L128738_
                                                      _L128740_
                                                      _L128741_)
                                               (if (and (gx#identifier-list?
                                                         _L128740_)
                                                        (gx#stx-list?
                                                         _L128738_))
                                                   (let* ((_g128759128767_
                                                           (lambda (_g128760128763_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g128760128763_)))
                                                          (_g128758128820_
                                                           (lambda (_g128760128771_)
                                                             ((lambda (_L128774_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g128786128794_
                                  (lambda (_g128787128790_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g128787128790_)))
                                 (_g128785128816_
                                  (lambda (_g128787128798_)
                                    ((lambda (_L128801_)
                                       (let ()
                                         (let ()
                                           (let ((__tmp134632
                                                  (gx#datum->syntax '#f 'let))
                                                 (__tmp134627
                                                  (let ((__tmp134629
                                                         (let ((__tmp134630
                                                                (let ((__tmp134631
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L128741_ '()))))
                          (declare (not safe))
                          (cons _L128774_ __tmp134631))))
                   (declare (not safe))
                   (cons __tmp134630 '())))
                (__tmp134628
                 (let () (declare (not safe)) (cons _L128801_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp134629
                                                          __tmp134628))))
                                             (declare (not safe))
                                             (cons __tmp134632 __tmp134627)))))
                                     _g128787128798_))))
                            (_g128785128816_
                             (_generate128679_
                              _L128774_
                              (gx#syntax->list _L128740_)
                              _L128738_)))))
                      _g128760128771_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g128758128820_
                                                      (gx#genident 'e)))
                                                   (_g128682128701_
                                                    _g128683128705_)))
                                             _tl128693128735_
                                             _hd128694128732_
                                             _hd128691128722_)))
                                        (_g128682128701_ _g128683128705_))))
                                (_g128682128701_ _g128683128705_))))
                        (_g128682128701_ _g128683128705_)))))
            (_g128681128824_ _stx128676_)))))))
