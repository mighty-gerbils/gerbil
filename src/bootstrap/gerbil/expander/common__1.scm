(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g79454_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79456_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79458_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79463_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79466_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79471_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79474_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79479_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79482_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79487_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79490_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g79597_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj79449
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
           __obj79449
           'gerbil#AST::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79449
           'syntax
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79449
           '(e source)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79449
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79449
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79449
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79449
           '#f
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79449
           '#f
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp79453 |gx[1]#_g79454_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79449
           __tmp79453
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp79455 |gx[1]#_g79456_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79449
           __tmp79455
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp79457 |gx[1]#_g79458_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79449
           __tmp79457
           '11
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp79459
               (let ((__tmp79464
                      (let ((__tmp79465 |gx[1]#_g79466_|))
                        (declare (not safe))
                        (cons 'e __tmp79465)))
                     (__tmp79460
                      (let ((__tmp79461
                             (let ((__tmp79462 |gx[1]#_g79463_|))
                               (declare (not safe))
                               (cons 'source __tmp79462))))
                        (declare (not safe))
                        (cons __tmp79461 '()))))
                 (declare (not safe))
                 (cons __tmp79464 __tmp79460))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79449
           __tmp79459
           '12
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp79467
               (let ((__tmp79472
                      (let ((__tmp79473 |gx[1]#_g79474_|))
                        (declare (not safe))
                        (cons 'e __tmp79473)))
                     (__tmp79468
                      (let ((__tmp79469
                             (let ((__tmp79470 |gx[1]#_g79471_|))
                               (declare (not safe))
                               (cons 'source __tmp79470))))
                        (declare (not safe))
                        (cons __tmp79469 '()))))
                 (declare (not safe))
                 (cons __tmp79472 __tmp79468))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79449
           __tmp79467
           '13
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp79475
               (let ((__tmp79480
                      (let ((__tmp79481 |gx[1]#_g79482_|))
                        (declare (not safe))
                        (cons 'e __tmp79481)))
                     (__tmp79476
                      (let ((__tmp79477
                             (let ((__tmp79478 |gx[1]#_g79479_|))
                               (declare (not safe))
                               (cons 'source __tmp79478))))
                        (declare (not safe))
                        (cons __tmp79477 '()))))
                 (declare (not safe))
                 (cons __tmp79480 __tmp79476))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79449
           __tmp79475
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp79483
               (let ((__tmp79488
                      (let ((__tmp79489 |gx[1]#_g79490_|))
                        (declare (not safe))
                        (cons 'e __tmp79489)))
                     (__tmp79484
                      (let ((__tmp79485
                             (let ((__tmp79486 |gx[1]#_g79487_|))
                               (declare (not safe))
                               (cons 'source __tmp79486))))
                        (declare (not safe))
                        (cons __tmp79485 '()))))
                 (declare (not safe))
                 (cons __tmp79488 __tmp79484))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj79449
           __tmp79483
           '15
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj79449))
    (define |gx[:0:]#check-procedure|
      (lambda (_$stx78069_)
        (let* ((_g7807378087_
                (lambda (_g7807478083_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g7807478083_)))
               (_g7807278129_
                (lambda (_g7807478091_)
                  (if (gx#stx-pair? _g7807478091_)
                      (let ((_e7807878094_ (gx#syntax-e _g7807478091_)))
                        (let ((_hd7807778098_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7807878094_)))
                              (_tl7807678101_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7807878094_))))
                          (if (gx#stx-pair? _tl7807678101_)
                              (let ((_e7808178104_
                                     (gx#syntax-e _tl7807678101_)))
                                (let ((_hd7808078108_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7808178104_)))
                                      (_tl7807978111_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7808178104_))))
                                  (if (gx#stx-null? _tl7807978111_)
                                      ((lambda (_L78114_)
                                         (let ((__tmp79500
                                                (gx#datum->syntax '#f 'unless))
                                               (__tmp79491
                                                (let ((__tmp79497
                                                       (let ((__tmp79499
                                                              (gx#datum->syntax
                                                               '#f
                                                               'procedure?))
                                                             (__tmp79498
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L78114_ '()))))
                 (declare (not safe))
                 (cons __tmp79499 __tmp79498)))
              (__tmp79492
               (let ((__tmp79493
                      (let ((__tmp79496 (gx#datum->syntax '#f 'error))
                            (__tmp79494
                             (let ((__tmp79495
                                    (let ()
                                      (declare (not safe))
                                      (cons _L78114_ '()))))
                               (declare (not safe))
                               (cons '"expected procedure" __tmp79495))))
                        (declare (not safe))
                        (cons __tmp79496 __tmp79494))))
                 (declare (not safe))
                 (cons __tmp79493 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp79497
                                                        __tmp79492))))
                                           (declare (not safe))
                                           (cons __tmp79500 __tmp79491)))
                                       _hd7808078108_)
                                      (_g7807378087_ _g7807478091_))))
                              (_g7807378087_ _g7807478091_))))
                      (_g7807378087_ _g7807478091_)))))
          (_g7807278129_ _$stx78069_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_stx78133_)
        (letrec ((_generate78136_
                  (lambda (_tgt78285_ _kws78287_ _clauses78288_)
                    (letrec ((_generate-clause78290_
                              (lambda (_hd79200_ _E79202_)
                                (let* ((___stx7935279353_ _hd79200_)
                                       (_g7920679233_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx7935279353_))))
                                  (let ((___kont7935579356_
                                         (lambda (_L79329_ _L79331_)
                                           (_generate178292_
                                            _hd79200_
                                            _L79331_
                                            '#t
                                            _L79329_
                                            _E79202_)))
                                        (___kont7935779358_
                                         (lambda (_L79281_ _L79283_ _L79284_)
                                           (_generate178292_
                                            _hd79200_
                                            _L79284_
                                            _L79283_
                                            _L79281_
                                            _E79202_)))
                                        (___kont7935979360_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _stx78133_
                                            _hd79200_))))
                                    (if (gx#stx-pair? ___stx7935279353_)
                                        (let ((_e7921279309_
                                               (gx#syntax-e
                                                ___stx7935279353_)))
                                          (let ((_tl7921079316_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e7921279309_)))
                                                (_hd7921179313_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e7921279309_))))
                                            (if (gx#stx-pair? _tl7921079316_)
                                                (let ((_e7921579319_
                                                       (gx#syntax-e
                                                        _tl7921079316_)))
                                                  (let ((_tl7921379326_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e7921579319_)))
                                                        (_hd7921479323_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e7921579319_))))
                                                    (if (gx#stx-null?
                                                         _tl7921379326_)
                                                        (___kont7935579356_
                                                         _hd7921479323_
                                                         _hd7921179313_)
                                                        (if (gx#stx-pair?
                                                             _tl7921379326_)
                                                            (let ((_e7922779271_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl7921379326_)))
                      (let ((_tl7922579278_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7922779271_)))
                            (_hd7922679275_
                             (let ()
                               (declare (not safe))
                               (##car _e7922779271_))))
                        (if (gx#stx-null? _tl7922579278_)
                            (___kont7935779358_
                             _hd7922679275_
                             _hd7921479323_
                             _hd7921179313_)
                            (___kont7935979360_))))
                    (___kont7935979360_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont7935979360_))))
                                        (___kont7935979360_))))))
                             (_generate178292_
                              (lambda (_where78678_
                                       _hd78680_
                                       _fender78681_
                                       _body78682_
                                       _E78683_)
                                (letrec ((_recur78685_
                                          (lambda (_hd78688_
                                                   _tgt78690_
                                                   _K78691_)
                                            (let* ((___stx7939879399_
                                                    _hd78688_)
                                                   (_g7869478706_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx7939879399_))))
                                              (let ((___kont7940179402_
                                                     (lambda (_L78990_
                                                              _L78992_)
                                                       (let* ((_g7900379011_
                                                               (lambda (_g7900479007_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g7900479007_)))
                      (_g7900279192_
                       (lambda (_g7900479015_)
                         ((lambda (_L79018_)
                            (let ()
                              (let* ((_g7903079038_
                                      (lambda (_g7903179034_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g7903179034_)))
                                     (_g7902979188_
                                      (lambda (_g7903179042_)
                                        ((lambda (_L79045_)
                                           (let ()
                                             (let* ((_g7905879066_
                                                     (lambda (_g7905979062_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g7905979062_)))
                                                    (_g7905779184_
                                                     (lambda (_g7905979070_)
                                                       ((lambda (_L79073_)
                                                          (let ()
                                                            (let* ((_g7908679094_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g7908779090_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g7908779090_)))
                           (_g7908579180_
                            (lambda (_g7908779098_)
                              ((lambda (_L79101_)
                                 (let ()
                                   (let* ((_g7911479122_
                                           (lambda (_g7911579118_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g7911579118_)))
                                          (_g7911379176_
                                           (lambda (_g7911579126_)
                                             ((lambda (_L79129_)
                                                (let ()
                                                  (let* ((_g7914279150_
                                                          (lambda (_g7914379146_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g7914379146_)))
                                                         (_g7914179172_
                                                          (lambda (_g7914379154_)
                                                            ((lambda (_L79157_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((__tmp79533 (gx#datum->syntax '#f 'if))
                                 (__tmp79501
                                  (let ((__tmp79530
                                         (let ((__tmp79532
                                                (gx#datum->syntax
                                                 '#f
                                                 'stx-pair?))
                                               (__tmp79531
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L79018_ '()))))
                                           (declare (not safe))
                                           (cons __tmp79532 __tmp79531)))
                                        (__tmp79502
                                         (let ((__tmp79504
                                                (let ((__tmp79529
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp79505
                                                       (let ((__tmp79523
                                                              (let ((__tmp79524
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp79525
                                    (let ((__tmp79526
                                           (let ((__tmp79528
                                                  (gx#datum->syntax
                                                   '#f
                                                   'syntax-e))
                                                 (__tmp79527
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L79018_ '()))))
                                             (declare (not safe))
                                             (cons __tmp79528 __tmp79527))))
                                      (declare (not safe))
                                      (cons __tmp79526 '()))))
                               (declare (not safe))
                               (cons _L79045_ __tmp79525))))
                        (declare (not safe))
                        (cons __tmp79524 '())))
                     (__tmp79506
                      (let ((__tmp79507
                             (let ((__tmp79522 (gx#datum->syntax '#f 'let))
                                   (__tmp79508
                                    (let ((__tmp79510
                                           (let ((__tmp79517
                                                  (let ((__tmp79518
                                                         (let ((__tmp79519
                                                                (let ((__tmp79521
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '##car))
                              (__tmp79520
                               (let ()
                                 (declare (not safe))
                                 (cons _L79045_ '()))))
                          (declare (not safe))
                          (cons __tmp79521 __tmp79520))))
                   (declare (not safe))
                   (cons __tmp79519 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L79073_
                                                          __tmp79518)))
                                                 (__tmp79511
                                                  (let ((__tmp79512
                                                         (let ((__tmp79513
                                                                (let ((__tmp79514
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp79516 (gx#datum->syntax '#f '##cdr))
                                     (__tmp79515
                                      (let ()
                                        (declare (not safe))
                                        (cons _L79045_ '()))))
                                 (declare (not safe))
                                 (cons __tmp79516 __tmp79515))))
                          (declare (not safe))
                          (cons __tmp79514 '()))))
                   (declare (not safe))
                   (cons _L79101_ __tmp79513))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp79512 '()))))
                                             (declare (not safe))
                                             (cons __tmp79517 __tmp79511)))
                                          (__tmp79509
                                           (let ()
                                             (declare (not safe))
                                             (cons _L79129_ '()))))
                                      (declare (not safe))
                                      (cons __tmp79510 __tmp79509))))
                               (declare (not safe))
                               (cons __tmp79522 __tmp79508))))
                        (declare (not safe))
                        (cons __tmp79507 '()))))
                 (declare (not safe))
                 (cons __tmp79523 __tmp79506))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp79529
                                                        __tmp79505)))
                                               (__tmp79503
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L79157_ '()))))
                                           (declare (not safe))
                                           (cons __tmp79504 __tmp79503))))
                                    (declare (not safe))
                                    (cons __tmp79530 __tmp79502))))
                             (declare (not safe))
                             (cons __tmp79533 __tmp79501)))))
                     _g7914379154_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g7914179172_ _E78683_))))
                                              _g7911579126_))))
                                     (_g7911379176_
                                      (_recur78685_
                                       _L78992_
                                       _L79073_
                                       (_recur78685_
                                        _L78990_
                                        _L79101_
                                        _K78691_))))))
                               _g7908779098_))))
                      (_g7908579180_ (gx#genident 'tl)))))
                _g7905979070_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g7905779184_
                                                (gx#genident 'hd)))))
                                         _g7903179042_))))
                                (_g7902979188_ (gx#genident 'e)))))
                          _g7900479015_))))
                 (_g7900279192_ _tgt78690_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont7940379404_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _hd78688_)
                                                           (if (gx#underscore?
                                                                _hd78688_)
                                                               _K78691_
                                                               (if (let ((__tmp79578
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g7871678718_)
                                    (gx#bound-identifier=?
                                     _g7871678718_
                                     _hd78688_))))
                             (declare (not safe))
                             (find __tmp79578 _kws78287_))
                           (let* ((_g7872278737_
                                   (lambda (_g7872378733_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g7872378733_)))
                                  (_g7872178788_
                                   (lambda (_g7872378741_)
                                     (if (gx#stx-pair? _g7872378741_)
                                         (let ((_e7872878744_
                                                (gx#syntax-e _g7872378741_)))
                                           (let ((_hd7872778748_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e7872878744_)))
                                                 (_tl7872678751_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e7872878744_))))
                                             (if (gx#stx-pair? _tl7872678751_)
                                                 (let ((_e7873178754_
                                                        (gx#syntax-e
                                                         _tl7872678751_)))
                                                   (let ((_hd7873078758_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e7873178754_)))
                                                         (_tl7872978761_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e7873178754_))))
                                                     (if (gx#stx-null?
                                                          _tl7872978761_)
                                                         ((lambda (_L78764_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L78766_)
                    (let ()
                      (let ((__tmp79577 (gx#datum->syntax '#f 'if))
                            (__tmp79560
                             (let ((__tmp79563
                                    (let ((__tmp79576
                                           (gx#datum->syntax '#f 'and))
                                          (__tmp79564
                                           (let ((__tmp79573
                                                  (let ((__tmp79575
                                                         (gx#datum->syntax
                                                          '#f
                                                          'identifier?))
                                                        (__tmp79574
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L78766_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp79575
                                                          __tmp79574)))
                                                 (__tmp79565
                                                  (let ((__tmp79566
                                                         (let ((__tmp79572
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'core-identifier=?))
                       (__tmp79567
                        (let ((__tmp79568
                               (let ((__tmp79569
                                      (let ((__tmp79571
                                             (gx#datum->syntax '#f 'quote))
                                            (__tmp79570
                                             (let ()
                                               (declare (not safe))
                                               (cons _L78764_ '()))))
                                        (declare (not safe))
                                        (cons __tmp79571 __tmp79570))))
                                 (declare (not safe))
                                 (cons __tmp79569 '()))))
                          (declare (not safe))
                          (cons _L78766_ __tmp79568))))
                   (declare (not safe))
                   (cons __tmp79572 __tmp79567))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp79566 '()))))
                                             (declare (not safe))
                                             (cons __tmp79573 __tmp79565))))
                                      (declare (not safe))
                                      (cons __tmp79576 __tmp79564)))
                                   (__tmp79561
                                    (let ((__tmp79562
                                           (let ()
                                             (declare (not safe))
                                             (cons _E78683_ '()))))
                                      (declare (not safe))
                                      (cons _K78691_ __tmp79562))))
                               (declare (not safe))
                               (cons __tmp79563 __tmp79561))))
                        (declare (not safe))
                        (cons __tmp79577 __tmp79560))))
                  _hd7873078758_
                  _hd7872778748_)
                 (_g7872278737_ _g7872378741_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g7872278737_
                                                  _g7872378741_))))
                                         (_g7872278737_ _g7872378741_)))))
                             (_g7872178788_ (list _tgt78690_ _hd78688_)))
                           (let* ((_g7879278807_
                                   (lambda (_g7879378803_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g7879378803_)))
                                  (_g7879178851_
                                   (lambda (_g7879378811_)
                                     (if (gx#stx-pair? _g7879378811_)
                                         (let ((_e7879878814_
                                                (gx#syntax-e _g7879378811_)))
                                           (let ((_hd7879778818_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e7879878814_)))
                                                 (_tl7879678821_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e7879878814_))))
                                             (if (gx#stx-pair? _tl7879678821_)
                                                 (let ((_e7880178824_
                                                        (gx#syntax-e
                                                         _tl7879678821_)))
                                                   (let ((_hd7880078828_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e7880178824_)))
                                                         (_tl7879978831_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e7880178824_))))
                                                     (if (gx#stx-null?
                                                          _tl7879978831_)
                                                         ((lambda (_L78834_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L78836_)
                    (let ()
                      (let ((__tmp79559 (gx#datum->syntax '#f 'let))
                            (__tmp79554
                             (let ((__tmp79556
                                    (let ((__tmp79557
                                           (let ((__tmp79558
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L78836_ '()))))
                                             (declare (not safe))
                                             (cons _L78834_ __tmp79558))))
                                      (declare (not safe))
                                      (cons __tmp79557 '())))
                                   (__tmp79555
                                    (let ()
                                      (declare (not safe))
                                      (cons _K78691_ '()))))
                               (declare (not safe))
                               (cons __tmp79556 __tmp79555))))
                        (declare (not safe))
                        (cons __tmp79559 __tmp79554))))
                  _hd7880078828_
                  _hd7879778818_)
                 (_g7879278807_ _g7879378811_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g7879278807_
                                                  _g7879378811_))))
                                         (_g7879278807_ _g7879378811_)))))
                             (_g7879178851_ (list _tgt78690_ _hd78688_)))))
                   (if (gx#stx-null? _hd78688_)
                       (let* ((_g7885578863_
                               (lambda (_g7885678859_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g7885678859_)))
                              (_g7885478881_
                               (lambda (_g7885678867_)
                                 ((lambda (_L78870_)
                                    (let ()
                                      (let ((__tmp79553
                                             (gx#datum->syntax '#f 'if))
                                            (__tmp79547
                                             (let ((__tmp79550
                                                    (let ((__tmp79552
                                                           (gx#datum->syntax
                                                            '#f
                                                            'stx-null?))
                                                          (__tmp79551
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L78870_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp79552 __tmp79551)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp79548
                                                    (let ((__tmp79549
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _E78683_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _K78691_ __tmp79549))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp79550 __tmp79548))))
                                        (declare (not safe))
                                        (cons __tmp79553 __tmp79547))))
                                  _g7885678867_))))
                         (_g7885478881_ _tgt78690_))
                       (if (gx#stx-datum? _hd78688_)
                           (let* ((_g7888578904_
                                   (lambda (_g7888678900_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g7888678900_)))
                                  (_g7888478962_
                                   (lambda (_g7888678908_)
                                     (if (gx#stx-pair? _g7888678908_)
                                         (let ((_e7889278911_
                                                (gx#syntax-e _g7888678908_)))
                                           (let ((_hd7889178915_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e7889278911_)))
                                                 (_tl7889078918_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e7889278911_))))
                                             (if (gx#stx-pair? _tl7889078918_)
                                                 (let ((_e7889578921_
                                                        (gx#syntax-e
                                                         _tl7889078918_)))
                                                   (let ((_hd7889478925_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e7889578921_)))
                                                         (_tl7889378928_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e7889578921_))))
                                                     (if (gx#stx-pair?
                                                          _tl7889378928_)
                                                         (let ((_e7889878931_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl7889378928_)))
                   (let ((_hd7889778935_
                          (let () (declare (not safe)) (##car _e7889878931_)))
                         (_tl7889678938_
                          (let () (declare (not safe)) (##cdr _e7889878931_))))
                     (if (gx#stx-null? _tl7889678938_)
                         ((lambda (_L78941_ _L78943_ _L78944_)
                            (let ()
                              (let ((__tmp79546 (gx#datum->syntax '#f 'if))
                                    (__tmp79534
                                     (let ((__tmp79537
                                            (let ((__tmp79538
                                                   (let ((__tmp79543
                                                          (let ((__tmp79545
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'stx-e))
                        (__tmp79544
                         (let () (declare (not safe)) (cons _L78944_ '()))))
                    (declare (not safe))
                    (cons __tmp79545 __tmp79544)))
                 (__tmp79539
                  (let ((__tmp79540
                         (let ((__tmp79542 (gx#datum->syntax '#f 'quote))
                               (__tmp79541
                                (let ()
                                  (declare (not safe))
                                  (cons _L78943_ '()))))
                           (declare (not safe))
                           (cons __tmp79542 __tmp79541))))
                    (declare (not safe))
                    (cons __tmp79540 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp79543
                                                           __tmp79539))))
                                              (declare (not safe))
                                              (cons _L78941_ __tmp79538)))
                                           (__tmp79535
                                            (let ((__tmp79536
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _E78683_ '()))))
                                              (declare (not safe))
                                              (cons _K78691_ __tmp79536))))
                                       (declare (not safe))
                                       (cons __tmp79537 __tmp79535))))
                                (declare (not safe))
                                (cons __tmp79546 __tmp79534))))
                          _hd7889778935_
                          _hd7889478925_
                          _hd7889178915_)
                         (_g7888578904_ _g7888678908_))))
                 (_g7888578904_ _g7888678908_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g7888578904_
                                                  _g7888678908_))))
                                         (_g7888578904_ _g7888678908_)))))
                             (_g7888478962_
                              (list _tgt78690_
                                    _hd78688_
                                    (let ((_e78966_ (gx#stx-e _hd78688_)))
                                      (if (or (keyword? _e78966_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _e78966_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (let ()
                                                (declare (not safe))
                                                (number? _e78966_))
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _stx78133_
                            _where78678_
                            _hd78688_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx7939879399_)
                                                    (let ((_e7870078980_
                                                           (gx#syntax-e
                                                            ___stx7939879399_)))
                                                      (let ((_tl7869878987_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e7870078980_)))
                    (_hd7869978984_
                     (let () (declare (not safe)) (##car _e7870078980_))))
                (___kont7940179402_ _tl7869878987_ _hd7869978984_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont7940379404_)))))))
                                  (_recur78685_
                                   _hd78680_
                                   _tgt78285_
                                   (let ((__tmp79582
                                          (gx#datum->syntax '#f 'if))
                                         (__tmp79579
                                          (let ((__tmp79580
                                                 (let ((__tmp79581
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _E78683_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _body78682_
                                                         __tmp79581))))
                                            (declare (not safe))
                                            (cons _fender78681_ __tmp79580))))
                                     (declare (not safe))
                                     (cons __tmp79582 __tmp79579))))))
                             (_generate-clauses78293_
                              (lambda (_clauses78416_)
                                (let _lp78419_ ((_rest78422_ _clauses78416_)
                                                (_E78424_ (gx#genident 'E))
                                                (_r78425_ '()))
                                  (let* ((___stx7943479435_ _rest78422_)
                                         (_g7842878440_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx7943479435_))))
                                    (let ((___kont7943779438_
                                           (lambda (_L78505_ _L78507_)
                                             (let* ((___stx7941479415_
                                                     _L78507_)
                                                    (_g7851978530_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        ___stx7941479415_))))
                                               (let ((___kont7941779418_
                                                      (lambda (_L78659_)
                                                        (if (gx#stx-null?
                                                             _L78505_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L78659_)
                             (let ((__tmp79591 (gx#stx-null? _L78659_)))
                               (declare (not safe))
                               (not __tmp79591)))
                        (let ((__tmp79583
                               (let ((__tmp79584
                                      (let ((__tmp79585
                                             (gx#stx-wrap-source
                                              (let ((__tmp79590
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp79586
                                                     (let ((__tmp79587
                                                            (let ((__tmp79588
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp79589 (gx#datum->syntax '#f 'begin)))
                             (declare (not safe))
                             (cons __tmp79589 _L78659_))))
                      (declare (not safe))
                      (cons __tmp79588 '()))))
               (declare (not safe))
               (cons '() __tmp79587))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp79590 __tmp79586))
                                              (gx#stx-source _L78507_))))
                                        (declare (not safe))
                                        (cons __tmp79585 '()))))
                                 (declare (not safe))
                                 (cons _E78424_ __tmp79584))))
                          (declare (not safe))
                          (cons __tmp79583 _r78425_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _stx78133_
                         _L78507_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _stx78133_
                     _L78507_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont7941979420_
                                                      (lambda ()
                                                        (let* ((_g7854178549_
                                                                (lambda (_g7854278545_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g7854278545_)))
                       (_g7854078638_
                        (lambda (_g7854278553_)
                          ((lambda (_L78556_)
                             (let ()
                               (let* ((_g7857278580_
                                       (lambda (_g7857378576_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g7857378576_)))
                                      (_g7857178634_
                                       (lambda (_g7857378584_)
                                         ((lambda (_L78587_)
                                            (let ()
                                              (let* ((_g7860078608_
                                                      (lambda (_g7860178604_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g7860178604_)))
                                                     (_g7859978630_
                                                      (lambda (_g7860178612_)
                                                        ((lambda (_L78615_)
                                                           (let ()
                                                             (let ()
                                                               (_lp78419_
                                                                _L78505_
                                                                _L78556_
                                                                (let ((__tmp79592
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp79593
                                      (let ()
                                        (declare (not safe))
                                        (cons _L78615_ '()))))
                                 (declare (not safe))
                                 (cons _E78424_ __tmp79593))))
                          (declare (not safe))
                          (cons __tmp79592 _r78425_))))))
                 _g7860178612_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g7859978630_
                                                 (gx#stx-wrap-source
                                                  (let ((__tmp79596
                                                         (gx#datum->syntax
                                                          '#f
                                                          'lambda))
                                                        (__tmp79594
                                                         (let ((__tmp79595
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _L78587_ '()))))
                   (declare (not safe))
                   (cons '() __tmp79595))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp79596
                                                          __tmp79594))
                                                  (gx#stx-source _L78507_))))))
                                          _g7857378584_))))
                                 (_g7857178634_
                                  (_generate-clause78290_
                                   _L78507_
                                   (let ()
                                     (declare (not safe))
                                     (cons _L78556_ '())))))))
                           _g7854278553_))))
                  (_g7854078638_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      ___stx7941479415_)
                                                     (let ((_e7852478649_
                                                            (gx#syntax-e
                                                             ___stx7941479415_)))
                                                       (let ((_tl7852278656_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e7852478649_)))
                     (_hd7852378653_
                      (let () (declare (not safe)) (##car _e7852478649_))))
                 (if (gx#identifier? _hd7852378653_)
                     (if (gx#free-identifier=? |gx[1]#_g79597_| _hd7852378653_)
                         (___kont7941779418_ _tl7852278656_)
                         (___kont7941979420_))
                     (___kont7941979420_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont7941979420_))))))
                                          (___kont7943979440_
                                           (lambda ()
                                             (let* ((_g7845178459_
                                                     (lambda (_g7845278455_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g7845278455_)))
                                                    (_g7845078484_
                                                     (lambda (_g7845278463_)
                                                       ((lambda (_L78466_)
                                                          (let ()
                                                            (let ((__tmp79598
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp79599
                                  (let ((__tmp79600
                                         (gx#stx-wrap-source
                                          (let ((__tmp79608
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp79601
                                                 (let ((__tmp79602
                                                        (let ((__tmp79603
                                                               (let ((__tmp79607
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'raise-syntax-error))
                             (__tmp79604
                              (let ((__tmp79605
                                     (let ((__tmp79606
                                            (let ()
                                              (declare (not safe))
                                              (cons _L78466_ '()))))
                                       (declare (not safe))
                                       (cons '"Bad syntax; invalid syntax-case clause"
                                             __tmp79606))))
                                (declare (not safe))
                                (cons '#f __tmp79605))))
                         (declare (not safe))
                         (cons __tmp79607 __tmp79604))))
                  (declare (not safe))
                  (cons __tmp79603 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '() __tmp79602))))
                                            (declare (not safe))
                                            (cons __tmp79608 __tmp79601))
                                          (gx#stx-source _stx78133_))))
                                    (declare (not safe))
                                    (cons __tmp79600 '()))))
                             (declare (not safe))
                             (cons _E78424_ __tmp79599))))
                      (declare (not safe))
                      (cons __tmp79598 _r78425_))))
                _g7845278463_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g7845078484_ _tgt78285_)))))
                                      (if (gx#stx-pair? ___stx7943479435_)
                                          (let ((_e7843478495_
                                                 (gx#syntax-e
                                                  ___stx7943479435_)))
                                            (let ((_tl7843278502_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e7843478495_)))
                                                  (_hd7843378499_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e7843478495_))))
                                              (___kont7943779438_
                                               _tl7843278502_
                                               _hd7843378499_)))
                                          (___kont7943979440_))))))))
                      (let* ((_bind78295_
                              (_generate-clauses78293_ _clauses78288_))
                             (_g7829878315_
                              (lambda (_g7829978311_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g7829978311_)))
                             (_g7829778412_
                              (lambda (_g7829978319_)
                                (if (gx#stx-pair/null? _g7829978319_)
                                    (let ((_g79609_
                                           (gx#syntax-split-splice
                                            _g7829978319_
                                            '0)))
                                      (begin
                                        (let ((_g79610_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g79609_)
                                                     (##vector-length _g79609_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g79610_ 2)))
                                              (error "Context expects 2 values"
                                                     _g79610_)))
                                        (let ((_target7830178322_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g79609_ 0)))
                                              (_tl7830378325_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g79609_ 1))))
                                          (if (gx#stx-null? _tl7830378325_)
                                              (letrec ((_loop7830478328_
                                                        (lambda (_hd7830278332_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind-try7830878335_)
                  (if (gx#stx-pair? _hd7830278332_)
                      (let ((_e7830578338_ (gx#syntax-e _hd7830278332_)))
                        (let ((_lp-hd7830678342_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7830578338_)))
                              (_lp-tl7830778345_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7830578338_))))
                          (_loop7830478328_
                           _lp-tl7830778345_
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd7830678342_ _bind-try7830878335_)))))
                      (let ((_bind-try7830978348_
                             (reverse _bind-try7830878335_)))
                        ((lambda (_L78352_)
                           (let ()
                             (let* ((_g7837078378_
                                     (lambda (_g7837178374_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _g7837178374_)))
                                    (_g7836978408_
                                     (lambda (_g7837178382_)
                                       ((lambda (_L78385_)
                                          (let ()
                                            (let ()
                                              (let ((__tmp79616
                                                     (gx#datum->syntax
                                                      '#f
                                                      'let*))
                                                    (__tmp79611
                                                     (let ((__tmp79614
                                                            (let ((__tmp79615
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g7839978402_ _g7840078405_)
                             (let ()
                               (declare (not safe))
                               (cons _g7839978402_ _g7840078405_)))))
                      (declare (not safe))
                      (foldr1 __tmp79615 '() _L78352_)))
                   (__tmp79612
                    (let ((__tmp79613
                           (let () (declare (not safe)) (cons _L78385_ '()))))
                      (declare (not safe))
                      (cons __tmp79613 '()))))
               (declare (not safe))
               (cons __tmp79614 __tmp79612))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp79616
                                                      __tmp79611)))))
                                        _g7837178382_))))
                               (_g7836978408_
                                (car (let ()
                                       (declare (not safe))
                                       (last _bind78295_)))))))
                         _bind-try7830978348_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop7830478328_
                                                 _target7830178322_
                                                 '()))
                                              (_g7829878315_ _g7829978319_)))))
                                    (_g7829878315_ _g7829978319_)))))
                        (_g7829778412_ _bind78295_))))))
          (let* ((_g7813978158_
                  (lambda (_g7814078154_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g7814078154_)))
                 (_g7813878281_
                  (lambda (_g7814078162_)
                    (if (gx#stx-pair? _g7814078162_)
                        (let ((_e7814678165_ (gx#syntax-e _g7814078162_)))
                          (let ((_hd7814578169_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e7814678165_)))
                                (_tl7814478172_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e7814678165_))))
                            (if (gx#stx-pair? _tl7814478172_)
                                (let ((_e7814978175_
                                       (gx#syntax-e _tl7814478172_)))
                                  (let ((_hd7814878179_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e7814978175_)))
                                        (_tl7814778182_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e7814978175_))))
                                    (if (gx#stx-pair? _tl7814778182_)
                                        (let ((_e7815278185_
                                               (gx#syntax-e _tl7814778182_)))
                                          (let ((_hd7815178189_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e7815278185_)))
                                                (_tl7815078192_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e7815278185_))))
                                            ((lambda (_L78195_
                                                      _L78197_
                                                      _L78198_)
                                               (if (and (gx#identifier-list?
                                                         _L78197_)
                                                        (gx#stx-list?
                                                         _L78195_))
                                                   (let* ((_g7821678224_
                                                           (lambda (_g7821778220_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g7821778220_)))
                                                          (_g7821578277_
                                                           (lambda (_g7821778228_)
                                                             ((lambda (_L78231_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g7824378251_
                                  (lambda (_g7824478247_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g7824478247_)))
                                 (_g7824278273_
                                  (lambda (_g7824478255_)
                                    ((lambda (_L78258_)
                                       (let ()
                                         (let ()
                                           (let ((__tmp79622
                                                  (gx#datum->syntax '#f 'let))
                                                 (__tmp79617
                                                  (let ((__tmp79619
                                                         (let ((__tmp79620
                                                                (let ((__tmp79621
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L78198_ '()))))
                          (declare (not safe))
                          (cons _L78231_ __tmp79621))))
                   (declare (not safe))
                   (cons __tmp79620 '())))
                (__tmp79618 (let () (declare (not safe)) (cons _L78258_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp79619
                                                          __tmp79618))))
                                             (declare (not safe))
                                             (cons __tmp79622 __tmp79617)))))
                                     _g7824478255_))))
                            (_g7824278273_
                             (_generate78136_
                              _L78231_
                              (gx#syntax->list _L78197_)
                              _L78195_)))))
                      _g7821778228_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g7821578277_
                                                      (gx#genident 'e)))
                                                   (_g7813978158_
                                                    _g7814078162_)))
                                             _tl7815078192_
                                             _hd7815178189_
                                             _hd7814878179_)))
                                        (_g7813978158_ _g7814078162_))))
                                (_g7813978158_ _g7814078162_))))
                        (_g7813978158_ _g7814078162_)))))
            (_g7813878281_ _stx78133_)))))))
