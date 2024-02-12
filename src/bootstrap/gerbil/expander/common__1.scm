(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g135609_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135611_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135613_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135618_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135621_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135626_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135629_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135634_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135637_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135642_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135645_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135752_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj135604
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
           __obj135604
           'gerbil#AST::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135604
           'syntax
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135604
           '(e source)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135604
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135604
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135604
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135604
           '#f
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp135608 |gx[1]#_g135609_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135604
           __tmp135608
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp135610 |gx[1]#_g135611_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135604
           __tmp135610
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp135612 |gx[1]#_g135613_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135604
           __tmp135612
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp135614
               (let ((__tmp135619
                      (let ((__tmp135620 |gx[1]#_g135621_|))
                        (declare (not safe))
                        (cons 'e __tmp135620)))
                     (__tmp135615
                      (let ((__tmp135616
                             (let ((__tmp135617 |gx[1]#_g135618_|))
                               (declare (not safe))
                               (cons 'source __tmp135617))))
                        (declare (not safe))
                        (cons __tmp135616 '()))))
                 (declare (not safe))
                 (cons __tmp135619 __tmp135615))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135604
           __tmp135614
           '11
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp135622
               (let ((__tmp135627
                      (let ((__tmp135628 |gx[1]#_g135629_|))
                        (declare (not safe))
                        (cons 'e __tmp135628)))
                     (__tmp135623
                      (let ((__tmp135624
                             (let ((__tmp135625 |gx[1]#_g135626_|))
                               (declare (not safe))
                               (cons 'source __tmp135625))))
                        (declare (not safe))
                        (cons __tmp135624 '()))))
                 (declare (not safe))
                 (cons __tmp135627 __tmp135623))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135604
           __tmp135622
           '12
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp135630
               (let ((__tmp135635
                      (let ((__tmp135636 |gx[1]#_g135637_|))
                        (declare (not safe))
                        (cons 'e __tmp135636)))
                     (__tmp135631
                      (let ((__tmp135632
                             (let ((__tmp135633 |gx[1]#_g135634_|))
                               (declare (not safe))
                               (cons 'source __tmp135633))))
                        (declare (not safe))
                        (cons __tmp135632 '()))))
                 (declare (not safe))
                 (cons __tmp135635 __tmp135631))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135604
           __tmp135630
           '13
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp135638
               (let ((__tmp135643
                      (let ((__tmp135644 |gx[1]#_g135645_|))
                        (declare (not safe))
                        (cons 'e __tmp135644)))
                     (__tmp135639
                      (let ((__tmp135640
                             (let ((__tmp135641 |gx[1]#_g135642_|))
                               (declare (not safe))
                               (cons 'source __tmp135641))))
                        (declare (not safe))
                        (cons __tmp135640 '()))))
                 (declare (not safe))
                 (cons __tmp135643 __tmp135639))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135604
           __tmp135638
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj135604))
    (define |gx[:0:]#check-procedure|
      (lambda (_$stx129656_)
        (let* ((_g129660129674_
                (lambda (_g129661129670_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g129661129670_)))
               (_g129659129716_
                (lambda (_g129661129678_)
                  (if (gx#stx-pair? _g129661129678_)
                      (let ((_e129665129681_ (gx#syntax-e _g129661129678_)))
                        (let ((_hd129664129685_
                               (let ()
                                 (declare (not safe))
                                 (##car _e129665129681_)))
                              (_tl129663129688_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e129665129681_))))
                          (if (gx#stx-pair? _tl129663129688_)
                              (let ((_e129668129691_
                                     (gx#syntax-e _tl129663129688_)))
                                (let ((_hd129667129695_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e129668129691_)))
                                      (_tl129666129698_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e129668129691_))))
                                  (if (gx#stx-null? _tl129666129698_)
                                      ((lambda (_L129701_)
                                         (let ((__tmp135655
                                                (gx#datum->syntax '#f 'unless))
                                               (__tmp135646
                                                (let ((__tmp135652
                                                       (let ((__tmp135654
                                                              (gx#datum->syntax
                                                               '#f
                                                               'procedure?))
                                                             (__tmp135653
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L129701_ '()))))
                 (declare (not safe))
                 (cons __tmp135654 __tmp135653)))
              (__tmp135647
               (let ((__tmp135648
                      (let ((__tmp135651 (gx#datum->syntax '#f 'error))
                            (__tmp135649
                             (let ((__tmp135650
                                    (let ()
                                      (declare (not safe))
                                      (cons _L129701_ '()))))
                               (declare (not safe))
                               (cons '"expected procedure" __tmp135650))))
                        (declare (not safe))
                        (cons __tmp135651 __tmp135649))))
                 (declare (not safe))
                 (cons __tmp135648 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp135652
                                                        __tmp135647))))
                                           (declare (not safe))
                                           (cons __tmp135655 __tmp135646)))
                                       _hd129667129695_)
                                      (_g129660129674_ _g129661129678_))))
                              (_g129660129674_ _g129661129678_))))
                      (_g129660129674_ _g129661129678_)))))
          (_g129659129716_ _$stx129656_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_stx129720_)
        (letrec ((_generate129723_
                  (lambda (_tgt129872_ _kws129874_ _clauses129875_)
                    (letrec ((_generate-clause129877_
                              (lambda (_hd130787_ _E130789_)
                                (let* ((___stx135507135508_ _hd130787_)
                                       (_g130793130820_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx135507135508_))))
                                  (let ((___kont135510135511_
                                         (lambda (_L130916_ _L130918_)
                                           (_generate1129879_
                                            _hd130787_
                                            _L130918_
                                            '#t
                                            _L130916_
                                            _E130789_)))
                                        (___kont135512135513_
                                         (lambda (_L130868_
                                                  _L130870_
                                                  _L130871_)
                                           (_generate1129879_
                                            _hd130787_
                                            _L130871_
                                            _L130870_
                                            _L130868_
                                            _E130789_)))
                                        (___kont135514135515_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _stx129720_
                                            _hd130787_))))
                                    (if (gx#stx-pair? ___stx135507135508_)
                                        (let ((_e130799130896_
                                               (gx#syntax-e
                                                ___stx135507135508_)))
                                          (let ((_tl130797130903_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e130799130896_)))
                                                (_hd130798130900_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e130799130896_))))
                                            (if (gx#stx-pair? _tl130797130903_)
                                                (let ((_e130802130906_
                                                       (gx#syntax-e
                                                        _tl130797130903_)))
                                                  (let ((_tl130800130913_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e130802130906_)))
                                                        (_hd130801130910_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e130802130906_))))
                                                    (if (gx#stx-null?
                                                         _tl130800130913_)
                                                        (___kont135510135511_
                                                         _hd130801130910_
                                                         _hd130798130900_)
                                                        (if (gx#stx-pair?
                                                             _tl130800130913_)
                                                            (let ((_e130814130858_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl130800130913_)))
                      (let ((_tl130812130865_
                             (let ()
                               (declare (not safe))
                               (##cdr _e130814130858_)))
                            (_hd130813130862_
                             (let ()
                               (declare (not safe))
                               (##car _e130814130858_))))
                        (if (gx#stx-null? _tl130812130865_)
                            (___kont135512135513_
                             _hd130813130862_
                             _hd130801130910_
                             _hd130798130900_)
                            (___kont135514135515_))))
                    (___kont135514135515_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont135514135515_))))
                                        (___kont135514135515_))))))
                             (_generate1129879_
                              (lambda (_where130265_
                                       _hd130267_
                                       _fender130268_
                                       _body130269_
                                       _E130270_)
                                (letrec ((_recur130272_
                                          (lambda (_hd130275_
                                                   _tgt130277_
                                                   _K130278_)
                                            (let* ((___stx135553135554_
                                                    _hd130275_)
                                                   (_g130281130293_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx135553135554_))))
                                              (let ((___kont135556135557_
                                                     (lambda (_L130577_
                                                              _L130579_)
                                                       (let* ((_g130590130598_
                                                               (lambda (_g130591130594_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g130591130594_)))
                      (_g130589130779_
                       (lambda (_g130591130602_)
                         ((lambda (_L130605_)
                            (let ()
                              (let* ((_g130617130625_
                                      (lambda (_g130618130621_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g130618130621_)))
                                     (_g130616130775_
                                      (lambda (_g130618130629_)
                                        ((lambda (_L130632_)
                                           (let ()
                                             (let* ((_g130645130653_
                                                     (lambda (_g130646130649_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g130646130649_)))
                                                    (_g130644130771_
                                                     (lambda (_g130646130657_)
                                                       ((lambda (_L130660_)
                                                          (let ()
                                                            (let* ((_g130673130681_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g130674130677_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g130674130677_)))
                           (_g130672130767_
                            (lambda (_g130674130685_)
                              ((lambda (_L130688_)
                                 (let ()
                                   (let* ((_g130701130709_
                                           (lambda (_g130702130705_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g130702130705_)))
                                          (_g130700130763_
                                           (lambda (_g130702130713_)
                                             ((lambda (_L130716_)
                                                (let ()
                                                  (let* ((_g130729130737_
                                                          (lambda (_g130730130733_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g130730130733_)))
                                                         (_g130728130759_
                                                          (lambda (_g130730130741_)
                                                            ((lambda (_L130744_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((__tmp135688 (gx#datum->syntax '#f 'if))
                                 (__tmp135656
                                  (let ((__tmp135685
                                         (let ((__tmp135687
                                                (gx#datum->syntax
                                                 '#f
                                                 'stx-pair?))
                                               (__tmp135686
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L130605_ '()))))
                                           (declare (not safe))
                                           (cons __tmp135687 __tmp135686)))
                                        (__tmp135657
                                         (let ((__tmp135659
                                                (let ((__tmp135684
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp135660
                                                       (let ((__tmp135678
                                                              (let ((__tmp135679
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp135680
                                    (let ((__tmp135681
                                           (let ((__tmp135683
                                                  (gx#datum->syntax
                                                   '#f
                                                   'syntax-e))
                                                 (__tmp135682
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L130605_ '()))))
                                             (declare (not safe))
                                             (cons __tmp135683 __tmp135682))))
                                      (declare (not safe))
                                      (cons __tmp135681 '()))))
                               (declare (not safe))
                               (cons _L130632_ __tmp135680))))
                        (declare (not safe))
                        (cons __tmp135679 '())))
                     (__tmp135661
                      (let ((__tmp135662
                             (let ((__tmp135677 (gx#datum->syntax '#f 'let))
                                   (__tmp135663
                                    (let ((__tmp135665
                                           (let ((__tmp135672
                                                  (let ((__tmp135673
                                                         (let ((__tmp135674
                                                                (let ((__tmp135676
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '##car))
                              (__tmp135675
                               (let ()
                                 (declare (not safe))
                                 (cons _L130632_ '()))))
                          (declare (not safe))
                          (cons __tmp135676 __tmp135675))))
                   (declare (not safe))
                   (cons __tmp135674 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L130660_
                                                          __tmp135673)))
                                                 (__tmp135666
                                                  (let ((__tmp135667
                                                         (let ((__tmp135668
                                                                (let ((__tmp135669
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp135671
                                      (gx#datum->syntax '#f '##cdr))
                                     (__tmp135670
                                      (let ()
                                        (declare (not safe))
                                        (cons _L130632_ '()))))
                                 (declare (not safe))
                                 (cons __tmp135671 __tmp135670))))
                          (declare (not safe))
                          (cons __tmp135669 '()))))
                   (declare (not safe))
                   (cons _L130688_ __tmp135668))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135667 '()))))
                                             (declare (not safe))
                                             (cons __tmp135672 __tmp135666)))
                                          (__tmp135664
                                           (let ()
                                             (declare (not safe))
                                             (cons _L130716_ '()))))
                                      (declare (not safe))
                                      (cons __tmp135665 __tmp135664))))
                               (declare (not safe))
                               (cons __tmp135677 __tmp135663))))
                        (declare (not safe))
                        (cons __tmp135662 '()))))
                 (declare (not safe))
                 (cons __tmp135678 __tmp135661))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp135684
                                                        __tmp135660)))
                                               (__tmp135658
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L130744_ '()))))
                                           (declare (not safe))
                                           (cons __tmp135659 __tmp135658))))
                                    (declare (not safe))
                                    (cons __tmp135685 __tmp135657))))
                             (declare (not safe))
                             (cons __tmp135688 __tmp135656)))))
                     _g130730130741_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g130728130759_
                                                     _E130270_))))
                                              _g130702130713_))))
                                     (_g130700130763_
                                      (_recur130272_
                                       _L130579_
                                       _L130660_
                                       (_recur130272_
                                        _L130577_
                                        _L130688_
                                        _K130278_))))))
                               _g130674130685_))))
                      (_g130672130767_ (gx#genident 'tl)))))
                _g130646130657_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g130644130771_
                                                (gx#genident 'hd)))))
                                         _g130618130629_))))
                                (_g130616130775_ (gx#genident 'e)))))
                          _g130591130602_))))
                 (_g130589130779_ _tgt130277_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont135558135559_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _hd130275_)
                                                           (if (gx#underscore?
                                                                _hd130275_)
                                                               _K130278_
                                                               (if (let ((__tmp135733
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g130303130305_)
                                    (gx#bound-identifier=?
                                     _g130303130305_
                                     _hd130275_))))
                             (declare (not safe))
                             (find __tmp135733 _kws129874_))
                           (let* ((_g130309130324_
                                   (lambda (_g130310130320_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g130310130320_)))
                                  (_g130308130375_
                                   (lambda (_g130310130328_)
                                     (if (gx#stx-pair? _g130310130328_)
                                         (let ((_e130315130331_
                                                (gx#syntax-e _g130310130328_)))
                                           (let ((_hd130314130335_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e130315130331_)))
                                                 (_tl130313130338_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e130315130331_))))
                                             (if (gx#stx-pair?
                                                  _tl130313130338_)
                                                 (let ((_e130318130341_
                                                        (gx#syntax-e
                                                         _tl130313130338_)))
                                                   (let ((_hd130317130345_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e130318130341_)))
                                                         (_tl130316130348_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e130318130341_))))
                                                     (if (gx#stx-null?
                                                          _tl130316130348_)
                                                         ((lambda (_L130351_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L130353_)
                    (let ()
                      (let ((__tmp135732 (gx#datum->syntax '#f 'if))
                            (__tmp135715
                             (let ((__tmp135718
                                    (let ((__tmp135731
                                           (gx#datum->syntax '#f 'and))
                                          (__tmp135719
                                           (let ((__tmp135728
                                                  (let ((__tmp135730
                                                         (gx#datum->syntax
                                                          '#f
                                                          'identifier?))
                                                        (__tmp135729
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L130353_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135730
                                                          __tmp135729)))
                                                 (__tmp135720
                                                  (let ((__tmp135721
                                                         (let ((__tmp135727
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'core-identifier=?))
                       (__tmp135722
                        (let ((__tmp135723
                               (let ((__tmp135724
                                      (let ((__tmp135726
                                             (gx#datum->syntax '#f 'quote))
                                            (__tmp135725
                                             (let ()
                                               (declare (not safe))
                                               (cons _L130351_ '()))))
                                        (declare (not safe))
                                        (cons __tmp135726 __tmp135725))))
                                 (declare (not safe))
                                 (cons __tmp135724 '()))))
                          (declare (not safe))
                          (cons _L130353_ __tmp135723))))
                   (declare (not safe))
                   (cons __tmp135727 __tmp135722))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135721 '()))))
                                             (declare (not safe))
                                             (cons __tmp135728 __tmp135720))))
                                      (declare (not safe))
                                      (cons __tmp135731 __tmp135719)))
                                   (__tmp135716
                                    (let ((__tmp135717
                                           (let ()
                                             (declare (not safe))
                                             (cons _E130270_ '()))))
                                      (declare (not safe))
                                      (cons _K130278_ __tmp135717))))
                               (declare (not safe))
                               (cons __tmp135718 __tmp135716))))
                        (declare (not safe))
                        (cons __tmp135732 __tmp135715))))
                  _hd130317130345_
                  _hd130314130335_)
                 (_g130309130324_ _g130310130328_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g130309130324_
                                                  _g130310130328_))))
                                         (_g130309130324_ _g130310130328_)))))
                             (_g130308130375_ (list _tgt130277_ _hd130275_)))
                           (let* ((_g130379130394_
                                   (lambda (_g130380130390_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g130380130390_)))
                                  (_g130378130438_
                                   (lambda (_g130380130398_)
                                     (if (gx#stx-pair? _g130380130398_)
                                         (let ((_e130385130401_
                                                (gx#syntax-e _g130380130398_)))
                                           (let ((_hd130384130405_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e130385130401_)))
                                                 (_tl130383130408_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e130385130401_))))
                                             (if (gx#stx-pair?
                                                  _tl130383130408_)
                                                 (let ((_e130388130411_
                                                        (gx#syntax-e
                                                         _tl130383130408_)))
                                                   (let ((_hd130387130415_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e130388130411_)))
                                                         (_tl130386130418_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e130388130411_))))
                                                     (if (gx#stx-null?
                                                          _tl130386130418_)
                                                         ((lambda (_L130421_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L130423_)
                    (let ()
                      (let ((__tmp135714 (gx#datum->syntax '#f 'let))
                            (__tmp135709
                             (let ((__tmp135711
                                    (let ((__tmp135712
                                           (let ((__tmp135713
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L130423_ '()))))
                                             (declare (not safe))
                                             (cons _L130421_ __tmp135713))))
                                      (declare (not safe))
                                      (cons __tmp135712 '())))
                                   (__tmp135710
                                    (let ()
                                      (declare (not safe))
                                      (cons _K130278_ '()))))
                               (declare (not safe))
                               (cons __tmp135711 __tmp135710))))
                        (declare (not safe))
                        (cons __tmp135714 __tmp135709))))
                  _hd130387130415_
                  _hd130384130405_)
                 (_g130379130394_ _g130380130398_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g130379130394_
                                                  _g130380130398_))))
                                         (_g130379130394_ _g130380130398_)))))
                             (_g130378130438_ (list _tgt130277_ _hd130275_)))))
                   (if (gx#stx-null? _hd130275_)
                       (let* ((_g130442130450_
                               (lambda (_g130443130446_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g130443130446_)))
                              (_g130441130468_
                               (lambda (_g130443130454_)
                                 ((lambda (_L130457_)
                                    (let ()
                                      (let ((__tmp135708
                                             (gx#datum->syntax '#f 'if))
                                            (__tmp135702
                                             (let ((__tmp135705
                                                    (let ((__tmp135707
                                                           (gx#datum->syntax
                                                            '#f
                                                            'stx-null?))
                                                          (__tmp135706
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L130457_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp135707 __tmp135706)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp135703
                                                    (let ((__tmp135704
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _E130270_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _K130278_ __tmp135704))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp135705
                                                     __tmp135703))))
                                        (declare (not safe))
                                        (cons __tmp135708 __tmp135702))))
                                  _g130443130454_))))
                         (_g130441130468_ _tgt130277_))
                       (if (gx#stx-datum? _hd130275_)
                           (let* ((_g130472130491_
                                   (lambda (_g130473130487_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g130473130487_)))
                                  (_g130471130549_
                                   (lambda (_g130473130495_)
                                     (if (gx#stx-pair? _g130473130495_)
                                         (let ((_e130479130498_
                                                (gx#syntax-e _g130473130495_)))
                                           (let ((_hd130478130502_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e130479130498_)))
                                                 (_tl130477130505_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e130479130498_))))
                                             (if (gx#stx-pair?
                                                  _tl130477130505_)
                                                 (let ((_e130482130508_
                                                        (gx#syntax-e
                                                         _tl130477130505_)))
                                                   (let ((_hd130481130512_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e130482130508_)))
                                                         (_tl130480130515_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e130482130508_))))
                                                     (if (gx#stx-pair?
                                                          _tl130480130515_)
                                                         (let ((_e130485130518_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl130480130515_)))
                   (let ((_hd130484130522_
                          (let ()
                            (declare (not safe))
                            (##car _e130485130518_)))
                         (_tl130483130525_
                          (let ()
                            (declare (not safe))
                            (##cdr _e130485130518_))))
                     (if (gx#stx-null? _tl130483130525_)
                         ((lambda (_L130528_ _L130530_ _L130531_)
                            (let ()
                              (let ((__tmp135701 (gx#datum->syntax '#f 'if))
                                    (__tmp135689
                                     (let ((__tmp135692
                                            (let ((__tmp135693
                                                   (let ((__tmp135698
                                                          (let ((__tmp135700
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'stx-e))
                        (__tmp135699
                         (let () (declare (not safe)) (cons _L130531_ '()))))
                    (declare (not safe))
                    (cons __tmp135700 __tmp135699)))
                 (__tmp135694
                  (let ((__tmp135695
                         (let ((__tmp135697 (gx#datum->syntax '#f 'quote))
                               (__tmp135696
                                (let ()
                                  (declare (not safe))
                                  (cons _L130530_ '()))))
                           (declare (not safe))
                           (cons __tmp135697 __tmp135696))))
                    (declare (not safe))
                    (cons __tmp135695 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp135698
                                                           __tmp135694))))
                                              (declare (not safe))
                                              (cons _L130528_ __tmp135693)))
                                           (__tmp135690
                                            (let ((__tmp135691
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _E130270_ '()))))
                                              (declare (not safe))
                                              (cons _K130278_ __tmp135691))))
                                       (declare (not safe))
                                       (cons __tmp135692 __tmp135690))))
                                (declare (not safe))
                                (cons __tmp135701 __tmp135689))))
                          _hd130484130522_
                          _hd130481130512_
                          _hd130478130502_)
                         (_g130472130491_ _g130473130495_))))
                 (_g130472130491_ _g130473130495_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g130472130491_
                                                  _g130473130495_))))
                                         (_g130472130491_ _g130473130495_)))))
                             (_g130471130549_
                              (list _tgt130277_
                                    _hd130275_
                                    (let ((_e130553_ (gx#stx-e _hd130275_)))
                                      (if (or (keyword? _e130553_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _e130553_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (let ()
                                                (declare (not safe))
                                                (number? _e130553_))
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _stx129720_
                            _where130265_
                            _hd130275_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx135553135554_)
                                                    (let ((_e130287130567_
                                                           (gx#syntax-e
                                                            ___stx135553135554_)))
                                                      (let ((_tl130285130574_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e130287130567_)))
                    (_hd130286130571_
                     (let () (declare (not safe)) (##car _e130287130567_))))
                (___kont135556135557_ _tl130285130574_ _hd130286130571_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont135558135559_)))))))
                                  (_recur130272_
                                   _hd130267_
                                   _tgt129872_
                                   (let ((__tmp135737
                                          (gx#datum->syntax '#f 'if))
                                         (__tmp135734
                                          (let ((__tmp135735
                                                 (let ((__tmp135736
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _E130270_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _body130269_
                                                         __tmp135736))))
                                            (declare (not safe))
                                            (cons _fender130268_
                                                  __tmp135735))))
                                     (declare (not safe))
                                     (cons __tmp135737 __tmp135734))))))
                             (_generate-clauses129880_
                              (lambda (_clauses130003_)
                                (let _lp130006_ ((_rest130009_ _clauses130003_)
                                                 (_E130011_ (gx#genident 'E))
                                                 (_r130012_ '()))
                                  (let* ((___stx135589135590_ _rest130009_)
                                         (_g130015130027_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx135589135590_))))
                                    (let ((___kont135592135593_
                                           (lambda (_L130092_ _L130094_)
                                             (let* ((___stx135569135570_
                                                     _L130094_)
                                                    (_g130106130117_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        ___stx135569135570_))))
                                               (let ((___kont135572135573_
                                                      (lambda (_L130246_)
                                                        (if (gx#stx-null?
                                                             _L130092_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L130246_)
                             (let ((__tmp135746 (gx#stx-null? _L130246_)))
                               (declare (not safe))
                               (not __tmp135746)))
                        (let ((__tmp135738
                               (let ((__tmp135739
                                      (let ((__tmp135740
                                             (gx#stx-wrap-source
                                              (let ((__tmp135745
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp135741
                                                     (let ((__tmp135742
                                                            (let ((__tmp135743
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp135744 (gx#datum->syntax '#f 'begin)))
                             (declare (not safe))
                             (cons __tmp135744 _L130246_))))
                      (declare (not safe))
                      (cons __tmp135743 '()))))
               (declare (not safe))
               (cons '() __tmp135742))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp135745 __tmp135741))
                                              (gx#stx-source _L130094_))))
                                        (declare (not safe))
                                        (cons __tmp135740 '()))))
                                 (declare (not safe))
                                 (cons _E130011_ __tmp135739))))
                          (declare (not safe))
                          (cons __tmp135738 _r130012_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _stx129720_
                         _L130094_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _stx129720_
                     _L130094_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont135574135575_
                                                      (lambda ()
                                                        (let* ((_g130128130136_
                                                                (lambda (_g130129130132_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g130129130132_)))
                       (_g130127130225_
                        (lambda (_g130129130140_)
                          ((lambda (_L130143_)
                             (let ()
                               (let* ((_g130159130167_
                                       (lambda (_g130160130163_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g130160130163_)))
                                      (_g130158130221_
                                       (lambda (_g130160130171_)
                                         ((lambda (_L130174_)
                                            (let ()
                                              (let* ((_g130187130195_
                                                      (lambda (_g130188130191_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g130188130191_)))
                                                     (_g130186130217_
                                                      (lambda (_g130188130199_)
                                                        ((lambda (_L130202_)
                                                           (let ()
                                                             (let ()
                                                               (_lp130006_
                                                                _L130092_
                                                                _L130143_
                                                                (let ((__tmp135747
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp135748
                                      (let ()
                                        (declare (not safe))
                                        (cons _L130202_ '()))))
                                 (declare (not safe))
                                 (cons _E130011_ __tmp135748))))
                          (declare (not safe))
                          (cons __tmp135747 _r130012_))))))
                 _g130188130199_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g130186130217_
                                                 (gx#stx-wrap-source
                                                  (let ((__tmp135751
                                                         (gx#datum->syntax
                                                          '#f
                                                          'lambda))
                                                        (__tmp135749
                                                         (let ((__tmp135750
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _L130174_ '()))))
                   (declare (not safe))
                   (cons '() __tmp135750))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135751
                                                          __tmp135749))
                                                  (gx#stx-source
                                                   _L130094_))))))
                                          _g130160130171_))))
                                 (_g130158130221_
                                  (_generate-clause129877_
                                   _L130094_
                                   (let ()
                                     (declare (not safe))
                                     (cons _L130143_ '())))))))
                           _g130129130140_))))
                  (_g130127130225_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      ___stx135569135570_)
                                                     (let ((_e130111130236_
                                                            (gx#syntax-e
                                                             ___stx135569135570_)))
                                                       (let ((_tl130109130243_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e130111130236_)))
                     (_hd130110130240_
                      (let () (declare (not safe)) (##car _e130111130236_))))
                 (if (gx#identifier? _hd130110130240_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g135752_|
                          _hd130110130240_)
                         (___kont135572135573_ _tl130109130243_)
                         (___kont135574135575_))
                     (___kont135574135575_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont135574135575_))))))
                                          (___kont135594135595_
                                           (lambda ()
                                             (let* ((_g130038130046_
                                                     (lambda (_g130039130042_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g130039130042_)))
                                                    (_g130037130071_
                                                     (lambda (_g130039130050_)
                                                       ((lambda (_L130053_)
                                                          (let ()
                                                            (let ((__tmp135753
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp135754
                                  (let ((__tmp135755
                                         (gx#stx-wrap-source
                                          (let ((__tmp135763
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp135756
                                                 (let ((__tmp135757
                                                        (let ((__tmp135758
                                                               (let ((__tmp135762
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'raise-syntax-error))
                             (__tmp135759
                              (let ((__tmp135760
                                     (let ((__tmp135761
                                            (let ()
                                              (declare (not safe))
                                              (cons _L130053_ '()))))
                                       (declare (not safe))
                                       (cons '"Bad syntax; invalid syntax-case clause"
                                             __tmp135761))))
                                (declare (not safe))
                                (cons '#f __tmp135760))))
                         (declare (not safe))
                         (cons __tmp135762 __tmp135759))))
                  (declare (not safe))
                  (cons __tmp135758 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '() __tmp135757))))
                                            (declare (not safe))
                                            (cons __tmp135763 __tmp135756))
                                          (gx#stx-source _stx129720_))))
                                    (declare (not safe))
                                    (cons __tmp135755 '()))))
                             (declare (not safe))
                             (cons _E130011_ __tmp135754))))
                      (declare (not safe))
                      (cons __tmp135753 _r130012_))))
                _g130039130050_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g130037130071_
                                                _tgt129872_)))))
                                      (if (gx#stx-pair? ___stx135589135590_)
                                          (let ((_e130021130082_
                                                 (gx#syntax-e
                                                  ___stx135589135590_)))
                                            (let ((_tl130019130089_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e130021130082_)))
                                                  (_hd130020130086_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e130021130082_))))
                                              (___kont135592135593_
                                               _tl130019130089_
                                               _hd130020130086_)))
                                          (___kont135594135595_))))))))
                      (let* ((_bind129882_
                              (_generate-clauses129880_ _clauses129875_))
                             (_g129885129902_
                              (lambda (_g129886129898_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g129886129898_)))
                             (_g129884129999_
                              (lambda (_g129886129906_)
                                (if (gx#stx-pair/null? _g129886129906_)
                                    (let ((_g135764_
                                           (gx#syntax-split-splice
                                            _g129886129906_
                                            '0)))
                                      (begin
                                        (let ((_g135765_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g135764_)
                                                     (##vector-length
                                                      _g135764_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g135765_ 2)))
                                              (error "Context expects 2 values"
                                                     _g135765_)))
                                        (let ((_target129888129909_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g135764_ 0)))
                                              (_tl129890129912_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g135764_ 1))))
                                          (if (gx#stx-null? _tl129890129912_)
                                              (letrec ((_loop129891129915_
                                                        (lambda (_hd129889129919_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind-try129895129922_)
                  (if (gx#stx-pair? _hd129889129919_)
                      (let ((_e129892129925_ (gx#syntax-e _hd129889129919_)))
                        (let ((_lp-hd129893129929_
                               (let ()
                                 (declare (not safe))
                                 (##car _e129892129925_)))
                              (_lp-tl129894129932_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e129892129925_))))
                          (_loop129891129915_
                           _lp-tl129894129932_
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd129893129929_
                                   _bind-try129895129922_)))))
                      (let ((_bind-try129896129935_
                             (reverse _bind-try129895129922_)))
                        ((lambda (_L129939_)
                           (let ()
                             (let* ((_g129957129965_
                                     (lambda (_g129958129961_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _g129958129961_)))
                                    (_g129956129995_
                                     (lambda (_g129958129969_)
                                       ((lambda (_L129972_)
                                          (let ()
                                            (let ()
                                              (let ((__tmp135771
                                                     (gx#datum->syntax
                                                      '#f
                                                      'let*))
                                                    (__tmp135766
                                                     (let ((__tmp135769
                                                            (let ((__tmp135770
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g129986129989_ _g129987129992_)
                             (let ()
                               (declare (not safe))
                               (cons _g129986129989_ _g129987129992_)))))
                      (declare (not safe))
                      (foldr1 __tmp135770 '() _L129939_)))
                   (__tmp135767
                    (let ((__tmp135768
                           (let () (declare (not safe)) (cons _L129972_ '()))))
                      (declare (not safe))
                      (cons __tmp135768 '()))))
               (declare (not safe))
               (cons __tmp135769 __tmp135767))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp135771
                                                      __tmp135766)))))
                                        _g129958129969_))))
                               (_g129956129995_
                                (car (let ()
                                       (declare (not safe))
                                       (last _bind129882_)))))))
                         _bind-try129896129935_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop129891129915_
                                                 _target129888129909_
                                                 '()))
                                              (_g129885129902_
                                               _g129886129906_)))))
                                    (_g129885129902_ _g129886129906_)))))
                        (_g129884129999_ _bind129882_))))))
          (let* ((_g129726129745_
                  (lambda (_g129727129741_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g129727129741_)))
                 (_g129725129868_
                  (lambda (_g129727129749_)
                    (if (gx#stx-pair? _g129727129749_)
                        (let ((_e129733129752_ (gx#syntax-e _g129727129749_)))
                          (let ((_hd129732129756_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e129733129752_)))
                                (_tl129731129759_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e129733129752_))))
                            (if (gx#stx-pair? _tl129731129759_)
                                (let ((_e129736129762_
                                       (gx#syntax-e _tl129731129759_)))
                                  (let ((_hd129735129766_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e129736129762_)))
                                        (_tl129734129769_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e129736129762_))))
                                    (if (gx#stx-pair? _tl129734129769_)
                                        (let ((_e129739129772_
                                               (gx#syntax-e _tl129734129769_)))
                                          (let ((_hd129738129776_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e129739129772_)))
                                                (_tl129737129779_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e129739129772_))))
                                            ((lambda (_L129782_
                                                      _L129784_
                                                      _L129785_)
                                               (if (and (gx#identifier-list?
                                                         _L129784_)
                                                        (gx#stx-list?
                                                         _L129782_))
                                                   (let* ((_g129803129811_
                                                           (lambda (_g129804129807_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g129804129807_)))
                                                          (_g129802129864_
                                                           (lambda (_g129804129815_)
                                                             ((lambda (_L129818_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g129830129838_
                                  (lambda (_g129831129834_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g129831129834_)))
                                 (_g129829129860_
                                  (lambda (_g129831129842_)
                                    ((lambda (_L129845_)
                                       (let ()
                                         (let ()
                                           (let ((__tmp135777
                                                  (gx#datum->syntax '#f 'let))
                                                 (__tmp135772
                                                  (let ((__tmp135774
                                                         (let ((__tmp135775
                                                                (let ((__tmp135776
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L129785_ '()))))
                          (declare (not safe))
                          (cons _L129818_ __tmp135776))))
                   (declare (not safe))
                   (cons __tmp135775 '())))
                (__tmp135773
                 (let () (declare (not safe)) (cons _L129845_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135774
                                                          __tmp135773))))
                                             (declare (not safe))
                                             (cons __tmp135777 __tmp135772)))))
                                     _g129831129842_))))
                            (_g129829129860_
                             (_generate129723_
                              _L129818_
                              (gx#syntax->list _L129784_)
                              _L129782_)))))
                      _g129804129815_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g129802129864_
                                                      (gx#genident 'e)))
                                                   (_g129726129745_
                                                    _g129727129749_)))
                                             _tl129737129779_
                                             _hd129738129776_
                                             _hd129735129766_)))
                                        (_g129726129745_ _g129727129749_))))
                                (_g129726129745_ _g129727129749_))))
                        (_g129726129745_ _g129727129749_)))))
            (_g129725129868_ _stx129720_)))))))
