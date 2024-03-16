(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g78520_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g78522_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g78524_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g78529_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g78532_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g78537_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g78540_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g78545_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g78548_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g78553_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g78556_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g78663_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj78515
             (let ()
               (declare (not safe))
               (##structure
                gerbil/core/mop$<MOP:2>#class-type-info::t
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
                '#f
                '#f))))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj78515
           'gerbil#AST::t
           '1
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj78515
           'syntax
           '2
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj78515
           '(e source)
           '4
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj78515
           '()
           '3
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj78515
           '#t
           '5
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj78515
           '#f
           '6
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj78515
           '#f
           '8
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj78515
           '#f
           '9
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp78519 |gx[1]#_g78520_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj78515
           __tmp78519
           '10
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp78521 |gx[1]#_g78522_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj78515
           __tmp78521
           '11
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp78523 |gx[1]#_g78524_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj78515
           __tmp78523
           '12
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp78525
               (let ((__tmp78530
                      (let ((__tmp78531 |gx[1]#_g78532_|))
                        (declare (not safe))
                        (cons 'e __tmp78531)))
                     (__tmp78526
                      (let ((__tmp78527
                             (let ((__tmp78528 |gx[1]#_g78529_|))
                               (declare (not safe))
                               (cons 'source __tmp78528))))
                        (declare (not safe))
                        (cons __tmp78527 '()))))
                 (declare (not safe))
                 (cons __tmp78530 __tmp78526))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj78515
           __tmp78525
           '13
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp78533
               (let ((__tmp78538
                      (let ((__tmp78539 |gx[1]#_g78540_|))
                        (declare (not safe))
                        (cons 'e __tmp78539)))
                     (__tmp78534
                      (let ((__tmp78535
                             (let ((__tmp78536 |gx[1]#_g78537_|))
                               (declare (not safe))
                               (cons 'source __tmp78536))))
                        (declare (not safe))
                        (cons __tmp78535 '()))))
                 (declare (not safe))
                 (cons __tmp78538 __tmp78534))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj78515
           __tmp78533
           '14
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp78541
               (let ((__tmp78546
                      (let ((__tmp78547 |gx[1]#_g78548_|))
                        (declare (not safe))
                        (cons 'e __tmp78547)))
                     (__tmp78542
                      (let ((__tmp78543
                             (let ((__tmp78544 |gx[1]#_g78545_|))
                               (declare (not safe))
                               (cons 'source __tmp78544))))
                        (declare (not safe))
                        (cons __tmp78543 '()))))
                 (declare (not safe))
                 (cons __tmp78546 __tmp78542))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj78515
           __tmp78541
           '15
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp78549
               (let ((__tmp78554
                      (let ((__tmp78555 |gx[1]#_g78556_|))
                        (declare (not safe))
                        (cons 'e __tmp78555)))
                     (__tmp78550
                      (let ((__tmp78551
                             (let ((__tmp78552 |gx[1]#_g78553_|))
                               (declare (not safe))
                               (cons 'source __tmp78552))))
                        (declare (not safe))
                        (cons __tmp78551 '()))))
                 (declare (not safe))
                 (cons __tmp78554 __tmp78550))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj78515
           __tmp78549
           '16
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        __obj78515))
    (define |gx[:0:]#check-procedure|
      (lambda (_$stx77135_)
        (let* ((_g7713977153_
                (lambda (_g7714077149_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g7714077149_)))
               (_g7713877195_
                (lambda (_g7714077157_)
                  (if (gx#stx-pair? _g7714077157_)
                      (let ((_e7714277160_ (gx#syntax-e _g7714077157_)))
                        (let ((_hd7714377164_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7714277160_)))
                              (_tl7714477167_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7714277160_))))
                          (if (gx#stx-pair? _tl7714477167_)
                              (let ((_e7714577170_
                                     (gx#syntax-e _tl7714477167_)))
                                (let ((_hd7714677174_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7714577170_)))
                                      (_tl7714777177_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7714577170_))))
                                  (if (gx#stx-null? _tl7714777177_)
                                      ((lambda (_L77180_)
                                         (let ((__tmp78566
                                                (gx#datum->syntax '#f 'unless))
                                               (__tmp78557
                                                (let ((__tmp78563
                                                       (let ((__tmp78565
                                                              (gx#datum->syntax
                                                               '#f
                                                               'procedure?))
                                                             (__tmp78564
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L77180_ '()))))
                 (declare (not safe))
                 (cons __tmp78565 __tmp78564)))
              (__tmp78558
               (let ((__tmp78559
                      (let ((__tmp78562 (gx#datum->syntax '#f 'error))
                            (__tmp78560
                             (let ((__tmp78561
                                    (let ()
                                      (declare (not safe))
                                      (cons _L77180_ '()))))
                               (declare (not safe))
                               (cons '"expected procedure" __tmp78561))))
                        (declare (not safe))
                        (cons __tmp78562 __tmp78560))))
                 (declare (not safe))
                 (cons __tmp78559 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp78563
                                                        __tmp78558))))
                                           (declare (not safe))
                                           (cons __tmp78566 __tmp78557)))
                                       _hd7714677174_)
                                      (_g7713977153_ _g7714077157_))))
                              (_g7713977153_ _g7714077157_))))
                      (_g7713977153_ _g7714077157_)))))
          (_g7713877195_ _$stx77135_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_stx77199_)
        (letrec ((_generate77202_
                  (lambda (_tgt77351_ _kws77353_ _clauses77354_)
                    (letrec ((_generate-clause77356_
                              (lambda (_hd78266_ _E78268_)
                                (let* ((___stx7841878419_ _hd78266_)
                                       (_g7827278299_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx7841878419_))))
                                  (let ((___kont7842178422_
                                         (lambda (_L78395_ _L78397_)
                                           (_generate177358_
                                            _hd78266_
                                            _L78397_
                                            '#t
                                            _L78395_
                                            _E78268_)))
                                        (___kont7842378424_
                                         (lambda (_L78347_ _L78349_ _L78350_)
                                           (_generate177358_
                                            _hd78266_
                                            _L78350_
                                            _L78349_
                                            _L78347_
                                            _E78268_)))
                                        (___kont7842578426_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _stx77199_
                                            _hd78266_))))
                                    (if (gx#stx-pair? ___stx7841878419_)
                                        (let ((_e7827678375_
                                               (gx#syntax-e
                                                ___stx7841878419_)))
                                          (let ((_tl7827878382_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e7827678375_)))
                                                (_hd7827778379_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e7827678375_))))
                                            (if (gx#stx-pair? _tl7827878382_)
                                                (let ((_e7827978385_
                                                       (gx#syntax-e
                                                        _tl7827878382_)))
                                                  (let ((_tl7828178392_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e7827978385_)))
                                                        (_hd7828078389_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e7827978385_))))
                                                    (if (gx#stx-null?
                                                         _tl7828178392_)
                                                        (___kont7842178422_
                                                         _hd7828078389_
                                                         _hd7827778379_)
                                                        (if (gx#stx-pair?
                                                             _tl7828178392_)
                                                            (let ((_e7829178337_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl7828178392_)))
                      (let ((_tl7829378344_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7829178337_)))
                            (_hd7829278341_
                             (let ()
                               (declare (not safe))
                               (##car _e7829178337_))))
                        (if (gx#stx-null? _tl7829378344_)
                            (___kont7842378424_
                             _hd7829278341_
                             _hd7828078389_
                             _hd7827778379_)
                            (___kont7842578426_))))
                    (___kont7842578426_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont7842578426_))))
                                        (___kont7842578426_))))))
                             (_generate177358_
                              (lambda (_where77744_
                                       _hd77746_
                                       _fender77747_
                                       _body77748_
                                       _E77749_)
                                (letrec ((_recur77751_
                                          (lambda (_hd77754_
                                                   _tgt77756_
                                                   _K77757_)
                                            (let* ((___stx7846478465_
                                                    _hd77754_)
                                                   (_g7776077772_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx7846478465_))))
                                              (let ((___kont7846778468_
                                                     (lambda (_L78056_
                                                              _L78058_)
                                                       (let* ((_g7806978077_
                                                               (lambda (_g7807078073_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g7807078073_)))
                      (_g7806878258_
                       (lambda (_g7807078081_)
                         ((lambda (_L78084_)
                            (let ()
                              (let* ((_g7809678104_
                                      (lambda (_g7809778100_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g7809778100_)))
                                     (_g7809578254_
                                      (lambda (_g7809778108_)
                                        ((lambda (_L78111_)
                                           (let ()
                                             (let* ((_g7812478132_
                                                     (lambda (_g7812578128_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g7812578128_)))
                                                    (_g7812378250_
                                                     (lambda (_g7812578136_)
                                                       ((lambda (_L78139_)
                                                          (let ()
                                                            (let* ((_g7815278160_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g7815378156_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g7815378156_)))
                           (_g7815178246_
                            (lambda (_g7815378164_)
                              ((lambda (_L78167_)
                                 (let ()
                                   (let* ((_g7818078188_
                                           (lambda (_g7818178184_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g7818178184_)))
                                          (_g7817978242_
                                           (lambda (_g7818178192_)
                                             ((lambda (_L78195_)
                                                (let ()
                                                  (let* ((_g7820878216_
                                                          (lambda (_g7820978212_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g7820978212_)))
                                                         (_g7820778238_
                                                          (lambda (_g7820978220_)
                                                            ((lambda (_L78223_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((__tmp78599 (gx#datum->syntax '#f 'if))
                                 (__tmp78567
                                  (let ((__tmp78596
                                         (let ((__tmp78598
                                                (gx#datum->syntax
                                                 '#f
                                                 'stx-pair?))
                                               (__tmp78597
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L78084_ '()))))
                                           (declare (not safe))
                                           (cons __tmp78598 __tmp78597)))
                                        (__tmp78568
                                         (let ((__tmp78570
                                                (let ((__tmp78595
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp78571
                                                       (let ((__tmp78589
                                                              (let ((__tmp78590
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp78591
                                    (let ((__tmp78592
                                           (let ((__tmp78594
                                                  (gx#datum->syntax
                                                   '#f
                                                   'syntax-e))
                                                 (__tmp78593
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L78084_ '()))))
                                             (declare (not safe))
                                             (cons __tmp78594 __tmp78593))))
                                      (declare (not safe))
                                      (cons __tmp78592 '()))))
                               (declare (not safe))
                               (cons _L78111_ __tmp78591))))
                        (declare (not safe))
                        (cons __tmp78590 '())))
                     (__tmp78572
                      (let ((__tmp78573
                             (let ((__tmp78588 (gx#datum->syntax '#f 'let))
                                   (__tmp78574
                                    (let ((__tmp78576
                                           (let ((__tmp78583
                                                  (let ((__tmp78584
                                                         (let ((__tmp78585
                                                                (let ((__tmp78587
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '##car))
                              (__tmp78586
                               (let ()
                                 (declare (not safe))
                                 (cons _L78111_ '()))))
                          (declare (not safe))
                          (cons __tmp78587 __tmp78586))))
                   (declare (not safe))
                   (cons __tmp78585 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L78139_
                                                          __tmp78584)))
                                                 (__tmp78577
                                                  (let ((__tmp78578
                                                         (let ((__tmp78579
                                                                (let ((__tmp78580
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp78582 (gx#datum->syntax '#f '##cdr))
                                     (__tmp78581
                                      (let ()
                                        (declare (not safe))
                                        (cons _L78111_ '()))))
                                 (declare (not safe))
                                 (cons __tmp78582 __tmp78581))))
                          (declare (not safe))
                          (cons __tmp78580 '()))))
                   (declare (not safe))
                   (cons _L78167_ __tmp78579))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp78578 '()))))
                                             (declare (not safe))
                                             (cons __tmp78583 __tmp78577)))
                                          (__tmp78575
                                           (let ()
                                             (declare (not safe))
                                             (cons _L78195_ '()))))
                                      (declare (not safe))
                                      (cons __tmp78576 __tmp78575))))
                               (declare (not safe))
                               (cons __tmp78588 __tmp78574))))
                        (declare (not safe))
                        (cons __tmp78573 '()))))
                 (declare (not safe))
                 (cons __tmp78589 __tmp78572))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp78595
                                                        __tmp78571)))
                                               (__tmp78569
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L78223_ '()))))
                                           (declare (not safe))
                                           (cons __tmp78570 __tmp78569))))
                                    (declare (not safe))
                                    (cons __tmp78596 __tmp78568))))
                             (declare (not safe))
                             (cons __tmp78599 __tmp78567)))))
                     _g7820978220_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g7820778238_ _E77749_))))
                                              _g7818178192_))))
                                     (_g7817978242_
                                      (_recur77751_
                                       _L78058_
                                       _L78139_
                                       (_recur77751_
                                        _L78056_
                                        _L78167_
                                        _K77757_))))))
                               _g7815378164_))))
                      (_g7815178246_ (gx#genident 'tl)))))
                _g7812578136_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g7812378250_
                                                (gx#genident 'hd)))))
                                         _g7809778108_))))
                                (_g7809578254_ (gx#genident 'e)))))
                          _g7807078081_))))
                 (_g7806878258_ _tgt77756_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont7846978470_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _hd77754_)
                                                           (if (gx#underscore?
                                                                _hd77754_)
                                                               _K77757_
                                                               (if (let ((__tmp78600
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g7778277784_)
                                    (gx#bound-identifier=?
                                     _g7778277784_
                                     _hd77754_))))
                             (declare (not safe))
                             (find __tmp78600 _kws77353_))
                           (let* ((_g7778877803_
                                   (lambda (_g7778977799_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g7778977799_)))
                                  (_g7778777854_
                                   (lambda (_g7778977807_)
                                     (if (gx#stx-pair? _g7778977807_)
                                         (let ((_e7779277810_
                                                (gx#syntax-e _g7778977807_)))
                                           (let ((_hd7779377814_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e7779277810_)))
                                                 (_tl7779477817_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e7779277810_))))
                                             (if (gx#stx-pair? _tl7779477817_)
                                                 (let ((_e7779577820_
                                                        (gx#syntax-e
                                                         _tl7779477817_)))
                                                   (let ((_hd7779677824_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e7779577820_)))
                                                         (_tl7779777827_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e7779577820_))))
                                                     (if (gx#stx-null?
                                                          _tl7779777827_)
                                                         ((lambda (_L77830_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L77832_)
                    (let ()
                      (let ((__tmp78618 (gx#datum->syntax '#f 'if))
                            (__tmp78601
                             (let ((__tmp78604
                                    (let ((__tmp78617
                                           (gx#datum->syntax '#f 'and))
                                          (__tmp78605
                                           (let ((__tmp78614
                                                  (let ((__tmp78616
                                                         (gx#datum->syntax
                                                          '#f
                                                          'identifier?))
                                                        (__tmp78615
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L77832_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp78616
                                                          __tmp78615)))
                                                 (__tmp78606
                                                  (let ((__tmp78607
                                                         (let ((__tmp78613
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'core-identifier=?))
                       (__tmp78608
                        (let ((__tmp78609
                               (let ((__tmp78610
                                      (let ((__tmp78612
                                             (gx#datum->syntax '#f 'quote))
                                            (__tmp78611
                                             (let ()
                                               (declare (not safe))
                                               (cons _L77830_ '()))))
                                        (declare (not safe))
                                        (cons __tmp78612 __tmp78611))))
                                 (declare (not safe))
                                 (cons __tmp78610 '()))))
                          (declare (not safe))
                          (cons _L77832_ __tmp78609))))
                   (declare (not safe))
                   (cons __tmp78613 __tmp78608))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp78607 '()))))
                                             (declare (not safe))
                                             (cons __tmp78614 __tmp78606))))
                                      (declare (not safe))
                                      (cons __tmp78617 __tmp78605)))
                                   (__tmp78602
                                    (let ((__tmp78603
                                           (let ()
                                             (declare (not safe))
                                             (cons _E77749_ '()))))
                                      (declare (not safe))
                                      (cons _K77757_ __tmp78603))))
                               (declare (not safe))
                               (cons __tmp78604 __tmp78602))))
                        (declare (not safe))
                        (cons __tmp78618 __tmp78601))))
                  _hd7779677824_
                  _hd7779377814_)
                 (_g7778877803_ _g7778977807_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g7778877803_
                                                  _g7778977807_))))
                                         (_g7778877803_ _g7778977807_)))))
                             (_g7778777854_ (list _tgt77756_ _hd77754_)))
                           (let* ((_g7785877873_
                                   (lambda (_g7785977869_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g7785977869_)))
                                  (_g7785777917_
                                   (lambda (_g7785977877_)
                                     (if (gx#stx-pair? _g7785977877_)
                                         (let ((_e7786277880_
                                                (gx#syntax-e _g7785977877_)))
                                           (let ((_hd7786377884_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e7786277880_)))
                                                 (_tl7786477887_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e7786277880_))))
                                             (if (gx#stx-pair? _tl7786477887_)
                                                 (let ((_e7786577890_
                                                        (gx#syntax-e
                                                         _tl7786477887_)))
                                                   (let ((_hd7786677894_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e7786577890_)))
                                                         (_tl7786777897_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e7786577890_))))
                                                     (if (gx#stx-null?
                                                          _tl7786777897_)
                                                         ((lambda (_L77900_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L77902_)
                    (let ()
                      (let ((__tmp78624 (gx#datum->syntax '#f 'let))
                            (__tmp78619
                             (let ((__tmp78621
                                    (let ((__tmp78622
                                           (let ((__tmp78623
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L77902_ '()))))
                                             (declare (not safe))
                                             (cons _L77900_ __tmp78623))))
                                      (declare (not safe))
                                      (cons __tmp78622 '())))
                                   (__tmp78620
                                    (let ()
                                      (declare (not safe))
                                      (cons _K77757_ '()))))
                               (declare (not safe))
                               (cons __tmp78621 __tmp78620))))
                        (declare (not safe))
                        (cons __tmp78624 __tmp78619))))
                  _hd7786677894_
                  _hd7786377884_)
                 (_g7785877873_ _g7785977877_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g7785877873_
                                                  _g7785977877_))))
                                         (_g7785877873_ _g7785977877_)))))
                             (_g7785777917_ (list _tgt77756_ _hd77754_)))))
                   (if (gx#stx-null? _hd77754_)
                       (let* ((_g7792177929_
                               (lambda (_g7792277925_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g7792277925_)))
                              (_g7792077947_
                               (lambda (_g7792277933_)
                                 ((lambda (_L77936_)
                                    (let ()
                                      (let ((__tmp78631
                                             (gx#datum->syntax '#f 'if))
                                            (__tmp78625
                                             (let ((__tmp78628
                                                    (let ((__tmp78630
                                                           (gx#datum->syntax
                                                            '#f
                                                            'stx-null?))
                                                          (__tmp78629
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L77936_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp78630 __tmp78629)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp78626
                                                    (let ((__tmp78627
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _E77749_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _K77757_ __tmp78627))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp78628 __tmp78626))))
                                        (declare (not safe))
                                        (cons __tmp78631 __tmp78625))))
                                  _g7792277933_))))
                         (_g7792077947_ _tgt77756_))
                       (if (gx#stx-datum? _hd77754_)
                           (let* ((_g7795177970_
                                   (lambda (_g7795277966_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g7795277966_)))
                                  (_g7795078028_
                                   (lambda (_g7795277974_)
                                     (if (gx#stx-pair? _g7795277974_)
                                         (let ((_e7795677977_
                                                (gx#syntax-e _g7795277974_)))
                                           (let ((_hd7795777981_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e7795677977_)))
                                                 (_tl7795877984_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e7795677977_))))
                                             (if (gx#stx-pair? _tl7795877984_)
                                                 (let ((_e7795977987_
                                                        (gx#syntax-e
                                                         _tl7795877984_)))
                                                   (let ((_hd7796077991_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e7795977987_)))
                                                         (_tl7796177994_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e7795977987_))))
                                                     (if (gx#stx-pair?
                                                          _tl7796177994_)
                                                         (let ((_e7796277997_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl7796177994_)))
                   (let ((_hd7796378001_
                          (let () (declare (not safe)) (##car _e7796277997_)))
                         (_tl7796478004_
                          (let () (declare (not safe)) (##cdr _e7796277997_))))
                     (if (gx#stx-null? _tl7796478004_)
                         ((lambda (_L78007_ _L78009_ _L78010_)
                            (let ()
                              (let ((__tmp78644 (gx#datum->syntax '#f 'if))
                                    (__tmp78632
                                     (let ((__tmp78635
                                            (let ((__tmp78636
                                                   (let ((__tmp78641
                                                          (let ((__tmp78643
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'stx-e))
                        (__tmp78642
                         (let () (declare (not safe)) (cons _L78010_ '()))))
                    (declare (not safe))
                    (cons __tmp78643 __tmp78642)))
                 (__tmp78637
                  (let ((__tmp78638
                         (let ((__tmp78640 (gx#datum->syntax '#f 'quote))
                               (__tmp78639
                                (let ()
                                  (declare (not safe))
                                  (cons _L78009_ '()))))
                           (declare (not safe))
                           (cons __tmp78640 __tmp78639))))
                    (declare (not safe))
                    (cons __tmp78638 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp78641
                                                           __tmp78637))))
                                              (declare (not safe))
                                              (cons _L78007_ __tmp78636)))
                                           (__tmp78633
                                            (let ((__tmp78634
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _E77749_ '()))))
                                              (declare (not safe))
                                              (cons _K77757_ __tmp78634))))
                                       (declare (not safe))
                                       (cons __tmp78635 __tmp78633))))
                                (declare (not safe))
                                (cons __tmp78644 __tmp78632))))
                          _hd7796378001_
                          _hd7796077991_
                          _hd7795777981_)
                         (_g7795177970_ _g7795277974_))))
                 (_g7795177970_ _g7795277974_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g7795177970_
                                                  _g7795277974_))))
                                         (_g7795177970_ _g7795277974_)))))
                             (_g7795078028_
                              (list _tgt77756_
                                    _hd77754_
                                    (let ((_e78032_ (gx#stx-e _hd77754_)))
                                      (if (or (keyword? _e78032_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _e78032_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (let ()
                                                (declare (not safe))
                                                (number? _e78032_))
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _stx77199_
                            _where77744_
                            _hd77754_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx7846478465_)
                                                    (let ((_e7776478046_
                                                           (gx#syntax-e
                                                            ___stx7846478465_)))
                                                      (let ((_tl7776678053_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e7776478046_)))
                    (_hd7776578050_
                     (let () (declare (not safe)) (##car _e7776478046_))))
                (___kont7846778468_ _tl7776678053_ _hd7776578050_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont7846978470_)))))))
                                  (_recur77751_
                                   _hd77746_
                                   _tgt77351_
                                   (let ((__tmp78648
                                          (gx#datum->syntax '#f 'if))
                                         (__tmp78645
                                          (let ((__tmp78646
                                                 (let ((__tmp78647
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _E77749_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _body77748_
                                                         __tmp78647))))
                                            (declare (not safe))
                                            (cons _fender77747_ __tmp78646))))
                                     (declare (not safe))
                                     (cons __tmp78648 __tmp78645))))))
                             (_generate-clauses77359_
                              (lambda (_clauses77482_)
                                (let _lp77485_ ((_rest77488_ _clauses77482_)
                                                (_E77490_ (gx#genident 'E))
                                                (_r77491_ '()))
                                  (let* ((___stx7850078501_ _rest77488_)
                                         (_g7749477506_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx7850078501_))))
                                    (let ((___kont7850378504_
                                           (lambda (_L77571_ _L77573_)
                                             (let* ((___stx7848078481_
                                                     _L77573_)
                                                    (_g7758577596_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        ___stx7848078481_))))
                                               (let ((___kont7848378484_
                                                      (lambda (_L77725_)
                                                        (if (gx#stx-null?
                                                             _L77571_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L77725_)
                             (let ((__tmp78649 (gx#stx-null? _L77725_)))
                               (declare (not safe))
                               (not __tmp78649)))
                        (let ((__tmp78650
                               (let ((__tmp78651
                                      (let ((__tmp78652
                                             (gx#stx-wrap-source
                                              (let ((__tmp78657
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp78653
                                                     (let ((__tmp78654
                                                            (let ((__tmp78655
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp78656 (gx#datum->syntax '#f 'begin)))
                             (declare (not safe))
                             (cons __tmp78656 _L77725_))))
                      (declare (not safe))
                      (cons __tmp78655 '()))))
               (declare (not safe))
               (cons '() __tmp78654))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp78657 __tmp78653))
                                              (gx#stx-source _L77573_))))
                                        (declare (not safe))
                                        (cons __tmp78652 '()))))
                                 (declare (not safe))
                                 (cons _E77490_ __tmp78651))))
                          (declare (not safe))
                          (cons __tmp78650 _r77491_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _stx77199_
                         _L77573_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _stx77199_
                     _L77573_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont7848578486_
                                                      (lambda ()
                                                        (let* ((_g7760777615_
                                                                (lambda (_g7760877611_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g7760877611_)))
                       (_g7760677704_
                        (lambda (_g7760877619_)
                          ((lambda (_L77622_)
                             (let ()
                               (let* ((_g7763877646_
                                       (lambda (_g7763977642_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g7763977642_)))
                                      (_g7763777700_
                                       (lambda (_g7763977650_)
                                         ((lambda (_L77653_)
                                            (let ()
                                              (let* ((_g7766677674_
                                                      (lambda (_g7766777670_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g7766777670_)))
                                                     (_g7766577696_
                                                      (lambda (_g7766777678_)
                                                        ((lambda (_L77681_)
                                                           (let ()
                                                             (let ()
                                                               (_lp77485_
                                                                _L77571_
                                                                _L77622_
                                                                (let ((__tmp78658
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp78659
                                      (let ()
                                        (declare (not safe))
                                        (cons _L77681_ '()))))
                                 (declare (not safe))
                                 (cons _E77490_ __tmp78659))))
                          (declare (not safe))
                          (cons __tmp78658 _r77491_))))))
                 _g7766777678_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g7766577696_
                                                 (gx#stx-wrap-source
                                                  (let ((__tmp78662
                                                         (gx#datum->syntax
                                                          '#f
                                                          'lambda))
                                                        (__tmp78660
                                                         (let ((__tmp78661
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _L77653_ '()))))
                   (declare (not safe))
                   (cons '() __tmp78661))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp78662
                                                          __tmp78660))
                                                  (gx#stx-source _L77573_))))))
                                          _g7763977650_))))
                                 (_g7763777700_
                                  (_generate-clause77356_
                                   _L77573_
                                   (let ()
                                     (declare (not safe))
                                     (cons _L77622_ '())))))))
                           _g7760877619_))))
                  (_g7760677704_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      ___stx7848078481_)
                                                     (let ((_e7758877715_
                                                            (gx#syntax-e
                                                             ___stx7848078481_)))
                                                       (let ((_tl7759077722_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e7758877715_)))
                     (_hd7758977719_
                      (let () (declare (not safe)) (##car _e7758877715_))))
                 (if (gx#identifier? _hd7758977719_)
                     (if (gx#free-identifier=? |gx[1]#_g78663_| _hd7758977719_)
                         (___kont7848378484_ _tl7759077722_)
                         (___kont7848578486_))
                     (___kont7848578486_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont7848578486_))))))
                                          (___kont7850578506_
                                           (lambda ()
                                             (let* ((_g7751777525_
                                                     (lambda (_g7751877521_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g7751877521_)))
                                                    (_g7751677550_
                                                     (lambda (_g7751877529_)
                                                       ((lambda (_L77532_)
                                                          (let ()
                                                            (let ((__tmp78664
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp78665
                                  (let ((__tmp78666
                                         (gx#stx-wrap-source
                                          (let ((__tmp78674
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp78667
                                                 (let ((__tmp78668
                                                        (let ((__tmp78669
                                                               (let ((__tmp78673
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'raise-syntax-error))
                             (__tmp78670
                              (let ((__tmp78671
                                     (let ((__tmp78672
                                            (let ()
                                              (declare (not safe))
                                              (cons _L77532_ '()))))
                                       (declare (not safe))
                                       (cons '"Bad syntax; invalid syntax-case clause"
                                             __tmp78672))))
                                (declare (not safe))
                                (cons '#f __tmp78671))))
                         (declare (not safe))
                         (cons __tmp78673 __tmp78670))))
                  (declare (not safe))
                  (cons __tmp78669 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '() __tmp78668))))
                                            (declare (not safe))
                                            (cons __tmp78674 __tmp78667))
                                          (gx#stx-source _stx77199_))))
                                    (declare (not safe))
                                    (cons __tmp78666 '()))))
                             (declare (not safe))
                             (cons _E77490_ __tmp78665))))
                      (declare (not safe))
                      (cons __tmp78664 _r77491_))))
                _g7751877529_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g7751677550_ _tgt77351_)))))
                                      (if (gx#stx-pair? ___stx7850078501_)
                                          (let ((_e7749877561_
                                                 (gx#syntax-e
                                                  ___stx7850078501_)))
                                            (let ((_tl7750077568_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e7749877561_)))
                                                  (_hd7749977565_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e7749877561_))))
                                              (___kont7850378504_
                                               _tl7750077568_
                                               _hd7749977565_)))
                                          (___kont7850578506_))))))))
                      (let* ((_bind77361_
                              (_generate-clauses77359_ _clauses77354_))
                             (_g7736477381_
                              (lambda (_g7736577377_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g7736577377_)))
                             (_g7736377478_
                              (lambda (_g7736577385_)
                                (if (gx#stx-pair/null? _g7736577385_)
                                    (let ((_g78675_
                                           (gx#syntax-split-splice
                                            _g7736577385_
                                            '0)))
                                      (begin
                                        (let ((_g78676_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g78675_)
                                                     (##vector-length _g78675_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g78676_ 2)))
                                              (error "Context expects 2 values"
                                                     _g78676_)))
                                        (let ((_target7736777388_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g78675_ 0)))
                                              (_tl7736977391_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g78675_ 1))))
                                          (if (gx#stx-null? _tl7736977391_)
                                              (letrec ((_loop7737077394_
                                                        (lambda (_hd7736877398_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind-try7737477401_)
                  (if (gx#stx-pair? _hd7736877398_)
                      (let ((_e7737177404_ (gx#syntax-e _hd7736877398_)))
                        (let ((_lp-hd7737277408_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7737177404_)))
                              (_lp-tl7737377411_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7737177404_))))
                          (_loop7737077394_
                           _lp-tl7737377411_
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd7737277408_ _bind-try7737477401_)))))
                      (let ((_bind-try7737577414_
                             (reverse _bind-try7737477401_)))
                        ((lambda (_L77418_)
                           (let ()
                             (let* ((_g7743677444_
                                     (lambda (_g7743777440_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _g7743777440_)))
                                    (_g7743577474_
                                     (lambda (_g7743777448_)
                                       ((lambda (_L77451_)
                                          (let ()
                                            (let ()
                                              (let ((__tmp78682
                                                     (gx#datum->syntax
                                                      '#f
                                                      'let*))
                                                    (__tmp78677
                                                     (let ((__tmp78680
                                                            (let ((__tmp78681
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g7746577468_ _g7746677471_)
                             (let ()
                               (declare (not safe))
                               (cons _g7746577468_ _g7746677471_)))))
                      (declare (not safe))
                      (foldr1 __tmp78681 '() _L77418_)))
                   (__tmp78678
                    (let ((__tmp78679
                           (let () (declare (not safe)) (cons _L77451_ '()))))
                      (declare (not safe))
                      (cons __tmp78679 '()))))
               (declare (not safe))
               (cons __tmp78680 __tmp78678))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp78682
                                                      __tmp78677)))))
                                        _g7743777448_))))
                               (_g7743577474_ (car (last _bind77361_))))))
                         _bind-try7737577414_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop7737077394_
                                                 _target7736777388_
                                                 '()))
                                              (_g7736477381_ _g7736577385_)))))
                                    (_g7736477381_ _g7736577385_)))))
                        (_g7736377478_ _bind77361_))))))
          (let* ((_g7720577224_
                  (lambda (_g7720677220_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g7720677220_)))
                 (_g7720477347_
                  (lambda (_g7720677228_)
                    (if (gx#stx-pair? _g7720677228_)
                        (let ((_e7721077231_ (gx#syntax-e _g7720677228_)))
                          (let ((_hd7721177235_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e7721077231_)))
                                (_tl7721277238_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e7721077231_))))
                            (if (gx#stx-pair? _tl7721277238_)
                                (let ((_e7721377241_
                                       (gx#syntax-e _tl7721277238_)))
                                  (let ((_hd7721477245_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e7721377241_)))
                                        (_tl7721577248_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e7721377241_))))
                                    (if (gx#stx-pair? _tl7721577248_)
                                        (let ((_e7721677251_
                                               (gx#syntax-e _tl7721577248_)))
                                          (let ((_hd7721777255_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e7721677251_)))
                                                (_tl7721877258_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e7721677251_))))
                                            ((lambda (_L77261_
                                                      _L77263_
                                                      _L77264_)
                                               (if (and (gx#identifier-list?
                                                         _L77263_)
                                                        (gx#stx-list?
                                                         _L77261_))
                                                   (let* ((_g7728277290_
                                                           (lambda (_g7728377286_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g7728377286_)))
                                                          (_g7728177343_
                                                           (lambda (_g7728377294_)
                                                             ((lambda (_L77297_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g7730977317_
                                  (lambda (_g7731077313_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g7731077313_)))
                                 (_g7730877339_
                                  (lambda (_g7731077321_)
                                    ((lambda (_L77324_)
                                       (let ()
                                         (let ()
                                           (let ((__tmp78688
                                                  (gx#datum->syntax '#f 'let))
                                                 (__tmp78683
                                                  (let ((__tmp78685
                                                         (let ((__tmp78686
                                                                (let ((__tmp78687
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L77264_ '()))))
                          (declare (not safe))
                          (cons _L77297_ __tmp78687))))
                   (declare (not safe))
                   (cons __tmp78686 '())))
                (__tmp78684 (let () (declare (not safe)) (cons _L77324_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp78685
                                                          __tmp78684))))
                                             (declare (not safe))
                                             (cons __tmp78688 __tmp78683)))))
                                     _g7731077321_))))
                            (_g7730877339_
                             (_generate77202_
                              _L77297_
                              (gx#syntax->list _L77263_)
                              _L77261_)))))
                      _g7728377294_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g7728177343_
                                                      (gx#genident 'e)))
                                                   (_g7720577224_
                                                    _g7720677228_)))
                                             _tl7721877258_
                                             _hd7721777255_
                                             _hd7721477245_)))
                                        (_g7720577224_ _g7720677228_))))
                                (_g7720577224_ _g7720677228_))))
                        (_g7720577224_ _g7720677228_)))))
            (_g7720477347_ _stx77199_)))))))
