(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g134428_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134430_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134432_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134437_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134440_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134445_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134448_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134453_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134456_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134461_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134464_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g134571_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj134424
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
           __obj134424
           'gerbil#AST::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134424
           'syntax
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134424
           '(e source)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134424
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134424
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134424
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134424
           '#f
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp134427 |gx[1]#_g134428_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134424
           __tmp134427
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp134429 |gx[1]#_g134430_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134424
           __tmp134429
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp134431 |gx[1]#_g134432_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134424
           __tmp134431
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp134433
               (let ((__tmp134438
                      (let ((__tmp134439 |gx[1]#_g134440_|))
                        (declare (not safe))
                        (cons 'e __tmp134439)))
                     (__tmp134434
                      (let ((__tmp134435
                             (let ((__tmp134436 |gx[1]#_g134437_|))
                               (declare (not safe))
                               (cons 'source __tmp134436))))
                        (declare (not safe))
                        (cons __tmp134435 '()))))
                 (declare (not safe))
                 (cons __tmp134438 __tmp134434))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134424
           __tmp134433
           '11
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp134441
               (let ((__tmp134446
                      (let ((__tmp134447 |gx[1]#_g134448_|))
                        (declare (not safe))
                        (cons 'e __tmp134447)))
                     (__tmp134442
                      (let ((__tmp134443
                             (let ((__tmp134444 |gx[1]#_g134445_|))
                               (declare (not safe))
                               (cons 'source __tmp134444))))
                        (declare (not safe))
                        (cons __tmp134443 '()))))
                 (declare (not safe))
                 (cons __tmp134446 __tmp134442))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134424
           __tmp134441
           '12
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp134449
               (let ((__tmp134454
                      (let ((__tmp134455 |gx[1]#_g134456_|))
                        (declare (not safe))
                        (cons 'e __tmp134455)))
                     (__tmp134450
                      (let ((__tmp134451
                             (let ((__tmp134452 |gx[1]#_g134453_|))
                               (declare (not safe))
                               (cons 'source __tmp134452))))
                        (declare (not safe))
                        (cons __tmp134451 '()))))
                 (declare (not safe))
                 (cons __tmp134454 __tmp134450))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134424
           __tmp134449
           '13
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp134457
               (let ((__tmp134462
                      (let ((__tmp134463 |gx[1]#_g134464_|))
                        (declare (not safe))
                        (cons 'e __tmp134463)))
                     (__tmp134458
                      (let ((__tmp134459
                             (let ((__tmp134460 |gx[1]#_g134461_|))
                               (declare (not safe))
                               (cons 'source __tmp134460))))
                        (declare (not safe))
                        (cons __tmp134459 '()))))
                 (declare (not safe))
                 (cons __tmp134462 __tmp134458))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj134424
           __tmp134457
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj134424))
    (define |gx[:0:]#check-procedure|
      (lambda (_$stx128576_)
        (let* ((_g128580128594_
                (lambda (_g128581128590_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g128581128590_)))
               (_g128579128636_
                (lambda (_g128581128598_)
                  (if (gx#stx-pair? _g128581128598_)
                      (let ((_e128585128601_ (gx#syntax-e _g128581128598_)))
                        (let ((_hd128584128605_
                               (let ()
                                 (declare (not safe))
                                 (##car _e128585128601_)))
                              (_tl128583128608_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e128585128601_))))
                          (if (gx#stx-pair? _tl128583128608_)
                              (let ((_e128588128611_
                                     (gx#syntax-e _tl128583128608_)))
                                (let ((_hd128587128615_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e128588128611_)))
                                      (_tl128586128618_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e128588128611_))))
                                  (if (gx#stx-null? _tl128586128618_)
                                      ((lambda (_L128621_)
                                         (let ((__tmp134474
                                                (gx#datum->syntax '#f 'unless))
                                               (__tmp134465
                                                (let ((__tmp134471
                                                       (let ((__tmp134473
                                                              (gx#datum->syntax
                                                               '#f
                                                               'procedure?))
                                                             (__tmp134472
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L128621_ '()))))
                 (declare (not safe))
                 (cons __tmp134473 __tmp134472)))
              (__tmp134466
               (let ((__tmp134467
                      (let ((__tmp134470 (gx#datum->syntax '#f 'error))
                            (__tmp134468
                             (let ((__tmp134469
                                    (let ()
                                      (declare (not safe))
                                      (cons _L128621_ '()))))
                               (declare (not safe))
                               (cons '"expected procedure" __tmp134469))))
                        (declare (not safe))
                        (cons __tmp134470 __tmp134468))))
                 (declare (not safe))
                 (cons __tmp134467 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp134471
                                                        __tmp134466))))
                                           (declare (not safe))
                                           (cons __tmp134474 __tmp134465)))
                                       _hd128587128615_)
                                      (_g128580128594_ _g128581128598_))))
                              (_g128580128594_ _g128581128598_))))
                      (_g128580128594_ _g128581128598_)))))
          (_g128579128636_ _$stx128576_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_stx128640_)
        (letrec ((_generate128643_
                  (lambda (_tgt128792_ _kws128794_ _clauses128795_)
                    (letrec ((_generate-clause128797_
                              (lambda (_hd129707_ _E129709_)
                                (let* ((___stx134327134328_ _hd129707_)
                                       (_g129713129740_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx134327134328_))))
                                  (let ((___kont134330134331_
                                         (lambda (_L129836_ _L129838_)
                                           (_generate1128799_
                                            _hd129707_
                                            _L129838_
                                            '#t
                                            _L129836_
                                            _E129709_)))
                                        (___kont134332134333_
                                         (lambda (_L129788_
                                                  _L129790_
                                                  _L129791_)
                                           (_generate1128799_
                                            _hd129707_
                                            _L129791_
                                            _L129790_
                                            _L129788_
                                            _E129709_)))
                                        (___kont134334134335_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _stx128640_
                                            _hd129707_))))
                                    (if (gx#stx-pair? ___stx134327134328_)
                                        (let ((_e129719129816_
                                               (gx#syntax-e
                                                ___stx134327134328_)))
                                          (let ((_tl129717129823_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e129719129816_)))
                                                (_hd129718129820_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e129719129816_))))
                                            (if (gx#stx-pair? _tl129717129823_)
                                                (let ((_e129722129826_
                                                       (gx#syntax-e
                                                        _tl129717129823_)))
                                                  (let ((_tl129720129833_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e129722129826_)))
                                                        (_hd129721129830_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e129722129826_))))
                                                    (if (gx#stx-null?
                                                         _tl129720129833_)
                                                        (___kont134330134331_
                                                         _hd129721129830_
                                                         _hd129718129820_)
                                                        (if (gx#stx-pair?
                                                             _tl129720129833_)
                                                            (let ((_e129734129778_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl129720129833_)))
                      (let ((_tl129732129785_
                             (let ()
                               (declare (not safe))
                               (##cdr _e129734129778_)))
                            (_hd129733129782_
                             (let ()
                               (declare (not safe))
                               (##car _e129734129778_))))
                        (if (gx#stx-null? _tl129732129785_)
                            (___kont134332134333_
                             _hd129733129782_
                             _hd129721129830_
                             _hd129718129820_)
                            (___kont134334134335_))))
                    (___kont134334134335_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont134334134335_))))
                                        (___kont134334134335_))))))
                             (_generate1128799_
                              (lambda (_where129185_
                                       _hd129187_
                                       _fender129188_
                                       _body129189_
                                       _E129190_)
                                (letrec ((_recur129192_
                                          (lambda (_hd129195_
                                                   _tgt129197_
                                                   _K129198_)
                                            (let* ((___stx134373134374_
                                                    _hd129195_)
                                                   (_g129201129213_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx134373134374_))))
                                              (let ((___kont134376134377_
                                                     (lambda (_L129497_
                                                              _L129499_)
                                                       (let* ((_g129510129518_
                                                               (lambda (_g129511129514_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g129511129514_)))
                      (_g129509129699_
                       (lambda (_g129511129522_)
                         ((lambda (_L129525_)
                            (let ()
                              (let* ((_g129537129545_
                                      (lambda (_g129538129541_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g129538129541_)))
                                     (_g129536129695_
                                      (lambda (_g129538129549_)
                                        ((lambda (_L129552_)
                                           (let ()
                                             (let* ((_g129565129573_
                                                     (lambda (_g129566129569_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g129566129569_)))
                                                    (_g129564129691_
                                                     (lambda (_g129566129577_)
                                                       ((lambda (_L129580_)
                                                          (let ()
                                                            (let* ((_g129593129601_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g129594129597_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g129594129597_)))
                           (_g129592129687_
                            (lambda (_g129594129605_)
                              ((lambda (_L129608_)
                                 (let ()
                                   (let* ((_g129621129629_
                                           (lambda (_g129622129625_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g129622129625_)))
                                          (_g129620129683_
                                           (lambda (_g129622129633_)
                                             ((lambda (_L129636_)
                                                (let ()
                                                  (let* ((_g129649129657_
                                                          (lambda (_g129650129653_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g129650129653_)))
                                                         (_g129648129679_
                                                          (lambda (_g129650129661_)
                                                            ((lambda (_L129664_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((__tmp134507 (gx#datum->syntax '#f 'if))
                                 (__tmp134475
                                  (let ((__tmp134504
                                         (let ((__tmp134506
                                                (gx#datum->syntax
                                                 '#f
                                                 'stx-pair?))
                                               (__tmp134505
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L129525_ '()))))
                                           (declare (not safe))
                                           (cons __tmp134506 __tmp134505)))
                                        (__tmp134476
                                         (let ((__tmp134478
                                                (let ((__tmp134503
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp134479
                                                       (let ((__tmp134497
                                                              (let ((__tmp134498
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp134499
                                    (let ((__tmp134500
                                           (let ((__tmp134502
                                                  (gx#datum->syntax
                                                   '#f
                                                   'syntax-e))
                                                 (__tmp134501
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L129525_ '()))))
                                             (declare (not safe))
                                             (cons __tmp134502 __tmp134501))))
                                      (declare (not safe))
                                      (cons __tmp134500 '()))))
                               (declare (not safe))
                               (cons _L129552_ __tmp134499))))
                        (declare (not safe))
                        (cons __tmp134498 '())))
                     (__tmp134480
                      (let ((__tmp134481
                             (let ((__tmp134496 (gx#datum->syntax '#f 'let))
                                   (__tmp134482
                                    (let ((__tmp134484
                                           (let ((__tmp134491
                                                  (let ((__tmp134492
                                                         (let ((__tmp134493
                                                                (let ((__tmp134495
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '##car))
                              (__tmp134494
                               (let ()
                                 (declare (not safe))
                                 (cons _L129552_ '()))))
                          (declare (not safe))
                          (cons __tmp134495 __tmp134494))))
                   (declare (not safe))
                   (cons __tmp134493 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L129580_
                                                          __tmp134492)))
                                                 (__tmp134485
                                                  (let ((__tmp134486
                                                         (let ((__tmp134487
                                                                (let ((__tmp134488
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp134490
                                      (gx#datum->syntax '#f '##cdr))
                                     (__tmp134489
                                      (let ()
                                        (declare (not safe))
                                        (cons _L129552_ '()))))
                                 (declare (not safe))
                                 (cons __tmp134490 __tmp134489))))
                          (declare (not safe))
                          (cons __tmp134488 '()))))
                   (declare (not safe))
                   (cons _L129608_ __tmp134487))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp134486 '()))))
                                             (declare (not safe))
                                             (cons __tmp134491 __tmp134485)))
                                          (__tmp134483
                                           (let ()
                                             (declare (not safe))
                                             (cons _L129636_ '()))))
                                      (declare (not safe))
                                      (cons __tmp134484 __tmp134483))))
                               (declare (not safe))
                               (cons __tmp134496 __tmp134482))))
                        (declare (not safe))
                        (cons __tmp134481 '()))))
                 (declare (not safe))
                 (cons __tmp134497 __tmp134480))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp134503
                                                        __tmp134479)))
                                               (__tmp134477
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L129664_ '()))))
                                           (declare (not safe))
                                           (cons __tmp134478 __tmp134477))))
                                    (declare (not safe))
                                    (cons __tmp134504 __tmp134476))))
                             (declare (not safe))
                             (cons __tmp134507 __tmp134475)))))
                     _g129650129661_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g129648129679_
                                                     _E129190_))))
                                              _g129622129633_))))
                                     (_g129620129683_
                                      (_recur129192_
                                       _L129499_
                                       _L129580_
                                       (_recur129192_
                                        _L129497_
                                        _L129608_
                                        _K129198_))))))
                               _g129594129605_))))
                      (_g129592129687_ (gx#genident 'tl)))))
                _g129566129577_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g129564129691_
                                                (gx#genident 'hd)))))
                                         _g129538129549_))))
                                (_g129536129695_ (gx#genident 'e)))))
                          _g129511129522_))))
                 (_g129509129699_ _tgt129197_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont134378134379_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _hd129195_)
                                                           (if (gx#underscore?
                                                                _hd129195_)
                                                               _K129198_
                                                               (if (let ((__tmp134552
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g129223129225_)
                                    (gx#bound-identifier=?
                                     _g129223129225_
                                     _hd129195_))))
                             (declare (not safe))
                             (find __tmp134552 _kws128794_))
                           (let* ((_g129229129244_
                                   (lambda (_g129230129240_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g129230129240_)))
                                  (_g129228129295_
                                   (lambda (_g129230129248_)
                                     (if (gx#stx-pair? _g129230129248_)
                                         (let ((_e129235129251_
                                                (gx#syntax-e _g129230129248_)))
                                           (let ((_hd129234129255_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e129235129251_)))
                                                 (_tl129233129258_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e129235129251_))))
                                             (if (gx#stx-pair?
                                                  _tl129233129258_)
                                                 (let ((_e129238129261_
                                                        (gx#syntax-e
                                                         _tl129233129258_)))
                                                   (let ((_hd129237129265_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e129238129261_)))
                                                         (_tl129236129268_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e129238129261_))))
                                                     (if (gx#stx-null?
                                                          _tl129236129268_)
                                                         ((lambda (_L129271_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L129273_)
                    (let ()
                      (let ((__tmp134551 (gx#datum->syntax '#f 'if))
                            (__tmp134534
                             (let ((__tmp134537
                                    (let ((__tmp134550
                                           (gx#datum->syntax '#f 'and))
                                          (__tmp134538
                                           (let ((__tmp134547
                                                  (let ((__tmp134549
                                                         (gx#datum->syntax
                                                          '#f
                                                          'identifier?))
                                                        (__tmp134548
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L129273_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp134549
                                                          __tmp134548)))
                                                 (__tmp134539
                                                  (let ((__tmp134540
                                                         (let ((__tmp134546
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'core-identifier=?))
                       (__tmp134541
                        (let ((__tmp134542
                               (let ((__tmp134543
                                      (let ((__tmp134545
                                             (gx#datum->syntax '#f 'quote))
                                            (__tmp134544
                                             (let ()
                                               (declare (not safe))
                                               (cons _L129271_ '()))))
                                        (declare (not safe))
                                        (cons __tmp134545 __tmp134544))))
                                 (declare (not safe))
                                 (cons __tmp134543 '()))))
                          (declare (not safe))
                          (cons _L129273_ __tmp134542))))
                   (declare (not safe))
                   (cons __tmp134546 __tmp134541))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp134540 '()))))
                                             (declare (not safe))
                                             (cons __tmp134547 __tmp134539))))
                                      (declare (not safe))
                                      (cons __tmp134550 __tmp134538)))
                                   (__tmp134535
                                    (let ((__tmp134536
                                           (let ()
                                             (declare (not safe))
                                             (cons _E129190_ '()))))
                                      (declare (not safe))
                                      (cons _K129198_ __tmp134536))))
                               (declare (not safe))
                               (cons __tmp134537 __tmp134535))))
                        (declare (not safe))
                        (cons __tmp134551 __tmp134534))))
                  _hd129237129265_
                  _hd129234129255_)
                 (_g129229129244_ _g129230129248_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g129229129244_
                                                  _g129230129248_))))
                                         (_g129229129244_ _g129230129248_)))))
                             (_g129228129295_ (list _tgt129197_ _hd129195_)))
                           (let* ((_g129299129314_
                                   (lambda (_g129300129310_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g129300129310_)))
                                  (_g129298129358_
                                   (lambda (_g129300129318_)
                                     (if (gx#stx-pair? _g129300129318_)
                                         (let ((_e129305129321_
                                                (gx#syntax-e _g129300129318_)))
                                           (let ((_hd129304129325_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e129305129321_)))
                                                 (_tl129303129328_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e129305129321_))))
                                             (if (gx#stx-pair?
                                                  _tl129303129328_)
                                                 (let ((_e129308129331_
                                                        (gx#syntax-e
                                                         _tl129303129328_)))
                                                   (let ((_hd129307129335_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e129308129331_)))
                                                         (_tl129306129338_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e129308129331_))))
                                                     (if (gx#stx-null?
                                                          _tl129306129338_)
                                                         ((lambda (_L129341_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L129343_)
                    (let ()
                      (let ((__tmp134533 (gx#datum->syntax '#f 'let))
                            (__tmp134528
                             (let ((__tmp134530
                                    (let ((__tmp134531
                                           (let ((__tmp134532
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L129343_ '()))))
                                             (declare (not safe))
                                             (cons _L129341_ __tmp134532))))
                                      (declare (not safe))
                                      (cons __tmp134531 '())))
                                   (__tmp134529
                                    (let ()
                                      (declare (not safe))
                                      (cons _K129198_ '()))))
                               (declare (not safe))
                               (cons __tmp134530 __tmp134529))))
                        (declare (not safe))
                        (cons __tmp134533 __tmp134528))))
                  _hd129307129335_
                  _hd129304129325_)
                 (_g129299129314_ _g129300129318_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g129299129314_
                                                  _g129300129318_))))
                                         (_g129299129314_ _g129300129318_)))))
                             (_g129298129358_ (list _tgt129197_ _hd129195_)))))
                   (if (gx#stx-null? _hd129195_)
                       (let* ((_g129362129370_
                               (lambda (_g129363129366_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g129363129366_)))
                              (_g129361129388_
                               (lambda (_g129363129374_)
                                 ((lambda (_L129377_)
                                    (let ()
                                      (let ((__tmp134527
                                             (gx#datum->syntax '#f 'if))
                                            (__tmp134521
                                             (let ((__tmp134524
                                                    (let ((__tmp134526
                                                           (gx#datum->syntax
                                                            '#f
                                                            'stx-null?))
                                                          (__tmp134525
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L129377_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp134526 __tmp134525)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp134522
                                                    (let ((__tmp134523
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _E129190_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _K129198_ __tmp134523))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp134524
                                                     __tmp134522))))
                                        (declare (not safe))
                                        (cons __tmp134527 __tmp134521))))
                                  _g129363129374_))))
                         (_g129361129388_ _tgt129197_))
                       (if (gx#stx-datum? _hd129195_)
                           (let* ((_g129392129411_
                                   (lambda (_g129393129407_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g129393129407_)))
                                  (_g129391129469_
                                   (lambda (_g129393129415_)
                                     (if (gx#stx-pair? _g129393129415_)
                                         (let ((_e129399129418_
                                                (gx#syntax-e _g129393129415_)))
                                           (let ((_hd129398129422_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e129399129418_)))
                                                 (_tl129397129425_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e129399129418_))))
                                             (if (gx#stx-pair?
                                                  _tl129397129425_)
                                                 (let ((_e129402129428_
                                                        (gx#syntax-e
                                                         _tl129397129425_)))
                                                   (let ((_hd129401129432_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e129402129428_)))
                                                         (_tl129400129435_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e129402129428_))))
                                                     (if (gx#stx-pair?
                                                          _tl129400129435_)
                                                         (let ((_e129405129438_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl129400129435_)))
                   (let ((_hd129404129442_
                          (let ()
                            (declare (not safe))
                            (##car _e129405129438_)))
                         (_tl129403129445_
                          (let ()
                            (declare (not safe))
                            (##cdr _e129405129438_))))
                     (if (gx#stx-null? _tl129403129445_)
                         ((lambda (_L129448_ _L129450_ _L129451_)
                            (let ()
                              (let ((__tmp134520 (gx#datum->syntax '#f 'if))
                                    (__tmp134508
                                     (let ((__tmp134511
                                            (let ((__tmp134512
                                                   (let ((__tmp134517
                                                          (let ((__tmp134519
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'stx-e))
                        (__tmp134518
                         (let () (declare (not safe)) (cons _L129451_ '()))))
                    (declare (not safe))
                    (cons __tmp134519 __tmp134518)))
                 (__tmp134513
                  (let ((__tmp134514
                         (let ((__tmp134516 (gx#datum->syntax '#f 'quote))
                               (__tmp134515
                                (let ()
                                  (declare (not safe))
                                  (cons _L129450_ '()))))
                           (declare (not safe))
                           (cons __tmp134516 __tmp134515))))
                    (declare (not safe))
                    (cons __tmp134514 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp134517
                                                           __tmp134513))))
                                              (declare (not safe))
                                              (cons _L129448_ __tmp134512)))
                                           (__tmp134509
                                            (let ((__tmp134510
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _E129190_ '()))))
                                              (declare (not safe))
                                              (cons _K129198_ __tmp134510))))
                                       (declare (not safe))
                                       (cons __tmp134511 __tmp134509))))
                                (declare (not safe))
                                (cons __tmp134520 __tmp134508))))
                          _hd129404129442_
                          _hd129401129432_
                          _hd129398129422_)
                         (_g129392129411_ _g129393129415_))))
                 (_g129392129411_ _g129393129415_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g129392129411_
                                                  _g129393129415_))))
                                         (_g129392129411_ _g129393129415_)))))
                             (_g129391129469_
                              (list _tgt129197_
                                    _hd129195_
                                    (let ((_e129473_ (gx#stx-e _hd129195_)))
                                      (if (or (keyword? _e129473_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _e129473_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (let ()
                                                (declare (not safe))
                                                (number? _e129473_))
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _stx128640_
                            _where129185_
                            _hd129195_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx134373134374_)
                                                    (let ((_e129207129487_
                                                           (gx#syntax-e
                                                            ___stx134373134374_)))
                                                      (let ((_tl129205129494_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e129207129487_)))
                    (_hd129206129491_
                     (let () (declare (not safe)) (##car _e129207129487_))))
                (___kont134376134377_ _tl129205129494_ _hd129206129491_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont134378134379_)))))))
                                  (_recur129192_
                                   _hd129187_
                                   _tgt128792_
                                   (let ((__tmp134556
                                          (gx#datum->syntax '#f 'if))
                                         (__tmp134553
                                          (let ((__tmp134554
                                                 (let ((__tmp134555
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _E129190_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _body129189_
                                                         __tmp134555))))
                                            (declare (not safe))
                                            (cons _fender129188_
                                                  __tmp134554))))
                                     (declare (not safe))
                                     (cons __tmp134556 __tmp134553))))))
                             (_generate-clauses128800_
                              (lambda (_clauses128923_)
                                (let _lp128926_ ((_rest128929_ _clauses128923_)
                                                 (_E128931_ (gx#genident 'E))
                                                 (_r128932_ '()))
                                  (let* ((___stx134409134410_ _rest128929_)
                                         (_g128935128947_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx134409134410_))))
                                    (let ((___kont134412134413_
                                           (lambda (_L129012_ _L129014_)
                                             (let* ((___stx134389134390_
                                                     _L129014_)
                                                    (_g129026129037_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        ___stx134389134390_))))
                                               (let ((___kont134392134393_
                                                      (lambda (_L129166_)
                                                        (if (gx#stx-null?
                                                             _L129012_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L129166_)
                             (let ((__tmp134565 (gx#stx-null? _L129166_)))
                               (declare (not safe))
                               (not __tmp134565)))
                        (let ((__tmp134557
                               (let ((__tmp134558
                                      (let ((__tmp134559
                                             (gx#stx-wrap-source
                                              (let ((__tmp134564
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp134560
                                                     (let ((__tmp134561
                                                            (let ((__tmp134562
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp134563 (gx#datum->syntax '#f 'begin)))
                             (declare (not safe))
                             (cons __tmp134563 _L129166_))))
                      (declare (not safe))
                      (cons __tmp134562 '()))))
               (declare (not safe))
               (cons '() __tmp134561))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp134564 __tmp134560))
                                              (gx#stx-source _L129014_))))
                                        (declare (not safe))
                                        (cons __tmp134559 '()))))
                                 (declare (not safe))
                                 (cons _E128931_ __tmp134558))))
                          (declare (not safe))
                          (cons __tmp134557 _r128932_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _stx128640_
                         _L129014_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _stx128640_
                     _L129014_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont134394134395_
                                                      (lambda ()
                                                        (let* ((_g129048129056_
                                                                (lambda (_g129049129052_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g129049129052_)))
                       (_g129047129145_
                        (lambda (_g129049129060_)
                          ((lambda (_L129063_)
                             (let ()
                               (let* ((_g129079129087_
                                       (lambda (_g129080129083_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g129080129083_)))
                                      (_g129078129141_
                                       (lambda (_g129080129091_)
                                         ((lambda (_L129094_)
                                            (let ()
                                              (let* ((_g129107129115_
                                                      (lambda (_g129108129111_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g129108129111_)))
                                                     (_g129106129137_
                                                      (lambda (_g129108129119_)
                                                        ((lambda (_L129122_)
                                                           (let ()
                                                             (let ()
                                                               (_lp128926_
                                                                _L129012_
                                                                _L129063_
                                                                (let ((__tmp134566
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp134567
                                      (let ()
                                        (declare (not safe))
                                        (cons _L129122_ '()))))
                                 (declare (not safe))
                                 (cons _E128931_ __tmp134567))))
                          (declare (not safe))
                          (cons __tmp134566 _r128932_))))))
                 _g129108129119_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g129106129137_
                                                 (gx#stx-wrap-source
                                                  (let ((__tmp134570
                                                         (gx#datum->syntax
                                                          '#f
                                                          'lambda))
                                                        (__tmp134568
                                                         (let ((__tmp134569
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _L129094_ '()))))
                   (declare (not safe))
                   (cons '() __tmp134569))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp134570
                                                          __tmp134568))
                                                  (gx#stx-source
                                                   _L129014_))))))
                                          _g129080129091_))))
                                 (_g129078129141_
                                  (_generate-clause128797_
                                   _L129014_
                                   (let ()
                                     (declare (not safe))
                                     (cons _L129063_ '())))))))
                           _g129049129060_))))
                  (_g129047129145_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      ___stx134389134390_)
                                                     (let ((_e129031129156_
                                                            (gx#syntax-e
                                                             ___stx134389134390_)))
                                                       (let ((_tl129029129163_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e129031129156_)))
                     (_hd129030129160_
                      (let () (declare (not safe)) (##car _e129031129156_))))
                 (if (gx#identifier? _hd129030129160_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g134571_|
                          _hd129030129160_)
                         (___kont134392134393_ _tl129029129163_)
                         (___kont134394134395_))
                     (___kont134394134395_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont134394134395_))))))
                                          (___kont134414134415_
                                           (lambda ()
                                             (let* ((_g128958128966_
                                                     (lambda (_g128959128962_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g128959128962_)))
                                                    (_g128957128991_
                                                     (lambda (_g128959128970_)
                                                       ((lambda (_L128973_)
                                                          (let ()
                                                            (let ((__tmp134572
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp134573
                                  (let ((__tmp134574
                                         (gx#stx-wrap-source
                                          (let ((__tmp134582
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp134575
                                                 (let ((__tmp134576
                                                        (let ((__tmp134577
                                                               (let ((__tmp134581
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'raise-syntax-error))
                             (__tmp134578
                              (let ((__tmp134579
                                     (let ((__tmp134580
                                            (let ()
                                              (declare (not safe))
                                              (cons _L128973_ '()))))
                                       (declare (not safe))
                                       (cons '"Bad syntax; invalid syntax-case clause"
                                             __tmp134580))))
                                (declare (not safe))
                                (cons '#f __tmp134579))))
                         (declare (not safe))
                         (cons __tmp134581 __tmp134578))))
                  (declare (not safe))
                  (cons __tmp134577 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '() __tmp134576))))
                                            (declare (not safe))
                                            (cons __tmp134582 __tmp134575))
                                          (gx#stx-source _stx128640_))))
                                    (declare (not safe))
                                    (cons __tmp134574 '()))))
                             (declare (not safe))
                             (cons _E128931_ __tmp134573))))
                      (declare (not safe))
                      (cons __tmp134572 _r128932_))))
                _g128959128970_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g128957128991_
                                                _tgt128792_)))))
                                      (if (gx#stx-pair? ___stx134409134410_)
                                          (let ((_e128941129002_
                                                 (gx#syntax-e
                                                  ___stx134409134410_)))
                                            (let ((_tl128939129009_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e128941129002_)))
                                                  (_hd128940129006_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e128941129002_))))
                                              (___kont134412134413_
                                               _tl128939129009_
                                               _hd128940129006_)))
                                          (___kont134414134415_))))))))
                      (let* ((_bind128802_
                              (_generate-clauses128800_ _clauses128795_))
                             (_g128805128822_
                              (lambda (_g128806128818_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g128806128818_)))
                             (_g128804128919_
                              (lambda (_g128806128826_)
                                (if (gx#stx-pair/null? _g128806128826_)
                                    (let ((_g134583_
                                           (gx#syntax-split-splice
                                            _g128806128826_
                                            '0)))
                                      (begin
                                        (let ((_g134584_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g134583_)
                                                     (##vector-length
                                                      _g134583_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g134584_ 2)))
                                              (error "Context expects 2 values"
                                                     _g134584_)))
                                        (let ((_target128808128829_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g134583_ 0)))
                                              (_tl128810128832_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g134583_ 1))))
                                          (if (gx#stx-null? _tl128810128832_)
                                              (letrec ((_loop128811128835_
                                                        (lambda (_hd128809128839_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind-try128815128842_)
                  (if (gx#stx-pair? _hd128809128839_)
                      (let ((_e128812128845_ (gx#syntax-e _hd128809128839_)))
                        (let ((_lp-hd128813128849_
                               (let ()
                                 (declare (not safe))
                                 (##car _e128812128845_)))
                              (_lp-tl128814128852_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e128812128845_))))
                          (_loop128811128835_
                           _lp-tl128814128852_
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd128813128849_
                                   _bind-try128815128842_)))))
                      (let ((_bind-try128816128855_
                             (reverse _bind-try128815128842_)))
                        ((lambda (_L128859_)
                           (let ()
                             (let* ((_g128877128885_
                                     (lambda (_g128878128881_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _g128878128881_)))
                                    (_g128876128915_
                                     (lambda (_g128878128889_)
                                       ((lambda (_L128892_)
                                          (let ()
                                            (let ()
                                              (let ((__tmp134590
                                                     (gx#datum->syntax
                                                      '#f
                                                      'let*))
                                                    (__tmp134585
                                                     (let ((__tmp134588
                                                            (let ((__tmp134589
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g128906128909_ _g128907128912_)
                             (let ()
                               (declare (not safe))
                               (cons _g128906128909_ _g128907128912_)))))
                      (declare (not safe))
                      (foldr1 __tmp134589 '() _L128859_)))
                   (__tmp134586
                    (let ((__tmp134587
                           (let () (declare (not safe)) (cons _L128892_ '()))))
                      (declare (not safe))
                      (cons __tmp134587 '()))))
               (declare (not safe))
               (cons __tmp134588 __tmp134586))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp134590
                                                      __tmp134585)))))
                                        _g128878128889_))))
                               (_g128876128915_
                                (car (let ()
                                       (declare (not safe))
                                       (last _bind128802_)))))))
                         _bind-try128816128855_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop128811128835_
                                                 _target128808128829_
                                                 '()))
                                              (_g128805128822_
                                               _g128806128826_)))))
                                    (_g128805128822_ _g128806128826_)))))
                        (_g128804128919_ _bind128802_))))))
          (let* ((_g128646128665_
                  (lambda (_g128647128661_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g128647128661_)))
                 (_g128645128788_
                  (lambda (_g128647128669_)
                    (if (gx#stx-pair? _g128647128669_)
                        (let ((_e128653128672_ (gx#syntax-e _g128647128669_)))
                          (let ((_hd128652128676_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e128653128672_)))
                                (_tl128651128679_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e128653128672_))))
                            (if (gx#stx-pair? _tl128651128679_)
                                (let ((_e128656128682_
                                       (gx#syntax-e _tl128651128679_)))
                                  (let ((_hd128655128686_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e128656128682_)))
                                        (_tl128654128689_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e128656128682_))))
                                    (if (gx#stx-pair? _tl128654128689_)
                                        (let ((_e128659128692_
                                               (gx#syntax-e _tl128654128689_)))
                                          (let ((_hd128658128696_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e128659128692_)))
                                                (_tl128657128699_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e128659128692_))))
                                            ((lambda (_L128702_
                                                      _L128704_
                                                      _L128705_)
                                               (if (and (gx#identifier-list?
                                                         _L128704_)
                                                        (gx#stx-list?
                                                         _L128702_))
                                                   (let* ((_g128723128731_
                                                           (lambda (_g128724128727_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g128724128727_)))
                                                          (_g128722128784_
                                                           (lambda (_g128724128735_)
                                                             ((lambda (_L128738_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g128750128758_
                                  (lambda (_g128751128754_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g128751128754_)))
                                 (_g128749128780_
                                  (lambda (_g128751128762_)
                                    ((lambda (_L128765_)
                                       (let ()
                                         (let ()
                                           (let ((__tmp134596
                                                  (gx#datum->syntax '#f 'let))
                                                 (__tmp134591
                                                  (let ((__tmp134593
                                                         (let ((__tmp134594
                                                                (let ((__tmp134595
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L128705_ '()))))
                          (declare (not safe))
                          (cons _L128738_ __tmp134595))))
                   (declare (not safe))
                   (cons __tmp134594 '())))
                (__tmp134592
                 (let () (declare (not safe)) (cons _L128765_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp134593
                                                          __tmp134592))))
                                             (declare (not safe))
                                             (cons __tmp134596 __tmp134591)))))
                                     _g128751128762_))))
                            (_g128749128780_
                             (_generate128643_
                              _L128738_
                              (gx#syntax->list _L128704_)
                              _L128702_)))))
                      _g128724128735_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g128722128784_
                                                      (gx#genident 'e)))
                                                   (_g128646128665_
                                                    _g128647128669_)))
                                             _tl128657128699_
                                             _hd128658128696_
                                             _hd128655128686_)))
                                        (_g128646128665_ _g128647128669_))))
                                (_g128646128665_ _g128647128669_))))
                        (_g128646128665_ _g128647128669_)))))
            (_g128645128788_ _stx128640_)))))))
