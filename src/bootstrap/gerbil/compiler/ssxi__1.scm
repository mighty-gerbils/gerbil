(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx158956_)
      (let* ((_g158960158978_
              (lambda (_g158961158974_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g158961158974_))))
             (_g158959159033_
              (lambda (_g158961158982_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g158961158982_))
                    (let ((_e158966158985_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g158961158982_))))
                      (let ((_hd158965158989_
                             (let ()
                               (declare (not safe))
                               (##car _e158966158985_)))
                            (_tl158964158992_
                             (let ()
                               (declare (not safe))
                               (##cdr _e158966158985_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl158964158992_))
                            (let ((_e158969158995_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl158964158992_))))
                              (let ((_hd158968158999_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e158969158995_)))
                                    (_tl158967159002_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e158969158995_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl158967159002_))
                                    (let ((_e158972159005_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl158967159002_))))
                                      (let ((_hd158971159009_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e158972159005_)))
                                            (_tl158970159012_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e158972159005_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl158970159012_))
                                            ((lambda (_L159015_ _L159017_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _L159017_))
                                                   (let ((__tmp162497
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'optimizer-declare-type!)))
                                                         (__tmp162492
                                                          (let ((__tmp162494
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp162496
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp162495
                                (let ()
                                  (declare (not safe))
                                  (cons _L159017_ '()))))
                           (declare (not safe))
                           (cons __tmp162496 __tmp162495)))
                        (__tmp162493
                         (let () (declare (not safe)) (cons _L159015_ '()))))
                    (declare (not safe))
                    (cons __tmp162494 __tmp162493))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp162497
                                                           __tmp162492))
                                                   (_g158960158978_
                                                    _g158961158982_)))
                                             _hd158971159009_
                                             _hd158968158999_)
                                            (_g158960158978_
                                             _g158961158982_))))
                                    (_g158960158978_ _g158961158982_))))
                            (_g158960158978_ _g158961158982_))))
                    (_g158960158978_ _g158961158982_)))))
        (_g158959159033_ _$stx158956_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx159037_)
      (let* ((_g159041159070_
              (lambda (_g159042159066_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159042159066_))))
             (_g159040159170_
              (lambda (_g159042159074_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159042159074_))
                    (let ((_e159047159077_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159042159074_))))
                      (let ((_hd159046159081_
                             (let ()
                               (declare (not safe))
                               (##car _e159047159077_)))
                            (_tl159045159084_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159047159077_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl159045159084_))
                            (let ((_g162498_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl159045159084_
                                      '0))))
                              (begin
                                (let ((_g162499_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g162498_)
                                             (##vector-length _g162498_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g162499_ 2)))
                                      (error "Context expects 2 values"
                                             _g162499_)))
                                (let ((_target159048159087_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g162498_ 0)))
                                      (_tl159050159090_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g162498_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl159050159090_))
                                      (letrec ((_loop159051159093_
                                                (lambda (_hd159049159097_
                                                         _type159055159100_
                                                         _symbol159056159102_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd159049159097_))
                                                      (let ((_e159052159105_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd159049159097_))))
                (let ((_lp-hd159053159109_
                       (let () (declare (not safe)) (##car _e159052159105_)))
                      (_lp-tl159054159112_
                       (let () (declare (not safe)) (##cdr _e159052159105_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd159053159109_))
                      (let ((_e159061159115_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd159053159109_))))
                        (let ((_hd159060159119_
                               (let ()
                                 (declare (not safe))
                                 (##car _e159061159115_)))
                              (_tl159059159122_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e159061159115_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl159059159122_))
                              (let ((_e159064159125_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl159059159122_))))
                                (let ((_hd159063159129_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e159064159125_)))
                                      (_tl159062159132_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e159064159125_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl159062159132_))
                                      (_loop159051159093_
                                       _lp-tl159054159112_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd159063159129_
                                               _type159055159100_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd159060159119_
                                               _symbol159056159102_)))
                                      (_g159041159070_ _g159042159074_))))
                              (_g159041159070_ _g159042159074_))))
                      (_g159041159070_ _g159042159074_))))
              (let ((_type159057159135_ (reverse _type159055159100_))
                    (_symbol159058159138_ (reverse _symbol159056159102_)))
                ((lambda (_L159141_ _L159143_)
                   (let ((__tmp162506
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp162500
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L159141_
                               _L159143_))
                            (let ((__tmp162501
                                   (lambda (_g159158159162_
                                            _g159159159165_
                                            _g159160159167_)
                                     (let ((__tmp162502
                                            (let ((__tmp162505
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type)))
                                                  (__tmp162503
                                                   (let ((__tmp162504
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _g159158159162_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g159159159165_
                                                           __tmp162504))))
                                              (declare (not safe))
                                              (cons __tmp162505 __tmp162503))))
                                       (declare (not safe))
                                       (cons __tmp162502 _g159160159167_)))))
                              (declare (not safe))
                              (foldr2 __tmp162501 '() _L159141_ _L159143_)))))
                     (declare (not safe))
                     (cons __tmp162506 __tmp162500)))
                 _type159057159135_
                 _symbol159058159138_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop159051159093_
                                         _target159048159087_
                                         '()
                                         '()))
                                      (_g159041159070_ _g159042159074_)))))
                            (_g159041159070_ _g159042159074_))))
                    (_g159041159070_ _g159042159074_)))))
        (_g159040159170_ _$stx159037_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx159175_)
      (let* ((___stx162057162058_ _$stx159175_)
             (_g159180159222_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx162057162058_)))))
        (let ((___kont162060162061_
               (lambda (_L159350_ _L159352_ _L159353_ _L159354_)
                 (let ((__tmp162520
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'optimizer-declare-method!)))
                       (__tmp162507
                        (let ((__tmp162517
                               (let ((__tmp162519
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp162518
                                      (let ()
                                        (declare (not safe))
                                        (cons _L159354_ '()))))
                                 (declare (not safe))
                                 (cons __tmp162519 __tmp162518)))
                              (__tmp162508
                               (let ((__tmp162514
                                      (let ((__tmp162516
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp162515
                                             (let ()
                                               (declare (not safe))
                                               (cons _L159353_ '()))))
                                        (declare (not safe))
                                        (cons __tmp162516 __tmp162515)))
                                     (__tmp162509
                                      (let ((__tmp162511
                                             (let ((__tmp162513
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp162512
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L159352_ '()))))
                                               (declare (not safe))
                                               (cons __tmp162513 __tmp162512)))
                                            (__tmp162510
                                             (let ()
                                               (declare (not safe))
                                               (cons _L159350_ '()))))
                                        (declare (not safe))
                                        (cons __tmp162511 __tmp162510))))
                                 (declare (not safe))
                                 (cons __tmp162514 __tmp162509))))
                          (declare (not safe))
                          (cons __tmp162517 __tmp162508))))
                   (declare (not safe))
                   (cons __tmp162520 __tmp162507))))
              (___kont162062162063_
               (lambda (_L159269_ _L159271_ _L159272_ _L159273_)
                 (let ((__tmp162521
                        (let ((__tmp162522
                               (let ((__tmp162523
                                      (let ((__tmp162524
                                             (let ((__tmp162525
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'rebind?))))
                                               (declare (not safe))
                                               (cons __tmp162525 '()))))
                                        (declare (not safe))
                                        (cons _L159269_ __tmp162524))))
                                 (declare (not safe))
                                 (cons _L159271_ __tmp162523))))
                          (declare (not safe))
                          (cons _L159272_ __tmp162522))))
                   (declare (not safe))
                   (cons _L159273_ __tmp162521)))))
          (let ((___match162096162097_
                 (lambda (_e159188159300_
                          _hd159187159304_
                          _tl159186159307_
                          _e159191159310_
                          _hd159190159314_
                          _tl159189159317_
                          _e159194159320_
                          _hd159193159324_
                          _tl159192159327_
                          _e159197159330_
                          _hd159196159334_
                          _tl159195159337_
                          _e159200159340_
                          _hd159199159344_
                          _tl159198159347_)
                   (let ((_L159350_ _hd159199159344_)
                         (_L159352_ _hd159196159334_)
                         (_L159353_ _hd159193159324_)
                         (_L159354_ _hd159190159314_))
                     (if (and (let ()
                                (declare (not safe))
                                (gx#identifier? _L159354_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L159353_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L159352_)))
                         (___kont162060162061_
                          _L159350_
                          _L159352_
                          _L159353_
                          _L159354_)
                         (let () (declare (not safe)) (_g159180159222_)))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx162057162058_))
                (let ((_e159188159300_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx162057162058_))))
                  (let ((_tl159186159307_
                         (let () (declare (not safe)) (##cdr _e159188159300_)))
                        (_hd159187159304_
                         (let ()
                           (declare (not safe))
                           (##car _e159188159300_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl159186159307_))
                        (let ((_e159191159310_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl159186159307_))))
                          (let ((_tl159189159317_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e159191159310_)))
                                (_hd159190159314_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e159191159310_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl159189159317_))
                                (let ((_e159194159320_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl159189159317_))))
                                  (let ((_tl159192159327_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e159194159320_)))
                                        (_hd159193159324_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e159194159320_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl159192159327_))
                                        (let ((_e159197159330_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _tl159192159327_))))
                                          (let ((_tl159195159337_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e159197159330_)))
                                                (_hd159196159334_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e159197159330_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl159195159337_))
                                                (let ((_e159200159340_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl159195159337_))))
                                                  (let ((_tl159198159347_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e159200159340_)))
                                                        (_hd159199159344_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e159200159340_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl159198159347_))
                                                        (___match162096162097_
                                                         _e159188159300_
                                                         _hd159187159304_
                                                         _tl159186159307_
                                                         _e159191159310_
                                                         _hd159190159314_
                                                         _tl159189159317_
                                                         _e159194159320_
                                                         _hd159193159324_
                                                         _tl159192159327_
                                                         _e159197159330_
                                                         _hd159196159334_
                                                         _tl159195159337_
                                                         _e159200159340_
                                                         _hd159199159344_
                                                         _tl159198159347_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g159180159222_)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl159195159337_))
                                                    (___kont162062162063_
                                                     _hd159196159334_
                                                     _hd159193159324_
                                                     _hd159190159314_
                                                     _hd159187159304_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g159180159222_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g159180159222_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g159180159222_)))))
                        (let () (declare (not safe)) (_g159180159222_)))))
                (let () (declare (not safe)) (_g159180159222_))))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx159379_)
      (let* ((_g159383159418_
              (lambda (_g159384159414_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159384159414_))))
             (_g159382159537_
              (lambda (_g159384159422_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159384159422_))
                    (let ((_e159390159425_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159384159422_))))
                      (let ((_hd159389159429_
                             (let ()
                               (declare (not safe))
                               (##car _e159390159425_)))
                            (_tl159388159432_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159390159425_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl159388159432_))
                            (let ((_g162526_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl159388159432_
                                      '0))))
                              (begin
                                (let ((_g162527_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g162526_)
                                             (##vector-length _g162526_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g162527_ 2)))
                                      (error "Context expects 2 values"
                                             _g162527_)))
                                (let ((_target159391159435_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g162526_ 0)))
                                      (_tl159393159438_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g162526_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl159393159438_))
                                      (letrec ((_loop159394159441_
                                                (lambda (_hd159392159445_
                                                         _symbol159398159448_
                                                         _method159399159450_
                                                         _type-t159400159452_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd159392159445_))
                                                      (let ((_e159395159455_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd159392159445_))))
                (let ((_lp-hd159396159459_
                       (let () (declare (not safe)) (##car _e159395159455_)))
                      (_lp-tl159397159462_
                       (let () (declare (not safe)) (##cdr _e159395159455_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd159396159459_))
                      (let ((_e159406159465_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd159396159459_))))
                        (let ((_hd159405159469_
                               (let ()
                                 (declare (not safe))
                                 (##car _e159406159465_)))
                              (_tl159404159472_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e159406159465_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl159404159472_))
                              (let ((_e159409159475_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl159404159472_))))
                                (let ((_hd159408159479_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e159409159475_)))
                                      (_tl159407159482_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e159409159475_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl159407159482_))
                                      (let ((_e159412159485_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl159407159482_))))
                                        (let ((_hd159411159489_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e159412159485_)))
                                              (_tl159410159492_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e159412159485_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl159410159492_))
                                              (_loop159394159441_
                                               _lp-tl159397159462_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd159411159489_
                                                       _symbol159398159448_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd159408159479_
                                                       _method159399159450_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd159405159469_
                                                       _type-t159400159452_)))
                                              (_g159383159418_
                                               _g159384159422_))))
                                      (_g159383159418_ _g159384159422_))))
                              (_g159383159418_ _g159384159422_))))
                      (_g159383159418_ _g159384159422_))))
              (let ((_symbol159401159495_ (reverse _symbol159398159448_))
                    (_method159402159498_ (reverse _method159399159450_))
                    (_type-t159403159500_ (reverse _type-t159400159452_)))
                ((lambda (_L159503_ _L159505_ _L159506_)
                   (let ((__tmp162535
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp162528
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L159503_
                               _L159505_
                               _L159506_))
                            (let ((__tmp162529
                                   (lambda (_g159522159527_
                                            _g159523159530_
                                            _g159524159532_
                                            _g159525159534_)
                                     (let ((__tmp162530
                                            (let ((__tmp162534
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-method)))
                                                  (__tmp162531
                                                   (let ((__tmp162532
                                                          (let ((__tmp162533
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g159522159527_ '()))))
                    (declare (not safe))
                    (cons _g159523159530_ __tmp162533))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g159524159532_
                                                           __tmp162532))))
                                              (declare (not safe))
                                              (cons __tmp162534 __tmp162531))))
                                       (declare (not safe))
                                       (cons __tmp162530 _g159525159534_)))))
                              (declare (not safe))
                              (foldr* __tmp162529
                                      '()
                                      _L159503_
                                      _L159505_
                                      _L159506_)))))
                     (declare (not safe))
                     (cons __tmp162535 __tmp162528)))
                 _symbol159401159495_
                 _method159402159498_
                 _type-t159403159500_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop159394159441_
                                         _target159391159435_
                                         '()
                                         '()
                                         '()))
                                      (_g159383159418_ _g159384159422_)))))
                            (_g159383159418_ _g159384159422_))))
                    (_g159383159418_ _g159384159422_)))))
        (_g159382159537_ _$stx159379_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx159542_)
      (let* ((_g159546159579_
              (lambda (_g159547159575_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159547159575_))))
             (_g159545159693_
              (lambda (_g159547159583_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159547159583_))
                    (let ((_e159553159586_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159547159583_))))
                      (let ((_hd159552159590_
                             (let ()
                               (declare (not safe))
                               (##car _e159553159586_)))
                            (_tl159551159593_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159553159586_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159551159593_))
                            (let ((_e159556159596_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159551159593_))))
                              (let ((_hd159555159600_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159556159596_)))
                                    (_tl159554159603_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159556159596_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl159554159603_))
                                    (let ((_g162536_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl159554159603_
                                              '0))))
                                      (begin
                                        (let ((_g162537_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g162536_)
                                                     (##vector-length
                                                      _g162536_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g162537_ 2)))
                                              (error "Context expects 2 values"
                                                     _g162537_)))
                                        (let ((_target159557159606_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g162536_ 0)))
                                              (_tl159559159609_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g162536_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl159559159609_))
                                              (letrec ((_loop159560159612_
                                                        (lambda (_hd159558159616_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol159564159619_
                         _method159565159621_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd159558159616_))
                      (let ((_e159561159624_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _hd159558159616_))))
                        (let ((_lp-hd159562159628_
                               (let ()
                                 (declare (not safe))
                                 (##car _e159561159624_)))
                              (_lp-tl159563159631_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e159561159624_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _lp-hd159562159628_))
                              (let ((_e159570159634_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _lp-hd159562159628_))))
                                (let ((_hd159569159638_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e159570159634_)))
                                      (_tl159568159641_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e159570159634_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl159568159641_))
                                      (let ((_e159573159644_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl159568159641_))))
                                        (let ((_hd159572159648_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e159573159644_)))
                                              (_tl159571159651_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e159573159644_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl159571159651_))
                                              (_loop159560159612_
                                               _lp-tl159563159631_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd159572159648_
                                                       _symbol159564159619_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd159569159638_
                                                       _method159565159621_)))
                                              (_g159546159579_
                                               _g159547159583_))))
                                      (_g159546159579_ _g159547159583_))))
                              (_g159546159579_ _g159547159583_))))
                      (let ((_symbol159566159654_
                             (reverse _symbol159564159619_))
                            (_method159567159657_
                             (reverse _method159565159621_)))
                        ((lambda (_L159660_ _L159662_ _L159663_)
                           (let ((__tmp162545
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'begin)))
                                 (__tmp162538
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-check-splice-targets
                                       _L159660_
                                       _L159662_))
                                    (let ((__tmp162539
                                           (lambda (_g159681159685_
                                                    _g159682159688_
                                                    _g159683159690_)
                                             (let ((__tmp162540
                                                    (let ((__tmp162544
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'declare-method)))
                                                          (__tmp162541
                                                           (let ((__tmp162542
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp162543
                                 (let ()
                                   (declare (not safe))
                                   (cons _g159681159685_ '()))))
                            (declare (not safe))
                            (cons _g159682159688_ __tmp162543))))
                     (declare (not safe))
                     (cons _L159663_ __tmp162542))))
              (declare (not safe))
              (cons __tmp162544 __tmp162541))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp162540
                                                     _g159683159690_)))))
                                      (declare (not safe))
                                      (foldr2 __tmp162539
                                              '()
                                              _L159660_
                                              _L159662_)))))
                             (declare (not safe))
                             (cons __tmp162545 __tmp162538)))
                         _symbol159566159654_
                         _method159567159657_
                         _hd159555159600_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop159560159612_
                                                 _target159557159606_
                                                 '()
                                                 '()))
                                              (_g159546159579_
                                               _g159547159583_)))))
                                    (_g159546159579_ _g159547159583_))))
                            (_g159546159579_ _g159547159583_))))
                    (_g159546159579_ _g159547159583_)))))
        (_g159545159693_ _$stx159542_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx159698_)
      (let* ((_g159702159716_
              (lambda (_g159703159712_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159703159712_))))
             (_g159701159757_
              (lambda (_g159703159720_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159703159720_))
                    (let ((_e159707159723_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159703159720_))))
                      (let ((_hd159706159727_
                             (let ()
                               (declare (not safe))
                               (##car _e159707159723_)))
                            (_tl159705159730_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159707159723_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159705159730_))
                            (let ((_e159710159733_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159705159730_))))
                              (let ((_hd159709159737_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159710159733_)))
                                    (_tl159708159740_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159710159733_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl159708159740_))
                                    ((lambda (_L159743_)
                                       (let ((__tmp162550
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!alias)))
                                             (__tmp162546
                                              (let ((__tmp162547
                                                     (let ((__tmp162549
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp162548
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L159743_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp162549 __tmp162548))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp162547 '()))))
                                         (declare (not safe))
                                         (cons __tmp162550 __tmp162546)))
                                     _hd159709159737_)
                                    (_g159702159716_ _g159703159720_))))
                            (_g159702159716_ _g159703159720_))))
                    (_g159702159716_ _g159703159720_)))))
        (_g159701159757_ _$stx159698_))))
  (define |gxc[:0:]#@class|
    (lambda (_$stx159761_)
      (let* ((_g159765159815_
              (lambda (_g159766159811_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159766159811_))))
             (_g159764159982_
              (lambda (_g159766159819_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159766159819_))
                    (let ((_e159779159822_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159766159819_))))
                      (let ((_hd159778159826_
                             (let ()
                               (declare (not safe))
                               (##car _e159779159822_)))
                            (_tl159777159829_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159779159822_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159777159829_))
                            (let ((_e159782159832_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159777159829_))))
                              (let ((_hd159781159836_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159782159832_)))
                                    (_tl159780159839_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159782159832_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl159780159839_))
                                    (let ((_e159785159842_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl159780159839_))))
                                      (let ((_hd159784159846_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e159785159842_)))
                                            (_tl159783159849_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e159785159842_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl159783159849_))
                                            (let ((_e159788159852_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl159783159849_))))
                                              (let ((_hd159787159856_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e159788159852_)))
                                                    (_tl159786159859_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e159788159852_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl159786159859_))
                                                    (let ((_e159791159862_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl159786159859_))))
                                                      (let ((_hd159790159866_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e159791159862_)))
                    (_tl159789159869_
                     (let () (declare (not safe)) (##cdr _e159791159862_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl159789159869_))
                    (let ((_e159794159872_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl159789159869_))))
                      (let ((_hd159793159876_
                             (let ()
                               (declare (not safe))
                               (##car _e159794159872_)))
                            (_tl159792159879_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159794159872_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159792159879_))
                            (let ((_e159797159882_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159792159879_))))
                              (let ((_hd159796159886_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159797159882_)))
                                    (_tl159795159889_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159797159882_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl159795159889_))
                                    (let ((_e159800159892_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl159795159889_))))
                                      (let ((_hd159799159896_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e159800159892_)))
                                            (_tl159798159899_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e159800159892_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl159798159899_))
                                            (let ((_e159803159902_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl159798159899_))))
                                              (let ((_hd159802159906_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e159803159902_)))
                                                    (_tl159801159909_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e159803159902_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl159801159909_))
                                                    (let ((_e159806159912_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl159801159909_))))
                                                      (let ((_hd159805159916_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e159806159912_)))
                    (_tl159804159919_
                     (let () (declare (not safe)) (##cdr _e159806159912_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl159804159919_))
                    (let ((_e159809159922_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl159804159919_))))
                      (let ((_hd159808159926_
                             (let ()
                               (declare (not safe))
                               (##car _e159809159922_)))
                            (_tl159807159929_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159809159922_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl159807159929_))
                            ((lambda (_L159932_
                                      _L159934_
                                      _L159935_
                                      _L159936_
                                      _L159937_
                                      _L159938_
                                      _L159939_
                                      _L159940_
                                      _L159941_
                                      _L159942_)
                               (let ((__tmp162585
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0
                                         '#f
                                         'make-!class)))
                                     (__tmp162551
                                      (let ((__tmp162582
                                             (let ((__tmp162584
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp162583
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L159942_ '()))))
                                               (declare (not safe))
                                               (cons __tmp162584 __tmp162583)))
                                            (__tmp162552
                                             (let ((__tmp162579
                                                    (let ((__tmp162581
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote)))
                                                          (__tmp162580
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L159941_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp162581 __tmp162580)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp162553
                                                    (let ((__tmp162576
                                                           (let ((__tmp162578
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp162577
                          (let () (declare (not safe)) (cons _L159940_ '()))))
                     (declare (not safe))
                     (cons __tmp162578 __tmp162577)))
                  (__tmp162554
                   (let ((__tmp162573
                          (let ((__tmp162575
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote)))
                                (__tmp162574
                                 (let ()
                                   (declare (not safe))
                                   (cons _L159939_ '()))))
                            (declare (not safe))
                            (cons __tmp162575 __tmp162574)))
                         (__tmp162555
                          (let ((__tmp162570
                                 (let ((__tmp162572
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'quote)))
                                       (__tmp162571
                                        (let ()
                                          (declare (not safe))
                                          (cons _L159938_ '()))))
                                   (declare (not safe))
                                   (cons __tmp162572 __tmp162571)))
                                (__tmp162556
                                 (let ((__tmp162567
                                        (let ((__tmp162569
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'quote)))
                                              (__tmp162568
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L159937_ '()))))
                                          (declare (not safe))
                                          (cons __tmp162569 __tmp162568)))
                                       (__tmp162557
                                        (let ((__tmp162558
                                               (let ((__tmp162559
                                                      (let ((__tmp162564
                                                             (let ((__tmp162566
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp162565
                            (let ()
                              (declare (not safe))
                              (cons _L159934_ '()))))
                       (declare (not safe))
                       (cons __tmp162566 __tmp162565)))
                    (__tmp162560
                     (let ((__tmp162561
                            (let ((__tmp162563
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp162562
                                   (let ()
                                     (declare (not safe))
                                     (cons _L159932_ '()))))
                              (declare (not safe))
                              (cons __tmp162563 __tmp162562))))
                       (declare (not safe))
                       (cons __tmp162561 '()))))
                (declare (not safe))
                (cons __tmp162564 __tmp162560))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L159935_
                                                       __tmp162559))))
                                          (declare (not safe))
                                          (cons _L159936_ __tmp162558))))
                                   (declare (not safe))
                                   (cons __tmp162567 __tmp162557))))
                            (declare (not safe))
                            (cons __tmp162570 __tmp162556))))
                     (declare (not safe))
                     (cons __tmp162573 __tmp162555))))
              (declare (not safe))
              (cons __tmp162576 __tmp162554))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp162579
                                                     __tmp162553))))
                                        (declare (not safe))
                                        (cons __tmp162582 __tmp162552))))
                                 (declare (not safe))
                                 (cons __tmp162585 __tmp162551)))
                             _hd159808159926_
                             _hd159805159916_
                             _hd159802159906_
                             _hd159799159896_
                             _hd159796159886_
                             _hd159793159876_
                             _hd159790159866_
                             _hd159787159856_
                             _hd159784159846_
                             _hd159781159836_)
                            (_g159765159815_ _g159766159819_))))
                    (_g159765159815_ _g159766159819_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g159765159815_
                                                     _g159766159819_))))
                                            (_g159765159815_
                                             _g159766159819_))))
                                    (_g159765159815_ _g159766159819_))))
                            (_g159765159815_ _g159766159819_))))
                    (_g159765159815_ _g159766159819_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g159765159815_
                                                     _g159766159819_))))
                                            (_g159765159815_
                                             _g159766159819_))))
                                    (_g159765159815_ _g159766159819_))))
                            (_g159765159815_ _g159766159819_))))
                    (_g159765159815_ _g159766159819_)))))
        (_g159764159982_ _$stx159761_))))
  (define |gxc[:0:]#@predicate|
    (lambda (_$stx159986_)
      (let* ((_g159990160004_
              (lambda (_g159991160000_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g159991160000_))))
             (_g159989160045_
              (lambda (_g159991160008_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g159991160008_))
                    (let ((_e159995160011_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g159991160008_))))
                      (let ((_hd159994160015_
                             (let ()
                               (declare (not safe))
                               (##car _e159995160011_)))
                            (_tl159993160018_
                             (let ()
                               (declare (not safe))
                               (##cdr _e159995160011_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl159993160018_))
                            (let ((_e159998160021_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl159993160018_))))
                              (let ((_hd159997160025_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e159998160021_)))
                                    (_tl159996160028_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e159998160021_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl159996160028_))
                                    ((lambda (_L160031_)
                                       (let ((__tmp162590
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!predicate)))
                                             (__tmp162586
                                              (let ((__tmp162587
                                                     (let ((__tmp162589
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp162588
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L160031_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp162589 __tmp162588))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp162587 '()))))
                                         (declare (not safe))
                                         (cons __tmp162590 __tmp162586)))
                                     _hd159997160025_)
                                    (_g159990160004_ _g159991160008_))))
                            (_g159990160004_ _g159991160008_))))
                    (_g159990160004_ _g159991160008_)))))
        (_g159989160045_ _$stx159986_))))
  (define |gxc[:0:]#@constructor|
    (lambda (_$stx160049_)
      (let* ((_g160053160067_
              (lambda (_g160054160063_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160054160063_))))
             (_g160052160108_
              (lambda (_g160054160071_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160054160071_))
                    (let ((_e160058160074_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160054160071_))))
                      (let ((_hd160057160078_
                             (let ()
                               (declare (not safe))
                               (##car _e160058160074_)))
                            (_tl160056160081_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160058160074_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160056160081_))
                            (let ((_e160061160084_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160056160081_))))
                              (let ((_hd160060160088_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160061160084_)))
                                    (_tl160059160091_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160061160084_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl160059160091_))
                                    ((lambda (_L160094_)
                                       (let ((__tmp162595
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!constructor)))
                                             (__tmp162591
                                              (let ((__tmp162592
                                                     (let ((__tmp162594
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp162593
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L160094_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp162594 __tmp162593))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp162592 '()))))
                                         (declare (not safe))
                                         (cons __tmp162595 __tmp162591)))
                                     _hd160060160088_)
                                    (_g160053160067_ _g160054160071_))))
                            (_g160053160067_ _g160054160071_))))
                    (_g160053160067_ _g160054160071_)))))
        (_g160052160108_ _$stx160049_))))
  (define |gxc[:0:]#@accessor|
    (lambda (_$stx160112_)
      (let* ((_g160116160138_
              (lambda (_g160117160134_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160117160134_))))
             (_g160115160207_
              (lambda (_g160117160142_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160117160142_))
                    (let ((_e160123160145_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160117160142_))))
                      (let ((_hd160122160149_
                             (let ()
                               (declare (not safe))
                               (##car _e160123160145_)))
                            (_tl160121160152_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160123160145_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160121160152_))
                            (let ((_e160126160155_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160121160152_))))
                              (let ((_hd160125160159_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160126160155_)))
                                    (_tl160124160162_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160126160155_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl160124160162_))
                                    (let ((_e160129160165_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl160124160162_))))
                                      (let ((_hd160128160169_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160129160165_)))
                                            (_tl160127160172_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160129160165_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl160127160172_))
                                            (let ((_e160132160175_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl160127160172_))))
                                              (let ((_hd160131160179_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e160132160175_)))
                                                    (_tl160130160182_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e160132160175_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl160130160182_))
                                                    ((lambda (_L160185_
                                                              _L160187_
                                                              _L160188_)
                                                       (let ((__tmp162605
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!accessor)))
                     (__tmp162596
                      (let ((__tmp162602
                             (let ((__tmp162604
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp162603
                                    (let ()
                                      (declare (not safe))
                                      (cons _L160188_ '()))))
                               (declare (not safe))
                               (cons __tmp162604 __tmp162603)))
                            (__tmp162597
                             (let ((__tmp162599
                                    (let ((__tmp162601
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp162600
                                           (let ()
                                             (declare (not safe))
                                             (cons _L160187_ '()))))
                                      (declare (not safe))
                                      (cons __tmp162601 __tmp162600)))
                                   (__tmp162598
                                    (let ()
                                      (declare (not safe))
                                      (cons _L160185_ '()))))
                               (declare (not safe))
                               (cons __tmp162599 __tmp162598))))
                        (declare (not safe))
                        (cons __tmp162602 __tmp162597))))
                 (declare (not safe))
                 (cons __tmp162605 __tmp162596)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd160131160179_
                                                     _hd160128160169_
                                                     _hd160125160159_)
                                                    (_g160116160138_
                                                     _g160117160142_))))
                                            (_g160116160138_
                                             _g160117160142_))))
                                    (_g160116160138_ _g160117160142_))))
                            (_g160116160138_ _g160117160142_))))
                    (_g160116160138_ _g160117160142_)))))
        (_g160115160207_ _$stx160112_))))
  (define |gxc[:0:]#@mutator|
    (lambda (_$stx160211_)
      (let* ((_g160215160237_
              (lambda (_g160216160233_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160216160233_))))
             (_g160214160306_
              (lambda (_g160216160241_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160216160241_))
                    (let ((_e160222160244_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160216160241_))))
                      (let ((_hd160221160248_
                             (let ()
                               (declare (not safe))
                               (##car _e160222160244_)))
                            (_tl160220160251_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160222160244_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160220160251_))
                            (let ((_e160225160254_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160220160251_))))
                              (let ((_hd160224160258_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160225160254_)))
                                    (_tl160223160261_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160225160254_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl160223160261_))
                                    (let ((_e160228160264_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl160223160261_))))
                                      (let ((_hd160227160268_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160228160264_)))
                                            (_tl160226160271_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160228160264_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl160226160271_))
                                            (let ((_e160231160274_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl160226160271_))))
                                              (let ((_hd160230160278_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e160231160274_)))
                                                    (_tl160229160281_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e160231160274_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl160229160281_))
                                                    ((lambda (_L160284_
                                                              _L160286_
                                                              _L160287_)
                                                       (let ((__tmp162615
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!mutator)))
                     (__tmp162606
                      (let ((__tmp162612
                             (let ((__tmp162614
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp162613
                                    (let ()
                                      (declare (not safe))
                                      (cons _L160287_ '()))))
                               (declare (not safe))
                               (cons __tmp162614 __tmp162613)))
                            (__tmp162607
                             (let ((__tmp162609
                                    (let ((__tmp162611
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp162610
                                           (let ()
                                             (declare (not safe))
                                             (cons _L160286_ '()))))
                                      (declare (not safe))
                                      (cons __tmp162611 __tmp162610)))
                                   (__tmp162608
                                    (let ()
                                      (declare (not safe))
                                      (cons _L160284_ '()))))
                               (declare (not safe))
                               (cons __tmp162609 __tmp162608))))
                        (declare (not safe))
                        (cons __tmp162612 __tmp162607))))
                 (declare (not safe))
                 (cons __tmp162615 __tmp162606)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd160230160278_
                                                     _hd160227160268_
                                                     _hd160224160258_)
                                                    (_g160215160237_
                                                     _g160216160241_))))
                                            (_g160215160237_
                                             _g160216160241_))))
                                    (_g160215160237_ _g160216160241_))))
                            (_g160215160237_ _g160216160241_))))
                    (_g160215160237_ _g160216160241_)))))
        (_g160214160306_ _$stx160211_))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx160310_)
      (let* ((___stx162125162126_ _$stx160310_)
             (_g160318160386_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx162125162126_)))))
        (let ((___kont162128162129_
               (lambda (_L160664_ _L160666_)
                 (let ((__tmp162636
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp162616
                        (let ((__tmp162632
                               (let ((__tmp162635
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp162633
                                      (let ((__tmp162634
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp162634 '()))))
                                 (declare (not safe))
                                 (cons __tmp162635 __tmp162633)))
                              (__tmp162617
                               (let ((__tmp162629
                                      (let ((__tmp162631
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp162630
                                             (let ()
                                               (declare (not safe))
                                               (cons _L160666_ '()))))
                                        (declare (not safe))
                                        (cons __tmp162631 __tmp162630)))
                                     (__tmp162618
                                      (let ((__tmp162619
                                             (let ((__tmp162620
                                                    (let ((__tmp162621
                                                           (let ((__tmp162628
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp162622
                          (let ((__tmp162623
                                 (let ((__tmp162627
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '@lambda)))
                                       (__tmp162624
                                        (let ((__tmp162625
                                               (let ((__tmp162626
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L160664_ '()))))
                                                 (declare (not safe))
                                                 (cons 'inline: __tmp162626))))
                                          (declare (not safe))
                                          (cons _L160666_ __tmp162625))))
                                   (declare (not safe))
                                   (cons __tmp162627 __tmp162624))))
                            (declare (not safe))
                            (cons __tmp162623 '()))))
                     (declare (not safe))
                     (cons __tmp162628 __tmp162622))))
              (declare (not safe))
              (cons __tmp162621 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L160664_ __tmp162620))))
                                        (declare (not safe))
                                        (cons '#f __tmp162619))))
                                 (declare (not safe))
                                 (cons __tmp162629 __tmp162618))))
                          (declare (not safe))
                          (cons __tmp162632 __tmp162617))))
                   (declare (not safe))
                   (cons __tmp162636 __tmp162616))))
              (___kont162130162131_
               (lambda (_L160595_ _L160597_)
                 (let ((__tmp162637
                        (let ((__tmp162638
                               (let ((__tmp162639
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L160595_ __tmp162639))))
                          (declare (not safe))
                          (cons 'primitive: __tmp162638))))
                   (declare (not safe))
                   (cons _L160597_ __tmp162637))))
              (___kont162132162133_
               (lambda (_L160534_ _L160536_)
                 (let ((__tmp162653
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!primitive-lambda)))
                       (__tmp162640
                        (let ((__tmp162649
                               (let ((__tmp162652
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp162650
                                      (let ((__tmp162651
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp162651 '()))))
                                 (declare (not safe))
                                 (cons __tmp162652 __tmp162650)))
                              (__tmp162641
                               (let ((__tmp162646
                                      (let ((__tmp162648
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp162647
                                             (let ()
                                               (declare (not safe))
                                               (cons _L160536_ '()))))
                                        (declare (not safe))
                                        (cons __tmp162648 __tmp162647)))
                                     (__tmp162642
                                      (let ((__tmp162643
                                             (let ((__tmp162645
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp162644
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L160534_ '()))))
                                               (declare (not safe))
                                               (cons __tmp162645
                                                     __tmp162644))))
                                        (declare (not safe))
                                        (cons __tmp162643 '()))))
                                 (declare (not safe))
                                 (cons __tmp162646 __tmp162642))))
                          (declare (not safe))
                          (cons __tmp162649 __tmp162641))))
                   (declare (not safe))
                   (cons __tmp162653 __tmp162640))))
              (___kont162134162135_
               (lambda (_L160466_ _L160468_)
                 (let ((__tmp162667
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp162654
                        (let ((__tmp162663
                               (let ((__tmp162666
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp162664
                                      (let ((__tmp162665
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp162665 '()))))
                                 (declare (not safe))
                                 (cons __tmp162666 __tmp162664)))
                              (__tmp162655
                               (let ((__tmp162660
                                      (let ((__tmp162662
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp162661
                                             (let ()
                                               (declare (not safe))
                                               (cons _L160468_ '()))))
                                        (declare (not safe))
                                        (cons __tmp162662 __tmp162661)))
                                     (__tmp162656
                                      (let ((__tmp162657
                                             (let ((__tmp162659
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp162658
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L160466_ '()))))
                                               (declare (not safe))
                                               (cons __tmp162659
                                                     __tmp162658))))
                                        (declare (not safe))
                                        (cons __tmp162657 '()))))
                                 (declare (not safe))
                                 (cons __tmp162660 __tmp162656))))
                          (declare (not safe))
                          (cons __tmp162663 __tmp162655))))
                   (declare (not safe))
                   (cons __tmp162667 __tmp162654))))
              (___kont162136162137_
               (lambda (_L160413_ _L160415_)
                 (let ((__tmp162668
                        (let ((__tmp162669
                               (let () (declare (not safe)) (cons '#f '()))))
                          (declare (not safe))
                          (cons _L160413_ __tmp162669))))
                   (declare (not safe))
                   (cons _L160415_ __tmp162668)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx162125162126_))
              (let ((_e160324160620_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx162125162126_))))
                (let ((_tl160322160627_
                       (let () (declare (not safe)) (##cdr _e160324160620_)))
                      (_hd160323160624_
                       (let () (declare (not safe)) (##car _e160324160620_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl160322160627_))
                      (let ((_e160327160630_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl160322160627_))))
                        (let ((_tl160325160637_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e160327160630_)))
                              (_hd160326160634_
                               (let ()
                                 (declare (not safe))
                                 (##car _e160327160630_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl160325160637_))
                              (let ((_e160330160640_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl160325160637_))))
                                (let ((_tl160328160647_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e160330160640_)))
                                      (_hd160329160644_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e160330160640_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd160329160644_))
                                      (let ((_e160331160650_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd160329160644_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e160331160650_
                                                      'inline:))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl160328160647_))
                                                (let ((_e160334160654_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl160328160647_))))
                                                  (let ((_tl160332160661_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e160334160654_)))
                                                        (_hd160333160658_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e160334160654_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl160332160661_))
                                                        (___kont162128162129_
                                                         _hd160333160658_
                                                         _hd160326160634_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-datum?
                                                               _hd160326160634_))
                                                            (let ((_e160343160581_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd160326160634_))))
                      (declare (not safe))
                      (_g160318160386_))
                    (let () (declare (not safe)) (_g160318160386_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd160326160634_))
                                                    (let ((_e160343160581_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd160326160634_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e160343160581_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'primitive:))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl160328160647_))
                      (___kont162130162131_ _hd160329160644_ _hd160323160624_)
                      (let () (declare (not safe)) (_g160318160386_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl160328160647_))
                      (___kont162134162135_ _hd160329160644_ _hd160326160634_)
                      (let () (declare (not safe)) (_g160318160386_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl160328160647_))
                                                        (___kont162134162135_
                                                         _hd160329160644_
                                                         _hd160326160634_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g160318160386_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd160326160634_))
                                                (let ((_e160343160581_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd160326160634_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e160343160581_
                                                                'primitive:))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl160328160647_))
                                                          (___kont162130162131_
                                                           _hd160329160644_
                                                           _hd160323160624_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl160328160647_))
                      (let ((_e160361160524_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl160328160647_))))
                        (let ((_tl160359160531_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e160361160524_)))
                              (_hd160360160528_
                               (let ()
                                 (declare (not safe))
                                 (##car _e160361160524_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl160359160531_))
                              (___kont162132162133_
                               _hd160360160528_
                               _hd160329160644_)
                              (let ()
                                (declare (not safe))
                                (_g160318160386_)))))
                      (let () (declare (not safe)) (_g160318160386_))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl160328160647_))
                  (___kont162134162135_ _hd160329160644_ _hd160326160634_)
                  (let () (declare (not safe)) (_g160318160386_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl160328160647_))
                                                    (___kont162134162135_
                                                     _hd160329160644_
                                                     _hd160326160634_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g160318160386_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-datum? _hd160326160634_))
                                          (let ((_e160343160581_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd160326160634_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e160343160581_
                                                          'primitive:))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl160328160647_))
                                                    (___kont162130162131_
                                                     _hd160329160644_
                                                     _hd160323160624_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl160328160647_))
                                                        (let ((_e160361160524_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl160328160647_))))
                  (let ((_tl160359160531_
                         (let () (declare (not safe)) (##cdr _e160361160524_)))
                        (_hd160360160528_
                         (let ()
                           (declare (not safe))
                           (##car _e160361160524_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl160359160531_))
                        (___kont162132162133_
                         _hd160360160528_
                         _hd160329160644_)
                        (let () (declare (not safe)) (_g160318160386_)))))
                (let () (declare (not safe)) (_g160318160386_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl160328160647_))
                                                    (___kont162134162135_
                                                     _hd160329160644_
                                                     _hd160326160634_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g160318160386_)))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl160328160647_))
                                              (___kont162134162135_
                                               _hd160329160644_
                                               _hd160326160634_)
                                              (let ()
                                                (declare (not safe))
                                                (_g160318160386_)))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _hd160326160634_))
                                  (let ((_e160343160581_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd160326160634_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl160325160637_))
                                        (___kont162136162137_
                                         _hd160326160634_
                                         _hd160323160624_)
                                        (let ()
                                          (declare (not safe))
                                          (_g160318160386_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl160325160637_))
                                      (___kont162136162137_
                                       _hd160326160634_
                                       _hd160323160624_)
                                      (let ()
                                        (declare (not safe))
                                        (_g160318160386_)))))))
                      (let () (declare (not safe)) (_g160318160386_)))))
              (let () (declare (not safe)) (_g160318160386_)))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx160688_)
      (let* ((___stx162265162266_ _$stx160688_)
             (_g160693160748_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx162265162266_)))))
        (let ((___kont162268162269_
               (lambda (_L160933_ _L160935_)
                 (let ((__tmp162685
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'make-!primitive-case-lambda)))
                       (__tmp162670
                        (let ((__tmp162681
                               (let ((__tmp162684
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp162682
                                      (let ((__tmp162683
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp162683 '()))))
                                 (declare (not safe))
                                 (cons __tmp162684 __tmp162682)))
                              (__tmp162671
                               (let ((__tmp162672
                                      (let ((__tmp162680
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp162673
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L160933_
                                                  _L160935_))
                                               (let ((__tmp162674
                                                      (lambda (_g160952160956_
                                                               _g160953160959_
                                                               _g160954160961_)
                                                        (let ((__tmp162675
                                                               (let ((__tmp162679
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp162676
                              (let ((__tmp162677
                                     (let ((__tmp162678
                                            (let ()
                                              (declare (not safe))
                                              (cons _g160952160956_ '()))))
                                       (declare (not safe))
                                       (cons _g160953160959_ __tmp162678))))
                                (declare (not safe))
                                (cons 'primitive: __tmp162677))))
                         (declare (not safe))
                         (cons __tmp162679 __tmp162676))))
                  (declare (not safe))
                  (cons __tmp162675 _g160954160961_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp162674
                                                         '()
                                                         _L160933_
                                                         _L160935_)))))
                                        (declare (not safe))
                                        (cons __tmp162680 __tmp162673))))
                                 (declare (not safe))
                                 (cons __tmp162672 '()))))
                          (declare (not safe))
                          (cons __tmp162681 __tmp162671))))
                   (declare (not safe))
                   (cons __tmp162685 __tmp162670))))
              (___kont162272162273_
               (lambda (_L160819_ _L160821_)
                 (let ((__tmp162700
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda)))
                       (__tmp162686
                        (let ((__tmp162696
                               (let ((__tmp162699
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp162697
                                      (let ((__tmp162698
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp162698 '()))))
                                 (declare (not safe))
                                 (cons __tmp162699 __tmp162697)))
                              (__tmp162687
                               (let ((__tmp162688
                                      (let ((__tmp162695
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp162689
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L160819_
                                                  _L160821_))
                                               (let ((__tmp162690
                                                      (lambda (_g160836160840_
                                                               _g160837160843_
                                                               _g160838160845_)
                                                        (let ((__tmp162691
                                                               (let ((__tmp162694
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp162692
                              (let ((__tmp162693
                                     (let ()
                                       (declare (not safe))
                                       (cons _g160836160840_ '()))))
                                (declare (not safe))
                                (cons _g160837160843_ __tmp162693))))
                         (declare (not safe))
                         (cons __tmp162694 __tmp162692))))
                  (declare (not safe))
                  (cons __tmp162691 _g160838160845_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp162690
                                                         '()
                                                         _L160819_
                                                         _L160821_)))))
                                        (declare (not safe))
                                        (cons __tmp162695 __tmp162689))))
                                 (declare (not safe))
                                 (cons __tmp162688 '()))))
                          (declare (not safe))
                          (cons __tmp162696 __tmp162687))))
                   (declare (not safe))
                   (cons __tmp162700 __tmp162686)))))
          (let* ((___match162316162317_
                  (lambda (_e160725160755_
                           _hd160724160759_
                           _tl160723160762_
                           ___splice162274162275_
                           _target160726160765_
                           _tl160728160768_)
                    (letrec ((_loop160729160771_
                              (lambda (_hd160727160775_
                                       _dispatch160733160778_
                                       _arity160734160780_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd160727160775_))
                                    (let ((_e160730160783_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd160727160775_))))
                                      (let ((_lp-tl160732160790_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160730160783_)))
                                            (_lp-hd160731160787_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160730160783_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd160731160787_))
                                            (let ((_e160739160793_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd160731160787_))))
                                              (let ((_tl160737160800_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e160739160793_)))
                                                    (_hd160738160797_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e160739160793_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl160737160800_))
                                                    (let ((_e160742160803_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl160737160800_))))
                                                      (let ((_tl160740160810_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e160742160803_)))
                    (_hd160741160807_
                     (let () (declare (not safe)) (##car _e160742160803_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl160740160810_))
                    (_loop160729160771_
                     _lp-tl160732160790_
                     (let ()
                       (declare (not safe))
                       (cons _hd160741160807_ _dispatch160733160778_))
                     (let ()
                       (declare (not safe))
                       (cons _hd160738160797_ _arity160734160780_)))
                    (let () (declare (not safe)) (_g160693160748_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g160693160748_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g160693160748_)))))
                                    (let ((_arity160736160816_
                                           (reverse _arity160734160780_))
                                          (_dispatch160735160813_
                                           (reverse _dispatch160733160778_)))
                                      (___kont162272162273_
                                       _dispatch160735160813_
                                       _arity160736160816_))))))
                      (_loop160729160771_ _target160726160765_ '() '()))))
                 (___match162308162309_
                  (lambda (_e160725160755_ _hd160724160759_ _tl160723160762_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl160723160762_))
                        (let ((___splice162274162275_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl160723160762_
                                  '0))))
                          (let ((_tl160728160768_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice162274162275_ '1)))
                                (_target160726160765_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice162274162275_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl160728160768_))
                                (___match162316162317_
                                 _e160725160755_
                                 _hd160724160759_
                                 _tl160723160762_
                                 ___splice162274162275_
                                 _target160726160765_
                                 _tl160728160768_)
                                (let ()
                                  (declare (not safe))
                                  (_g160693160748_)))))
                        (let () (declare (not safe)) (_g160693160748_)))))
                 (___match162302162303_
                  (lambda (_e160699160855_
                           _hd160698160859_
                           _tl160697160862_
                           _e160702160865_
                           _hd160701160869_
                           _tl160700160872_
                           _e160703160875_
                           ___splice162270162271_
                           _target160704160879_
                           _tl160706160882_)
                    (letrec ((_loop160707160885_
                              (lambda (_hd160705160889_
                                       _dispatch160711160892_
                                       _arity160712160894_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd160705160889_))
                                    (let ((_e160708160897_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd160705160889_))))
                                      (let ((_lp-tl160710160904_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160708160897_)))
                                            (_lp-hd160709160901_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160708160897_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd160709160901_))
                                            (let ((_e160717160907_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd160709160901_))))
                                              (let ((_tl160715160914_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e160717160907_)))
                                                    (_hd160716160911_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e160717160907_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl160715160914_))
                                                    (let ((_e160720160917_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl160715160914_))))
                                                      (let ((_tl160718160924_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e160720160917_)))
                    (_hd160719160921_
                     (let () (declare (not safe)) (##car _e160720160917_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl160718160924_))
                    (_loop160707160885_
                     _lp-tl160710160904_
                     (let ()
                       (declare (not safe))
                       (cons _hd160719160921_ _dispatch160711160892_))
                     (let ()
                       (declare (not safe))
                       (cons _hd160716160911_ _arity160712160894_)))
                    (___match162308162309_
                     _e160699160855_
                     _hd160698160859_
                     _tl160697160862_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match162308162309_
                                                     _e160699160855_
                                                     _hd160698160859_
                                                     _tl160697160862_))))
                                            (___match162308162309_
                                             _e160699160855_
                                             _hd160698160859_
                                             _tl160697160862_))))
                                    (let ((_arity160714160930_
                                           (reverse _arity160712160894_))
                                          (_dispatch160713160927_
                                           (reverse _dispatch160711160892_)))
                                      (___kont162268162269_
                                       _dispatch160713160927_
                                       _arity160714160930_))))))
                      (_loop160707160885_ _target160704160879_ '() '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx162265162266_))
                (let ((_e160699160855_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx162265162266_))))
                  (let ((_tl160697160862_
                         (let () (declare (not safe)) (##cdr _e160699160855_)))
                        (_hd160698160859_
                         (let ()
                           (declare (not safe))
                           (##car _e160699160855_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl160697160862_))
                        (let ((_e160702160865_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl160697160862_))))
                          (let ((_tl160700160872_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e160702160865_)))
                                (_hd160701160869_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e160702160865_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _hd160701160869_))
                                (let ((_e160703160875_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd160701160869_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e160703160875_ 'primitive:))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl160700160872_))
                                          (let ((___splice162270162271_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl160700160872_
                                                    '0))))
                                            (let ((_tl160706160882_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice162270162271_
                                                      '1)))
                                                  (_target160704160879_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice162270162271_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl160706160882_))
                                                  (___match162302162303_
                                                   _e160699160855_
                                                   _hd160698160859_
                                                   _tl160697160862_
                                                   _e160702160865_
                                                   _hd160701160869_
                                                   _tl160700160872_
                                                   _e160703160875_
                                                   ___splice162270162271_
                                                   _target160704160879_
                                                   _tl160706160882_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl160697160862_))
                                                      (let ((___splice162274162275_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl160697160862_ '0))))
                (let ((_tl160728160768_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice162274162275_ '1)))
                      (_target160726160765_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice162274162275_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl160728160768_))
                      (___match162316162317_
                       _e160699160855_
                       _hd160698160859_
                       _tl160697160862_
                       ___splice162274162275_
                       _target160726160765_
                       _tl160728160768_)
                      (let () (declare (not safe)) (_g160693160748_)))))
              (let () (declare (not safe)) (_g160693160748_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl160697160862_))
                                              (let ((___splice162274162275_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl160697160862_
                                                        '0))))
                                                (let ((_tl160728160768_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice162274162275_
                                                          '1)))
                                                      (_target160726160765_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice162274162275_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl160728160768_))
                                                      (___match162316162317_
                                                       _e160699160855_
                                                       _hd160698160859_
                                                       _tl160697160862_
                                                       ___splice162274162275_
                                                       _target160726160765_
                                                       _tl160728160768_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g160693160748_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g160693160748_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl160697160862_))
                                          (let ((___splice162274162275_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl160697160862_
                                                    '0))))
                                            (let ((_tl160728160768_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice162274162275_
                                                      '1)))
                                                  (_target160726160765_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice162274162275_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl160728160768_))
                                                  (___match162316162317_
                                                   _e160699160855_
                                                   _hd160698160859_
                                                   _tl160697160862_
                                                   ___splice162274162275_
                                                   _target160726160765_
                                                   _tl160728160768_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g160693160748_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g160693160748_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl160697160862_))
                                    (let ((___splice162274162275_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl160697160862_
                                              '0))))
                                      (let ((_tl160728160768_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice162274162275_
                                                '1)))
                                            (_target160726160765_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice162274162275_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl160728160768_))
                                            (___match162316162317_
                                             _e160699160855_
                                             _hd160698160859_
                                             _tl160697160862_
                                             ___splice162274162275_
                                             _target160726160765_
                                             _tl160728160768_)
                                            (let ()
                                              (declare (not safe))
                                              (_g160693160748_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g160693160748_))))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl160697160862_))
                            (let ((___splice162274162275_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl160697160862_
                                      '0))))
                              (let ((_tl160728160768_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice162274162275_
                                        '1)))
                                    (_target160726160765_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice162274162275_
                                        '0))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl160728160768_))
                                    (___match162316162317_
                                     _e160699160855_
                                     _hd160698160859_
                                     _tl160697160862_
                                     ___splice162274162275_
                                     _target160726160765_
                                     _tl160728160768_)
                                    (let ()
                                      (declare (not safe))
                                      (_g160693160748_)))))
                            (let () (declare (not safe)) (_g160693160748_))))))
                (let () (declare (not safe)) (_g160693160748_))))))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx160970_)
      (let* ((_g160974160992_
              (lambda (_g160975160988_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160975160988_))))
             (_g160973161047_
              (lambda (_g160975160996_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160975160996_))
                    (let ((_e160980160999_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160975160996_))))
                      (let ((_hd160979161003_
                             (let ()
                               (declare (not safe))
                               (##car _e160980160999_)))
                            (_tl160978161006_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160980160999_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160978161006_))
                            (let ((_e160983161009_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160978161006_))))
                              (let ((_hd160982161013_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160983161009_)))
                                    (_tl160981161016_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160983161009_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl160981161016_))
                                    (let ((_e160986161019_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl160981161016_))))
                                      (let ((_hd160985161023_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160986161019_)))
                                            (_tl160984161026_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160986161019_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl160984161026_))
                                            ((lambda (_L161029_ _L161031_)
                                               (let ((__tmp162714
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda)))
                                                     (__tmp162701
                                                      (let ((__tmp162710
                                                             (let ((__tmp162713
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp162711
                            (let ((__tmp162712
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'kw-lambda))))
                              (declare (not safe))
                              (cons __tmp162712 '()))))
                       (declare (not safe))
                       (cons __tmp162713 __tmp162711)))
                    (__tmp162702
                     (let ((__tmp162707
                            (let ((__tmp162709
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp162708
                                   (let ()
                                     (declare (not safe))
                                     (cons _L161031_ '()))))
                              (declare (not safe))
                              (cons __tmp162709 __tmp162708)))
                           (__tmp162703
                            (let ((__tmp162704
                                   (let ((__tmp162706
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp162705
                                          (let ()
                                            (declare (not safe))
                                            (cons _L161029_ '()))))
                                     (declare (not safe))
                                     (cons __tmp162706 __tmp162705))))
                              (declare (not safe))
                              (cons __tmp162704 '()))))
                       (declare (not safe))
                       (cons __tmp162707 __tmp162703))))
                (declare (not safe))
                (cons __tmp162710 __tmp162702))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp162714
                                                       __tmp162701)))
                                             _hd160985161023_
                                             _hd160982161013_)
                                            (_g160974160992_
                                             _g160975160996_))))
                                    (_g160974160992_ _g160975160996_))))
                            (_g160974160992_ _g160975160996_))))
                    (_g160974160992_ _g160975160996_)))))
        (_g160973161047_ _$stx160970_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx161051_)
      (let* ((_g161055161073_
              (lambda (_g161056161069_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161056161069_))))
             (_g161054161128_
              (lambda (_g161056161077_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161056161077_))
                    (let ((_e161061161080_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161056161077_))))
                      (let ((_hd161060161084_
                             (let ()
                               (declare (not safe))
                               (##car _e161061161080_)))
                            (_tl161059161087_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161061161080_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161059161087_))
                            (let ((_e161064161090_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161059161087_))))
                              (let ((_hd161063161094_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161064161090_)))
                                    (_tl161062161097_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161064161090_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl161062161097_))
                                    (let ((_e161067161100_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl161062161097_))))
                                      (let ((_hd161066161104_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e161067161100_)))
                                            (_tl161065161107_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e161067161100_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl161065161107_))
                                            ((lambda (_L161110_ _L161112_)
                                               (let ((__tmp162728
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda-primary)))
                                                     (__tmp162715
                                                      (let ((__tmp162724
                                                             (let ((__tmp162727
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp162725
                            (let ((__tmp162726
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      'kw-lambda-dispatch))))
                              (declare (not safe))
                              (cons __tmp162726 '()))))
                       (declare (not safe))
                       (cons __tmp162727 __tmp162725)))
                    (__tmp162716
                     (let ((__tmp162721
                            (let ((__tmp162723
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp162722
                                   (let ()
                                     (declare (not safe))
                                     (cons _L161112_ '()))))
                              (declare (not safe))
                              (cons __tmp162723 __tmp162722)))
                           (__tmp162717
                            (let ((__tmp162718
                                   (let ((__tmp162720
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp162719
                                          (let ()
                                            (declare (not safe))
                                            (cons _L161110_ '()))))
                                     (declare (not safe))
                                     (cons __tmp162720 __tmp162719))))
                              (declare (not safe))
                              (cons __tmp162718 '()))))
                       (declare (not safe))
                       (cons __tmp162721 __tmp162717))))
                (declare (not safe))
                (cons __tmp162724 __tmp162716))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp162728
                                                       __tmp162715)))
                                             _hd161066161104_
                                             _hd161063161094_)
                                            (_g161055161073_
                                             _g161056161077_))))
                                    (_g161055161073_ _g161056161077_))))
                            (_g161055161073_ _g161056161077_))))
                    (_g161055161073_ _g161056161077_)))))
        (_g161054161128_ _$stx161051_))))
  (define |gxc[:0:]#declare-primitive|
    (lambda (_$stx161132_)
      (let* ((___stx162319162320_ _$stx161132_)
             (_g161139161210_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx162319162320_)))))
        (let ((___kont162322162323_
               (lambda (_L161501_ _L161503_)
                 (let ((__tmp162734
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp162729
                        (let ((__tmp162730
                               (let ((__tmp162731
                                      (let ((__tmp162733
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp162732
                                             (let ()
                                               (declare (not safe))
                                               (cons _L161501_ '()))))
                                        (declare (not safe))
                                        (cons __tmp162733 __tmp162732))))
                                 (declare (not safe))
                                 (cons __tmp162731 '()))))
                          (declare (not safe))
                          (cons _L161503_ __tmp162730))))
                   (declare (not safe))
                   (cons __tmp162734 __tmp162729))))
              (___kont162324162325_
               (lambda (_L161420_ _L161422_)
                 (let ((__tmp162743
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp162735
                        (let ((__tmp162736
                               (let ((__tmp162737
                                      (let ((__tmp162742
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp162738
                                             (let ((__tmp162739
                                                    (lambda (_g161441161444_
                                                             _g161442161447_)
                                                      (let ((__tmp162740
                                                             (let ((__tmp162741
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g161441161444_ __tmp162741))))
                (declare (not safe))
                (cons __tmp162740 _g161442161447_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp162739
                                                       '()
                                                       _L161420_))))
                                        (declare (not safe))
                                        (cons __tmp162742 __tmp162738))))
                                 (declare (not safe))
                                 (cons __tmp162737 '()))))
                          (declare (not safe))
                          (cons _L161422_ __tmp162736))))
                   (declare (not safe))
                   (cons __tmp162743 __tmp162735))))
              (___kont162328162329_
               (lambda (_L161332_ _L161334_)
                 (let ((__tmp162750
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp162744
                        (let ((__tmp162745
                               (let ((__tmp162746
                                      (let ((__tmp162749
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp162747
                                             (let ((__tmp162748
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L161332_ '()))))
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp162748))))
                                        (declare (not safe))
                                        (cons __tmp162749 __tmp162747))))
                                 (declare (not safe))
                                 (cons __tmp162746 '()))))
                          (declare (not safe))
                          (cons _L161334_ __tmp162745))))
                   (declare (not safe))
                   (cons __tmp162750 __tmp162744))))
              (___kont162330162331_
               (lambda (_L161267_ _L161269_)
                 (let ((__tmp162760
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp162751
                        (let ((__tmp162752
                               (let ((__tmp162753
                                      (let ((__tmp162759
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp162754
                                             (let ((__tmp162755
                                                    (let ((__tmp162756
                                                           (lambda (_g161286161289_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g161287161292_)
                     (let ((__tmp162757
                            (let ((__tmp162758
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons _g161286161289_ __tmp162758))))
                       (declare (not safe))
                       (cons __tmp162757 _g161287161292_)))))
              (declare (not safe))
              (foldr1 __tmp162756 '() _L161267_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp162755))))
                                        (declare (not safe))
                                        (cons __tmp162759 __tmp162754))))
                                 (declare (not safe))
                                 (cons __tmp162753 '()))))
                          (declare (not safe))
                          (cons _L161269_ __tmp162752))))
                   (declare (not safe))
                   (cons __tmp162760 __tmp162751)))))
          (let* ((___match162438162439_
                  (lambda (_e161192161217_
                           _hd161191161221_
                           _tl161190161224_
                           _e161195161227_
                           _hd161194161231_
                           _tl161193161234_
                           ___splice162332162333_
                           _target161196161237_
                           _tl161198161240_)
                    (letrec ((_loop161199161243_
                              (lambda (_hd161197161247_ _arity161203161250_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd161197161247_))
                                    (let ((_e161200161253_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd161197161247_))))
                                      (let ((_lp-tl161202161260_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e161200161253_)))
                                            (_lp-hd161201161257_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e161200161253_))))
                                        (_loop161199161243_
                                         _lp-tl161202161260_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd161201161257_
                                                 _arity161203161250_)))))
                                    (let ((_arity161204161263_
                                           (reverse _arity161203161250_)))
                                      (___kont162330162331_
                                       _arity161204161263_
                                       _hd161194161231_))))))
                      (_loop161199161243_ _target161196161237_ '()))))
                 (___match162398162399_
                  (lambda (_e161160161356_
                           _hd161159161360_
                           _tl161158161363_
                           _e161163161366_
                           _hd161162161370_
                           _tl161161161373_
                           _e161166161376_
                           _hd161165161380_
                           _tl161164161383_
                           _e161167161386_
                           ___splice162326162327_
                           _target161168161390_
                           _tl161170161393_)
                    (letrec ((_loop161171161396_
                              (lambda (_hd161169161400_ _arity161175161403_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd161169161400_))
                                    (let ((_e161172161406_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd161169161400_))))
                                      (let ((_lp-tl161174161413_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e161172161406_)))
                                            (_lp-hd161173161410_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e161172161406_))))
                                        (_loop161171161396_
                                         _lp-tl161174161413_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd161173161410_
                                                 _arity161175161403_)))))
                                    (let ((_arity161176161416_
                                           (reverse _arity161175161403_)))
                                      (___kont162324162325_
                                       _arity161176161416_
                                       _hd161162161370_))))))
                      (_loop161171161396_ _target161168161390_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx162319162320_))
                (let ((_e161145161457_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx162319162320_))))
                  (let ((_tl161143161464_
                         (let () (declare (not safe)) (##cdr _e161145161457_)))
                        (_hd161144161461_
                         (let ()
                           (declare (not safe))
                           (##car _e161145161457_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl161143161464_))
                        (let ((_e161148161467_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl161143161464_))))
                          (let ((_tl161146161474_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e161148161467_)))
                                (_hd161147161471_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e161148161467_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl161146161474_))
                                (let ((_e161151161477_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl161146161474_))))
                                  (let ((_tl161149161484_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e161151161477_)))
                                        (_hd161150161481_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e161151161477_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _hd161150161481_))
                                        (let ((_e161152161487_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd161150161481_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e161152161487_
                                                        'unchecked:))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl161149161484_))
                                                  (let ((_e161155161491_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl161149161484_))))
                                                    (let ((_tl161153161498_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e161155161491_)))
                                                          (_hd161154161495_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e161155161491_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl161153161498_))
                                                          (___kont162322162323_
                                                           _hd161154161495_
                                                           _hd161147161471_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl161149161484_))
                      (let ((___splice162326162327_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl161149161484_ '0))))
                        (let ((_tl161170161393_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice162326162327_ '1)))
                              (_target161168161390_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice162326162327_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl161170161393_))
                              (___match162398162399_
                               _e161145161457_
                               _hd161144161461_
                               _tl161143161464_
                               _e161148161467_
                               _hd161147161471_
                               _tl161146161474_
                               _e161151161477_
                               _hd161150161481_
                               _tl161149161484_
                               _e161152161487_
                               ___splice162326162327_
                               _target161168161390_
                               _tl161170161393_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl161146161474_))
                                  (let ((___splice162332162333_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl161146161474_
                                            '0))))
                                    (let ((_tl161198161240_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice162332162333_
                                              '1)))
                                          (_target161196161237_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice162332162333_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl161198161240_))
                                          (___match162438162439_
                                           _e161145161457_
                                           _hd161144161461_
                                           _tl161143161464_
                                           _e161148161467_
                                           _hd161147161471_
                                           _tl161146161474_
                                           ___splice162332162333_
                                           _target161196161237_
                                           _tl161198161240_)
                                          (let ()
                                            (declare (not safe))
                                            (_g161139161210_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g161139161210_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl161146161474_))
                          (let ((___splice162332162333_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl161146161474_
                                    '0))))
                            (let ((_tl161198161240_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice162332162333_ '1)))
                                  (_target161196161237_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice162332162333_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl161198161240_))
                                  (___match162438162439_
                                   _e161145161457_
                                   _hd161144161461_
                                   _tl161143161464_
                                   _e161148161467_
                                   _hd161147161471_
                                   _tl161146161474_
                                   ___splice162332162333_
                                   _target161196161237_
                                   _tl161198161240_)
                                  (let ()
                                    (declare (not safe))
                                    (_g161139161210_)))))
                          (let () (declare (not safe)) (_g161139161210_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl161149161484_))
                                                      (let ((___splice162326162327_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl161149161484_ '0))))
                (let ((_tl161170161393_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice162326162327_ '1)))
                      (_target161168161390_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice162326162327_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl161170161393_))
                      (___match162398162399_
                       _e161145161457_
                       _hd161144161461_
                       _tl161143161464_
                       _e161148161467_
                       _hd161147161471_
                       _tl161146161474_
                       _e161151161477_
                       _hd161150161481_
                       _tl161149161484_
                       _e161152161487_
                       ___splice162326162327_
                       _target161168161390_
                       _tl161170161393_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl161149161484_))
                          (___kont162328162329_
                           _hd161150161481_
                           _hd161147161471_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl161146161474_))
                              (let ((___splice162332162333_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl161146161474_
                                        '0))))
                                (let ((_tl161198161240_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice162332162333_
                                          '1)))
                                      (_target161196161237_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice162332162333_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl161198161240_))
                                      (___match162438162439_
                                       _e161145161457_
                                       _hd161144161461_
                                       _tl161143161464_
                                       _e161148161467_
                                       _hd161147161471_
                                       _tl161146161474_
                                       ___splice162332162333_
                                       _target161196161237_
                                       _tl161198161240_)
                                      (let ()
                                        (declare (not safe))
                                        (_g161139161210_)))))
                              (let ()
                                (declare (not safe))
                                (_g161139161210_)))))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl161149161484_))
                  (___kont162328162329_ _hd161150161481_ _hd161147161471_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl161146161474_))
                      (let ((___splice162332162333_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl161146161474_ '0))))
                        (let ((_tl161198161240_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice162332162333_ '1)))
                              (_target161196161237_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice162332162333_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl161198161240_))
                              (___match162438162439_
                               _e161145161457_
                               _hd161144161461_
                               _tl161143161464_
                               _e161148161467_
                               _hd161147161471_
                               _tl161146161474_
                               ___splice162332162333_
                               _target161196161237_
                               _tl161198161240_)
                              (let ()
                                (declare (not safe))
                                (_g161139161210_)))))
                      (let () (declare (not safe)) (_g161139161210_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl161149161484_))
                                                  (___kont162328162329_
                                                   _hd161150161481_
                                                   _hd161147161471_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl161146161474_))
                                                      (let ((___splice162332162333_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl161146161474_ '0))))
                (let ((_tl161198161240_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice162332162333_ '1)))
                      (_target161196161237_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice162332162333_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl161198161240_))
                      (___match162438162439_
                       _e161145161457_
                       _hd161144161461_
                       _tl161143161464_
                       _e161148161467_
                       _hd161147161471_
                       _tl161146161474_
                       ___splice162332162333_
                       _target161196161237_
                       _tl161198161240_)
                      (let () (declare (not safe)) (_g161139161210_)))))
              (let () (declare (not safe)) (_g161139161210_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl161149161484_))
                                            (___kont162328162329_
                                             _hd161150161481_
                                             _hd161147161471_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _tl161146161474_))
                                                (let ((___splice162332162333_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _tl161146161474_
                                                          '0))))
                                                  (let ((_tl161198161240_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice162332162333_
                                                            '1)))
                                                        (_target161196161237_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice162332162333_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl161198161240_))
                                                        (___match162438162439_
                                                         _e161145161457_
                                                         _hd161144161461_
                                                         _tl161143161464_
                                                         _e161148161467_
                                                         _hd161147161471_
                                                         _tl161146161474_
                                                         ___splice162332162333_
                                                         _target161196161237_
                                                         _tl161198161240_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g161139161210_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g161139161210_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl161146161474_))
                                    (let ((___splice162332162333_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl161146161474_
                                              '0))))
                                      (let ((_tl161198161240_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice162332162333_
                                                '1)))
                                            (_target161196161237_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice162332162333_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl161198161240_))
                                            (___match162438162439_
                                             _e161145161457_
                                             _hd161144161461_
                                             _tl161143161464_
                                             _e161148161467_
                                             _hd161147161471_
                                             _tl161146161474_
                                             ___splice162332162333_
                                             _target161196161237_
                                             _tl161198161240_)
                                            (let ()
                                              (declare (not safe))
                                              (_g161139161210_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g161139161210_))))))
                        (let () (declare (not safe)) (_g161139161210_)))))
                (let () (declare (not safe)) (_g161139161210_))))))))
  (define |gxc[:0:]#declare-primitive/unchecked|
    (lambda (_$stx161527_)
      (let* ((___stx162441162442_ _$stx161527_)
             (_g161532161567_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx162441162442_)))))
        (let ((___kont162444162445_
               (lambda (_L161689_ _L161691_)
                 (let ((__tmp162766
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp162761
                        (let ((__tmp162762
                               (let ((__tmp162763
                                      (let ((__tmp162765
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp162764
                                             (let ()
                                               (declare (not safe))
                                               (cons _L161689_ '()))))
                                        (declare (not safe))
                                        (cons __tmp162765 __tmp162764))))
                                 (declare (not safe))
                                 (cons __tmp162763 '()))))
                          (declare (not safe))
                          (cons _L161691_ __tmp162762))))
                   (declare (not safe))
                   (cons __tmp162766 __tmp162761))))
              (___kont162446162447_
               (lambda (_L161624_ _L161626_)
                 (let ((__tmp162775
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp162767
                        (let ((__tmp162768
                               (let ((__tmp162769
                                      (let ((__tmp162774
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp162770
                                             (let ((__tmp162771
                                                    (lambda (_g161643161646_
                                                             _g161644161649_)
                                                      (let ((__tmp162772
                                                             (let ((__tmp162773
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g161643161646_ __tmp162773))))
                (declare (not safe))
                (cons __tmp162772 _g161644161649_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp162771
                                                       '()
                                                       _L161624_))))
                                        (declare (not safe))
                                        (cons __tmp162774 __tmp162770))))
                                 (declare (not safe))
                                 (cons __tmp162769 '()))))
                          (declare (not safe))
                          (cons _L161626_ __tmp162768))))
                   (declare (not safe))
                   (cons __tmp162775 __tmp162767)))))
          (let ((___match162490162491_
                 (lambda (_e161549161574_
                          _hd161548161578_
                          _tl161547161581_
                          _e161552161584_
                          _hd161551161588_
                          _tl161550161591_
                          ___splice162448162449_
                          _target161553161594_
                          _tl161555161597_)
                   (letrec ((_loop161556161600_
                             (lambda (_hd161554161604_ _arity161560161607_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd161554161604_))
                                   (let ((_e161557161610_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _hd161554161604_))))
                                     (let ((_lp-tl161559161617_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e161557161610_)))
                                           (_lp-hd161558161614_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e161557161610_))))
                                       (_loop161556161600_
                                        _lp-tl161559161617_
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd161558161614_
                                                _arity161560161607_)))))
                                   (let ((_arity161561161620_
                                          (reverse _arity161560161607_)))
                                     (___kont162446162447_
                                      _arity161561161620_
                                      _hd161551161588_))))))
                     (_loop161556161600_ _target161553161594_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx162441162442_))
                (let ((_e161538161659_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx162441162442_))))
                  (let ((_tl161536161666_
                         (let () (declare (not safe)) (##cdr _e161538161659_)))
                        (_hd161537161663_
                         (let ()
                           (declare (not safe))
                           (##car _e161538161659_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl161536161666_))
                        (let ((_e161541161669_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl161536161666_))))
                          (let ((_tl161539161676_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e161541161669_)))
                                (_hd161540161673_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e161541161669_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl161539161676_))
                                (let ((_e161544161679_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl161539161676_))))
                                  (let ((_tl161542161686_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e161544161679_)))
                                        (_hd161543161683_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e161544161679_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl161542161686_))
                                        (___kont162444162445_
                                         _hd161543161683_
                                         _hd161540161673_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _tl161539161676_))
                                            (let ((___splice162448162449_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _tl161539161676_
                                                      '0))))
                                              (let ((_tl161555161597_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice162448162449_
                                                        '1)))
                                                    (_target161553161594_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice162448162449_
                                                        '0))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl161555161597_))
                                                    (___match162490162491_
                                                     _e161538161659_
                                                     _hd161537161663_
                                                     _tl161536161666_
                                                     _e161541161669_
                                                     _hd161540161673_
                                                     _tl161539161676_
                                                     ___splice162448162449_
                                                     _target161553161594_
                                                     _tl161555161597_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g161532161567_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g161532161567_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl161539161676_))
                                    (let ((___splice162448162449_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl161539161676_
                                              '0))))
                                      (let ((_tl161555161597_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice162448162449_
                                                '1)))
                                            (_target161553161594_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice162448162449_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl161555161597_))
                                            (___match162490162491_
                                             _e161538161659_
                                             _hd161537161663_
                                             _tl161536161666_
                                             _e161541161669_
                                             _hd161540161673_
                                             _tl161539161676_
                                             ___splice162448162449_
                                             _target161553161594_
                                             _tl161555161597_)
                                            (let ()
                                              (declare (not safe))
                                              (_g161532161567_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g161532161567_))))))
                        (let () (declare (not safe)) (_g161532161567_)))))
                (let () (declare (not safe)) (_g161532161567_))))))))
  (define |gxc[:0:]#declare-primitive*|
    (lambda (_$stx161711_)
      (let* ((_g161715161750_
              (lambda (_g161716161746_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161716161746_))))
             (_g161714161878_
              (lambda (_g161716161754_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161716161754_))
                    (let ((_e161721161757_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161716161754_))))
                      (let ((_hd161720161761_
                             (let ()
                               (declare (not safe))
                               (##car _e161721161757_)))
                            (_tl161719161764_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161721161757_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl161719161764_))
                            (let ((_g162776_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl161719161764_
                                      '0))))
                              (begin
                                (let ((_g162777_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g162776_)
                                             (##vector-length _g162776_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g162777_ 2)))
                                      (error "Context expects 2 values"
                                             _g162777_)))
                                (let ((_target161722161767_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g162776_ 0)))
                                      (_tl161724161770_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g162776_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl161724161770_))
                                      (letrec ((_loop161725161773_
                                                (lambda (_hd161723161777_
                                                         _arity161729161780_
                                                         _prim161730161782_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd161723161777_))
                                                      (let ((_e161726161785_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd161723161777_))))
                (let ((_lp-hd161727161789_
                       (let () (declare (not safe)) (##car _e161726161785_)))
                      (_lp-tl161728161792_
                       (let () (declare (not safe)) (##cdr _e161726161785_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd161727161789_))
                      (let ((_e161735161795_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd161727161789_))))
                        (let ((_hd161734161799_
                               (let ()
                                 (declare (not safe))
                                 (##car _e161735161795_)))
                              (_tl161733161802_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e161735161795_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl161733161802_))
                              (let ((_g162786_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl161733161802_
                                        '0))))
                                (begin
                                  (let ((_g162787_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g162786_)
                                               (##vector-length _g162786_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g162787_ 2)))
                                        (error "Context expects 2 values"
                                               _g162787_)))
                                  (let ((_target161736161805_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g162786_ 0)))
                                        (_tl161738161808_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g162786_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl161738161808_))
                                        (letrec ((_loop161739161811_
                                                  (lambda (_hd161737161815_
                                                           _arity161743161818_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd161737161815_))
                                                        (let ((_e161740161821_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd161737161815_))))
                  (let ((_lp-hd161741161825_
                         (let () (declare (not safe)) (##car _e161740161821_)))
                        (_lp-tl161742161828_
                         (let ()
                           (declare (not safe))
                           (##cdr _e161740161821_))))
                    (_loop161739161811_
                     _lp-tl161742161828_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd161741161825_ _arity161743161818_)))))
                (let ((_arity161744161831_ (reverse _arity161743161818_)))
                  (_loop161725161773_
                   _lp-tl161728161792_
                   (let ()
                     (declare (not safe))
                     (cons _arity161744161831_ _arity161729161780_))
                   (let ()
                     (declare (not safe))
                     (cons _hd161734161799_ _prim161730161782_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop161739161811_
                                           _target161736161805_
                                           '()))
                                        (_g161715161750_ _g161716161754_)))))
                              (_g161715161750_ _g161716161754_))))
                      (_g161715161750_ _g161716161754_))))
              (let ((_arity161731161835_ (reverse _arity161729161780_))
                    (_prim161732161838_ (reverse _prim161730161782_)))
                ((lambda (_L161841_ _L161843_)
                   (let ((__tmp162785
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp162778
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L161841_
                               _L161843_))
                            (let ((__tmp162779
                                   (lambda (_g161858161864_
                                            _g161859161867_
                                            _g161860161869_)
                                     (let ((__tmp162780
                                            (let ((__tmp162784
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive)))
                                                  (__tmp162781
                                                   (let ((__tmp162782
                                                          (let ((__tmp162783
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g161861161872_ _g161862161875_)
                           (let ()
                             (declare (not safe))
                             (cons _g161861161872_ _g161862161875_)))))
                    (declare (not safe))
                    (foldr1 __tmp162783 '() _g161858161864_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g161859161867_
                                                           __tmp162782))))
                                              (declare (not safe))
                                              (cons __tmp162784 __tmp162781))))
                                       (declare (not safe))
                                       (cons __tmp162780 _g161860161869_)))))
                              (declare (not safe))
                              (foldr2 __tmp162779 '() _L161841_ _L161843_)))))
                     (declare (not safe))
                     (cons __tmp162785 __tmp162778)))
                 _arity161731161835_
                 _prim161732161838_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop161725161773_
                                         _target161722161767_
                                         '()
                                         '()))
                                      (_g161715161750_ _g161716161754_)))))
                            (_g161715161750_ _g161716161754_))))
                    (_g161715161750_ _g161716161754_)))))
        (_g161714161878_ _$stx161711_))))
  (define |gxc[:0:]#declare-primitive/unchecked*|
    (lambda (_$stx161884_)
      (let* ((_g161888161923_
              (lambda (_g161889161919_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161889161919_))))
             (_g161887162051_
              (lambda (_g161889161927_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161889161927_))
                    (let ((_e161894161930_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161889161927_))))
                      (let ((_hd161893161934_
                             (let ()
                               (declare (not safe))
                               (##car _e161894161930_)))
                            (_tl161892161937_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161894161930_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl161892161937_))
                            (let ((_g162788_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl161892161937_
                                      '0))))
                              (begin
                                (let ((_g162789_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g162788_)
                                             (##vector-length _g162788_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g162789_ 2)))
                                      (error "Context expects 2 values"
                                             _g162789_)))
                                (let ((_target161895161940_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g162788_ 0)))
                                      (_tl161897161943_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g162788_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl161897161943_))
                                      (letrec ((_loop161898161946_
                                                (lambda (_hd161896161950_
                                                         _arity161902161953_
                                                         _prim161903161955_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd161896161950_))
                                                      (let ((_e161899161958_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd161896161950_))))
                (let ((_lp-hd161900161962_
                       (let () (declare (not safe)) (##car _e161899161958_)))
                      (_lp-tl161901161965_
                       (let () (declare (not safe)) (##cdr _e161899161958_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd161900161962_))
                      (let ((_e161908161968_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd161900161962_))))
                        (let ((_hd161907161972_
                               (let ()
                                 (declare (not safe))
                                 (##car _e161908161968_)))
                              (_tl161906161975_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e161908161968_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl161906161975_))
                              (let ((_g162798_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl161906161975_
                                        '0))))
                                (begin
                                  (let ((_g162799_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g162798_)
                                               (##vector-length _g162798_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g162799_ 2)))
                                        (error "Context expects 2 values"
                                               _g162799_)))
                                  (let ((_target161909161978_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g162798_ 0)))
                                        (_tl161911161981_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g162798_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl161911161981_))
                                        (letrec ((_loop161912161984_
                                                  (lambda (_hd161910161988_
                                                           _arity161916161991_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd161910161988_))
                                                        (let ((_e161913161994_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd161910161988_))))
                  (let ((_lp-hd161914161998_
                         (let () (declare (not safe)) (##car _e161913161994_)))
                        (_lp-tl161915162001_
                         (let ()
                           (declare (not safe))
                           (##cdr _e161913161994_))))
                    (_loop161912161984_
                     _lp-tl161915162001_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd161914161998_ _arity161916161991_)))))
                (let ((_arity161917162004_ (reverse _arity161916161991_)))
                  (_loop161898161946_
                   _lp-tl161901161965_
                   (let ()
                     (declare (not safe))
                     (cons _arity161917162004_ _arity161902161953_))
                   (let ()
                     (declare (not safe))
                     (cons _hd161907161972_ _prim161903161955_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop161912161984_
                                           _target161909161978_
                                           '()))
                                        (_g161888161923_ _g161889161927_)))))
                              (_g161888161923_ _g161889161927_))))
                      (_g161888161923_ _g161889161927_))))
              (let ((_arity161904162008_ (reverse _arity161902161953_))
                    (_prim161905162011_ (reverse _prim161903161955_)))
                ((lambda (_L162014_ _L162016_)
                   (let ((__tmp162797
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp162790
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L162014_
                               _L162016_))
                            (let ((__tmp162791
                                   (lambda (_g162031162037_
                                            _g162032162040_
                                            _g162033162042_)
                                     (let ((__tmp162792
                                            (let ((__tmp162796
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive/unchecked)))
                                                  (__tmp162793
                                                   (let ((__tmp162794
                                                          (let ((__tmp162795
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g162034162045_ _g162035162048_)
                           (let ()
                             (declare (not safe))
                             (cons _g162034162045_ _g162035162048_)))))
                    (declare (not safe))
                    (foldr1 __tmp162795 '() _g162031162037_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g162032162040_
                                                           __tmp162794))))
                                              (declare (not safe))
                                              (cons __tmp162796 __tmp162793))))
                                       (declare (not safe))
                                       (cons __tmp162792 _g162033162042_)))))
                              (declare (not safe))
                              (foldr2 __tmp162791 '() _L162014_ _L162016_)))))
                     (declare (not safe))
                     (cons __tmp162797 __tmp162790)))
                 _arity161904162008_
                 _prim161905162011_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop161898161946_
                                         _target161895161940_
                                         '()
                                         '()))
                                      (_g161888161923_ _g161889161927_)))))
                            (_g161888161923_ _g161889161927_))))
                    (_g161888161923_ _g161889161927_)))))
        (_g161887162051_ _$stx161884_)))))
