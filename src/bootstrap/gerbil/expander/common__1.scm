(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g78479_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g78481_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g78483_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g78488_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g78491_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g78496_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g78499_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g78504_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g78507_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g78512_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g78515_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g78622_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj78474
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
           __obj78474
           'gerbil#AST::t
           '1
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj78474
           'syntax
           '2
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj78474
           '(e source)
           '4
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj78474
           '()
           '3
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj78474
           '#t
           '5
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj78474
           '#f
           '6
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj78474
           '#f
           '8
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj78474
           '#f
           '9
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp78478 |gx[1]#_g78479_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj78474
           __tmp78478
           '10
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp78480 |gx[1]#_g78481_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj78474
           __tmp78480
           '11
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp78482 |gx[1]#_g78483_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj78474
           __tmp78482
           '12
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp78484
               (let ((__tmp78489
                      (let ((__tmp78490 |gx[1]#_g78491_|))
                        (declare (not safe))
                        (cons 'e __tmp78490)))
                     (__tmp78485
                      (let ((__tmp78486
                             (let ((__tmp78487 |gx[1]#_g78488_|))
                               (declare (not safe))
                               (cons 'source __tmp78487))))
                        (declare (not safe))
                        (cons __tmp78486 '()))))
                 (declare (not safe))
                 (cons __tmp78489 __tmp78485))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj78474
           __tmp78484
           '13
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp78492
               (let ((__tmp78497
                      (let ((__tmp78498 |gx[1]#_g78499_|))
                        (declare (not safe))
                        (cons 'e __tmp78498)))
                     (__tmp78493
                      (let ((__tmp78494
                             (let ((__tmp78495 |gx[1]#_g78496_|))
                               (declare (not safe))
                               (cons 'source __tmp78495))))
                        (declare (not safe))
                        (cons __tmp78494 '()))))
                 (declare (not safe))
                 (cons __tmp78497 __tmp78493))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj78474
           __tmp78492
           '14
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp78500
               (let ((__tmp78505
                      (let ((__tmp78506 |gx[1]#_g78507_|))
                        (declare (not safe))
                        (cons 'e __tmp78506)))
                     (__tmp78501
                      (let ((__tmp78502
                             (let ((__tmp78503 |gx[1]#_g78504_|))
                               (declare (not safe))
                               (cons 'source __tmp78503))))
                        (declare (not safe))
                        (cons __tmp78502 '()))))
                 (declare (not safe))
                 (cons __tmp78505 __tmp78501))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj78474
           __tmp78500
           '15
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp78508
               (let ((__tmp78513
                      (let ((__tmp78514 |gx[1]#_g78515_|))
                        (declare (not safe))
                        (cons 'e __tmp78514)))
                     (__tmp78509
                      (let ((__tmp78510
                             (let ((__tmp78511 |gx[1]#_g78512_|))
                               (declare (not safe))
                               (cons 'source __tmp78511))))
                        (declare (not safe))
                        (cons __tmp78510 '()))))
                 (declare (not safe))
                 (cons __tmp78513 __tmp78509))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj78474
           __tmp78508
           '16
           gerbil/core/mop$<MOP:2>#class-type-info::t
           '#f))
        __obj78474))
    (define |gx[:0:]#check-procedure|
      (lambda (_$stx77094_)
        (let* ((_g7709877112_
                (lambda (_g7709977108_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g7709977108_)))
               (_g7709777154_
                (lambda (_g7709977116_)
                  (if (gx#stx-pair? _g7709977116_)
                      (let ((_e7710177119_ (gx#syntax-e _g7709977116_)))
                        (let ((_hd7710277123_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7710177119_)))
                              (_tl7710377126_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7710177119_))))
                          (if (gx#stx-pair? _tl7710377126_)
                              (let ((_e7710477129_
                                     (gx#syntax-e _tl7710377126_)))
                                (let ((_hd7710577133_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7710477129_)))
                                      (_tl7710677136_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7710477129_))))
                                  (if (gx#stx-null? _tl7710677136_)
                                      ((lambda (_L77139_)
                                         (let ((__tmp78525
                                                (gx#datum->syntax '#f 'unless))
                                               (__tmp78516
                                                (let ((__tmp78522
                                                       (let ((__tmp78524
                                                              (gx#datum->syntax
                                                               '#f
                                                               'procedure?))
                                                             (__tmp78523
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L77139_ '()))))
                 (declare (not safe))
                 (cons __tmp78524 __tmp78523)))
              (__tmp78517
               (let ((__tmp78518
                      (let ((__tmp78521 (gx#datum->syntax '#f 'error))
                            (__tmp78519
                             (let ((__tmp78520
                                    (let ()
                                      (declare (not safe))
                                      (cons _L77139_ '()))))
                               (declare (not safe))
                               (cons '"expected procedure" __tmp78520))))
                        (declare (not safe))
                        (cons __tmp78521 __tmp78519))))
                 (declare (not safe))
                 (cons __tmp78518 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp78522
                                                        __tmp78517))))
                                           (declare (not safe))
                                           (cons __tmp78525 __tmp78516)))
                                       _hd7710577133_)
                                      (_g7709877112_ _g7709977116_))))
                              (_g7709877112_ _g7709977116_))))
                      (_g7709877112_ _g7709977116_)))))
          (_g7709777154_ _$stx77094_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_stx77158_)
        (letrec ((_generate77161_
                  (lambda (_tgt77310_ _kws77312_ _clauses77313_)
                    (letrec ((_generate-clause77315_
                              (lambda (_hd78225_ _E78227_)
                                (let* ((___stx7837778378_ _hd78225_)
                                       (_g7823178258_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx7837778378_))))
                                  (let ((___kont7838078381_
                                         (lambda (_L78354_ _L78356_)
                                           (_generate177317_
                                            _hd78225_
                                            _L78356_
                                            '#t
                                            _L78354_
                                            _E78227_)))
                                        (___kont7838278383_
                                         (lambda (_L78306_ _L78308_ _L78309_)
                                           (_generate177317_
                                            _hd78225_
                                            _L78309_
                                            _L78308_
                                            _L78306_
                                            _E78227_)))
                                        (___kont7838478385_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _stx77158_
                                            _hd78225_))))
                                    (if (gx#stx-pair? ___stx7837778378_)
                                        (let ((_e7823578334_
                                               (gx#syntax-e
                                                ___stx7837778378_)))
                                          (let ((_tl7823778341_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e7823578334_)))
                                                (_hd7823678338_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e7823578334_))))
                                            (if (gx#stx-pair? _tl7823778341_)
                                                (let ((_e7823878344_
                                                       (gx#syntax-e
                                                        _tl7823778341_)))
                                                  (let ((_tl7824078351_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e7823878344_)))
                                                        (_hd7823978348_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e7823878344_))))
                                                    (if (gx#stx-null?
                                                         _tl7824078351_)
                                                        (___kont7838078381_
                                                         _hd7823978348_
                                                         _hd7823678338_)
                                                        (if (gx#stx-pair?
                                                             _tl7824078351_)
                                                            (let ((_e7825078296_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl7824078351_)))
                      (let ((_tl7825278303_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7825078296_)))
                            (_hd7825178300_
                             (let ()
                               (declare (not safe))
                               (##car _e7825078296_))))
                        (if (gx#stx-null? _tl7825278303_)
                            (___kont7838278383_
                             _hd7825178300_
                             _hd7823978348_
                             _hd7823678338_)
                            (___kont7838478385_))))
                    (___kont7838478385_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont7838478385_))))
                                        (___kont7838478385_))))))
                             (_generate177317_
                              (lambda (_where77703_
                                       _hd77705_
                                       _fender77706_
                                       _body77707_
                                       _E77708_)
                                (letrec ((_recur77710_
                                          (lambda (_hd77713_
                                                   _tgt77715_
                                                   _K77716_)
                                            (let* ((___stx7842378424_
                                                    _hd77713_)
                                                   (_g7771977731_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx7842378424_))))
                                              (let ((___kont7842678427_
                                                     (lambda (_L78015_
                                                              _L78017_)
                                                       (let* ((_g7802878036_
                                                               (lambda (_g7802978032_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g7802978032_)))
                      (_g7802778217_
                       (lambda (_g7802978040_)
                         ((lambda (_L78043_)
                            (let ()
                              (let* ((_g7805578063_
                                      (lambda (_g7805678059_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g7805678059_)))
                                     (_g7805478213_
                                      (lambda (_g7805678067_)
                                        ((lambda (_L78070_)
                                           (let ()
                                             (let* ((_g7808378091_
                                                     (lambda (_g7808478087_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g7808478087_)))
                                                    (_g7808278209_
                                                     (lambda (_g7808478095_)
                                                       ((lambda (_L78098_)
                                                          (let ()
                                                            (let* ((_g7811178119_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g7811278115_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g7811278115_)))
                           (_g7811078205_
                            (lambda (_g7811278123_)
                              ((lambda (_L78126_)
                                 (let ()
                                   (let* ((_g7813978147_
                                           (lambda (_g7814078143_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g7814078143_)))
                                          (_g7813878201_
                                           (lambda (_g7814078151_)
                                             ((lambda (_L78154_)
                                                (let ()
                                                  (let* ((_g7816778175_
                                                          (lambda (_g7816878171_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g7816878171_)))
                                                         (_g7816678197_
                                                          (lambda (_g7816878179_)
                                                            ((lambda (_L78182_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((__tmp78558 (gx#datum->syntax '#f 'if))
                                 (__tmp78526
                                  (let ((__tmp78555
                                         (let ((__tmp78557
                                                (gx#datum->syntax
                                                 '#f
                                                 'stx-pair?))
                                               (__tmp78556
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L78043_ '()))))
                                           (declare (not safe))
                                           (cons __tmp78557 __tmp78556)))
                                        (__tmp78527
                                         (let ((__tmp78529
                                                (let ((__tmp78554
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp78530
                                                       (let ((__tmp78548
                                                              (let ((__tmp78549
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp78550
                                    (let ((__tmp78551
                                           (let ((__tmp78553
                                                  (gx#datum->syntax
                                                   '#f
                                                   'syntax-e))
                                                 (__tmp78552
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L78043_ '()))))
                                             (declare (not safe))
                                             (cons __tmp78553 __tmp78552))))
                                      (declare (not safe))
                                      (cons __tmp78551 '()))))
                               (declare (not safe))
                               (cons _L78070_ __tmp78550))))
                        (declare (not safe))
                        (cons __tmp78549 '())))
                     (__tmp78531
                      (let ((__tmp78532
                             (let ((__tmp78547 (gx#datum->syntax '#f 'let))
                                   (__tmp78533
                                    (let ((__tmp78535
                                           (let ((__tmp78542
                                                  (let ((__tmp78543
                                                         (let ((__tmp78544
                                                                (let ((__tmp78546
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '##car))
                              (__tmp78545
                               (let ()
                                 (declare (not safe))
                                 (cons _L78070_ '()))))
                          (declare (not safe))
                          (cons __tmp78546 __tmp78545))))
                   (declare (not safe))
                   (cons __tmp78544 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L78098_
                                                          __tmp78543)))
                                                 (__tmp78536
                                                  (let ((__tmp78537
                                                         (let ((__tmp78538
                                                                (let ((__tmp78539
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp78541 (gx#datum->syntax '#f '##cdr))
                                     (__tmp78540
                                      (let ()
                                        (declare (not safe))
                                        (cons _L78070_ '()))))
                                 (declare (not safe))
                                 (cons __tmp78541 __tmp78540))))
                          (declare (not safe))
                          (cons __tmp78539 '()))))
                   (declare (not safe))
                   (cons _L78126_ __tmp78538))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp78537 '()))))
                                             (declare (not safe))
                                             (cons __tmp78542 __tmp78536)))
                                          (__tmp78534
                                           (let ()
                                             (declare (not safe))
                                             (cons _L78154_ '()))))
                                      (declare (not safe))
                                      (cons __tmp78535 __tmp78534))))
                               (declare (not safe))
                               (cons __tmp78547 __tmp78533))))
                        (declare (not safe))
                        (cons __tmp78532 '()))))
                 (declare (not safe))
                 (cons __tmp78548 __tmp78531))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp78554
                                                        __tmp78530)))
                                               (__tmp78528
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L78182_ '()))))
                                           (declare (not safe))
                                           (cons __tmp78529 __tmp78528))))
                                    (declare (not safe))
                                    (cons __tmp78555 __tmp78527))))
                             (declare (not safe))
                             (cons __tmp78558 __tmp78526)))))
                     _g7816878179_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g7816678197_ _E77708_))))
                                              _g7814078151_))))
                                     (_g7813878201_
                                      (_recur77710_
                                       _L78017_
                                       _L78098_
                                       (_recur77710_
                                        _L78015_
                                        _L78126_
                                        _K77716_))))))
                               _g7811278123_))))
                      (_g7811078205_ (gx#genident 'tl)))))
                _g7808478095_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g7808278209_
                                                (gx#genident 'hd)))))
                                         _g7805678067_))))
                                (_g7805478213_ (gx#genident 'e)))))
                          _g7802978040_))))
                 (_g7802778217_ _tgt77715_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont7842878429_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _hd77713_)
                                                           (if (gx#underscore?
                                                                _hd77713_)
                                                               _K77716_
                                                               (if (let ((__tmp78559
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g7774177743_)
                                    (gx#bound-identifier=?
                                     _g7774177743_
                                     _hd77713_))))
                             (declare (not safe))
                             (find __tmp78559 _kws77312_))
                           (let* ((_g7774777762_
                                   (lambda (_g7774877758_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g7774877758_)))
                                  (_g7774677813_
                                   (lambda (_g7774877766_)
                                     (if (gx#stx-pair? _g7774877766_)
                                         (let ((_e7775177769_
                                                (gx#syntax-e _g7774877766_)))
                                           (let ((_hd7775277773_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e7775177769_)))
                                                 (_tl7775377776_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e7775177769_))))
                                             (if (gx#stx-pair? _tl7775377776_)
                                                 (let ((_e7775477779_
                                                        (gx#syntax-e
                                                         _tl7775377776_)))
                                                   (let ((_hd7775577783_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e7775477779_)))
                                                         (_tl7775677786_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e7775477779_))))
                                                     (if (gx#stx-null?
                                                          _tl7775677786_)
                                                         ((lambda (_L77789_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L77791_)
                    (let ()
                      (let ((__tmp78577 (gx#datum->syntax '#f 'if))
                            (__tmp78560
                             (let ((__tmp78563
                                    (let ((__tmp78576
                                           (gx#datum->syntax '#f 'and))
                                          (__tmp78564
                                           (let ((__tmp78573
                                                  (let ((__tmp78575
                                                         (gx#datum->syntax
                                                          '#f
                                                          'identifier?))
                                                        (__tmp78574
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L77791_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp78575
                                                          __tmp78574)))
                                                 (__tmp78565
                                                  (let ((__tmp78566
                                                         (let ((__tmp78572
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'core-identifier=?))
                       (__tmp78567
                        (let ((__tmp78568
                               (let ((__tmp78569
                                      (let ((__tmp78571
                                             (gx#datum->syntax '#f 'quote))
                                            (__tmp78570
                                             (let ()
                                               (declare (not safe))
                                               (cons _L77789_ '()))))
                                        (declare (not safe))
                                        (cons __tmp78571 __tmp78570))))
                                 (declare (not safe))
                                 (cons __tmp78569 '()))))
                          (declare (not safe))
                          (cons _L77791_ __tmp78568))))
                   (declare (not safe))
                   (cons __tmp78572 __tmp78567))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp78566 '()))))
                                             (declare (not safe))
                                             (cons __tmp78573 __tmp78565))))
                                      (declare (not safe))
                                      (cons __tmp78576 __tmp78564)))
                                   (__tmp78561
                                    (let ((__tmp78562
                                           (let ()
                                             (declare (not safe))
                                             (cons _E77708_ '()))))
                                      (declare (not safe))
                                      (cons _K77716_ __tmp78562))))
                               (declare (not safe))
                               (cons __tmp78563 __tmp78561))))
                        (declare (not safe))
                        (cons __tmp78577 __tmp78560))))
                  _hd7775577783_
                  _hd7775277773_)
                 (_g7774777762_ _g7774877766_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g7774777762_
                                                  _g7774877766_))))
                                         (_g7774777762_ _g7774877766_)))))
                             (_g7774677813_ (list _tgt77715_ _hd77713_)))
                           (let* ((_g7781777832_
                                   (lambda (_g7781877828_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g7781877828_)))
                                  (_g7781677876_
                                   (lambda (_g7781877836_)
                                     (if (gx#stx-pair? _g7781877836_)
                                         (let ((_e7782177839_
                                                (gx#syntax-e _g7781877836_)))
                                           (let ((_hd7782277843_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e7782177839_)))
                                                 (_tl7782377846_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e7782177839_))))
                                             (if (gx#stx-pair? _tl7782377846_)
                                                 (let ((_e7782477849_
                                                        (gx#syntax-e
                                                         _tl7782377846_)))
                                                   (let ((_hd7782577853_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e7782477849_)))
                                                         (_tl7782677856_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e7782477849_))))
                                                     (if (gx#stx-null?
                                                          _tl7782677856_)
                                                         ((lambda (_L77859_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L77861_)
                    (let ()
                      (let ((__tmp78583 (gx#datum->syntax '#f 'let))
                            (__tmp78578
                             (let ((__tmp78580
                                    (let ((__tmp78581
                                           (let ((__tmp78582
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L77861_ '()))))
                                             (declare (not safe))
                                             (cons _L77859_ __tmp78582))))
                                      (declare (not safe))
                                      (cons __tmp78581 '())))
                                   (__tmp78579
                                    (let ()
                                      (declare (not safe))
                                      (cons _K77716_ '()))))
                               (declare (not safe))
                               (cons __tmp78580 __tmp78579))))
                        (declare (not safe))
                        (cons __tmp78583 __tmp78578))))
                  _hd7782577853_
                  _hd7782277843_)
                 (_g7781777832_ _g7781877836_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g7781777832_
                                                  _g7781877836_))))
                                         (_g7781777832_ _g7781877836_)))))
                             (_g7781677876_ (list _tgt77715_ _hd77713_)))))
                   (if (gx#stx-null? _hd77713_)
                       (let* ((_g7788077888_
                               (lambda (_g7788177884_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g7788177884_)))
                              (_g7787977906_
                               (lambda (_g7788177892_)
                                 ((lambda (_L77895_)
                                    (let ()
                                      (let ((__tmp78590
                                             (gx#datum->syntax '#f 'if))
                                            (__tmp78584
                                             (let ((__tmp78587
                                                    (let ((__tmp78589
                                                           (gx#datum->syntax
                                                            '#f
                                                            'stx-null?))
                                                          (__tmp78588
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L77895_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp78589 __tmp78588)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp78585
                                                    (let ((__tmp78586
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _E77708_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _K77716_ __tmp78586))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp78587 __tmp78585))))
                                        (declare (not safe))
                                        (cons __tmp78590 __tmp78584))))
                                  _g7788177892_))))
                         (_g7787977906_ _tgt77715_))
                       (if (gx#stx-datum? _hd77713_)
                           (let* ((_g7791077929_
                                   (lambda (_g7791177925_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g7791177925_)))
                                  (_g7790977987_
                                   (lambda (_g7791177933_)
                                     (if (gx#stx-pair? _g7791177933_)
                                         (let ((_e7791577936_
                                                (gx#syntax-e _g7791177933_)))
                                           (let ((_hd7791677940_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e7791577936_)))
                                                 (_tl7791777943_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e7791577936_))))
                                             (if (gx#stx-pair? _tl7791777943_)
                                                 (let ((_e7791877946_
                                                        (gx#syntax-e
                                                         _tl7791777943_)))
                                                   (let ((_hd7791977950_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e7791877946_)))
                                                         (_tl7792077953_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e7791877946_))))
                                                     (if (gx#stx-pair?
                                                          _tl7792077953_)
                                                         (let ((_e7792177956_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl7792077953_)))
                   (let ((_hd7792277960_
                          (let () (declare (not safe)) (##car _e7792177956_)))
                         (_tl7792377963_
                          (let () (declare (not safe)) (##cdr _e7792177956_))))
                     (if (gx#stx-null? _tl7792377963_)
                         ((lambda (_L77966_ _L77968_ _L77969_)
                            (let ()
                              (let ((__tmp78603 (gx#datum->syntax '#f 'if))
                                    (__tmp78591
                                     (let ((__tmp78594
                                            (let ((__tmp78595
                                                   (let ((__tmp78600
                                                          (let ((__tmp78602
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'stx-e))
                        (__tmp78601
                         (let () (declare (not safe)) (cons _L77969_ '()))))
                    (declare (not safe))
                    (cons __tmp78602 __tmp78601)))
                 (__tmp78596
                  (let ((__tmp78597
                         (let ((__tmp78599 (gx#datum->syntax '#f 'quote))
                               (__tmp78598
                                (let ()
                                  (declare (not safe))
                                  (cons _L77968_ '()))))
                           (declare (not safe))
                           (cons __tmp78599 __tmp78598))))
                    (declare (not safe))
                    (cons __tmp78597 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp78600
                                                           __tmp78596))))
                                              (declare (not safe))
                                              (cons _L77966_ __tmp78595)))
                                           (__tmp78592
                                            (let ((__tmp78593
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _E77708_ '()))))
                                              (declare (not safe))
                                              (cons _K77716_ __tmp78593))))
                                       (declare (not safe))
                                       (cons __tmp78594 __tmp78592))))
                                (declare (not safe))
                                (cons __tmp78603 __tmp78591))))
                          _hd7792277960_
                          _hd7791977950_
                          _hd7791677940_)
                         (_g7791077929_ _g7791177933_))))
                 (_g7791077929_ _g7791177933_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g7791077929_
                                                  _g7791177933_))))
                                         (_g7791077929_ _g7791177933_)))))
                             (_g7790977987_
                              (list _tgt77715_
                                    _hd77713_
                                    (let ((_e77991_ (gx#stx-e _hd77713_)))
                                      (if (or (keyword? _e77991_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _e77991_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (let ()
                                                (declare (not safe))
                                                (number? _e77991_))
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _stx77158_
                            _where77703_
                            _hd77713_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx7842378424_)
                                                    (let ((_e7772378005_
                                                           (gx#syntax-e
                                                            ___stx7842378424_)))
                                                      (let ((_tl7772578012_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e7772378005_)))
                    (_hd7772478009_
                     (let () (declare (not safe)) (##car _e7772378005_))))
                (___kont7842678427_ _tl7772578012_ _hd7772478009_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont7842878429_)))))))
                                  (_recur77710_
                                   _hd77705_
                                   _tgt77310_
                                   (let ((__tmp78607
                                          (gx#datum->syntax '#f 'if))
                                         (__tmp78604
                                          (let ((__tmp78605
                                                 (let ((__tmp78606
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _E77708_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _body77707_
                                                         __tmp78606))))
                                            (declare (not safe))
                                            (cons _fender77706_ __tmp78605))))
                                     (declare (not safe))
                                     (cons __tmp78607 __tmp78604))))))
                             (_generate-clauses77318_
                              (lambda (_clauses77441_)
                                (let _lp77444_ ((_rest77447_ _clauses77441_)
                                                (_E77449_ (gx#genident 'E))
                                                (_r77450_ '()))
                                  (let* ((___stx7845978460_ _rest77447_)
                                         (_g7745377465_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx7845978460_))))
                                    (let ((___kont7846278463_
                                           (lambda (_L77530_ _L77532_)
                                             (let* ((___stx7843978440_
                                                     _L77532_)
                                                    (_g7754477555_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        ___stx7843978440_))))
                                               (let ((___kont7844278443_
                                                      (lambda (_L77684_)
                                                        (if (gx#stx-null?
                                                             _L77530_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L77684_)
                             (let ((__tmp78608 (gx#stx-null? _L77684_)))
                               (declare (not safe))
                               (not __tmp78608)))
                        (let ((__tmp78609
                               (let ((__tmp78610
                                      (let ((__tmp78611
                                             (gx#stx-wrap-source
                                              (let ((__tmp78616
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp78612
                                                     (let ((__tmp78613
                                                            (let ((__tmp78614
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp78615 (gx#datum->syntax '#f 'begin)))
                             (declare (not safe))
                             (cons __tmp78615 _L77684_))))
                      (declare (not safe))
                      (cons __tmp78614 '()))))
               (declare (not safe))
               (cons '() __tmp78613))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp78616 __tmp78612))
                                              (gx#stx-source _L77532_))))
                                        (declare (not safe))
                                        (cons __tmp78611 '()))))
                                 (declare (not safe))
                                 (cons _E77449_ __tmp78610))))
                          (declare (not safe))
                          (cons __tmp78609 _r77450_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _stx77158_
                         _L77532_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _stx77158_
                     _L77532_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont7844478445_
                                                      (lambda ()
                                                        (let* ((_g7756677574_
                                                                (lambda (_g7756777570_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g7756777570_)))
                       (_g7756577663_
                        (lambda (_g7756777578_)
                          ((lambda (_L77581_)
                             (let ()
                               (let* ((_g7759777605_
                                       (lambda (_g7759877601_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g7759877601_)))
                                      (_g7759677659_
                                       (lambda (_g7759877609_)
                                         ((lambda (_L77612_)
                                            (let ()
                                              (let* ((_g7762577633_
                                                      (lambda (_g7762677629_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g7762677629_)))
                                                     (_g7762477655_
                                                      (lambda (_g7762677637_)
                                                        ((lambda (_L77640_)
                                                           (let ()
                                                             (let ()
                                                               (_lp77444_
                                                                _L77530_
                                                                _L77581_
                                                                (let ((__tmp78617
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp78618
                                      (let ()
                                        (declare (not safe))
                                        (cons _L77640_ '()))))
                                 (declare (not safe))
                                 (cons _E77449_ __tmp78618))))
                          (declare (not safe))
                          (cons __tmp78617 _r77450_))))))
                 _g7762677637_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g7762477655_
                                                 (gx#stx-wrap-source
                                                  (let ((__tmp78621
                                                         (gx#datum->syntax
                                                          '#f
                                                          'lambda))
                                                        (__tmp78619
                                                         (let ((__tmp78620
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _L77612_ '()))))
                   (declare (not safe))
                   (cons '() __tmp78620))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp78621
                                                          __tmp78619))
                                                  (gx#stx-source _L77532_))))))
                                          _g7759877609_))))
                                 (_g7759677659_
                                  (_generate-clause77315_
                                   _L77532_
                                   (let ()
                                     (declare (not safe))
                                     (cons _L77581_ '())))))))
                           _g7756777578_))))
                  (_g7756577663_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      ___stx7843978440_)
                                                     (let ((_e7754777674_
                                                            (gx#syntax-e
                                                             ___stx7843978440_)))
                                                       (let ((_tl7754977681_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e7754777674_)))
                     (_hd7754877678_
                      (let () (declare (not safe)) (##car _e7754777674_))))
                 (if (gx#identifier? _hd7754877678_)
                     (if (gx#free-identifier=? |gx[1]#_g78622_| _hd7754877678_)
                         (___kont7844278443_ _tl7754977681_)
                         (___kont7844478445_))
                     (___kont7844478445_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont7844478445_))))))
                                          (___kont7846478465_
                                           (lambda ()
                                             (let* ((_g7747677484_
                                                     (lambda (_g7747777480_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g7747777480_)))
                                                    (_g7747577509_
                                                     (lambda (_g7747777488_)
                                                       ((lambda (_L77491_)
                                                          (let ()
                                                            (let ((__tmp78623
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp78624
                                  (let ((__tmp78625
                                         (gx#stx-wrap-source
                                          (let ((__tmp78633
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp78626
                                                 (let ((__tmp78627
                                                        (let ((__tmp78628
                                                               (let ((__tmp78632
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'raise-syntax-error))
                             (__tmp78629
                              (let ((__tmp78630
                                     (let ((__tmp78631
                                            (let ()
                                              (declare (not safe))
                                              (cons _L77491_ '()))))
                                       (declare (not safe))
                                       (cons '"Bad syntax; invalid syntax-case clause"
                                             __tmp78631))))
                                (declare (not safe))
                                (cons '#f __tmp78630))))
                         (declare (not safe))
                         (cons __tmp78632 __tmp78629))))
                  (declare (not safe))
                  (cons __tmp78628 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '() __tmp78627))))
                                            (declare (not safe))
                                            (cons __tmp78633 __tmp78626))
                                          (gx#stx-source _stx77158_))))
                                    (declare (not safe))
                                    (cons __tmp78625 '()))))
                             (declare (not safe))
                             (cons _E77449_ __tmp78624))))
                      (declare (not safe))
                      (cons __tmp78623 _r77450_))))
                _g7747777488_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g7747577509_ _tgt77310_)))))
                                      (if (gx#stx-pair? ___stx7845978460_)
                                          (let ((_e7745777520_
                                                 (gx#syntax-e
                                                  ___stx7845978460_)))
                                            (let ((_tl7745977527_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e7745777520_)))
                                                  (_hd7745877524_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e7745777520_))))
                                              (___kont7846278463_
                                               _tl7745977527_
                                               _hd7745877524_)))
                                          (___kont7846478465_))))))))
                      (let* ((_bind77320_
                              (_generate-clauses77318_ _clauses77313_))
                             (_g7732377340_
                              (lambda (_g7732477336_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g7732477336_)))
                             (_g7732277437_
                              (lambda (_g7732477344_)
                                (if (gx#stx-pair/null? _g7732477344_)
                                    (let ((_g78634_
                                           (gx#syntax-split-splice
                                            _g7732477344_
                                            '0)))
                                      (begin
                                        (let ((_g78635_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g78634_)
                                                     (##vector-length _g78634_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g78635_ 2)))
                                              (error "Context expects 2 values"
                                                     _g78635_)))
                                        (let ((_target7732677347_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g78634_ 0)))
                                              (_tl7732877350_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g78634_ 1))))
                                          (if (gx#stx-null? _tl7732877350_)
                                              (letrec ((_loop7732977353_
                                                        (lambda (_hd7732777357_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind-try7733377360_)
                  (if (gx#stx-pair? _hd7732777357_)
                      (let ((_e7733077363_ (gx#syntax-e _hd7732777357_)))
                        (let ((_lp-hd7733177367_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7733077363_)))
                              (_lp-tl7733277370_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7733077363_))))
                          (_loop7732977353_
                           _lp-tl7733277370_
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd7733177367_ _bind-try7733377360_)))))
                      (let ((_bind-try7733477373_
                             (reverse _bind-try7733377360_)))
                        ((lambda (_L77377_)
                           (let ()
                             (let* ((_g7739577403_
                                     (lambda (_g7739677399_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _g7739677399_)))
                                    (_g7739477433_
                                     (lambda (_g7739677407_)
                                       ((lambda (_L77410_)
                                          (let ()
                                            (let ()
                                              (let ((__tmp78641
                                                     (gx#datum->syntax
                                                      '#f
                                                      'let*))
                                                    (__tmp78636
                                                     (let ((__tmp78639
                                                            (let ((__tmp78640
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g7742477427_ _g7742577430_)
                             (let ()
                               (declare (not safe))
                               (cons _g7742477427_ _g7742577430_)))))
                      (declare (not safe))
                      (foldr1 __tmp78640 '() _L77377_)))
                   (__tmp78637
                    (let ((__tmp78638
                           (let () (declare (not safe)) (cons _L77410_ '()))))
                      (declare (not safe))
                      (cons __tmp78638 '()))))
               (declare (not safe))
               (cons __tmp78639 __tmp78637))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp78641
                                                      __tmp78636)))))
                                        _g7739677407_))))
                               (_g7739477433_ (car (last _bind77320_))))))
                         _bind-try7733477373_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop7732977353_
                                                 _target7732677347_
                                                 '()))
                                              (_g7732377340_ _g7732477344_)))))
                                    (_g7732377340_ _g7732477344_)))))
                        (_g7732277437_ _bind77320_))))))
          (let* ((_g7716477183_
                  (lambda (_g7716577179_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g7716577179_)))
                 (_g7716377306_
                  (lambda (_g7716577187_)
                    (if (gx#stx-pair? _g7716577187_)
                        (let ((_e7716977190_ (gx#syntax-e _g7716577187_)))
                          (let ((_hd7717077194_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e7716977190_)))
                                (_tl7717177197_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e7716977190_))))
                            (if (gx#stx-pair? _tl7717177197_)
                                (let ((_e7717277200_
                                       (gx#syntax-e _tl7717177197_)))
                                  (let ((_hd7717377204_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e7717277200_)))
                                        (_tl7717477207_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e7717277200_))))
                                    (if (gx#stx-pair? _tl7717477207_)
                                        (let ((_e7717577210_
                                               (gx#syntax-e _tl7717477207_)))
                                          (let ((_hd7717677214_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e7717577210_)))
                                                (_tl7717777217_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e7717577210_))))
                                            ((lambda (_L77220_
                                                      _L77222_
                                                      _L77223_)
                                               (if (and (gx#identifier-list?
                                                         _L77222_)
                                                        (gx#stx-list?
                                                         _L77220_))
                                                   (let* ((_g7724177249_
                                                           (lambda (_g7724277245_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g7724277245_)))
                                                          (_g7724077302_
                                                           (lambda (_g7724277253_)
                                                             ((lambda (_L77256_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g7726877276_
                                  (lambda (_g7726977272_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g7726977272_)))
                                 (_g7726777298_
                                  (lambda (_g7726977280_)
                                    ((lambda (_L77283_)
                                       (let ()
                                         (let ()
                                           (let ((__tmp78647
                                                  (gx#datum->syntax '#f 'let))
                                                 (__tmp78642
                                                  (let ((__tmp78644
                                                         (let ((__tmp78645
                                                                (let ((__tmp78646
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L77223_ '()))))
                          (declare (not safe))
                          (cons _L77256_ __tmp78646))))
                   (declare (not safe))
                   (cons __tmp78645 '())))
                (__tmp78643 (let () (declare (not safe)) (cons _L77283_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp78644
                                                          __tmp78643))))
                                             (declare (not safe))
                                             (cons __tmp78647 __tmp78642)))))
                                     _g7726977280_))))
                            (_g7726777298_
                             (_generate77161_
                              _L77256_
                              (gx#syntax->list _L77222_)
                              _L77220_)))))
                      _g7724277253_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g7724077302_
                                                      (gx#genident 'e)))
                                                   (_g7716477183_
                                                    _g7716577187_)))
                                             _tl7717777217_
                                             _hd7717677214_
                                             _hd7717377204_)))
                                        (_g7716477183_ _g7716577187_))))
                                (_g7716477183_ _g7716577187_))))
                        (_g7716477183_ _g7716577187_)))))
            (_g7716377306_ _stx77158_)))))))
