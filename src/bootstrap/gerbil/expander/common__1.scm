(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g134474_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134476_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134478_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134483_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134486_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134491_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134494_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134499_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134502_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134507_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134510_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134617_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj134470
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
           __obj134470
           'gerbil#AST::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134470
           'syntax
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134470
           '(e source)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134470
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134470
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134470
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134470
           '#f
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp134473 |gx[1]#_g134474_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134470
           __tmp134473
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp134475 |gx[1]#_g134476_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134470
           __tmp134475
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp134477 |gx[1]#_g134478_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134470
           __tmp134477
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp134479
               (let ((__tmp134484
                      (let ((__tmp134485 |gx[1]#_g134486_|))
                        (declare (not safe))
                        (cons 'e __tmp134485)))
                     (__tmp134480
                      (let ((__tmp134481
                             (let ((__tmp134482 |gx[1]#_g134483_|))
                               (declare (not safe))
                               (cons 'source __tmp134482))))
                        (declare (not safe))
                        (cons __tmp134481 '()))))
                 (declare (not safe))
                 (cons __tmp134484 __tmp134480))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134470
           __tmp134479
           '11
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp134487
               (let ((__tmp134492
                      (let ((__tmp134493 |gx[1]#_g134494_|))
                        (declare (not safe))
                        (cons 'e __tmp134493)))
                     (__tmp134488
                      (let ((__tmp134489
                             (let ((__tmp134490 |gx[1]#_g134491_|))
                               (declare (not safe))
                               (cons 'source __tmp134490))))
                        (declare (not safe))
                        (cons __tmp134489 '()))))
                 (declare (not safe))
                 (cons __tmp134492 __tmp134488))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134470
           __tmp134487
           '12
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp134495
               (let ((__tmp134500
                      (let ((__tmp134501 |gx[1]#_g134502_|))
                        (declare (not safe))
                        (cons 'e __tmp134501)))
                     (__tmp134496
                      (let ((__tmp134497
                             (let ((__tmp134498 |gx[1]#_g134499_|))
                               (declare (not safe))
                               (cons 'source __tmp134498))))
                        (declare (not safe))
                        (cons __tmp134497 '()))))
                 (declare (not safe))
                 (cons __tmp134500 __tmp134496))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134470
           __tmp134495
           '13
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp134503
               (let ((__tmp134508
                      (let ((__tmp134509 |gx[1]#_g134510_|))
                        (declare (not safe))
                        (cons 'e __tmp134509)))
                     (__tmp134504
                      (let ((__tmp134505
                             (let ((__tmp134506 |gx[1]#_g134507_|))
                               (declare (not safe))
                               (cons 'source __tmp134506))))
                        (declare (not safe))
                        (cons __tmp134505 '()))))
                 (declare (not safe))
                 (cons __tmp134508 __tmp134504))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134470
           __tmp134503
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj134470))
    (define |gx[:0:]#check-procedure|
      (lambda (_$stx128622_)
        (let* ((_g128626128640_
                (lambda (_g128627128636_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g128627128636_)))
               (_g128625128682_
                (lambda (_g128627128644_)
                  (if (gx#stx-pair? _g128627128644_)
                      (let ((_e128631128647_ (gx#syntax-e _g128627128644_)))
                        (let ((_hd128630128651_
                               (let ()
                                 (declare (not safe))
                                 (##car _e128631128647_)))
                              (_tl128629128654_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e128631128647_))))
                          (if (gx#stx-pair? _tl128629128654_)
                              (let ((_e128634128657_
                                     (gx#syntax-e _tl128629128654_)))
                                (let ((_hd128633128661_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e128634128657_)))
                                      (_tl128632128664_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e128634128657_))))
                                  (if (gx#stx-null? _tl128632128664_)
                                      ((lambda (_L128667_)
                                         (let ((__tmp134520
                                                (gx#datum->syntax '#f 'unless))
                                               (__tmp134511
                                                (let ((__tmp134517
                                                       (let ((__tmp134519
                                                              (gx#datum->syntax
                                                               '#f
                                                               'procedure?))
                                                             (__tmp134518
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L128667_ '()))))
                 (declare (not safe))
                 (cons __tmp134519 __tmp134518)))
              (__tmp134512
               (let ((__tmp134513
                      (let ((__tmp134516 (gx#datum->syntax '#f 'error))
                            (__tmp134514
                             (let ((__tmp134515
                                    (let ()
                                      (declare (not safe))
                                      (cons _L128667_ '()))))
                               (declare (not safe))
                               (cons '"expected procedure" __tmp134515))))
                        (declare (not safe))
                        (cons __tmp134516 __tmp134514))))
                 (declare (not safe))
                 (cons __tmp134513 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp134517
                                                        __tmp134512))))
                                           (declare (not safe))
                                           (cons __tmp134520 __tmp134511)))
                                       _hd128633128661_)
                                      (_g128626128640_ _g128627128644_))))
                              (_g128626128640_ _g128627128644_))))
                      (_g128626128640_ _g128627128644_)))))
          (_g128625128682_ _$stx128622_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_stx128686_)
        (letrec ((_generate128689_
                  (lambda (_tgt128838_ _kws128840_ _clauses128841_)
                    (letrec ((_generate-clause128843_
                              (lambda (_hd129753_ _E129755_)
                                (let* ((___stx134373134374_ _hd129753_)
                                       (_g129759129786_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx134373134374_))))
                                  (let ((___kont134376134377_
                                         (lambda (_L129882_ _L129884_)
                                           (_generate1128845_
                                            _hd129753_
                                            _L129884_
                                            '#t
                                            _L129882_
                                            _E129755_)))
                                        (___kont134378134379_
                                         (lambda (_L129834_
                                                  _L129836_
                                                  _L129837_)
                                           (_generate1128845_
                                            _hd129753_
                                            _L129837_
                                            _L129836_
                                            _L129834_
                                            _E129755_)))
                                        (___kont134380134381_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _stx128686_
                                            _hd129753_))))
                                    (if (gx#stx-pair? ___stx134373134374_)
                                        (let ((_e129765129862_
                                               (gx#syntax-e
                                                ___stx134373134374_)))
                                          (let ((_tl129763129869_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e129765129862_)))
                                                (_hd129764129866_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e129765129862_))))
                                            (if (gx#stx-pair? _tl129763129869_)
                                                (let ((_e129768129872_
                                                       (gx#syntax-e
                                                        _tl129763129869_)))
                                                  (let ((_tl129766129879_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e129768129872_)))
                                                        (_hd129767129876_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e129768129872_))))
                                                    (if (gx#stx-null?
                                                         _tl129766129879_)
                                                        (___kont134376134377_
                                                         _hd129767129876_
                                                         _hd129764129866_)
                                                        (if (gx#stx-pair?
                                                             _tl129766129879_)
                                                            (let ((_e129780129824_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl129766129879_)))
                      (let ((_tl129778129831_
                             (let ()
                               (declare (not safe))
                               (##cdr _e129780129824_)))
                            (_hd129779129828_
                             (let ()
                               (declare (not safe))
                               (##car _e129780129824_))))
                        (if (gx#stx-null? _tl129778129831_)
                            (___kont134378134379_
                             _hd129779129828_
                             _hd129767129876_
                             _hd129764129866_)
                            (___kont134380134381_))))
                    (___kont134380134381_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont134380134381_))))
                                        (___kont134380134381_))))))
                             (_generate1128845_
                              (lambda (_where129231_
                                       _hd129233_
                                       _fender129234_
                                       _body129235_
                                       _E129236_)
                                (letrec ((_recur129238_
                                          (lambda (_hd129241_
                                                   _tgt129243_
                                                   _K129244_)
                                            (let* ((___stx134419134420_
                                                    _hd129241_)
                                                   (_g129247129259_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx134419134420_))))
                                              (let ((___kont134422134423_
                                                     (lambda (_L129543_
                                                              _L129545_)
                                                       (let* ((_g129556129564_
                                                               (lambda (_g129557129560_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g129557129560_)))
                      (_g129555129745_
                       (lambda (_g129557129568_)
                         ((lambda (_L129571_)
                            (let ()
                              (let* ((_g129583129591_
                                      (lambda (_g129584129587_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g129584129587_)))
                                     (_g129582129741_
                                      (lambda (_g129584129595_)
                                        ((lambda (_L129598_)
                                           (let ()
                                             (let* ((_g129611129619_
                                                     (lambda (_g129612129615_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g129612129615_)))
                                                    (_g129610129737_
                                                     (lambda (_g129612129623_)
                                                       ((lambda (_L129626_)
                                                          (let ()
                                                            (let* ((_g129639129647_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g129640129643_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g129640129643_)))
                           (_g129638129733_
                            (lambda (_g129640129651_)
                              ((lambda (_L129654_)
                                 (let ()
                                   (let* ((_g129667129675_
                                           (lambda (_g129668129671_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g129668129671_)))
                                          (_g129666129729_
                                           (lambda (_g129668129679_)
                                             ((lambda (_L129682_)
                                                (let ()
                                                  (let* ((_g129695129703_
                                                          (lambda (_g129696129699_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g129696129699_)))
                                                         (_g129694129725_
                                                          (lambda (_g129696129707_)
                                                            ((lambda (_L129710_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((__tmp134553 (gx#datum->syntax '#f 'if))
                                 (__tmp134521
                                  (let ((__tmp134550
                                         (let ((__tmp134552
                                                (gx#datum->syntax
                                                 '#f
                                                 'stx-pair?))
                                               (__tmp134551
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L129571_ '()))))
                                           (declare (not safe))
                                           (cons __tmp134552 __tmp134551)))
                                        (__tmp134522
                                         (let ((__tmp134524
                                                (let ((__tmp134549
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp134525
                                                       (let ((__tmp134543
                                                              (let ((__tmp134544
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp134545
                                    (let ((__tmp134546
                                           (let ((__tmp134548
                                                  (gx#datum->syntax
                                                   '#f
                                                   'syntax-e))
                                                 (__tmp134547
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L129571_ '()))))
                                             (declare (not safe))
                                             (cons __tmp134548 __tmp134547))))
                                      (declare (not safe))
                                      (cons __tmp134546 '()))))
                               (declare (not safe))
                               (cons _L129598_ __tmp134545))))
                        (declare (not safe))
                        (cons __tmp134544 '())))
                     (__tmp134526
                      (let ((__tmp134527
                             (let ((__tmp134542 (gx#datum->syntax '#f 'let))
                                   (__tmp134528
                                    (let ((__tmp134530
                                           (let ((__tmp134537
                                                  (let ((__tmp134538
                                                         (let ((__tmp134539
                                                                (let ((__tmp134541
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '##car))
                              (__tmp134540
                               (let ()
                                 (declare (not safe))
                                 (cons _L129598_ '()))))
                          (declare (not safe))
                          (cons __tmp134541 __tmp134540))))
                   (declare (not safe))
                   (cons __tmp134539 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L129626_
                                                          __tmp134538)))
                                                 (__tmp134531
                                                  (let ((__tmp134532
                                                         (let ((__tmp134533
                                                                (let ((__tmp134534
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp134536
                                      (gx#datum->syntax '#f '##cdr))
                                     (__tmp134535
                                      (let ()
                                        (declare (not safe))
                                        (cons _L129598_ '()))))
                                 (declare (not safe))
                                 (cons __tmp134536 __tmp134535))))
                          (declare (not safe))
                          (cons __tmp134534 '()))))
                   (declare (not safe))
                   (cons _L129654_ __tmp134533))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp134532 '()))))
                                             (declare (not safe))
                                             (cons __tmp134537 __tmp134531)))
                                          (__tmp134529
                                           (let ()
                                             (declare (not safe))
                                             (cons _L129682_ '()))))
                                      (declare (not safe))
                                      (cons __tmp134530 __tmp134529))))
                               (declare (not safe))
                               (cons __tmp134542 __tmp134528))))
                        (declare (not safe))
                        (cons __tmp134527 '()))))
                 (declare (not safe))
                 (cons __tmp134543 __tmp134526))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp134549
                                                        __tmp134525)))
                                               (__tmp134523
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L129710_ '()))))
                                           (declare (not safe))
                                           (cons __tmp134524 __tmp134523))))
                                    (declare (not safe))
                                    (cons __tmp134550 __tmp134522))))
                             (declare (not safe))
                             (cons __tmp134553 __tmp134521)))))
                     _g129696129707_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g129694129725_
                                                     _E129236_))))
                                              _g129668129679_))))
                                     (_g129666129729_
                                      (_recur129238_
                                       _L129545_
                                       _L129626_
                                       (_recur129238_
                                        _L129543_
                                        _L129654_
                                        _K129244_))))))
                               _g129640129651_))))
                      (_g129638129733_ (gx#genident 'tl)))))
                _g129612129623_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g129610129737_
                                                (gx#genident 'hd)))))
                                         _g129584129595_))))
                                (_g129582129741_ (gx#genident 'e)))))
                          _g129557129568_))))
                 (_g129555129745_ _tgt129243_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont134424134425_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _hd129241_)
                                                           (if (gx#underscore?
                                                                _hd129241_)
                                                               _K129244_
                                                               (if (let ((__tmp134598
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g129269129271_)
                                    (gx#bound-identifier=?
                                     _g129269129271_
                                     _hd129241_))))
                             (declare (not safe))
                             (find __tmp134598 _kws128840_))
                           (let* ((_g129275129290_
                                   (lambda (_g129276129286_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g129276129286_)))
                                  (_g129274129341_
                                   (lambda (_g129276129294_)
                                     (if (gx#stx-pair? _g129276129294_)
                                         (let ((_e129281129297_
                                                (gx#syntax-e _g129276129294_)))
                                           (let ((_hd129280129301_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e129281129297_)))
                                                 (_tl129279129304_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e129281129297_))))
                                             (if (gx#stx-pair?
                                                  _tl129279129304_)
                                                 (let ((_e129284129307_
                                                        (gx#syntax-e
                                                         _tl129279129304_)))
                                                   (let ((_hd129283129311_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e129284129307_)))
                                                         (_tl129282129314_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e129284129307_))))
                                                     (if (gx#stx-null?
                                                          _tl129282129314_)
                                                         ((lambda (_L129317_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L129319_)
                    (let ()
                      (let ((__tmp134597 (gx#datum->syntax '#f 'if))
                            (__tmp134580
                             (let ((__tmp134583
                                    (let ((__tmp134596
                                           (gx#datum->syntax '#f 'and))
                                          (__tmp134584
                                           (let ((__tmp134593
                                                  (let ((__tmp134595
                                                         (gx#datum->syntax
                                                          '#f
                                                          'identifier?))
                                                        (__tmp134594
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L129319_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp134595
                                                          __tmp134594)))
                                                 (__tmp134585
                                                  (let ((__tmp134586
                                                         (let ((__tmp134592
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'core-identifier=?))
                       (__tmp134587
                        (let ((__tmp134588
                               (let ((__tmp134589
                                      (let ((__tmp134591
                                             (gx#datum->syntax '#f 'quote))
                                            (__tmp134590
                                             (let ()
                                               (declare (not safe))
                                               (cons _L129317_ '()))))
                                        (declare (not safe))
                                        (cons __tmp134591 __tmp134590))))
                                 (declare (not safe))
                                 (cons __tmp134589 '()))))
                          (declare (not safe))
                          (cons _L129319_ __tmp134588))))
                   (declare (not safe))
                   (cons __tmp134592 __tmp134587))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp134586 '()))))
                                             (declare (not safe))
                                             (cons __tmp134593 __tmp134585))))
                                      (declare (not safe))
                                      (cons __tmp134596 __tmp134584)))
                                   (__tmp134581
                                    (let ((__tmp134582
                                           (let ()
                                             (declare (not safe))
                                             (cons _E129236_ '()))))
                                      (declare (not safe))
                                      (cons _K129244_ __tmp134582))))
                               (declare (not safe))
                               (cons __tmp134583 __tmp134581))))
                        (declare (not safe))
                        (cons __tmp134597 __tmp134580))))
                  _hd129283129311_
                  _hd129280129301_)
                 (_g129275129290_ _g129276129294_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g129275129290_
                                                  _g129276129294_))))
                                         (_g129275129290_ _g129276129294_)))))
                             (_g129274129341_ (list _tgt129243_ _hd129241_)))
                           (let* ((_g129345129360_
                                   (lambda (_g129346129356_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g129346129356_)))
                                  (_g129344129404_
                                   (lambda (_g129346129364_)
                                     (if (gx#stx-pair? _g129346129364_)
                                         (let ((_e129351129367_
                                                (gx#syntax-e _g129346129364_)))
                                           (let ((_hd129350129371_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e129351129367_)))
                                                 (_tl129349129374_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e129351129367_))))
                                             (if (gx#stx-pair?
                                                  _tl129349129374_)
                                                 (let ((_e129354129377_
                                                        (gx#syntax-e
                                                         _tl129349129374_)))
                                                   (let ((_hd129353129381_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e129354129377_)))
                                                         (_tl129352129384_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e129354129377_))))
                                                     (if (gx#stx-null?
                                                          _tl129352129384_)
                                                         ((lambda (_L129387_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L129389_)
                    (let ()
                      (let ((__tmp134579 (gx#datum->syntax '#f 'let))
                            (__tmp134574
                             (let ((__tmp134576
                                    (let ((__tmp134577
                                           (let ((__tmp134578
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L129389_ '()))))
                                             (declare (not safe))
                                             (cons _L129387_ __tmp134578))))
                                      (declare (not safe))
                                      (cons __tmp134577 '())))
                                   (__tmp134575
                                    (let ()
                                      (declare (not safe))
                                      (cons _K129244_ '()))))
                               (declare (not safe))
                               (cons __tmp134576 __tmp134575))))
                        (declare (not safe))
                        (cons __tmp134579 __tmp134574))))
                  _hd129353129381_
                  _hd129350129371_)
                 (_g129345129360_ _g129346129364_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g129345129360_
                                                  _g129346129364_))))
                                         (_g129345129360_ _g129346129364_)))))
                             (_g129344129404_ (list _tgt129243_ _hd129241_)))))
                   (if (gx#stx-null? _hd129241_)
                       (let* ((_g129408129416_
                               (lambda (_g129409129412_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g129409129412_)))
                              (_g129407129434_
                               (lambda (_g129409129420_)
                                 ((lambda (_L129423_)
                                    (let ()
                                      (let ((__tmp134573
                                             (gx#datum->syntax '#f 'if))
                                            (__tmp134567
                                             (let ((__tmp134570
                                                    (let ((__tmp134572
                                                           (gx#datum->syntax
                                                            '#f
                                                            'stx-null?))
                                                          (__tmp134571
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L129423_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp134572 __tmp134571)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp134568
                                                    (let ((__tmp134569
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _E129236_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _K129244_ __tmp134569))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp134570
                                                     __tmp134568))))
                                        (declare (not safe))
                                        (cons __tmp134573 __tmp134567))))
                                  _g129409129420_))))
                         (_g129407129434_ _tgt129243_))
                       (if (gx#stx-datum? _hd129241_)
                           (let* ((_g129438129457_
                                   (lambda (_g129439129453_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g129439129453_)))
                                  (_g129437129515_
                                   (lambda (_g129439129461_)
                                     (if (gx#stx-pair? _g129439129461_)
                                         (let ((_e129445129464_
                                                (gx#syntax-e _g129439129461_)))
                                           (let ((_hd129444129468_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e129445129464_)))
                                                 (_tl129443129471_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e129445129464_))))
                                             (if (gx#stx-pair?
                                                  _tl129443129471_)
                                                 (let ((_e129448129474_
                                                        (gx#syntax-e
                                                         _tl129443129471_)))
                                                   (let ((_hd129447129478_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e129448129474_)))
                                                         (_tl129446129481_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e129448129474_))))
                                                     (if (gx#stx-pair?
                                                          _tl129446129481_)
                                                         (let ((_e129451129484_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl129446129481_)))
                   (let ((_hd129450129488_
                          (let ()
                            (declare (not safe))
                            (##car _e129451129484_)))
                         (_tl129449129491_
                          (let ()
                            (declare (not safe))
                            (##cdr _e129451129484_))))
                     (if (gx#stx-null? _tl129449129491_)
                         ((lambda (_L129494_ _L129496_ _L129497_)
                            (let ()
                              (let ((__tmp134566 (gx#datum->syntax '#f 'if))
                                    (__tmp134554
                                     (let ((__tmp134557
                                            (let ((__tmp134558
                                                   (let ((__tmp134563
                                                          (let ((__tmp134565
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'stx-e))
                        (__tmp134564
                         (let () (declare (not safe)) (cons _L129497_ '()))))
                    (declare (not safe))
                    (cons __tmp134565 __tmp134564)))
                 (__tmp134559
                  (let ((__tmp134560
                         (let ((__tmp134562 (gx#datum->syntax '#f 'quote))
                               (__tmp134561
                                (let ()
                                  (declare (not safe))
                                  (cons _L129496_ '()))))
                           (declare (not safe))
                           (cons __tmp134562 __tmp134561))))
                    (declare (not safe))
                    (cons __tmp134560 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp134563
                                                           __tmp134559))))
                                              (declare (not safe))
                                              (cons _L129494_ __tmp134558)))
                                           (__tmp134555
                                            (let ((__tmp134556
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _E129236_ '()))))
                                              (declare (not safe))
                                              (cons _K129244_ __tmp134556))))
                                       (declare (not safe))
                                       (cons __tmp134557 __tmp134555))))
                                (declare (not safe))
                                (cons __tmp134566 __tmp134554))))
                          _hd129450129488_
                          _hd129447129478_
                          _hd129444129468_)
                         (_g129438129457_ _g129439129461_))))
                 (_g129438129457_ _g129439129461_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g129438129457_
                                                  _g129439129461_))))
                                         (_g129438129457_ _g129439129461_)))))
                             (_g129437129515_
                              (list _tgt129243_
                                    _hd129241_
                                    (let ((_e129519_ (gx#stx-e _hd129241_)))
                                      (if (or (keyword? _e129519_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _e129519_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (let ()
                                                (declare (not safe))
                                                (number? _e129519_))
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _stx128686_
                            _where129231_
                            _hd129241_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx134419134420_)
                                                    (let ((_e129253129533_
                                                           (gx#syntax-e
                                                            ___stx134419134420_)))
                                                      (let ((_tl129251129540_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e129253129533_)))
                    (_hd129252129537_
                     (let () (declare (not safe)) (##car _e129253129533_))))
                (___kont134422134423_ _tl129251129540_ _hd129252129537_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont134424134425_)))))))
                                  (_recur129238_
                                   _hd129233_
                                   _tgt128838_
                                   (let ((__tmp134602
                                          (gx#datum->syntax '#f 'if))
                                         (__tmp134599
                                          (let ((__tmp134600
                                                 (let ((__tmp134601
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _E129236_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _body129235_
                                                         __tmp134601))))
                                            (declare (not safe))
                                            (cons _fender129234_
                                                  __tmp134600))))
                                     (declare (not safe))
                                     (cons __tmp134602 __tmp134599))))))
                             (_generate-clauses128846_
                              (lambda (_clauses128969_)
                                (let _lp128972_ ((_rest128975_ _clauses128969_)
                                                 (_E128977_ (gx#genident 'E))
                                                 (_r128978_ '()))
                                  (let* ((___stx134455134456_ _rest128975_)
                                         (_g128981128993_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx134455134456_))))
                                    (let ((___kont134458134459_
                                           (lambda (_L129058_ _L129060_)
                                             (let* ((___stx134435134436_
                                                     _L129060_)
                                                    (_g129072129083_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        ___stx134435134436_))))
                                               (let ((___kont134438134439_
                                                      (lambda (_L129212_)
                                                        (if (gx#stx-null?
                                                             _L129058_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L129212_)
                             (let ((__tmp134611 (gx#stx-null? _L129212_)))
                               (declare (not safe))
                               (not __tmp134611)))
                        (let ((__tmp134603
                               (let ((__tmp134604
                                      (let ((__tmp134605
                                             (gx#stx-wrap-source
                                              (let ((__tmp134610
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp134606
                                                     (let ((__tmp134607
                                                            (let ((__tmp134608
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp134609 (gx#datum->syntax '#f 'begin)))
                             (declare (not safe))
                             (cons __tmp134609 _L129212_))))
                      (declare (not safe))
                      (cons __tmp134608 '()))))
               (declare (not safe))
               (cons '() __tmp134607))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp134610 __tmp134606))
                                              (gx#stx-source _L129060_))))
                                        (declare (not safe))
                                        (cons __tmp134605 '()))))
                                 (declare (not safe))
                                 (cons _E128977_ __tmp134604))))
                          (declare (not safe))
                          (cons __tmp134603 _r128978_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _stx128686_
                         _L129060_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _stx128686_
                     _L129060_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont134440134441_
                                                      (lambda ()
                                                        (let* ((_g129094129102_
                                                                (lambda (_g129095129098_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g129095129098_)))
                       (_g129093129191_
                        (lambda (_g129095129106_)
                          ((lambda (_L129109_)
                             (let ()
                               (let* ((_g129125129133_
                                       (lambda (_g129126129129_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g129126129129_)))
                                      (_g129124129187_
                                       (lambda (_g129126129137_)
                                         ((lambda (_L129140_)
                                            (let ()
                                              (let* ((_g129153129161_
                                                      (lambda (_g129154129157_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g129154129157_)))
                                                     (_g129152129183_
                                                      (lambda (_g129154129165_)
                                                        ((lambda (_L129168_)
                                                           (let ()
                                                             (let ()
                                                               (_lp128972_
                                                                _L129058_
                                                                _L129109_
                                                                (let ((__tmp134612
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp134613
                                      (let ()
                                        (declare (not safe))
                                        (cons _L129168_ '()))))
                                 (declare (not safe))
                                 (cons _E128977_ __tmp134613))))
                          (declare (not safe))
                          (cons __tmp134612 _r128978_))))))
                 _g129154129165_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g129152129183_
                                                 (gx#stx-wrap-source
                                                  (let ((__tmp134616
                                                         (gx#datum->syntax
                                                          '#f
                                                          'lambda))
                                                        (__tmp134614
                                                         (let ((__tmp134615
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _L129140_ '()))))
                   (declare (not safe))
                   (cons '() __tmp134615))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp134616
                                                          __tmp134614))
                                                  (gx#stx-source
                                                   _L129060_))))))
                                          _g129126129137_))))
                                 (_g129124129187_
                                  (_generate-clause128843_
                                   _L129060_
                                   (let ()
                                     (declare (not safe))
                                     (cons _L129109_ '())))))))
                           _g129095129106_))))
                  (_g129093129191_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      ___stx134435134436_)
                                                     (let ((_e129077129202_
                                                            (gx#syntax-e
                                                             ___stx134435134436_)))
                                                       (let ((_tl129075129209_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e129077129202_)))
                     (_hd129076129206_
                      (let () (declare (not safe)) (##car _e129077129202_))))
                 (if (gx#identifier? _hd129076129206_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g134617_|
                          _hd129076129206_)
                         (___kont134438134439_ _tl129075129209_)
                         (___kont134440134441_))
                     (___kont134440134441_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont134440134441_))))))
                                          (___kont134460134461_
                                           (lambda ()
                                             (let* ((_g129004129012_
                                                     (lambda (_g129005129008_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g129005129008_)))
                                                    (_g129003129037_
                                                     (lambda (_g129005129016_)
                                                       ((lambda (_L129019_)
                                                          (let ()
                                                            (let ((__tmp134618
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp134619
                                  (let ((__tmp134620
                                         (gx#stx-wrap-source
                                          (let ((__tmp134628
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp134621
                                                 (let ((__tmp134622
                                                        (let ((__tmp134623
                                                               (let ((__tmp134627
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'raise-syntax-error))
                             (__tmp134624
                              (let ((__tmp134625
                                     (let ((__tmp134626
                                            (let ()
                                              (declare (not safe))
                                              (cons _L129019_ '()))))
                                       (declare (not safe))
                                       (cons '"Bad syntax; invalid syntax-case clause"
                                             __tmp134626))))
                                (declare (not safe))
                                (cons '#f __tmp134625))))
                         (declare (not safe))
                         (cons __tmp134627 __tmp134624))))
                  (declare (not safe))
                  (cons __tmp134623 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '() __tmp134622))))
                                            (declare (not safe))
                                            (cons __tmp134628 __tmp134621))
                                          (gx#stx-source _stx128686_))))
                                    (declare (not safe))
                                    (cons __tmp134620 '()))))
                             (declare (not safe))
                             (cons _E128977_ __tmp134619))))
                      (declare (not safe))
                      (cons __tmp134618 _r128978_))))
                _g129005129016_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g129003129037_
                                                _tgt128838_)))))
                                      (if (gx#stx-pair? ___stx134455134456_)
                                          (let ((_e128987129048_
                                                 (gx#syntax-e
                                                  ___stx134455134456_)))
                                            (let ((_tl128985129055_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e128987129048_)))
                                                  (_hd128986129052_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e128987129048_))))
                                              (___kont134458134459_
                                               _tl128985129055_
                                               _hd128986129052_)))
                                          (___kont134460134461_))))))))
                      (let* ((_bind128848_
                              (_generate-clauses128846_ _clauses128841_))
                             (_g128851128868_
                              (lambda (_g128852128864_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g128852128864_)))
                             (_g128850128965_
                              (lambda (_g128852128872_)
                                (if (gx#stx-pair/null? _g128852128872_)
                                    (let ((_g134629_
                                           (gx#syntax-split-splice
                                            _g128852128872_
                                            '0)))
                                      (begin
                                        (let ((_g134630_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g134629_)
                                                     (##vector-length
                                                      _g134629_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g134630_ 2)))
                                              (error "Context expects 2 values"
                                                     _g134630_)))
                                        (let ((_target128854128875_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g134629_ 0)))
                                              (_tl128856128878_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g134629_ 1))))
                                          (if (gx#stx-null? _tl128856128878_)
                                              (letrec ((_loop128857128881_
                                                        (lambda (_hd128855128885_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind-try128861128888_)
                  (if (gx#stx-pair? _hd128855128885_)
                      (let ((_e128858128891_ (gx#syntax-e _hd128855128885_)))
                        (let ((_lp-hd128859128895_
                               (let ()
                                 (declare (not safe))
                                 (##car _e128858128891_)))
                              (_lp-tl128860128898_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e128858128891_))))
                          (_loop128857128881_
                           _lp-tl128860128898_
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd128859128895_
                                   _bind-try128861128888_)))))
                      (let ((_bind-try128862128901_
                             (reverse _bind-try128861128888_)))
                        ((lambda (_L128905_)
                           (let ()
                             (let* ((_g128923128931_
                                     (lambda (_g128924128927_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _g128924128927_)))
                                    (_g128922128961_
                                     (lambda (_g128924128935_)
                                       ((lambda (_L128938_)
                                          (let ()
                                            (let ()
                                              (let ((__tmp134636
                                                     (gx#datum->syntax
                                                      '#f
                                                      'let*))
                                                    (__tmp134631
                                                     (let ((__tmp134634
                                                            (let ((__tmp134635
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g128952128955_ _g128953128958_)
                             (let ()
                               (declare (not safe))
                               (cons _g128952128955_ _g128953128958_)))))
                      (declare (not safe))
                      (foldr1 __tmp134635 '() _L128905_)))
                   (__tmp134632
                    (let ((__tmp134633
                           (let () (declare (not safe)) (cons _L128938_ '()))))
                      (declare (not safe))
                      (cons __tmp134633 '()))))
               (declare (not safe))
               (cons __tmp134634 __tmp134632))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp134636
                                                      __tmp134631)))))
                                        _g128924128935_))))
                               (_g128922128961_
                                (car (let ()
                                       (declare (not safe))
                                       (last _bind128848_)))))))
                         _bind-try128862128901_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop128857128881_
                                                 _target128854128875_
                                                 '()))
                                              (_g128851128868_
                                               _g128852128872_)))))
                                    (_g128851128868_ _g128852128872_)))))
                        (_g128850128965_ _bind128848_))))))
          (let* ((_g128692128711_
                  (lambda (_g128693128707_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g128693128707_)))
                 (_g128691128834_
                  (lambda (_g128693128715_)
                    (if (gx#stx-pair? _g128693128715_)
                        (let ((_e128699128718_ (gx#syntax-e _g128693128715_)))
                          (let ((_hd128698128722_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e128699128718_)))
                                (_tl128697128725_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e128699128718_))))
                            (if (gx#stx-pair? _tl128697128725_)
                                (let ((_e128702128728_
                                       (gx#syntax-e _tl128697128725_)))
                                  (let ((_hd128701128732_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e128702128728_)))
                                        (_tl128700128735_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e128702128728_))))
                                    (if (gx#stx-pair? _tl128700128735_)
                                        (let ((_e128705128738_
                                               (gx#syntax-e _tl128700128735_)))
                                          (let ((_hd128704128742_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e128705128738_)))
                                                (_tl128703128745_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e128705128738_))))
                                            ((lambda (_L128748_
                                                      _L128750_
                                                      _L128751_)
                                               (if (and (gx#identifier-list?
                                                         _L128750_)
                                                        (gx#stx-list?
                                                         _L128748_))
                                                   (let* ((_g128769128777_
                                                           (lambda (_g128770128773_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g128770128773_)))
                                                          (_g128768128830_
                                                           (lambda (_g128770128781_)
                                                             ((lambda (_L128784_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g128796128804_
                                  (lambda (_g128797128800_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g128797128800_)))
                                 (_g128795128826_
                                  (lambda (_g128797128808_)
                                    ((lambda (_L128811_)
                                       (let ()
                                         (let ()
                                           (let ((__tmp134642
                                                  (gx#datum->syntax '#f 'let))
                                                 (__tmp134637
                                                  (let ((__tmp134639
                                                         (let ((__tmp134640
                                                                (let ((__tmp134641
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L128751_ '()))))
                          (declare (not safe))
                          (cons _L128784_ __tmp134641))))
                   (declare (not safe))
                   (cons __tmp134640 '())))
                (__tmp134638
                 (let () (declare (not safe)) (cons _L128811_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp134639
                                                          __tmp134638))))
                                             (declare (not safe))
                                             (cons __tmp134642 __tmp134637)))))
                                     _g128797128808_))))
                            (_g128795128826_
                             (_generate128689_
                              _L128784_
                              (gx#syntax->list _L128750_)
                              _L128748_)))))
                      _g128770128781_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g128768128830_
                                                      (gx#genident 'e)))
                                                   (_g128692128711_
                                                    _g128693128715_)))
                                             _tl128703128745_
                                             _hd128704128742_
                                             _hd128701128732_)))
                                        (_g128692128711_ _g128693128715_))))
                                (_g128692128711_ _g128693128715_))))
                        (_g128692128711_ _g128693128715_)))))
            (_g128691128834_ _stx128686_)))))))
