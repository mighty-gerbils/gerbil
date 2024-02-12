(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g135608_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135610_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135612_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135617_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135620_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135625_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135628_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135633_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135636_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135641_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135644_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135751_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj135603
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
           __obj135603
           'gerbil#AST::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135603
           'syntax
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135603
           '(e source)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135603
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135603
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135603
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135603
           '#f
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp135607 |gx[1]#_g135608_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135603
           __tmp135607
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp135609 |gx[1]#_g135610_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135603
           __tmp135609
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp135611 |gx[1]#_g135612_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135603
           __tmp135611
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp135613
               (let ((__tmp135618
                      (let ((__tmp135619 |gx[1]#_g135620_|))
                        (declare (not safe))
                        (cons 'e __tmp135619)))
                     (__tmp135614
                      (let ((__tmp135615
                             (let ((__tmp135616 |gx[1]#_g135617_|))
                               (declare (not safe))
                               (cons 'source __tmp135616))))
                        (declare (not safe))
                        (cons __tmp135615 '()))))
                 (declare (not safe))
                 (cons __tmp135618 __tmp135614))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135603
           __tmp135613
           '11
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp135621
               (let ((__tmp135626
                      (let ((__tmp135627 |gx[1]#_g135628_|))
                        (declare (not safe))
                        (cons 'e __tmp135627)))
                     (__tmp135622
                      (let ((__tmp135623
                             (let ((__tmp135624 |gx[1]#_g135625_|))
                               (declare (not safe))
                               (cons 'source __tmp135624))))
                        (declare (not safe))
                        (cons __tmp135623 '()))))
                 (declare (not safe))
                 (cons __tmp135626 __tmp135622))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135603
           __tmp135621
           '12
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp135629
               (let ((__tmp135634
                      (let ((__tmp135635 |gx[1]#_g135636_|))
                        (declare (not safe))
                        (cons 'e __tmp135635)))
                     (__tmp135630
                      (let ((__tmp135631
                             (let ((__tmp135632 |gx[1]#_g135633_|))
                               (declare (not safe))
                               (cons 'source __tmp135632))))
                        (declare (not safe))
                        (cons __tmp135631 '()))))
                 (declare (not safe))
                 (cons __tmp135634 __tmp135630))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135603
           __tmp135629
           '13
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp135637
               (let ((__tmp135642
                      (let ((__tmp135643 |gx[1]#_g135644_|))
                        (declare (not safe))
                        (cons 'e __tmp135643)))
                     (__tmp135638
                      (let ((__tmp135639
                             (let ((__tmp135640 |gx[1]#_g135641_|))
                               (declare (not safe))
                               (cons 'source __tmp135640))))
                        (declare (not safe))
                        (cons __tmp135639 '()))))
                 (declare (not safe))
                 (cons __tmp135642 __tmp135638))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135603
           __tmp135637
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj135603))
    (define |gx[:0:]#check-procedure|
      (lambda (_$stx129655_)
        (let* ((_g129659129673_
                (lambda (_g129660129669_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g129660129669_)))
               (_g129658129715_
                (lambda (_g129660129677_)
                  (if (gx#stx-pair? _g129660129677_)
                      (let ((_e129664129680_ (gx#syntax-e _g129660129677_)))
                        (let ((_hd129663129684_
                               (let ()
                                 (declare (not safe))
                                 (##car _e129664129680_)))
                              (_tl129662129687_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e129664129680_))))
                          (if (gx#stx-pair? _tl129662129687_)
                              (let ((_e129667129690_
                                     (gx#syntax-e _tl129662129687_)))
                                (let ((_hd129666129694_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e129667129690_)))
                                      (_tl129665129697_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e129667129690_))))
                                  (if (gx#stx-null? _tl129665129697_)
                                      ((lambda (_L129700_)
                                         (let ((__tmp135654
                                                (gx#datum->syntax '#f 'unless))
                                               (__tmp135645
                                                (let ((__tmp135651
                                                       (let ((__tmp135653
                                                              (gx#datum->syntax
                                                               '#f
                                                               'procedure?))
                                                             (__tmp135652
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L129700_ '()))))
                 (declare (not safe))
                 (cons __tmp135653 __tmp135652)))
              (__tmp135646
               (let ((__tmp135647
                      (let ((__tmp135650 (gx#datum->syntax '#f 'error))
                            (__tmp135648
                             (let ((__tmp135649
                                    (let ()
                                      (declare (not safe))
                                      (cons _L129700_ '()))))
                               (declare (not safe))
                               (cons '"expected procedure" __tmp135649))))
                        (declare (not safe))
                        (cons __tmp135650 __tmp135648))))
                 (declare (not safe))
                 (cons __tmp135647 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp135651
                                                        __tmp135646))))
                                           (declare (not safe))
                                           (cons __tmp135654 __tmp135645)))
                                       _hd129666129694_)
                                      (_g129659129673_ _g129660129677_))))
                              (_g129659129673_ _g129660129677_))))
                      (_g129659129673_ _g129660129677_)))))
          (_g129658129715_ _$stx129655_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_stx129719_)
        (letrec ((_generate129722_
                  (lambda (_tgt129871_ _kws129873_ _clauses129874_)
                    (letrec ((_generate-clause129876_
                              (lambda (_hd130786_ _E130788_)
                                (let* ((___stx135506135507_ _hd130786_)
                                       (_g130792130819_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx135506135507_))))
                                  (let ((___kont135509135510_
                                         (lambda (_L130915_ _L130917_)
                                           (_generate1129878_
                                            _hd130786_
                                            _L130917_
                                            '#t
                                            _L130915_
                                            _E130788_)))
                                        (___kont135511135512_
                                         (lambda (_L130867_
                                                  _L130869_
                                                  _L130870_)
                                           (_generate1129878_
                                            _hd130786_
                                            _L130870_
                                            _L130869_
                                            _L130867_
                                            _E130788_)))
                                        (___kont135513135514_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _stx129719_
                                            _hd130786_))))
                                    (if (gx#stx-pair? ___stx135506135507_)
                                        (let ((_e130798130895_
                                               (gx#syntax-e
                                                ___stx135506135507_)))
                                          (let ((_tl130796130902_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e130798130895_)))
                                                (_hd130797130899_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e130798130895_))))
                                            (if (gx#stx-pair? _tl130796130902_)
                                                (let ((_e130801130905_
                                                       (gx#syntax-e
                                                        _tl130796130902_)))
                                                  (let ((_tl130799130912_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e130801130905_)))
                                                        (_hd130800130909_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e130801130905_))))
                                                    (if (gx#stx-null?
                                                         _tl130799130912_)
                                                        (___kont135509135510_
                                                         _hd130800130909_
                                                         _hd130797130899_)
                                                        (if (gx#stx-pair?
                                                             _tl130799130912_)
                                                            (let ((_e130813130857_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl130799130912_)))
                      (let ((_tl130811130864_
                             (let ()
                               (declare (not safe))
                               (##cdr _e130813130857_)))
                            (_hd130812130861_
                             (let ()
                               (declare (not safe))
                               (##car _e130813130857_))))
                        (if (gx#stx-null? _tl130811130864_)
                            (___kont135511135512_
                             _hd130812130861_
                             _hd130800130909_
                             _hd130797130899_)
                            (___kont135513135514_))))
                    (___kont135513135514_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont135513135514_))))
                                        (___kont135513135514_))))))
                             (_generate1129878_
                              (lambda (_where130264_
                                       _hd130266_
                                       _fender130267_
                                       _body130268_
                                       _E130269_)
                                (letrec ((_recur130271_
                                          (lambda (_hd130274_
                                                   _tgt130276_
                                                   _K130277_)
                                            (let* ((___stx135552135553_
                                                    _hd130274_)
                                                   (_g130280130292_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx135552135553_))))
                                              (let ((___kont135555135556_
                                                     (lambda (_L130576_
                                                              _L130578_)
                                                       (let* ((_g130589130597_
                                                               (lambda (_g130590130593_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g130590130593_)))
                      (_g130588130778_
                       (lambda (_g130590130601_)
                         ((lambda (_L130604_)
                            (let ()
                              (let* ((_g130616130624_
                                      (lambda (_g130617130620_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g130617130620_)))
                                     (_g130615130774_
                                      (lambda (_g130617130628_)
                                        ((lambda (_L130631_)
                                           (let ()
                                             (let* ((_g130644130652_
                                                     (lambda (_g130645130648_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g130645130648_)))
                                                    (_g130643130770_
                                                     (lambda (_g130645130656_)
                                                       ((lambda (_L130659_)
                                                          (let ()
                                                            (let* ((_g130672130680_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g130673130676_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g130673130676_)))
                           (_g130671130766_
                            (lambda (_g130673130684_)
                              ((lambda (_L130687_)
                                 (let ()
                                   (let* ((_g130700130708_
                                           (lambda (_g130701130704_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g130701130704_)))
                                          (_g130699130762_
                                           (lambda (_g130701130712_)
                                             ((lambda (_L130715_)
                                                (let ()
                                                  (let* ((_g130728130736_
                                                          (lambda (_g130729130732_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g130729130732_)))
                                                         (_g130727130758_
                                                          (lambda (_g130729130740_)
                                                            ((lambda (_L130743_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((__tmp135687 (gx#datum->syntax '#f 'if))
                                 (__tmp135655
                                  (let ((__tmp135684
                                         (let ((__tmp135686
                                                (gx#datum->syntax
                                                 '#f
                                                 'stx-pair?))
                                               (__tmp135685
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L130604_ '()))))
                                           (declare (not safe))
                                           (cons __tmp135686 __tmp135685)))
                                        (__tmp135656
                                         (let ((__tmp135658
                                                (let ((__tmp135683
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp135659
                                                       (let ((__tmp135677
                                                              (let ((__tmp135678
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp135679
                                    (let ((__tmp135680
                                           (let ((__tmp135682
                                                  (gx#datum->syntax
                                                   '#f
                                                   'syntax-e))
                                                 (__tmp135681
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L130604_ '()))))
                                             (declare (not safe))
                                             (cons __tmp135682 __tmp135681))))
                                      (declare (not safe))
                                      (cons __tmp135680 '()))))
                               (declare (not safe))
                               (cons _L130631_ __tmp135679))))
                        (declare (not safe))
                        (cons __tmp135678 '())))
                     (__tmp135660
                      (let ((__tmp135661
                             (let ((__tmp135676 (gx#datum->syntax '#f 'let))
                                   (__tmp135662
                                    (let ((__tmp135664
                                           (let ((__tmp135671
                                                  (let ((__tmp135672
                                                         (let ((__tmp135673
                                                                (let ((__tmp135675
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '##car))
                              (__tmp135674
                               (let ()
                                 (declare (not safe))
                                 (cons _L130631_ '()))))
                          (declare (not safe))
                          (cons __tmp135675 __tmp135674))))
                   (declare (not safe))
                   (cons __tmp135673 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L130659_
                                                          __tmp135672)))
                                                 (__tmp135665
                                                  (let ((__tmp135666
                                                         (let ((__tmp135667
                                                                (let ((__tmp135668
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp135670
                                      (gx#datum->syntax '#f '##cdr))
                                     (__tmp135669
                                      (let ()
                                        (declare (not safe))
                                        (cons _L130631_ '()))))
                                 (declare (not safe))
                                 (cons __tmp135670 __tmp135669))))
                          (declare (not safe))
                          (cons __tmp135668 '()))))
                   (declare (not safe))
                   (cons _L130687_ __tmp135667))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135666 '()))))
                                             (declare (not safe))
                                             (cons __tmp135671 __tmp135665)))
                                          (__tmp135663
                                           (let ()
                                             (declare (not safe))
                                             (cons _L130715_ '()))))
                                      (declare (not safe))
                                      (cons __tmp135664 __tmp135663))))
                               (declare (not safe))
                               (cons __tmp135676 __tmp135662))))
                        (declare (not safe))
                        (cons __tmp135661 '()))))
                 (declare (not safe))
                 (cons __tmp135677 __tmp135660))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp135683
                                                        __tmp135659)))
                                               (__tmp135657
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L130743_ '()))))
                                           (declare (not safe))
                                           (cons __tmp135658 __tmp135657))))
                                    (declare (not safe))
                                    (cons __tmp135684 __tmp135656))))
                             (declare (not safe))
                             (cons __tmp135687 __tmp135655)))))
                     _g130729130740_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g130727130758_
                                                     _E130269_))))
                                              _g130701130712_))))
                                     (_g130699130762_
                                      (_recur130271_
                                       _L130578_
                                       _L130659_
                                       (_recur130271_
                                        _L130576_
                                        _L130687_
                                        _K130277_))))))
                               _g130673130684_))))
                      (_g130671130766_ (gx#genident 'tl)))))
                _g130645130656_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g130643130770_
                                                (gx#genident 'hd)))))
                                         _g130617130628_))))
                                (_g130615130774_ (gx#genident 'e)))))
                          _g130590130601_))))
                 (_g130588130778_ _tgt130276_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont135557135558_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _hd130274_)
                                                           (if (gx#underscore?
                                                                _hd130274_)
                                                               _K130277_
                                                               (if (let ((__tmp135732
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g130302130304_)
                                    (gx#bound-identifier=?
                                     _g130302130304_
                                     _hd130274_))))
                             (declare (not safe))
                             (find __tmp135732 _kws129873_))
                           (let* ((_g130308130323_
                                   (lambda (_g130309130319_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g130309130319_)))
                                  (_g130307130374_
                                   (lambda (_g130309130327_)
                                     (if (gx#stx-pair? _g130309130327_)
                                         (let ((_e130314130330_
                                                (gx#syntax-e _g130309130327_)))
                                           (let ((_hd130313130334_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e130314130330_)))
                                                 (_tl130312130337_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e130314130330_))))
                                             (if (gx#stx-pair?
                                                  _tl130312130337_)
                                                 (let ((_e130317130340_
                                                        (gx#syntax-e
                                                         _tl130312130337_)))
                                                   (let ((_hd130316130344_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e130317130340_)))
                                                         (_tl130315130347_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e130317130340_))))
                                                     (if (gx#stx-null?
                                                          _tl130315130347_)
                                                         ((lambda (_L130350_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L130352_)
                    (let ()
                      (let ((__tmp135731 (gx#datum->syntax '#f 'if))
                            (__tmp135714
                             (let ((__tmp135717
                                    (let ((__tmp135730
                                           (gx#datum->syntax '#f 'and))
                                          (__tmp135718
                                           (let ((__tmp135727
                                                  (let ((__tmp135729
                                                         (gx#datum->syntax
                                                          '#f
                                                          'identifier?))
                                                        (__tmp135728
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L130352_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135729
                                                          __tmp135728)))
                                                 (__tmp135719
                                                  (let ((__tmp135720
                                                         (let ((__tmp135726
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'core-identifier=?))
                       (__tmp135721
                        (let ((__tmp135722
                               (let ((__tmp135723
                                      (let ((__tmp135725
                                             (gx#datum->syntax '#f 'quote))
                                            (__tmp135724
                                             (let ()
                                               (declare (not safe))
                                               (cons _L130350_ '()))))
                                        (declare (not safe))
                                        (cons __tmp135725 __tmp135724))))
                                 (declare (not safe))
                                 (cons __tmp135723 '()))))
                          (declare (not safe))
                          (cons _L130352_ __tmp135722))))
                   (declare (not safe))
                   (cons __tmp135726 __tmp135721))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135720 '()))))
                                             (declare (not safe))
                                             (cons __tmp135727 __tmp135719))))
                                      (declare (not safe))
                                      (cons __tmp135730 __tmp135718)))
                                   (__tmp135715
                                    (let ((__tmp135716
                                           (let ()
                                             (declare (not safe))
                                             (cons _E130269_ '()))))
                                      (declare (not safe))
                                      (cons _K130277_ __tmp135716))))
                               (declare (not safe))
                               (cons __tmp135717 __tmp135715))))
                        (declare (not safe))
                        (cons __tmp135731 __tmp135714))))
                  _hd130316130344_
                  _hd130313130334_)
                 (_g130308130323_ _g130309130327_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g130308130323_
                                                  _g130309130327_))))
                                         (_g130308130323_ _g130309130327_)))))
                             (_g130307130374_ (list _tgt130276_ _hd130274_)))
                           (let* ((_g130378130393_
                                   (lambda (_g130379130389_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g130379130389_)))
                                  (_g130377130437_
                                   (lambda (_g130379130397_)
                                     (if (gx#stx-pair? _g130379130397_)
                                         (let ((_e130384130400_
                                                (gx#syntax-e _g130379130397_)))
                                           (let ((_hd130383130404_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e130384130400_)))
                                                 (_tl130382130407_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e130384130400_))))
                                             (if (gx#stx-pair?
                                                  _tl130382130407_)
                                                 (let ((_e130387130410_
                                                        (gx#syntax-e
                                                         _tl130382130407_)))
                                                   (let ((_hd130386130414_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e130387130410_)))
                                                         (_tl130385130417_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e130387130410_))))
                                                     (if (gx#stx-null?
                                                          _tl130385130417_)
                                                         ((lambda (_L130420_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L130422_)
                    (let ()
                      (let ((__tmp135713 (gx#datum->syntax '#f 'let))
                            (__tmp135708
                             (let ((__tmp135710
                                    (let ((__tmp135711
                                           (let ((__tmp135712
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L130422_ '()))))
                                             (declare (not safe))
                                             (cons _L130420_ __tmp135712))))
                                      (declare (not safe))
                                      (cons __tmp135711 '())))
                                   (__tmp135709
                                    (let ()
                                      (declare (not safe))
                                      (cons _K130277_ '()))))
                               (declare (not safe))
                               (cons __tmp135710 __tmp135709))))
                        (declare (not safe))
                        (cons __tmp135713 __tmp135708))))
                  _hd130386130414_
                  _hd130383130404_)
                 (_g130378130393_ _g130379130397_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g130378130393_
                                                  _g130379130397_))))
                                         (_g130378130393_ _g130379130397_)))))
                             (_g130377130437_ (list _tgt130276_ _hd130274_)))))
                   (if (gx#stx-null? _hd130274_)
                       (let* ((_g130441130449_
                               (lambda (_g130442130445_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g130442130445_)))
                              (_g130440130467_
                               (lambda (_g130442130453_)
                                 ((lambda (_L130456_)
                                    (let ()
                                      (let ((__tmp135707
                                             (gx#datum->syntax '#f 'if))
                                            (__tmp135701
                                             (let ((__tmp135704
                                                    (let ((__tmp135706
                                                           (gx#datum->syntax
                                                            '#f
                                                            'stx-null?))
                                                          (__tmp135705
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L130456_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp135706 __tmp135705)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp135702
                                                    (let ((__tmp135703
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _E130269_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _K130277_ __tmp135703))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp135704
                                                     __tmp135702))))
                                        (declare (not safe))
                                        (cons __tmp135707 __tmp135701))))
                                  _g130442130453_))))
                         (_g130440130467_ _tgt130276_))
                       (if (gx#stx-datum? _hd130274_)
                           (let* ((_g130471130490_
                                   (lambda (_g130472130486_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g130472130486_)))
                                  (_g130470130548_
                                   (lambda (_g130472130494_)
                                     (if (gx#stx-pair? _g130472130494_)
                                         (let ((_e130478130497_
                                                (gx#syntax-e _g130472130494_)))
                                           (let ((_hd130477130501_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e130478130497_)))
                                                 (_tl130476130504_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e130478130497_))))
                                             (if (gx#stx-pair?
                                                  _tl130476130504_)
                                                 (let ((_e130481130507_
                                                        (gx#syntax-e
                                                         _tl130476130504_)))
                                                   (let ((_hd130480130511_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e130481130507_)))
                                                         (_tl130479130514_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e130481130507_))))
                                                     (if (gx#stx-pair?
                                                          _tl130479130514_)
                                                         (let ((_e130484130517_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl130479130514_)))
                   (let ((_hd130483130521_
                          (let ()
                            (declare (not safe))
                            (##car _e130484130517_)))
                         (_tl130482130524_
                          (let ()
                            (declare (not safe))
                            (##cdr _e130484130517_))))
                     (if (gx#stx-null? _tl130482130524_)
                         ((lambda (_L130527_ _L130529_ _L130530_)
                            (let ()
                              (let ((__tmp135700 (gx#datum->syntax '#f 'if))
                                    (__tmp135688
                                     (let ((__tmp135691
                                            (let ((__tmp135692
                                                   (let ((__tmp135697
                                                          (let ((__tmp135699
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'stx-e))
                        (__tmp135698
                         (let () (declare (not safe)) (cons _L130530_ '()))))
                    (declare (not safe))
                    (cons __tmp135699 __tmp135698)))
                 (__tmp135693
                  (let ((__tmp135694
                         (let ((__tmp135696 (gx#datum->syntax '#f 'quote))
                               (__tmp135695
                                (let ()
                                  (declare (not safe))
                                  (cons _L130529_ '()))))
                           (declare (not safe))
                           (cons __tmp135696 __tmp135695))))
                    (declare (not safe))
                    (cons __tmp135694 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp135697
                                                           __tmp135693))))
                                              (declare (not safe))
                                              (cons _L130527_ __tmp135692)))
                                           (__tmp135689
                                            (let ((__tmp135690
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _E130269_ '()))))
                                              (declare (not safe))
                                              (cons _K130277_ __tmp135690))))
                                       (declare (not safe))
                                       (cons __tmp135691 __tmp135689))))
                                (declare (not safe))
                                (cons __tmp135700 __tmp135688))))
                          _hd130483130521_
                          _hd130480130511_
                          _hd130477130501_)
                         (_g130471130490_ _g130472130494_))))
                 (_g130471130490_ _g130472130494_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g130471130490_
                                                  _g130472130494_))))
                                         (_g130471130490_ _g130472130494_)))))
                             (_g130470130548_
                              (list _tgt130276_
                                    _hd130274_
                                    (let ((_e130552_ (gx#stx-e _hd130274_)))
                                      (if (or (keyword? _e130552_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _e130552_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (let ()
                                                (declare (not safe))
                                                (number? _e130552_))
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _stx129719_
                            _where130264_
                            _hd130274_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx135552135553_)
                                                    (let ((_e130286130566_
                                                           (gx#syntax-e
                                                            ___stx135552135553_)))
                                                      (let ((_tl130284130573_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e130286130566_)))
                    (_hd130285130570_
                     (let () (declare (not safe)) (##car _e130286130566_))))
                (___kont135555135556_ _tl130284130573_ _hd130285130570_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont135557135558_)))))))
                                  (_recur130271_
                                   _hd130266_
                                   _tgt129871_
                                   (let ((__tmp135736
                                          (gx#datum->syntax '#f 'if))
                                         (__tmp135733
                                          (let ((__tmp135734
                                                 (let ((__tmp135735
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _E130269_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _body130268_
                                                         __tmp135735))))
                                            (declare (not safe))
                                            (cons _fender130267_
                                                  __tmp135734))))
                                     (declare (not safe))
                                     (cons __tmp135736 __tmp135733))))))
                             (_generate-clauses129879_
                              (lambda (_clauses130002_)
                                (let _lp130005_ ((_rest130008_ _clauses130002_)
                                                 (_E130010_ (gx#genident 'E))
                                                 (_r130011_ '()))
                                  (let* ((___stx135588135589_ _rest130008_)
                                         (_g130014130026_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx135588135589_))))
                                    (let ((___kont135591135592_
                                           (lambda (_L130091_ _L130093_)
                                             (let* ((___stx135568135569_
                                                     _L130093_)
                                                    (_g130105130116_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        ___stx135568135569_))))
                                               (let ((___kont135571135572_
                                                      (lambda (_L130245_)
                                                        (if (gx#stx-null?
                                                             _L130091_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L130245_)
                             (let ((__tmp135745 (gx#stx-null? _L130245_)))
                               (declare (not safe))
                               (not __tmp135745)))
                        (let ((__tmp135737
                               (let ((__tmp135738
                                      (let ((__tmp135739
                                             (gx#stx-wrap-source
                                              (let ((__tmp135744
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp135740
                                                     (let ((__tmp135741
                                                            (let ((__tmp135742
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp135743 (gx#datum->syntax '#f 'begin)))
                             (declare (not safe))
                             (cons __tmp135743 _L130245_))))
                      (declare (not safe))
                      (cons __tmp135742 '()))))
               (declare (not safe))
               (cons '() __tmp135741))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp135744 __tmp135740))
                                              (gx#stx-source _L130093_))))
                                        (declare (not safe))
                                        (cons __tmp135739 '()))))
                                 (declare (not safe))
                                 (cons _E130010_ __tmp135738))))
                          (declare (not safe))
                          (cons __tmp135737 _r130011_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _stx129719_
                         _L130093_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _stx129719_
                     _L130093_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont135573135574_
                                                      (lambda ()
                                                        (let* ((_g130127130135_
                                                                (lambda (_g130128130131_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g130128130131_)))
                       (_g130126130224_
                        (lambda (_g130128130139_)
                          ((lambda (_L130142_)
                             (let ()
                               (let* ((_g130158130166_
                                       (lambda (_g130159130162_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g130159130162_)))
                                      (_g130157130220_
                                       (lambda (_g130159130170_)
                                         ((lambda (_L130173_)
                                            (let ()
                                              (let* ((_g130186130194_
                                                      (lambda (_g130187130190_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g130187130190_)))
                                                     (_g130185130216_
                                                      (lambda (_g130187130198_)
                                                        ((lambda (_L130201_)
                                                           (let ()
                                                             (let ()
                                                               (_lp130005_
                                                                _L130091_
                                                                _L130142_
                                                                (let ((__tmp135746
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp135747
                                      (let ()
                                        (declare (not safe))
                                        (cons _L130201_ '()))))
                                 (declare (not safe))
                                 (cons _E130010_ __tmp135747))))
                          (declare (not safe))
                          (cons __tmp135746 _r130011_))))))
                 _g130187130198_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g130185130216_
                                                 (gx#stx-wrap-source
                                                  (let ((__tmp135750
                                                         (gx#datum->syntax
                                                          '#f
                                                          'lambda))
                                                        (__tmp135748
                                                         (let ((__tmp135749
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _L130173_ '()))))
                   (declare (not safe))
                   (cons '() __tmp135749))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135750
                                                          __tmp135748))
                                                  (gx#stx-source
                                                   _L130093_))))))
                                          _g130159130170_))))
                                 (_g130157130220_
                                  (_generate-clause129876_
                                   _L130093_
                                   (let ()
                                     (declare (not safe))
                                     (cons _L130142_ '())))))))
                           _g130128130139_))))
                  (_g130126130224_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      ___stx135568135569_)
                                                     (let ((_e130110130235_
                                                            (gx#syntax-e
                                                             ___stx135568135569_)))
                                                       (let ((_tl130108130242_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e130110130235_)))
                     (_hd130109130239_
                      (let () (declare (not safe)) (##car _e130110130235_))))
                 (if (gx#identifier? _hd130109130239_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g135751_|
                          _hd130109130239_)
                         (___kont135571135572_ _tl130108130242_)
                         (___kont135573135574_))
                     (___kont135573135574_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont135573135574_))))))
                                          (___kont135593135594_
                                           (lambda ()
                                             (let* ((_g130037130045_
                                                     (lambda (_g130038130041_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g130038130041_)))
                                                    (_g130036130070_
                                                     (lambda (_g130038130049_)
                                                       ((lambda (_L130052_)
                                                          (let ()
                                                            (let ((__tmp135752
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp135753
                                  (let ((__tmp135754
                                         (gx#stx-wrap-source
                                          (let ((__tmp135762
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp135755
                                                 (let ((__tmp135756
                                                        (let ((__tmp135757
                                                               (let ((__tmp135761
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'raise-syntax-error))
                             (__tmp135758
                              (let ((__tmp135759
                                     (let ((__tmp135760
                                            (let ()
                                              (declare (not safe))
                                              (cons _L130052_ '()))))
                                       (declare (not safe))
                                       (cons '"Bad syntax; invalid syntax-case clause"
                                             __tmp135760))))
                                (declare (not safe))
                                (cons '#f __tmp135759))))
                         (declare (not safe))
                         (cons __tmp135761 __tmp135758))))
                  (declare (not safe))
                  (cons __tmp135757 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '() __tmp135756))))
                                            (declare (not safe))
                                            (cons __tmp135762 __tmp135755))
                                          (gx#stx-source _stx129719_))))
                                    (declare (not safe))
                                    (cons __tmp135754 '()))))
                             (declare (not safe))
                             (cons _E130010_ __tmp135753))))
                      (declare (not safe))
                      (cons __tmp135752 _r130011_))))
                _g130038130049_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g130036130070_
                                                _tgt129871_)))))
                                      (if (gx#stx-pair? ___stx135588135589_)
                                          (let ((_e130020130081_
                                                 (gx#syntax-e
                                                  ___stx135588135589_)))
                                            (let ((_tl130018130088_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e130020130081_)))
                                                  (_hd130019130085_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e130020130081_))))
                                              (___kont135591135592_
                                               _tl130018130088_
                                               _hd130019130085_)))
                                          (___kont135593135594_))))))))
                      (let* ((_bind129881_
                              (_generate-clauses129879_ _clauses129874_))
                             (_g129884129901_
                              (lambda (_g129885129897_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g129885129897_)))
                             (_g129883129998_
                              (lambda (_g129885129905_)
                                (if (gx#stx-pair/null? _g129885129905_)
                                    (let ((_g135763_
                                           (gx#syntax-split-splice
                                            _g129885129905_
                                            '0)))
                                      (begin
                                        (let ((_g135764_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g135763_)
                                                     (##vector-length
                                                      _g135763_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g135764_ 2)))
                                              (error "Context expects 2 values"
                                                     _g135764_)))
                                        (let ((_target129887129908_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g135763_ 0)))
                                              (_tl129889129911_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g135763_ 1))))
                                          (if (gx#stx-null? _tl129889129911_)
                                              (letrec ((_loop129890129914_
                                                        (lambda (_hd129888129918_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind-try129894129921_)
                  (if (gx#stx-pair? _hd129888129918_)
                      (let ((_e129891129924_ (gx#syntax-e _hd129888129918_)))
                        (let ((_lp-hd129892129928_
                               (let ()
                                 (declare (not safe))
                                 (##car _e129891129924_)))
                              (_lp-tl129893129931_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e129891129924_))))
                          (_loop129890129914_
                           _lp-tl129893129931_
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd129892129928_
                                   _bind-try129894129921_)))))
                      (let ((_bind-try129895129934_
                             (reverse _bind-try129894129921_)))
                        ((lambda (_L129938_)
                           (let ()
                             (let* ((_g129956129964_
                                     (lambda (_g129957129960_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _g129957129960_)))
                                    (_g129955129994_
                                     (lambda (_g129957129968_)
                                       ((lambda (_L129971_)
                                          (let ()
                                            (let ()
                                              (let ((__tmp135770
                                                     (gx#datum->syntax
                                                      '#f
                                                      'let*))
                                                    (__tmp135765
                                                     (let ((__tmp135768
                                                            (let ((__tmp135769
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g129985129988_ _g129986129991_)
                             (let ()
                               (declare (not safe))
                               (cons _g129985129988_ _g129986129991_)))))
                      (declare (not safe))
                      (foldr1 __tmp135769 '() _L129938_)))
                   (__tmp135766
                    (let ((__tmp135767
                           (let () (declare (not safe)) (cons _L129971_ '()))))
                      (declare (not safe))
                      (cons __tmp135767 '()))))
               (declare (not safe))
               (cons __tmp135768 __tmp135766))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp135770
                                                      __tmp135765)))))
                                        _g129957129968_))))
                               (_g129955129994_
                                (car (let ()
                                       (declare (not safe))
                                       (last _bind129881_)))))))
                         _bind-try129895129934_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop129890129914_
                                                 _target129887129908_
                                                 '()))
                                              (_g129884129901_
                                               _g129885129905_)))))
                                    (_g129884129901_ _g129885129905_)))))
                        (_g129883129998_ _bind129881_))))))
          (let* ((_g129725129744_
                  (lambda (_g129726129740_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g129726129740_)))
                 (_g129724129867_
                  (lambda (_g129726129748_)
                    (if (gx#stx-pair? _g129726129748_)
                        (let ((_e129732129751_ (gx#syntax-e _g129726129748_)))
                          (let ((_hd129731129755_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e129732129751_)))
                                (_tl129730129758_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e129732129751_))))
                            (if (gx#stx-pair? _tl129730129758_)
                                (let ((_e129735129761_
                                       (gx#syntax-e _tl129730129758_)))
                                  (let ((_hd129734129765_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e129735129761_)))
                                        (_tl129733129768_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e129735129761_))))
                                    (if (gx#stx-pair? _tl129733129768_)
                                        (let ((_e129738129771_
                                               (gx#syntax-e _tl129733129768_)))
                                          (let ((_hd129737129775_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e129738129771_)))
                                                (_tl129736129778_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e129738129771_))))
                                            ((lambda (_L129781_
                                                      _L129783_
                                                      _L129784_)
                                               (if (and (gx#identifier-list?
                                                         _L129783_)
                                                        (gx#stx-list?
                                                         _L129781_))
                                                   (let* ((_g129802129810_
                                                           (lambda (_g129803129806_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g129803129806_)))
                                                          (_g129801129863_
                                                           (lambda (_g129803129814_)
                                                             ((lambda (_L129817_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g129829129837_
                                  (lambda (_g129830129833_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g129830129833_)))
                                 (_g129828129859_
                                  (lambda (_g129830129841_)
                                    ((lambda (_L129844_)
                                       (let ()
                                         (let ()
                                           (let ((__tmp135776
                                                  (gx#datum->syntax '#f 'let))
                                                 (__tmp135771
                                                  (let ((__tmp135773
                                                         (let ((__tmp135774
                                                                (let ((__tmp135775
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L129784_ '()))))
                          (declare (not safe))
                          (cons _L129817_ __tmp135775))))
                   (declare (not safe))
                   (cons __tmp135774 '())))
                (__tmp135772
                 (let () (declare (not safe)) (cons _L129844_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135773
                                                          __tmp135772))))
                                             (declare (not safe))
                                             (cons __tmp135776 __tmp135771)))))
                                     _g129830129841_))))
                            (_g129828129859_
                             (_generate129722_
                              _L129817_
                              (gx#syntax->list _L129783_)
                              _L129781_)))))
                      _g129803129814_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g129801129863_
                                                      (gx#genident 'e)))
                                                   (_g129725129744_
                                                    _g129726129748_)))
                                             _tl129736129778_
                                             _hd129737129775_
                                             _hd129734129765_)))
                                        (_g129725129744_ _g129726129748_))))
                                (_g129725129744_ _g129726129748_))))
                        (_g129725129744_ _g129726129748_)))))
            (_g129724129867_ _stx129719_)))))))
