(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |[1]#_g12325_|
    (##structure
     gx#syntax-quote::t
     'Exception::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12332_|
    (##structure
     gx#syntax-quote::t
     'Exception?
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12334_|
    (##structure
     gx#syntax-quote::t
     'make-Exception
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12336_|
    (##structure
     gx#syntax-quote::t
     'StackTrace::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12344_|
    (##structure
     gx#syntax-quote::t
     'StackTrace-continuation-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12347_|
    (##structure
     gx#syntax-quote::t
     'StackTrace-continuation
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12349_|
    (##structure
     gx#syntax-quote::t
     'StackTrace?
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12351_|
    (##structure
     gx#syntax-quote::t
     'make-StackTrace
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12353_|
    (##structure
     gx#syntax-quote::t
     'Error::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12363_|
    (##structure
     gx#syntax-quote::t
     'Error-where-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12365_|
    (##structure
     gx#syntax-quote::t
     'Error-irritants-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12367_|
    (##structure
     gx#syntax-quote::t
     'Error-message-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12372_|
    (##structure
     gx#syntax-quote::t
     'Error-where
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12374_|
    (##structure
     gx#syntax-quote::t
     'Error-irritants
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12376_|
    (##structure
     gx#syntax-quote::t
     'Error-message
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12378_|
    (##structure
     gx#syntax-quote::t
     'Error?
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12380_|
    (##structure
     gx#syntax-quote::t
     'make-Error
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12386_|
    (##structure
     gx#syntax-quote::t
     'StackTrace
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12387_|
    (##structure
     gx#syntax-quote::t
     'Exception
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12388_|
    (##structure
     gx#syntax-quote::t
     'RuntimeException::t
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12396_|
    (##structure
     gx#syntax-quote::t
     'RuntimeException-exception-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12399_|
    (##structure
     gx#syntax-quote::t
     'RuntimeException-exception
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12401_|
    (##structure
     gx#syntax-quote::t
     'RuntimeException?
     #f
     (gx#current-expander-context)
     '()))
  (define |[1]#_g12403_|
    (##structure
     gx#syntax-quote::t
     'make-RuntimeException
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |[:0:]#Exception|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-class-info|
       'runtime-identifier:
       |[1]#_g12325_|
       'expander-identifiers:
       (let ((__tmp12326
              (let ((__tmp12335 |[1]#_g12325_|)
                    (__tmp12327
                     (let ((__tmp12333 |[1]#_g12334_|)
                           (__tmp12328
                            (let ((__tmp12331 |[1]#_g12332_|)
                                  (__tmp12329
                                   (let ((__tmp12330
                                          (let ()
                                            (declare (not safe))
                                            (cons '() '()))))
                                     (declare (not safe))
                                     (cons '() __tmp12330))))
                              (declare (not safe))
                              (cons __tmp12331 __tmp12329))))
                       (declare (not safe))
                       (cons __tmp12333 __tmp12328))))
                (declare (not safe))
                (cons __tmp12335 __tmp12327))))
         (declare (not safe))
         (cons '() __tmp12326))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-exhibitor|
        '#f
        (list)
        'Exception
        '#f
        '()
        '())))
    (define |[:0:]#StackTrace|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-class-info|
       'runtime-identifier:
       |[1]#_g12336_|
       'expander-identifiers:
       (let ((__tmp12337
              (let ((__tmp12352 |[1]#_g12336_|)
                    (__tmp12338
                     (let ((__tmp12350 |[1]#_g12351_|)
                           (__tmp12339
                            (let ((__tmp12348 |[1]#_g12349_|)
                                  (__tmp12340
                                   (let ((__tmp12345
                                          (let ((__tmp12346 |[1]#_g12347_|))
                                            (declare (not safe))
                                            (cons __tmp12346 '())))
                                         (__tmp12341
                                          (let ((__tmp12342
                                                 (let ((__tmp12343
                                                        |[1]#_g12344_|))
                                                   (declare (not safe))
                                                   (cons __tmp12343 '()))))
                                            (declare (not safe))
                                            (cons __tmp12342 '()))))
                                     (declare (not safe))
                                     (cons __tmp12345 __tmp12341))))
                              (declare (not safe))
                              (cons __tmp12348 __tmp12340))))
                       (declare (not safe))
                       (cons __tmp12350 __tmp12339))))
                (declare (not safe))
                (cons __tmp12352 __tmp12338))))
         (declare (not safe))
         (cons '() __tmp12337))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-exhibitor|
        '#f
        (list)
        'StackTrace
        '#f
        '()
        '(continuation))))
    (define |[:0:]#Error|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-class-info|
       'runtime-identifier:
       |[1]#_g12353_|
       'expander-identifiers:
       (let ((__tmp12382
              (let ((__tmp12385 |[1]#_g12336_|)
                    (__tmp12383
                     (let ((__tmp12384 |[1]#_g12325_|))
                       (declare (not safe))
                       (cons __tmp12384 '()))))
                (declare (not safe))
                (cons __tmp12385 __tmp12383)))
             (__tmp12354
              (let ((__tmp12381 |[1]#_g12353_|)
                    (__tmp12355
                     (let ((__tmp12379 |[1]#_g12380_|)
                           (__tmp12356
                            (let ((__tmp12377 |[1]#_g12378_|)
                                  (__tmp12357
                                   (let ((__tmp12368
                                          (let ((__tmp12375 |[1]#_g12376_|)
                                                (__tmp12369
                                                 (let ((__tmp12373
                                                        |[1]#_g12374_|)
                                                       (__tmp12370
                                                        (let ((__tmp12371
                                                               |[1]#_g12372_|))
                                                          (declare (not safe))
                                                          (cons __tmp12371
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons __tmp12373
                                                         __tmp12370))))
                                            (declare (not safe))
                                            (cons __tmp12375 __tmp12369)))
                                         (__tmp12358
                                          (let ((__tmp12359
                                                 (let ((__tmp12366
                                                        |[1]#_g12367_|)
                                                       (__tmp12360
                                                        (let ((__tmp12364
                                                               |[1]#_g12365_|)
                                                              (__tmp12361
                                                               (let ((__tmp12362
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              |[1]#_g12363_|))
                         (declare (not safe))
                         (cons __tmp12362 '()))))
                  (declare (not safe))
                  (cons __tmp12364 __tmp12361))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp12366
                                                         __tmp12360))))
                                            (declare (not safe))
                                            (cons __tmp12359 '()))))
                                     (declare (not safe))
                                     (cons __tmp12368 __tmp12358))))
                              (declare (not safe))
                              (cons __tmp12377 __tmp12357))))
                       (declare (not safe))
                       (cons __tmp12379 __tmp12356))))
                (declare (not safe))
                (cons __tmp12381 __tmp12355))))
         (declare (not safe))
         (cons __tmp12382 __tmp12354))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-exhibitor|
        '#f
        (list |[1]#_g12386_| |[1]#_g12387_|)
        'Error
        ':init!
        '((transparent: . #t))
        '(message irritants where))))
    (define |[:0:]#RuntimeException|
      (|gerbil/core$<MOP>$<MOP:2>[1]#make-extended-class-info|
       'runtime-identifier:
       |[1]#_g12388_|
       'expander-identifiers:
       (let ((__tmp12405
              (let ((__tmp12408 |[1]#_g12336_|)
                    (__tmp12406
                     (let ((__tmp12407 |[1]#_g12325_|))
                       (declare (not safe))
                       (cons __tmp12407 '()))))
                (declare (not safe))
                (cons __tmp12408 __tmp12406)))
             (__tmp12389
              (let ((__tmp12404 |[1]#_g12388_|)
                    (__tmp12390
                     (let ((__tmp12402 |[1]#_g12403_|)
                           (__tmp12391
                            (let ((__tmp12400 |[1]#_g12401_|)
                                  (__tmp12392
                                   (let ((__tmp12397
                                          (let ((__tmp12398 |[1]#_g12399_|))
                                            (declare (not safe))
                                            (cons __tmp12398 '())))
                                         (__tmp12393
                                          (let ((__tmp12394
                                                 (let ((__tmp12395
                                                        |[1]#_g12396_|))
                                                   (declare (not safe))
                                                   (cons __tmp12395 '()))))
                                            (declare (not safe))
                                            (cons __tmp12394 '()))))
                                     (declare (not safe))
                                     (cons __tmp12397 __tmp12393))))
                              (declare (not safe))
                              (cons __tmp12400 __tmp12392))))
                       (declare (not safe))
                       (cons __tmp12402 __tmp12391))))
                (declare (not safe))
                (cons __tmp12404 __tmp12390))))
         (declare (not safe))
         (cons __tmp12405 __tmp12389))
       'type-exhibitor:
       (|gerbil/core$<MOP>$<MOP:2>[1]#make-runtime-class-exhibitor|
        '#f
        (list |[1]#_g12386_| |[1]#_g12387_|)
        'RuntimeException
        '#f
        '((transparent: . #t))
        '(exception))))
    (define |[:0:]#check-procedure|
      (lambda (_$stx10264_)
        (let* ((_g1026810286_
                (lambda (_g1026910282_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1026910282_)))
               (_g1026710342_
                (lambda (_g1026910290_)
                  (if (gx#stx-pair? _g1026910290_)
                      (let ((_e1027410293_ (gx#syntax-e _g1026910290_)))
                        (let ((_hd1027310297_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1027410293_)))
                              (_tl1027210300_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1027410293_))))
                          (if (gx#stx-pair? _tl1027210300_)
                              (let ((_e1027710303_
                                     (gx#syntax-e _tl1027210300_)))
                                (let ((_hd1027610307_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1027710303_)))
                                      (_tl1027510310_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1027710303_))))
                                  (if (gx#stx-pair? _tl1027510310_)
                                      (let ((_e1028010313_
                                             (gx#syntax-e _tl1027510310_)))
                                        (let ((_hd1027910317_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1028010313_)))
                                              (_tl1027810320_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1028010313_))))
                                          (if (gx#stx-null? _tl1027810320_)
                                              ((lambda (_L10323_ _L10325_)
                                                 (let ((__tmp12430
                                                        (gx#datum->syntax
                                                         '#f
                                                         'unless))
                                                       (__tmp12409
                                                        (let ((__tmp12427
                                                               (let ((__tmp12429
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'procedure?))
                             (__tmp12428
                              (let ()
                                (declare (not safe))
                                (cons _L10325_ '()))))
                         (declare (not safe))
                         (cons __tmp12429 __tmp12428)))
                      (__tmp12410
                       (let ((__tmp12411
                              (let ((__tmp12426 (gx#datum->syntax '#f 'raise))
                                    (__tmp12412
                                     (let ((__tmp12413
                                            (let ((__tmp12425
                                                   (gx#datum->syntax
                                                    '#f
                                                    'Error))
                                                  (__tmp12414
                                                   (let ((__tmp12415
                                                          (let ((__tmp12416
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp12422
                                (let ((__tmp12424
                                       (gx#datum->syntax '#f 'quote))
                                      (__tmp12423
                                       (let ()
                                         (declare (not safe))
                                         (cons _L10323_ '()))))
                                  (declare (not safe))
                                  (cons __tmp12424 __tmp12423)))
                               (__tmp12417
                                (let ((__tmp12418
                                       (let ((__tmp12419
                                              (let ((__tmp12421
                                                     (gx#datum->syntax
                                                      '#f
                                                      '@list))
                                                    (__tmp12420
                                                     (let ()
                                                       (declare (not safe))
                                                       (cons _L10325_ '()))))
                                                (declare (not safe))
                                                (cons __tmp12421 __tmp12420))))
                                         (declare (not safe))
                                         (cons __tmp12419 '()))))
                                  (declare (not safe))
                                  (cons 'irritants: __tmp12418))))
                           (declare (not safe))
                           (cons __tmp12422 __tmp12417))))
                    (declare (not safe))
                    (cons 'where: __tmp12416))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons '"expected procedure"
                                                           __tmp12415))))
                                              (declare (not safe))
                                              (cons __tmp12425 __tmp12414))))
                                       (declare (not safe))
                                       (cons __tmp12413 '()))))
                                (declare (not safe))
                                (cons __tmp12426 __tmp12412))))
                         (declare (not safe))
                         (cons __tmp12411 '()))))
                  (declare (not safe))
                  (cons __tmp12427 __tmp12410))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp12430
                                                         __tmp12409)))
                                               _hd1027910317_
                                               _hd1027610307_)
                                              (_g1026810286_ _g1026910290_))))
                                      (_g1026810286_ _g1026910290_))))
                              (_g1026810286_ _g1026910290_))))
                      (_g1026810286_ _g1026910290_)))))
          (_g1026710342_ _$stx10264_))))
    (define |[:0:]#defruntime-exception|
      (lambda (_stx10346_)
        (let* ((_g1034910376_
                (lambda (_g1035010372_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1035010372_)))
               (_g1034810611_
                (lambda (_g1035010380_)
                  (if (gx#stx-pair? _g1035010380_)
                      (let ((_e1035510383_ (gx#syntax-e _g1035010380_)))
                        (let ((_hd1035410387_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1035510383_)))
                              (_tl1035310390_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1035510383_))))
                          (if (gx#stx-pair? _tl1035310390_)
                              (let ((_e1035810393_
                                     (gx#syntax-e _tl1035310390_)))
                                (let ((_hd1035710397_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e1035810393_)))
                                      (_tl1035610400_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e1035810393_))))
                                  (if (gx#stx-pair? _hd1035710397_)
                                      (let ((_e1036110403_
                                             (gx#syntax-e _hd1035710397_)))
                                        (let ((_hd1036010407_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e1036110403_)))
                                              (_tl1035910410_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e1036110403_))))
                                          (if (gx#stx-pair/null?
                                               _tl1035910410_)
                                              (let ((_g12431_
                                                     (gx#syntax-split-splice
                                                      _tl1035910410_
                                                      '0)))
                                                (begin
                                                  (let ((_g12432_
                                                         (let ()
                                                           (declare (not safe))
                                                           (if (##values?
                                                                _g12431_)
                                                               (##vector-length
                                                                _g12431_)
                                                               1))))
                                                    (if (not (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##fx= _g12432_ 2)))
                (error "Context expects 2 values" _g12432_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((_target1036210413_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g12431_
                                                            0)))
                                                        (_tl1036410416_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _g12431_
                                                            1))))
                                                    (if (gx#stx-null?
                                                         _tl1036410416_)
                                                        (letrec ((_loop1036510419_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd1036310423_ _getf1036910426_)
                            (if (gx#stx-pair? _hd1036310423_)
                                (let ((_e1036610429_
                                       (gx#syntax-e _hd1036310423_)))
                                  (let ((_lp-hd1036710433_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e1036610429_)))
                                        (_lp-tl1036810436_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e1036610429_))))
                                    (_loop1036510419_
                                     _lp-tl1036810436_
                                     (let ()
                                       (declare (not safe))
                                       (cons _lp-hd1036710433_
                                             _getf1036910426_)))))
                                (let ((_getf1037010439_
                                       (let ()
                                         (declare (not safe))
                                         (reverse _getf1036910426_))))
                                  (if (gx#stx-null? _tl1035610400_)
                                      ((lambda (_L10443_ _L10445_)
                                         (let* ((_g1046510489_
                                                 (lambda (_g1046610485_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _g1046610485_)))
                                                (_g1046410596_
                                                 (lambda (_g1046610493_)
                                                   (if (gx#stx-pair?
                                                        _g1046610493_)
                                                       (let ((_e1047110496_
                                                              (gx#syntax-e
                                                               _g1046610493_)))
                                                         (let ((_hd1047010500_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (##car _e1047110496_)))
                       (_tl1046910503_
                        (let () (declare (not safe)) (##cdr _e1047110496_))))
                   (if (gx#stx-pair? _tl1046910503_)
                       (let ((_e1047410506_ (gx#syntax-e _tl1046910503_)))
                         (let ((_hd1047310510_
                                (let ()
                                  (declare (not safe))
                                  (##car _e1047410506_)))
                               (_tl1047210513_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _e1047410506_))))
                           (if (gx#stx-pair/null? _hd1047310510_)
                               (let ((_g12433_
                                      (gx#syntax-split-splice
                                       _hd1047310510_
                                       '0)))
                                 (begin
                                   (let ((_g12434_
                                          (let ()
                                            (declare (not safe))
                                            (if (##values? _g12433_)
                                                (##vector-length _g12433_)
                                                1))))
                                     (if (not (let ()
                                                (declare (not safe))
                                                (##fx= _g12434_ 2)))
                                         (error "Context expects 2 values"
                                                _g12434_)))
                                   (let ((_target1047510516_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g12433_ 0)))
                                         (_tl1047710519_
                                          (let ()
                                            (declare (not safe))
                                            (##vector-ref _g12433_ 1))))
                                     (if (gx#stx-null? _tl1047710519_)
                                         (letrec ((_loop1047810522_
                                                   (lambda (_hd1047610526_
                                                            _macro-getf1048210529_)
                                                     (if (gx#stx-pair?
                                                          _hd1047610526_)
                                                         (let ((_e1047910532_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1047610526_)))
                   (let ((_lp-hd1048010536_
                          (let () (declare (not safe)) (##car _e1047910532_)))
                         (_lp-tl1048110539_
                          (let () (declare (not safe)) (##cdr _e1047910532_))))
                     (_loop1047810522_
                      _lp-tl1048110539_
                      (let ()
                        (declare (not safe))
                        (cons _lp-hd1048010536_ _macro-getf1048210529_)))))
                 (let ((_macro-getf1048310542_
                        (let ()
                          (declare (not safe))
                          (reverse _macro-getf1048210529_))))
                   (if (gx#stx-null? _tl1047210513_)
                       ((lambda (_L10546_ _L10548_)
                          (let ()
                            (let ((__tmp12558 (gx#datum->syntax '#f 'begin))
                                  (__tmp12435
                                   (let ((__tmp12553
                                          (let ((__tmp12557
                                                 (gx#datum->syntax
                                                  '#f
                                                  'extern))
                                                (__tmp12554
                                                 (let ((__tmp12555
                                                        (let ((__tmp12556
                                                               (lambda (_g1057310576_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g1057410579_)
                         (let ()
                           (declare (not safe))
                           (cons _g1057310576_ _g1057410579_)))))
                  (declare (not safe))
                  (foldr1 __tmp12556 '() _L10546_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons _L10548_
                                                         __tmp12555))))
                                            (declare (not safe))
                                            (cons __tmp12557 __tmp12554)))
                                         (__tmp12436
                                          (let ((__tmp12520
                                                 (let ((__tmp12552
                                                        (gx#datum->syntax
                                                         '#f
                                                         'def))
                                                       (__tmp12521
                                                        (let ((__tmp12549
                                                               (let ((__tmp12550
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ((__tmp12551 (gx#datum->syntax '#f 'exn)))
                                (declare (not safe))
                                (cons __tmp12551 '()))))
                         (declare (not safe))
                         (cons _L10445_ __tmp12550)))
                      (__tmp12522
                       (let ((__tmp12523
                              (let ((__tmp12548 (gx#datum->syntax '#f 'if))
                                    (__tmp12524
                                     (let ((__tmp12544
                                            (let ((__tmp12547
                                                   (gx#datum->syntax
                                                    '#f
                                                    'RuntimeException?))
                                                  (__tmp12545
                                                   (let ((__tmp12546
                                                          (gx#datum->syntax
                                                           '#f
                                                           'exn)))
                                                     (declare (not safe))
                                                     (cons __tmp12546 '()))))
                                              (declare (not safe))
                                              (cons __tmp12547 __tmp12545)))
                                           (__tmp12525
                                            (let ((__tmp12530
                                                   (let ((__tmp12543
                                                          (gx#datum->syntax
                                                           '#f
                                                           'let))
                                                         (__tmp12531
                                                          (let ((__tmp12536
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp12542 (gx#datum->syntax '#f 'e))
                               (__tmp12537
                                (let ((__tmp12538
                                       (let ((__tmp12541
                                              (gx#datum->syntax
                                               '#f
                                               '&RuntimeException-exception))
                                             (__tmp12539
                                              (let ((__tmp12540
                                                     (gx#datum->syntax
                                                      '#f
                                                      'exn)))
                                                (declare (not safe))
                                                (cons __tmp12540 '()))))
                                         (declare (not safe))
                                         (cons __tmp12541 __tmp12539))))
                                  (declare (not safe))
                                  (cons __tmp12538 '()))))
                           (declare (not safe))
                           (cons __tmp12542 __tmp12537)))
                        (__tmp12532
                         (let ((__tmp12533
                                (let ((__tmp12534
                                       (let ((__tmp12535
                                              (gx#datum->syntax '#f 'e)))
                                         (declare (not safe))
                                         (cons __tmp12535 '()))))
                                  (declare (not safe))
                                  (cons _L10548_ __tmp12534))))
                           (declare (not safe))
                           (cons __tmp12533 '()))))
                    (declare (not safe))
                    (cons __tmp12536 __tmp12532))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp12543
                                                           __tmp12531)))
                                                  (__tmp12526
                                                   (let ((__tmp12527
                                                          (let ((__tmp12528
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp12529 (gx#datum->syntax '#f 'exn)))
                           (declare (not safe))
                           (cons __tmp12529 '()))))
                    (declare (not safe))
                    (cons _L10548_ __tmp12528))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp12527 '()))))
                                              (declare (not safe))
                                              (cons __tmp12530 __tmp12526))))
                                       (declare (not safe))
                                       (cons __tmp12544 __tmp12525))))
                                (declare (not safe))
                                (cons __tmp12548 __tmp12524))))
                         (declare (not safe))
                         (cons __tmp12523 '()))))
                  (declare (not safe))
                  (cons __tmp12549 __tmp12522))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons __tmp12552
                                                         __tmp12521)))
                                                (__tmp12437
                                                 (begin
                                                   (gx#syntax-check-splice-targets
                                                    _L10443_
                                                    _L10546_
                                                    _L10443_
                                                    _L10546_
                                                    _L10443_)
                                                   (let ((__tmp12438
                                                          (lambda (_g1056710582_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g1056810585_
                           _g1056910587_
                           _g1057010589_
                           _g1057110591_
                           _g1057210593_)
                    (let ((__tmp12439
                           (let ((__tmp12519 (gx#datum->syntax '#f 'def))
                                 (__tmp12440
                                  (let ((__tmp12516
                                         (let ((__tmp12517
                                                (let ((__tmp12518
                                                       (gx#datum->syntax
                                                        '#f
                                                        'exn)))
                                                  (declare (not safe))
                                                  (cons __tmp12518 '()))))
                                           (declare (not safe))
                                           (cons _g1056710582_ __tmp12517)))
                                        (__tmp12441
                                         (let ((__tmp12442
                                                (let ((__tmp12515
                                                       (gx#datum->syntax
                                                        '#f
                                                        'if))
                                                      (__tmp12443
                                                       (let ((__tmp12511
                                                              (let ((__tmp12514
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#datum->syntax '#f 'RuntimeException?))
                            (__tmp12512
                             (let ((__tmp12513 (gx#datum->syntax '#f 'exn)))
                               (declare (not safe))
                               (cons __tmp12513 '()))))
                        (declare (not safe))
                        (cons __tmp12514 __tmp12512)))
                     (__tmp12444
                      (let ((__tmp12473
                             (let ((__tmp12510 (gx#datum->syntax '#f 'let))
                                   (__tmp12474
                                    (let ((__tmp12503
                                           (let ((__tmp12509
                                                  (gx#datum->syntax '#f 'e))
                                                 (__tmp12504
                                                  (let ((__tmp12505
                                                         (let ((__tmp12508
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         '&RuntimeException-exception))
                       (__tmp12506
                        (let ((__tmp12507 (gx#datum->syntax '#f 'exn)))
                          (declare (not safe))
                          (cons __tmp12507 '()))))
                   (declare (not safe))
                   (cons __tmp12508 __tmp12506))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp12505 '()))))
                                             (declare (not safe))
                                             (cons __tmp12509 __tmp12504)))
                                          (__tmp12475
                                           (let ((__tmp12476
                                                  (let ((__tmp12502
                                                         (gx#datum->syntax
                                                          '#f
                                                          'if))
                                                        (__tmp12477
                                                         (let ((__tmp12499
                                                                (let ((__tmp12500
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp12501 (gx#datum->syntax '#f 'e)))
                                 (declare (not safe))
                                 (cons __tmp12501 '()))))
                          (declare (not safe))
                          (cons _L10548_ __tmp12500)))
                       (__tmp12478
                        (let ((__tmp12496
                               (let ((__tmp12497
                                      (let ((__tmp12498
                                             (gx#datum->syntax '#f 'e)))
                                        (declare (not safe))
                                        (cons __tmp12498 '()))))
                                 (declare (not safe))
                                 (cons _g1056810585_ __tmp12497)))
                              (__tmp12479
                               (let ((__tmp12480
                                      (let ((__tmp12495
                                             (gx#datum->syntax '#f 'error))
                                            (__tmp12481
                                             (let ((__tmp12482
                                                    (let ((__tmp12492
                                                           (let ((__tmp12494
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#datum->syntax '#f 'quote))
                         (__tmp12493
                          (let () (declare (not safe)) (cons _L10445_ '()))))
                     (declare (not safe))
                     (cons __tmp12494 __tmp12493)))
                  (__tmp12483
                   (let ((__tmp12484
                          (let ((__tmp12491 (gx#datum->syntax '#f '@list))
                                (__tmp12485
                                 (let ((__tmp12488
                                        (let ((__tmp12490
                                               (gx#datum->syntax '#f 'quote))
                                              (__tmp12489
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _g1056710582_ '()))))
                                          (declare (not safe))
                                          (cons __tmp12490 __tmp12489)))
                                       (__tmp12486
                                        (let ((__tmp12487
                                               (gx#datum->syntax '#f 'e)))
                                          (declare (not safe))
                                          (cons __tmp12487 '()))))
                                   (declare (not safe))
                                   (cons __tmp12488 __tmp12486))))
                            (declare (not safe))
                            (cons __tmp12491 __tmp12485))))
                     (declare (not safe))
                     (cons __tmp12484 '()))))
              (declare (not safe))
              (cons __tmp12492 __tmp12483))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons '"not an instance"
                                                     __tmp12482))))
                                        (declare (not safe))
                                        (cons __tmp12495 __tmp12481))))
                                 (declare (not safe))
                                 (cons __tmp12480 '()))))
                          (declare (not safe))
                          (cons __tmp12496 __tmp12479))))
                   (declare (not safe))
                   (cons __tmp12499 __tmp12478))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp12502
                                                          __tmp12477))))
                                             (declare (not safe))
                                             (cons __tmp12476 '()))))
                                      (declare (not safe))
                                      (cons __tmp12503 __tmp12475))))
                               (declare (not safe))
                               (cons __tmp12510 __tmp12474)))
                            (__tmp12445
                             (let ((__tmp12446
                                    (let ((__tmp12472
                                           (gx#datum->syntax '#f 'if))
                                          (__tmp12447
                                           (let ((__tmp12469
                                                  (let ((__tmp12470
                                                         (let ((__tmp12471
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'exn)))
                   (declare (not safe))
                   (cons __tmp12471 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L10548_
                                                          __tmp12470)))
                                                 (__tmp12448
                                                  (let ((__tmp12466
                                                         (let ((__tmp12467
                                                                (let ((__tmp12468
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f 'exn)))
                          (declare (not safe))
                          (cons __tmp12468 '()))))
                   (declare (not safe))
                   (cons _g1056810585_ __tmp12467)))
                (__tmp12449
                 (let ((__tmp12450
                        (let ((__tmp12465 (gx#datum->syntax '#f 'error))
                              (__tmp12451
                               (let ((__tmp12452
                                      (let ((__tmp12462
                                             (let ((__tmp12464
                                                    (gx#datum->syntax
                                                     '#f
                                                     'quote))
                                                   (__tmp12463
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L10445_ '()))))
                                               (declare (not safe))
                                               (cons __tmp12464 __tmp12463)))
                                            (__tmp12453
                                             (let ((__tmp12454
                                                    (let ((__tmp12461
                                                           (gx#datum->syntax
                                                            '#f
                                                            '@list))
                                                          (__tmp12455
                                                           (let ((__tmp12458
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp12460 (gx#datum->syntax '#f 'quote))
                                (__tmp12459
                                 (let ()
                                   (declare (not safe))
                                   (cons _g1056710582_ '()))))
                            (declare (not safe))
                            (cons __tmp12460 __tmp12459)))
                         (__tmp12456
                          (let ((__tmp12457 (gx#datum->syntax '#f 'exn)))
                            (declare (not safe))
                            (cons __tmp12457 '()))))
                     (declare (not safe))
                     (cons __tmp12458 __tmp12456))))
              (declare (not safe))
              (cons __tmp12461 __tmp12455))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp12454 '()))))
                                        (declare (not safe))
                                        (cons __tmp12462 __tmp12453))))
                                 (declare (not safe))
                                 (cons '"not an instance" __tmp12452))))
                          (declare (not safe))
                          (cons __tmp12465 __tmp12451))))
                   (declare (not safe))
                   (cons __tmp12450 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp12466
                                                          __tmp12449))))
                                             (declare (not safe))
                                             (cons __tmp12469 __tmp12448))))
                                      (declare (not safe))
                                      (cons __tmp12472 __tmp12447))))
                               (declare (not safe))
                               (cons __tmp12446 '()))))
                        (declare (not safe))
                        (cons __tmp12473 __tmp12445))))
                 (declare (not safe))
                 (cons __tmp12511 __tmp12444))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp12515
                                                        __tmp12443))))
                                           (declare (not safe))
                                           (cons __tmp12442 '()))))
                                    (declare (not safe))
                                    (cons __tmp12516 __tmp12441))))
                             (declare (not safe))
                             (cons __tmp12519 __tmp12440))))
                      (declare (not safe))
                      (cons __tmp12439 _g1057210593_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (foldr* __tmp12438
                                                             '()
                                                             _L10443_
                                                             _L10546_
                                                             _L10443_
                                                             _L10546_
                                                             _L10443_)))))
                                            (declare (not safe))
                                            (cons __tmp12520 __tmp12437))))
                                     (declare (not safe))
                                     (cons __tmp12553 __tmp12436))))
                              (declare (not safe))
                              (cons __tmp12558 __tmp12435))))
                        _macro-getf1048310542_
                        _hd1047010500_)
                       (_g1046510489_ _g1046610493_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_loop1047810522_
                                            _target1047510516_
                                            '()))
                                         (_g1046510489_ _g1046610493_)))))
                               (_g1046510489_ _g1046610493_))))
                       (_g1046510489_ _g1046610493_))))
               (_g1046510489_ _g1046610493_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_g1046410596_
                                            (list (gx#stx-identifier
                                                   _L10445_
                                                   '"macro-"
                                                   _L10445_)
                                                  (let ((__tmp12561
                                                         (lambda (_f10600_)
                                                           (gx#stx-identifier
                                                            _f10600_
                                                            '"macro-"
                                                            _f10600_)))
                                                        (__tmp12559
                                                         (let ((__tmp12560
                                                                (lambda (_g1060210605_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _g1060310608_)
                          (let ()
                            (declare (not safe))
                            (cons _g1060210605_ _g1060310608_)))))
                   (declare (not safe))
                   (foldr1 __tmp12560 '() _L10443_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (map __tmp12561
                                                         __tmp12559))))))
                                       _getf1037010439_
                                       _hd1036010407_)
                                      (_g1034910376_ _g1035010380_)))))))
                  (_loop1036510419_ _target1036210413_ '()))
                (_g1034910376_ _g1035010380_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g1034910376_ _g1035010380_))))
                                      (_g1034910376_ _g1035010380_))))
                              (_g1034910376_ _g1035010380_))))
                      (_g1034910376_ _g1035010380_)))))
          (_g1034810611_ _stx10346_))))
    (define |[:0:]#defruntime-exceptions|
      (lambda (_$stx10617_)
        (let* ((_g1062110641_
                (lambda (_g1062210637_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g1062210637_)))
               (_g1062010712_
                (lambda (_g1062210645_)
                  (if (gx#stx-pair? _g1062210645_)
                      (let ((_e1062610648_ (gx#syntax-e _g1062210645_)))
                        (let ((_hd1062510652_
                               (let ()
                                 (declare (not safe))
                                 (##car _e1062610648_)))
                              (_tl1062410655_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e1062610648_))))
                          (if (gx#stx-pair/null? _tl1062410655_)
                              (let ((_g12562_
                                     (gx#syntax-split-splice
                                      _tl1062410655_
                                      '0)))
                                (begin
                                  (let ((_g12563_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g12562_)
                                               (##vector-length _g12562_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g12563_ 2)))
                                        (error "Context expects 2 values"
                                               _g12563_)))
                                  (let ((_target1062710658_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g12562_ 0)))
                                        (_tl1062910661_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g12562_ 1))))
                                    (if (gx#stx-null? _tl1062910661_)
                                        (letrec ((_loop1063010664_
                                                  (lambda (_hd1062810668_
                                                           _defexn1063410671_)
                                                    (if (gx#stx-pair?
                                                         _hd1062810668_)
                                                        (let ((_e1063110674_
                                                               (gx#syntax-e
                                                                _hd1062810668_)))
                                                          (let ((_lp-hd1063210678_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e1063110674_)))
                        (_lp-tl1063310681_
                         (let () (declare (not safe)) (##cdr _e1063110674_))))
                    (_loop1063010664_
                     _lp-tl1063310681_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd1063210678_ _defexn1063410671_)))))
                (let ((_defexn1063510684_
                       (let ()
                         (declare (not safe))
                         (reverse _defexn1063410671_))))
                  ((lambda (_L10688_)
                     (let ((__tmp12569 (gx#datum->syntax '#f 'begin))
                           (__tmp12564
                            (let ((__tmp12565
                                   (lambda (_g1070310706_ _g1070410709_)
                                     (let ((__tmp12566
                                            (let ((__tmp12568
                                                   (gx#datum->syntax
                                                    '#f
                                                    'defruntime-exception))
                                                  (__tmp12567
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _g1070310706_
                                                           '()))))
                                              (declare (not safe))
                                              (cons __tmp12568 __tmp12567))))
                                       (declare (not safe))
                                       (cons __tmp12566 _g1070410709_)))))
                              (declare (not safe))
                              (foldr1 __tmp12565 '() _L10688_))))
                       (declare (not safe))
                       (cons __tmp12569 __tmp12564)))
                   _defexn1063510684_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop1063010664_
                                           _target1062710658_
                                           '()))
                                        (_g1062110641_ _g1062210645_)))))
                              (_g1062110641_ _g1062210645_))))
                      (_g1062110641_ _g1062210645_)))))
          (_g1062010712_ _$stx10617_))))))
