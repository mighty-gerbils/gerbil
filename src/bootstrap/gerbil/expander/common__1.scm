(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g135610_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135612_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135614_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135619_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135622_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135627_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135630_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135635_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135638_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135643_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135646_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135753_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj135605
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
           __obj135605
           'gerbil#AST::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135605
           'syntax
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135605
           '(e source)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135605
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135605
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135605
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135605
           '#f
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp135609 |gx[1]#_g135610_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135605
           __tmp135609
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp135611 |gx[1]#_g135612_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135605
           __tmp135611
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp135613 |gx[1]#_g135614_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135605
           __tmp135613
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp135615
               (let ((__tmp135620
                      (let ((__tmp135621 |gx[1]#_g135622_|))
                        (declare (not safe))
                        (cons 'e __tmp135621)))
                     (__tmp135616
                      (let ((__tmp135617
                             (let ((__tmp135618 |gx[1]#_g135619_|))
                               (declare (not safe))
                               (cons 'source __tmp135618))))
                        (declare (not safe))
                        (cons __tmp135617 '()))))
                 (declare (not safe))
                 (cons __tmp135620 __tmp135616))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135605
           __tmp135615
           '11
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp135623
               (let ((__tmp135628
                      (let ((__tmp135629 |gx[1]#_g135630_|))
                        (declare (not safe))
                        (cons 'e __tmp135629)))
                     (__tmp135624
                      (let ((__tmp135625
                             (let ((__tmp135626 |gx[1]#_g135627_|))
                               (declare (not safe))
                               (cons 'source __tmp135626))))
                        (declare (not safe))
                        (cons __tmp135625 '()))))
                 (declare (not safe))
                 (cons __tmp135628 __tmp135624))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135605
           __tmp135623
           '12
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp135631
               (let ((__tmp135636
                      (let ((__tmp135637 |gx[1]#_g135638_|))
                        (declare (not safe))
                        (cons 'e __tmp135637)))
                     (__tmp135632
                      (let ((__tmp135633
                             (let ((__tmp135634 |gx[1]#_g135635_|))
                               (declare (not safe))
                               (cons 'source __tmp135634))))
                        (declare (not safe))
                        (cons __tmp135633 '()))))
                 (declare (not safe))
                 (cons __tmp135636 __tmp135632))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135605
           __tmp135631
           '13
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp135639
               (let ((__tmp135644
                      (let ((__tmp135645 |gx[1]#_g135646_|))
                        (declare (not safe))
                        (cons 'e __tmp135645)))
                     (__tmp135640
                      (let ((__tmp135641
                             (let ((__tmp135642 |gx[1]#_g135643_|))
                               (declare (not safe))
                               (cons 'source __tmp135642))))
                        (declare (not safe))
                        (cons __tmp135641 '()))))
                 (declare (not safe))
                 (cons __tmp135644 __tmp135640))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135605
           __tmp135639
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj135605))
    (define |gx[:0:]#check-procedure|
      (lambda (_$stx129657_)
        (let* ((_g129661129675_
                (lambda (_g129662129671_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g129662129671_)))
               (_g129660129717_
                (lambda (_g129662129679_)
                  (if (gx#stx-pair? _g129662129679_)
                      (let ((_e129666129682_ (gx#syntax-e _g129662129679_)))
                        (let ((_hd129665129686_
                               (let ()
                                 (declare (not safe))
                                 (##car _e129666129682_)))
                              (_tl129664129689_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e129666129682_))))
                          (if (gx#stx-pair? _tl129664129689_)
                              (let ((_e129669129692_
                                     (gx#syntax-e _tl129664129689_)))
                                (let ((_hd129668129696_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e129669129692_)))
                                      (_tl129667129699_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e129669129692_))))
                                  (if (gx#stx-null? _tl129667129699_)
                                      ((lambda (_L129702_)
                                         (let ((__tmp135656
                                                (gx#datum->syntax '#f 'unless))
                                               (__tmp135647
                                                (let ((__tmp135653
                                                       (let ((__tmp135655
                                                              (gx#datum->syntax
                                                               '#f
                                                               'procedure?))
                                                             (__tmp135654
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L129702_ '()))))
                 (declare (not safe))
                 (cons __tmp135655 __tmp135654)))
              (__tmp135648
               (let ((__tmp135649
                      (let ((__tmp135652 (gx#datum->syntax '#f 'error))
                            (__tmp135650
                             (let ((__tmp135651
                                    (let ()
                                      (declare (not safe))
                                      (cons _L129702_ '()))))
                               (declare (not safe))
                               (cons '"expected procedure" __tmp135651))))
                        (declare (not safe))
                        (cons __tmp135652 __tmp135650))))
                 (declare (not safe))
                 (cons __tmp135649 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp135653
                                                        __tmp135648))))
                                           (declare (not safe))
                                           (cons __tmp135656 __tmp135647)))
                                       _hd129668129696_)
                                      (_g129661129675_ _g129662129679_))))
                              (_g129661129675_ _g129662129679_))))
                      (_g129661129675_ _g129662129679_)))))
          (_g129660129717_ _$stx129657_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_stx129721_)
        (letrec ((_generate129724_
                  (lambda (_tgt129873_ _kws129875_ _clauses129876_)
                    (letrec ((_generate-clause129878_
                              (lambda (_hd130788_ _E130790_)
                                (let* ((___stx135508135509_ _hd130788_)
                                       (_g130794130821_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx135508135509_))))
                                  (let ((___kont135511135512_
                                         (lambda (_L130917_ _L130919_)
                                           (_generate1129880_
                                            _hd130788_
                                            _L130919_
                                            '#t
                                            _L130917_
                                            _E130790_)))
                                        (___kont135513135514_
                                         (lambda (_L130869_
                                                  _L130871_
                                                  _L130872_)
                                           (_generate1129880_
                                            _hd130788_
                                            _L130872_
                                            _L130871_
                                            _L130869_
                                            _E130790_)))
                                        (___kont135515135516_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _stx129721_
                                            _hd130788_))))
                                    (if (gx#stx-pair? ___stx135508135509_)
                                        (let ((_e130800130897_
                                               (gx#syntax-e
                                                ___stx135508135509_)))
                                          (let ((_tl130798130904_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e130800130897_)))
                                                (_hd130799130901_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e130800130897_))))
                                            (if (gx#stx-pair? _tl130798130904_)
                                                (let ((_e130803130907_
                                                       (gx#syntax-e
                                                        _tl130798130904_)))
                                                  (let ((_tl130801130914_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e130803130907_)))
                                                        (_hd130802130911_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e130803130907_))))
                                                    (if (gx#stx-null?
                                                         _tl130801130914_)
                                                        (___kont135511135512_
                                                         _hd130802130911_
                                                         _hd130799130901_)
                                                        (if (gx#stx-pair?
                                                             _tl130801130914_)
                                                            (let ((_e130815130859_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl130801130914_)))
                      (let ((_tl130813130866_
                             (let ()
                               (declare (not safe))
                               (##cdr _e130815130859_)))
                            (_hd130814130863_
                             (let ()
                               (declare (not safe))
                               (##car _e130815130859_))))
                        (if (gx#stx-null? _tl130813130866_)
                            (___kont135513135514_
                             _hd130814130863_
                             _hd130802130911_
                             _hd130799130901_)
                            (___kont135515135516_))))
                    (___kont135515135516_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont135515135516_))))
                                        (___kont135515135516_))))))
                             (_generate1129880_
                              (lambda (_where130266_
                                       _hd130268_
                                       _fender130269_
                                       _body130270_
                                       _E130271_)
                                (letrec ((_recur130273_
                                          (lambda (_hd130276_
                                                   _tgt130278_
                                                   _K130279_)
                                            (let* ((___stx135554135555_
                                                    _hd130276_)
                                                   (_g130282130294_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx135554135555_))))
                                              (let ((___kont135557135558_
                                                     (lambda (_L130578_
                                                              _L130580_)
                                                       (let* ((_g130591130599_
                                                               (lambda (_g130592130595_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g130592130595_)))
                      (_g130590130780_
                       (lambda (_g130592130603_)
                         ((lambda (_L130606_)
                            (let ()
                              (let* ((_g130618130626_
                                      (lambda (_g130619130622_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g130619130622_)))
                                     (_g130617130776_
                                      (lambda (_g130619130630_)
                                        ((lambda (_L130633_)
                                           (let ()
                                             (let* ((_g130646130654_
                                                     (lambda (_g130647130650_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g130647130650_)))
                                                    (_g130645130772_
                                                     (lambda (_g130647130658_)
                                                       ((lambda (_L130661_)
                                                          (let ()
                                                            (let* ((_g130674130682_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g130675130678_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g130675130678_)))
                           (_g130673130768_
                            (lambda (_g130675130686_)
                              ((lambda (_L130689_)
                                 (let ()
                                   (let* ((_g130702130710_
                                           (lambda (_g130703130706_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g130703130706_)))
                                          (_g130701130764_
                                           (lambda (_g130703130714_)
                                             ((lambda (_L130717_)
                                                (let ()
                                                  (let* ((_g130730130738_
                                                          (lambda (_g130731130734_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g130731130734_)))
                                                         (_g130729130760_
                                                          (lambda (_g130731130742_)
                                                            ((lambda (_L130745_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((__tmp135689 (gx#datum->syntax '#f 'if))
                                 (__tmp135657
                                  (let ((__tmp135686
                                         (let ((__tmp135688
                                                (gx#datum->syntax
                                                 '#f
                                                 'stx-pair?))
                                               (__tmp135687
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L130606_ '()))))
                                           (declare (not safe))
                                           (cons __tmp135688 __tmp135687)))
                                        (__tmp135658
                                         (let ((__tmp135660
                                                (let ((__tmp135685
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp135661
                                                       (let ((__tmp135679
                                                              (let ((__tmp135680
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp135681
                                    (let ((__tmp135682
                                           (let ((__tmp135684
                                                  (gx#datum->syntax
                                                   '#f
                                                   'syntax-e))
                                                 (__tmp135683
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L130606_ '()))))
                                             (declare (not safe))
                                             (cons __tmp135684 __tmp135683))))
                                      (declare (not safe))
                                      (cons __tmp135682 '()))))
                               (declare (not safe))
                               (cons _L130633_ __tmp135681))))
                        (declare (not safe))
                        (cons __tmp135680 '())))
                     (__tmp135662
                      (let ((__tmp135663
                             (let ((__tmp135678 (gx#datum->syntax '#f 'let))
                                   (__tmp135664
                                    (let ((__tmp135666
                                           (let ((__tmp135673
                                                  (let ((__tmp135674
                                                         (let ((__tmp135675
                                                                (let ((__tmp135677
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '##car))
                              (__tmp135676
                               (let ()
                                 (declare (not safe))
                                 (cons _L130633_ '()))))
                          (declare (not safe))
                          (cons __tmp135677 __tmp135676))))
                   (declare (not safe))
                   (cons __tmp135675 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L130661_
                                                          __tmp135674)))
                                                 (__tmp135667
                                                  (let ((__tmp135668
                                                         (let ((__tmp135669
                                                                (let ((__tmp135670
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp135672
                                      (gx#datum->syntax '#f '##cdr))
                                     (__tmp135671
                                      (let ()
                                        (declare (not safe))
                                        (cons _L130633_ '()))))
                                 (declare (not safe))
                                 (cons __tmp135672 __tmp135671))))
                          (declare (not safe))
                          (cons __tmp135670 '()))))
                   (declare (not safe))
                   (cons _L130689_ __tmp135669))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135668 '()))))
                                             (declare (not safe))
                                             (cons __tmp135673 __tmp135667)))
                                          (__tmp135665
                                           (let ()
                                             (declare (not safe))
                                             (cons _L130717_ '()))))
                                      (declare (not safe))
                                      (cons __tmp135666 __tmp135665))))
                               (declare (not safe))
                               (cons __tmp135678 __tmp135664))))
                        (declare (not safe))
                        (cons __tmp135663 '()))))
                 (declare (not safe))
                 (cons __tmp135679 __tmp135662))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp135685
                                                        __tmp135661)))
                                               (__tmp135659
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L130745_ '()))))
                                           (declare (not safe))
                                           (cons __tmp135660 __tmp135659))))
                                    (declare (not safe))
                                    (cons __tmp135686 __tmp135658))))
                             (declare (not safe))
                             (cons __tmp135689 __tmp135657)))))
                     _g130731130742_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g130729130760_
                                                     _E130271_))))
                                              _g130703130714_))))
                                     (_g130701130764_
                                      (_recur130273_
                                       _L130580_
                                       _L130661_
                                       (_recur130273_
                                        _L130578_
                                        _L130689_
                                        _K130279_))))))
                               _g130675130686_))))
                      (_g130673130768_ (gx#genident 'tl)))))
                _g130647130658_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g130645130772_
                                                (gx#genident 'hd)))))
                                         _g130619130630_))))
                                (_g130617130776_ (gx#genident 'e)))))
                          _g130592130603_))))
                 (_g130590130780_ _tgt130278_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont135559135560_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _hd130276_)
                                                           (if (gx#underscore?
                                                                _hd130276_)
                                                               _K130279_
                                                               (if (let ((__tmp135734
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g130304130306_)
                                    (gx#bound-identifier=?
                                     _g130304130306_
                                     _hd130276_))))
                             (declare (not safe))
                             (find __tmp135734 _kws129875_))
                           (let* ((_g130310130325_
                                   (lambda (_g130311130321_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g130311130321_)))
                                  (_g130309130376_
                                   (lambda (_g130311130329_)
                                     (if (gx#stx-pair? _g130311130329_)
                                         (let ((_e130316130332_
                                                (gx#syntax-e _g130311130329_)))
                                           (let ((_hd130315130336_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e130316130332_)))
                                                 (_tl130314130339_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e130316130332_))))
                                             (if (gx#stx-pair?
                                                  _tl130314130339_)
                                                 (let ((_e130319130342_
                                                        (gx#syntax-e
                                                         _tl130314130339_)))
                                                   (let ((_hd130318130346_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e130319130342_)))
                                                         (_tl130317130349_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e130319130342_))))
                                                     (if (gx#stx-null?
                                                          _tl130317130349_)
                                                         ((lambda (_L130352_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L130354_)
                    (let ()
                      (let ((__tmp135733 (gx#datum->syntax '#f 'if))
                            (__tmp135716
                             (let ((__tmp135719
                                    (let ((__tmp135732
                                           (gx#datum->syntax '#f 'and))
                                          (__tmp135720
                                           (let ((__tmp135729
                                                  (let ((__tmp135731
                                                         (gx#datum->syntax
                                                          '#f
                                                          'identifier?))
                                                        (__tmp135730
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L130354_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135731
                                                          __tmp135730)))
                                                 (__tmp135721
                                                  (let ((__tmp135722
                                                         (let ((__tmp135728
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'core-identifier=?))
                       (__tmp135723
                        (let ((__tmp135724
                               (let ((__tmp135725
                                      (let ((__tmp135727
                                             (gx#datum->syntax '#f 'quote))
                                            (__tmp135726
                                             (let ()
                                               (declare (not safe))
                                               (cons _L130352_ '()))))
                                        (declare (not safe))
                                        (cons __tmp135727 __tmp135726))))
                                 (declare (not safe))
                                 (cons __tmp135725 '()))))
                          (declare (not safe))
                          (cons _L130354_ __tmp135724))))
                   (declare (not safe))
                   (cons __tmp135728 __tmp135723))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135722 '()))))
                                             (declare (not safe))
                                             (cons __tmp135729 __tmp135721))))
                                      (declare (not safe))
                                      (cons __tmp135732 __tmp135720)))
                                   (__tmp135717
                                    (let ((__tmp135718
                                           (let ()
                                             (declare (not safe))
                                             (cons _E130271_ '()))))
                                      (declare (not safe))
                                      (cons _K130279_ __tmp135718))))
                               (declare (not safe))
                               (cons __tmp135719 __tmp135717))))
                        (declare (not safe))
                        (cons __tmp135733 __tmp135716))))
                  _hd130318130346_
                  _hd130315130336_)
                 (_g130310130325_ _g130311130329_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g130310130325_
                                                  _g130311130329_))))
                                         (_g130310130325_ _g130311130329_)))))
                             (_g130309130376_ (list _tgt130278_ _hd130276_)))
                           (let* ((_g130380130395_
                                   (lambda (_g130381130391_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g130381130391_)))
                                  (_g130379130439_
                                   (lambda (_g130381130399_)
                                     (if (gx#stx-pair? _g130381130399_)
                                         (let ((_e130386130402_
                                                (gx#syntax-e _g130381130399_)))
                                           (let ((_hd130385130406_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e130386130402_)))
                                                 (_tl130384130409_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e130386130402_))))
                                             (if (gx#stx-pair?
                                                  _tl130384130409_)
                                                 (let ((_e130389130412_
                                                        (gx#syntax-e
                                                         _tl130384130409_)))
                                                   (let ((_hd130388130416_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e130389130412_)))
                                                         (_tl130387130419_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e130389130412_))))
                                                     (if (gx#stx-null?
                                                          _tl130387130419_)
                                                         ((lambda (_L130422_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L130424_)
                    (let ()
                      (let ((__tmp135715 (gx#datum->syntax '#f 'let))
                            (__tmp135710
                             (let ((__tmp135712
                                    (let ((__tmp135713
                                           (let ((__tmp135714
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L130424_ '()))))
                                             (declare (not safe))
                                             (cons _L130422_ __tmp135714))))
                                      (declare (not safe))
                                      (cons __tmp135713 '())))
                                   (__tmp135711
                                    (let ()
                                      (declare (not safe))
                                      (cons _K130279_ '()))))
                               (declare (not safe))
                               (cons __tmp135712 __tmp135711))))
                        (declare (not safe))
                        (cons __tmp135715 __tmp135710))))
                  _hd130388130416_
                  _hd130385130406_)
                 (_g130380130395_ _g130381130399_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g130380130395_
                                                  _g130381130399_))))
                                         (_g130380130395_ _g130381130399_)))))
                             (_g130379130439_ (list _tgt130278_ _hd130276_)))))
                   (if (gx#stx-null? _hd130276_)
                       (let* ((_g130443130451_
                               (lambda (_g130444130447_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g130444130447_)))
                              (_g130442130469_
                               (lambda (_g130444130455_)
                                 ((lambda (_L130458_)
                                    (let ()
                                      (let ((__tmp135709
                                             (gx#datum->syntax '#f 'if))
                                            (__tmp135703
                                             (let ((__tmp135706
                                                    (let ((__tmp135708
                                                           (gx#datum->syntax
                                                            '#f
                                                            'stx-null?))
                                                          (__tmp135707
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L130458_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp135708 __tmp135707)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp135704
                                                    (let ((__tmp135705
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _E130271_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _K130279_ __tmp135705))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp135706
                                                     __tmp135704))))
                                        (declare (not safe))
                                        (cons __tmp135709 __tmp135703))))
                                  _g130444130455_))))
                         (_g130442130469_ _tgt130278_))
                       (if (gx#stx-datum? _hd130276_)
                           (let* ((_g130473130492_
                                   (lambda (_g130474130488_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g130474130488_)))
                                  (_g130472130550_
                                   (lambda (_g130474130496_)
                                     (if (gx#stx-pair? _g130474130496_)
                                         (let ((_e130480130499_
                                                (gx#syntax-e _g130474130496_)))
                                           (let ((_hd130479130503_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e130480130499_)))
                                                 (_tl130478130506_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e130480130499_))))
                                             (if (gx#stx-pair?
                                                  _tl130478130506_)
                                                 (let ((_e130483130509_
                                                        (gx#syntax-e
                                                         _tl130478130506_)))
                                                   (let ((_hd130482130513_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e130483130509_)))
                                                         (_tl130481130516_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e130483130509_))))
                                                     (if (gx#stx-pair?
                                                          _tl130481130516_)
                                                         (let ((_e130486130519_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl130481130516_)))
                   (let ((_hd130485130523_
                          (let ()
                            (declare (not safe))
                            (##car _e130486130519_)))
                         (_tl130484130526_
                          (let ()
                            (declare (not safe))
                            (##cdr _e130486130519_))))
                     (if (gx#stx-null? _tl130484130526_)
                         ((lambda (_L130529_ _L130531_ _L130532_)
                            (let ()
                              (let ((__tmp135702 (gx#datum->syntax '#f 'if))
                                    (__tmp135690
                                     (let ((__tmp135693
                                            (let ((__tmp135694
                                                   (let ((__tmp135699
                                                          (let ((__tmp135701
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'stx-e))
                        (__tmp135700
                         (let () (declare (not safe)) (cons _L130532_ '()))))
                    (declare (not safe))
                    (cons __tmp135701 __tmp135700)))
                 (__tmp135695
                  (let ((__tmp135696
                         (let ((__tmp135698 (gx#datum->syntax '#f 'quote))
                               (__tmp135697
                                (let ()
                                  (declare (not safe))
                                  (cons _L130531_ '()))))
                           (declare (not safe))
                           (cons __tmp135698 __tmp135697))))
                    (declare (not safe))
                    (cons __tmp135696 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp135699
                                                           __tmp135695))))
                                              (declare (not safe))
                                              (cons _L130529_ __tmp135694)))
                                           (__tmp135691
                                            (let ((__tmp135692
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _E130271_ '()))))
                                              (declare (not safe))
                                              (cons _K130279_ __tmp135692))))
                                       (declare (not safe))
                                       (cons __tmp135693 __tmp135691))))
                                (declare (not safe))
                                (cons __tmp135702 __tmp135690))))
                          _hd130485130523_
                          _hd130482130513_
                          _hd130479130503_)
                         (_g130473130492_ _g130474130496_))))
                 (_g130473130492_ _g130474130496_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g130473130492_
                                                  _g130474130496_))))
                                         (_g130473130492_ _g130474130496_)))))
                             (_g130472130550_
                              (list _tgt130278_
                                    _hd130276_
                                    (let ((_e130554_ (gx#stx-e _hd130276_)))
                                      (if (or (keyword? _e130554_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _e130554_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (let ()
                                                (declare (not safe))
                                                (number? _e130554_))
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _stx129721_
                            _where130266_
                            _hd130276_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx135554135555_)
                                                    (let ((_e130288130568_
                                                           (gx#syntax-e
                                                            ___stx135554135555_)))
                                                      (let ((_tl130286130575_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e130288130568_)))
                    (_hd130287130572_
                     (let () (declare (not safe)) (##car _e130288130568_))))
                (___kont135557135558_ _tl130286130575_ _hd130287130572_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont135559135560_)))))))
                                  (_recur130273_
                                   _hd130268_
                                   _tgt129873_
                                   (let ((__tmp135738
                                          (gx#datum->syntax '#f 'if))
                                         (__tmp135735
                                          (let ((__tmp135736
                                                 (let ((__tmp135737
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _E130271_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _body130270_
                                                         __tmp135737))))
                                            (declare (not safe))
                                            (cons _fender130269_
                                                  __tmp135736))))
                                     (declare (not safe))
                                     (cons __tmp135738 __tmp135735))))))
                             (_generate-clauses129881_
                              (lambda (_clauses130004_)
                                (let _lp130007_ ((_rest130010_ _clauses130004_)
                                                 (_E130012_ (gx#genident 'E))
                                                 (_r130013_ '()))
                                  (let* ((___stx135590135591_ _rest130010_)
                                         (_g130016130028_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx135590135591_))))
                                    (let ((___kont135593135594_
                                           (lambda (_L130093_ _L130095_)
                                             (let* ((___stx135570135571_
                                                     _L130095_)
                                                    (_g130107130118_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        ___stx135570135571_))))
                                               (let ((___kont135573135574_
                                                      (lambda (_L130247_)
                                                        (if (gx#stx-null?
                                                             _L130093_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L130247_)
                             (let ((__tmp135747 (gx#stx-null? _L130247_)))
                               (declare (not safe))
                               (not __tmp135747)))
                        (let ((__tmp135739
                               (let ((__tmp135740
                                      (let ((__tmp135741
                                             (gx#stx-wrap-source
                                              (let ((__tmp135746
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp135742
                                                     (let ((__tmp135743
                                                            (let ((__tmp135744
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp135745 (gx#datum->syntax '#f 'begin)))
                             (declare (not safe))
                             (cons __tmp135745 _L130247_))))
                      (declare (not safe))
                      (cons __tmp135744 '()))))
               (declare (not safe))
               (cons '() __tmp135743))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp135746 __tmp135742))
                                              (gx#stx-source _L130095_))))
                                        (declare (not safe))
                                        (cons __tmp135741 '()))))
                                 (declare (not safe))
                                 (cons _E130012_ __tmp135740))))
                          (declare (not safe))
                          (cons __tmp135739 _r130013_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _stx129721_
                         _L130095_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _stx129721_
                     _L130095_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont135575135576_
                                                      (lambda ()
                                                        (let* ((_g130129130137_
                                                                (lambda (_g130130130133_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g130130130133_)))
                       (_g130128130226_
                        (lambda (_g130130130141_)
                          ((lambda (_L130144_)
                             (let ()
                               (let* ((_g130160130168_
                                       (lambda (_g130161130164_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g130161130164_)))
                                      (_g130159130222_
                                       (lambda (_g130161130172_)
                                         ((lambda (_L130175_)
                                            (let ()
                                              (let* ((_g130188130196_
                                                      (lambda (_g130189130192_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g130189130192_)))
                                                     (_g130187130218_
                                                      (lambda (_g130189130200_)
                                                        ((lambda (_L130203_)
                                                           (let ()
                                                             (let ()
                                                               (_lp130007_
                                                                _L130093_
                                                                _L130144_
                                                                (let ((__tmp135748
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp135749
                                      (let ()
                                        (declare (not safe))
                                        (cons _L130203_ '()))))
                                 (declare (not safe))
                                 (cons _E130012_ __tmp135749))))
                          (declare (not safe))
                          (cons __tmp135748 _r130013_))))))
                 _g130189130200_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g130187130218_
                                                 (gx#stx-wrap-source
                                                  (let ((__tmp135752
                                                         (gx#datum->syntax
                                                          '#f
                                                          'lambda))
                                                        (__tmp135750
                                                         (let ((__tmp135751
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _L130175_ '()))))
                   (declare (not safe))
                   (cons '() __tmp135751))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135752
                                                          __tmp135750))
                                                  (gx#stx-source
                                                   _L130095_))))))
                                          _g130161130172_))))
                                 (_g130159130222_
                                  (_generate-clause129878_
                                   _L130095_
                                   (let ()
                                     (declare (not safe))
                                     (cons _L130144_ '())))))))
                           _g130130130141_))))
                  (_g130128130226_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      ___stx135570135571_)
                                                     (let ((_e130112130237_
                                                            (gx#syntax-e
                                                             ___stx135570135571_)))
                                                       (let ((_tl130110130244_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e130112130237_)))
                     (_hd130111130241_
                      (let () (declare (not safe)) (##car _e130112130237_))))
                 (if (gx#identifier? _hd130111130241_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g135753_|
                          _hd130111130241_)
                         (___kont135573135574_ _tl130110130244_)
                         (___kont135575135576_))
                     (___kont135575135576_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont135575135576_))))))
                                          (___kont135595135596_
                                           (lambda ()
                                             (let* ((_g130039130047_
                                                     (lambda (_g130040130043_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g130040130043_)))
                                                    (_g130038130072_
                                                     (lambda (_g130040130051_)
                                                       ((lambda (_L130054_)
                                                          (let ()
                                                            (let ((__tmp135754
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp135755
                                  (let ((__tmp135756
                                         (gx#stx-wrap-source
                                          (let ((__tmp135764
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp135757
                                                 (let ((__tmp135758
                                                        (let ((__tmp135759
                                                               (let ((__tmp135763
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'raise-syntax-error))
                             (__tmp135760
                              (let ((__tmp135761
                                     (let ((__tmp135762
                                            (let ()
                                              (declare (not safe))
                                              (cons _L130054_ '()))))
                                       (declare (not safe))
                                       (cons '"Bad syntax; invalid syntax-case clause"
                                             __tmp135762))))
                                (declare (not safe))
                                (cons '#f __tmp135761))))
                         (declare (not safe))
                         (cons __tmp135763 __tmp135760))))
                  (declare (not safe))
                  (cons __tmp135759 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '() __tmp135758))))
                                            (declare (not safe))
                                            (cons __tmp135764 __tmp135757))
                                          (gx#stx-source _stx129721_))))
                                    (declare (not safe))
                                    (cons __tmp135756 '()))))
                             (declare (not safe))
                             (cons _E130012_ __tmp135755))))
                      (declare (not safe))
                      (cons __tmp135754 _r130013_))))
                _g130040130051_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g130038130072_
                                                _tgt129873_)))))
                                      (if (gx#stx-pair? ___stx135590135591_)
                                          (let ((_e130022130083_
                                                 (gx#syntax-e
                                                  ___stx135590135591_)))
                                            (let ((_tl130020130090_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e130022130083_)))
                                                  (_hd130021130087_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e130022130083_))))
                                              (___kont135593135594_
                                               _tl130020130090_
                                               _hd130021130087_)))
                                          (___kont135595135596_))))))))
                      (let* ((_bind129883_
                              (_generate-clauses129881_ _clauses129876_))
                             (_g129886129903_
                              (lambda (_g129887129899_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g129887129899_)))
                             (_g129885130000_
                              (lambda (_g129887129907_)
                                (if (gx#stx-pair/null? _g129887129907_)
                                    (let ((_g135765_
                                           (gx#syntax-split-splice
                                            _g129887129907_
                                            '0)))
                                      (begin
                                        (let ((_g135766_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g135765_)
                                                     (##vector-length
                                                      _g135765_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g135766_ 2)))
                                              (error "Context expects 2 values"
                                                     _g135766_)))
                                        (let ((_target129889129910_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g135765_ 0)))
                                              (_tl129891129913_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g135765_ 1))))
                                          (if (gx#stx-null? _tl129891129913_)
                                              (letrec ((_loop129892129916_
                                                        (lambda (_hd129890129920_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind-try129896129923_)
                  (if (gx#stx-pair? _hd129890129920_)
                      (let ((_e129893129926_ (gx#syntax-e _hd129890129920_)))
                        (let ((_lp-hd129894129930_
                               (let ()
                                 (declare (not safe))
                                 (##car _e129893129926_)))
                              (_lp-tl129895129933_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e129893129926_))))
                          (_loop129892129916_
                           _lp-tl129895129933_
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd129894129930_
                                   _bind-try129896129923_)))))
                      (let ((_bind-try129897129936_
                             (reverse _bind-try129896129923_)))
                        ((lambda (_L129940_)
                           (let ()
                             (let* ((_g129958129966_
                                     (lambda (_g129959129962_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _g129959129962_)))
                                    (_g129957129996_
                                     (lambda (_g129959129970_)
                                       ((lambda (_L129973_)
                                          (let ()
                                            (let ()
                                              (let ((__tmp135772
                                                     (gx#datum->syntax
                                                      '#f
                                                      'let*))
                                                    (__tmp135767
                                                     (let ((__tmp135770
                                                            (let ((__tmp135771
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g129987129990_ _g129988129993_)
                             (let ()
                               (declare (not safe))
                               (cons _g129987129990_ _g129988129993_)))))
                      (declare (not safe))
                      (foldr1 __tmp135771 '() _L129940_)))
                   (__tmp135768
                    (let ((__tmp135769
                           (let () (declare (not safe)) (cons _L129973_ '()))))
                      (declare (not safe))
                      (cons __tmp135769 '()))))
               (declare (not safe))
               (cons __tmp135770 __tmp135768))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp135772
                                                      __tmp135767)))))
                                        _g129959129970_))))
                               (_g129957129996_
                                (car (let ()
                                       (declare (not safe))
                                       (last _bind129883_)))))))
                         _bind-try129897129936_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop129892129916_
                                                 _target129889129910_
                                                 '()))
                                              (_g129886129903_
                                               _g129887129907_)))))
                                    (_g129886129903_ _g129887129907_)))))
                        (_g129885130000_ _bind129883_))))))
          (let* ((_g129727129746_
                  (lambda (_g129728129742_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g129728129742_)))
                 (_g129726129869_
                  (lambda (_g129728129750_)
                    (if (gx#stx-pair? _g129728129750_)
                        (let ((_e129734129753_ (gx#syntax-e _g129728129750_)))
                          (let ((_hd129733129757_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e129734129753_)))
                                (_tl129732129760_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e129734129753_))))
                            (if (gx#stx-pair? _tl129732129760_)
                                (let ((_e129737129763_
                                       (gx#syntax-e _tl129732129760_)))
                                  (let ((_hd129736129767_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e129737129763_)))
                                        (_tl129735129770_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e129737129763_))))
                                    (if (gx#stx-pair? _tl129735129770_)
                                        (let ((_e129740129773_
                                               (gx#syntax-e _tl129735129770_)))
                                          (let ((_hd129739129777_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e129740129773_)))
                                                (_tl129738129780_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e129740129773_))))
                                            ((lambda (_L129783_
                                                      _L129785_
                                                      _L129786_)
                                               (if (and (gx#identifier-list?
                                                         _L129785_)
                                                        (gx#stx-list?
                                                         _L129783_))
                                                   (let* ((_g129804129812_
                                                           (lambda (_g129805129808_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g129805129808_)))
                                                          (_g129803129865_
                                                           (lambda (_g129805129816_)
                                                             ((lambda (_L129819_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g129831129839_
                                  (lambda (_g129832129835_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g129832129835_)))
                                 (_g129830129861_
                                  (lambda (_g129832129843_)
                                    ((lambda (_L129846_)
                                       (let ()
                                         (let ()
                                           (let ((__tmp135778
                                                  (gx#datum->syntax '#f 'let))
                                                 (__tmp135773
                                                  (let ((__tmp135775
                                                         (let ((__tmp135776
                                                                (let ((__tmp135777
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L129786_ '()))))
                          (declare (not safe))
                          (cons _L129819_ __tmp135777))))
                   (declare (not safe))
                   (cons __tmp135776 '())))
                (__tmp135774
                 (let () (declare (not safe)) (cons _L129846_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135775
                                                          __tmp135774))))
                                             (declare (not safe))
                                             (cons __tmp135778 __tmp135773)))))
                                     _g129832129843_))))
                            (_g129830129861_
                             (_generate129724_
                              _L129819_
                              (gx#syntax->list _L129785_)
                              _L129783_)))))
                      _g129805129816_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g129803129865_
                                                      (gx#genident 'e)))
                                                   (_g129727129746_
                                                    _g129728129750_)))
                                             _tl129738129780_
                                             _hd129739129777_
                                             _hd129736129767_)))
                                        (_g129727129746_ _g129728129750_))))
                                (_g129727129746_ _g129728129750_))))
                        (_g129727129746_ _g129728129750_)))))
            (_g129726129869_ _stx129721_)))))))
