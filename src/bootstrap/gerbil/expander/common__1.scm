(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g135637_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135639_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135641_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135646_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135649_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135654_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135657_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135662_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135665_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135670_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135673_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135780_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj135632
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
           __obj135632
           'gerbil#AST::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135632
           'syntax
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135632
           '(e source)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135632
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135632
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135632
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135632
           '#f
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp135636 |gx[1]#_g135637_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135632
           __tmp135636
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp135638 |gx[1]#_g135639_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135632
           __tmp135638
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp135640 |gx[1]#_g135641_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135632
           __tmp135640
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp135642
               (let ((__tmp135647
                      (let ((__tmp135648 |gx[1]#_g135649_|))
                        (declare (not safe))
                        (cons 'e __tmp135648)))
                     (__tmp135643
                      (let ((__tmp135644
                             (let ((__tmp135645 |gx[1]#_g135646_|))
                               (declare (not safe))
                               (cons 'source __tmp135645))))
                        (declare (not safe))
                        (cons __tmp135644 '()))))
                 (declare (not safe))
                 (cons __tmp135647 __tmp135643))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135632
           __tmp135642
           '11
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp135650
               (let ((__tmp135655
                      (let ((__tmp135656 |gx[1]#_g135657_|))
                        (declare (not safe))
                        (cons 'e __tmp135656)))
                     (__tmp135651
                      (let ((__tmp135652
                             (let ((__tmp135653 |gx[1]#_g135654_|))
                               (declare (not safe))
                               (cons 'source __tmp135653))))
                        (declare (not safe))
                        (cons __tmp135652 '()))))
                 (declare (not safe))
                 (cons __tmp135655 __tmp135651))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135632
           __tmp135650
           '12
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp135658
               (let ((__tmp135663
                      (let ((__tmp135664 |gx[1]#_g135665_|))
                        (declare (not safe))
                        (cons 'e __tmp135664)))
                     (__tmp135659
                      (let ((__tmp135660
                             (let ((__tmp135661 |gx[1]#_g135662_|))
                               (declare (not safe))
                               (cons 'source __tmp135661))))
                        (declare (not safe))
                        (cons __tmp135660 '()))))
                 (declare (not safe))
                 (cons __tmp135663 __tmp135659))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135632
           __tmp135658
           '13
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp135666
               (let ((__tmp135671
                      (let ((__tmp135672 |gx[1]#_g135673_|))
                        (declare (not safe))
                        (cons 'e __tmp135672)))
                     (__tmp135667
                      (let ((__tmp135668
                             (let ((__tmp135669 |gx[1]#_g135670_|))
                               (declare (not safe))
                               (cons 'source __tmp135669))))
                        (declare (not safe))
                        (cons __tmp135668 '()))))
                 (declare (not safe))
                 (cons __tmp135671 __tmp135667))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135632
           __tmp135666
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj135632))
    (define |gx[:0:]#check-procedure|
      (lambda (_$stx129684_)
        (let* ((_g129688129702_
                (lambda (_g129689129698_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g129689129698_)))
               (_g129687129744_
                (lambda (_g129689129706_)
                  (if (gx#stx-pair? _g129689129706_)
                      (let ((_e129693129709_ (gx#syntax-e _g129689129706_)))
                        (let ((_hd129692129713_
                               (let ()
                                 (declare (not safe))
                                 (##car _e129693129709_)))
                              (_tl129691129716_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e129693129709_))))
                          (if (gx#stx-pair? _tl129691129716_)
                              (let ((_e129696129719_
                                     (gx#syntax-e _tl129691129716_)))
                                (let ((_hd129695129723_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e129696129719_)))
                                      (_tl129694129726_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e129696129719_))))
                                  (if (gx#stx-null? _tl129694129726_)
                                      ((lambda (_L129729_)
                                         (let ((__tmp135683
                                                (gx#datum->syntax '#f 'unless))
                                               (__tmp135674
                                                (let ((__tmp135680
                                                       (let ((__tmp135682
                                                              (gx#datum->syntax
                                                               '#f
                                                               'procedure?))
                                                             (__tmp135681
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L129729_ '()))))
                 (declare (not safe))
                 (cons __tmp135682 __tmp135681)))
              (__tmp135675
               (let ((__tmp135676
                      (let ((__tmp135679 (gx#datum->syntax '#f 'error))
                            (__tmp135677
                             (let ((__tmp135678
                                    (let ()
                                      (declare (not safe))
                                      (cons _L129729_ '()))))
                               (declare (not safe))
                               (cons '"expected procedure" __tmp135678))))
                        (declare (not safe))
                        (cons __tmp135679 __tmp135677))))
                 (declare (not safe))
                 (cons __tmp135676 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp135680
                                                        __tmp135675))))
                                           (declare (not safe))
                                           (cons __tmp135683 __tmp135674)))
                                       _hd129695129723_)
                                      (_g129688129702_ _g129689129706_))))
                              (_g129688129702_ _g129689129706_))))
                      (_g129688129702_ _g129689129706_)))))
          (_g129687129744_ _$stx129684_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_stx129748_)
        (letrec ((_generate129751_
                  (lambda (_tgt129900_ _kws129902_ _clauses129903_)
                    (letrec ((_generate-clause129905_
                              (lambda (_hd130815_ _E130817_)
                                (let* ((___stx135535135536_ _hd130815_)
                                       (_g130821130848_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx135535135536_))))
                                  (let ((___kont135538135539_
                                         (lambda (_L130944_ _L130946_)
                                           (_generate1129907_
                                            _hd130815_
                                            _L130946_
                                            '#t
                                            _L130944_
                                            _E130817_)))
                                        (___kont135540135541_
                                         (lambda (_L130896_
                                                  _L130898_
                                                  _L130899_)
                                           (_generate1129907_
                                            _hd130815_
                                            _L130899_
                                            _L130898_
                                            _L130896_
                                            _E130817_)))
                                        (___kont135542135543_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _stx129748_
                                            _hd130815_))))
                                    (if (gx#stx-pair? ___stx135535135536_)
                                        (let ((_e130827130924_
                                               (gx#syntax-e
                                                ___stx135535135536_)))
                                          (let ((_tl130825130931_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e130827130924_)))
                                                (_hd130826130928_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e130827130924_))))
                                            (if (gx#stx-pair? _tl130825130931_)
                                                (let ((_e130830130934_
                                                       (gx#syntax-e
                                                        _tl130825130931_)))
                                                  (let ((_tl130828130941_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e130830130934_)))
                                                        (_hd130829130938_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e130830130934_))))
                                                    (if (gx#stx-null?
                                                         _tl130828130941_)
                                                        (___kont135538135539_
                                                         _hd130829130938_
                                                         _hd130826130928_)
                                                        (if (gx#stx-pair?
                                                             _tl130828130941_)
                                                            (let ((_e130842130886_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl130828130941_)))
                      (let ((_tl130840130893_
                             (let ()
                               (declare (not safe))
                               (##cdr _e130842130886_)))
                            (_hd130841130890_
                             (let ()
                               (declare (not safe))
                               (##car _e130842130886_))))
                        (if (gx#stx-null? _tl130840130893_)
                            (___kont135540135541_
                             _hd130841130890_
                             _hd130829130938_
                             _hd130826130928_)
                            (___kont135542135543_))))
                    (___kont135542135543_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont135542135543_))))
                                        (___kont135542135543_))))))
                             (_generate1129907_
                              (lambda (_where130293_
                                       _hd130295_
                                       _fender130296_
                                       _body130297_
                                       _E130298_)
                                (letrec ((_recur130300_
                                          (lambda (_hd130303_
                                                   _tgt130305_
                                                   _K130306_)
                                            (let* ((___stx135581135582_
                                                    _hd130303_)
                                                   (_g130309130321_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx135581135582_))))
                                              (let ((___kont135584135585_
                                                     (lambda (_L130605_
                                                              _L130607_)
                                                       (let* ((_g130618130626_
                                                               (lambda (_g130619130622_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g130619130622_)))
                      (_g130617130807_
                       (lambda (_g130619130630_)
                         ((lambda (_L130633_)
                            (let ()
                              (let* ((_g130645130653_
                                      (lambda (_g130646130649_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g130646130649_)))
                                     (_g130644130803_
                                      (lambda (_g130646130657_)
                                        ((lambda (_L130660_)
                                           (let ()
                                             (let* ((_g130673130681_
                                                     (lambda (_g130674130677_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g130674130677_)))
                                                    (_g130672130799_
                                                     (lambda (_g130674130685_)
                                                       ((lambda (_L130688_)
                                                          (let ()
                                                            (let* ((_g130701130709_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g130702130705_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g130702130705_)))
                           (_g130700130795_
                            (lambda (_g130702130713_)
                              ((lambda (_L130716_)
                                 (let ()
                                   (let* ((_g130729130737_
                                           (lambda (_g130730130733_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g130730130733_)))
                                          (_g130728130791_
                                           (lambda (_g130730130741_)
                                             ((lambda (_L130744_)
                                                (let ()
                                                  (let* ((_g130757130765_
                                                          (lambda (_g130758130761_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g130758130761_)))
                                                         (_g130756130787_
                                                          (lambda (_g130758130769_)
                                                            ((lambda (_L130772_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((__tmp135716 (gx#datum->syntax '#f 'if))
                                 (__tmp135684
                                  (let ((__tmp135713
                                         (let ((__tmp135715
                                                (gx#datum->syntax
                                                 '#f
                                                 'stx-pair?))
                                               (__tmp135714
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L130633_ '()))))
                                           (declare (not safe))
                                           (cons __tmp135715 __tmp135714)))
                                        (__tmp135685
                                         (let ((__tmp135687
                                                (let ((__tmp135712
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp135688
                                                       (let ((__tmp135706
                                                              (let ((__tmp135707
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp135708
                                    (let ((__tmp135709
                                           (let ((__tmp135711
                                                  (gx#datum->syntax
                                                   '#f
                                                   'syntax-e))
                                                 (__tmp135710
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L130633_ '()))))
                                             (declare (not safe))
                                             (cons __tmp135711 __tmp135710))))
                                      (declare (not safe))
                                      (cons __tmp135709 '()))))
                               (declare (not safe))
                               (cons _L130660_ __tmp135708))))
                        (declare (not safe))
                        (cons __tmp135707 '())))
                     (__tmp135689
                      (let ((__tmp135690
                             (let ((__tmp135705 (gx#datum->syntax '#f 'let))
                                   (__tmp135691
                                    (let ((__tmp135693
                                           (let ((__tmp135700
                                                  (let ((__tmp135701
                                                         (let ((__tmp135702
                                                                (let ((__tmp135704
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '##car))
                              (__tmp135703
                               (let ()
                                 (declare (not safe))
                                 (cons _L130660_ '()))))
                          (declare (not safe))
                          (cons __tmp135704 __tmp135703))))
                   (declare (not safe))
                   (cons __tmp135702 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L130688_
                                                          __tmp135701)))
                                                 (__tmp135694
                                                  (let ((__tmp135695
                                                         (let ((__tmp135696
                                                                (let ((__tmp135697
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp135699
                                      (gx#datum->syntax '#f '##cdr))
                                     (__tmp135698
                                      (let ()
                                        (declare (not safe))
                                        (cons _L130660_ '()))))
                                 (declare (not safe))
                                 (cons __tmp135699 __tmp135698))))
                          (declare (not safe))
                          (cons __tmp135697 '()))))
                   (declare (not safe))
                   (cons _L130716_ __tmp135696))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135695 '()))))
                                             (declare (not safe))
                                             (cons __tmp135700 __tmp135694)))
                                          (__tmp135692
                                           (let ()
                                             (declare (not safe))
                                             (cons _L130744_ '()))))
                                      (declare (not safe))
                                      (cons __tmp135693 __tmp135692))))
                               (declare (not safe))
                               (cons __tmp135705 __tmp135691))))
                        (declare (not safe))
                        (cons __tmp135690 '()))))
                 (declare (not safe))
                 (cons __tmp135706 __tmp135689))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp135712
                                                        __tmp135688)))
                                               (__tmp135686
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L130772_ '()))))
                                           (declare (not safe))
                                           (cons __tmp135687 __tmp135686))))
                                    (declare (not safe))
                                    (cons __tmp135713 __tmp135685))))
                             (declare (not safe))
                             (cons __tmp135716 __tmp135684)))))
                     _g130758130769_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g130756130787_
                                                     _E130298_))))
                                              _g130730130741_))))
                                     (_g130728130791_
                                      (_recur130300_
                                       _L130607_
                                       _L130688_
                                       (_recur130300_
                                        _L130605_
                                        _L130716_
                                        _K130306_))))))
                               _g130702130713_))))
                      (_g130700130795_ (gx#genident 'tl)))))
                _g130674130685_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g130672130799_
                                                (gx#genident 'hd)))))
                                         _g130646130657_))))
                                (_g130644130803_ (gx#genident 'e)))))
                          _g130619130630_))))
                 (_g130617130807_ _tgt130305_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont135586135587_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _hd130303_)
                                                           (if (gx#underscore?
                                                                _hd130303_)
                                                               _K130306_
                                                               (if (let ((__tmp135761
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g130331130333_)
                                    (gx#bound-identifier=?
                                     _g130331130333_
                                     _hd130303_))))
                             (declare (not safe))
                             (find __tmp135761 _kws129902_))
                           (let* ((_g130337130352_
                                   (lambda (_g130338130348_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g130338130348_)))
                                  (_g130336130403_
                                   (lambda (_g130338130356_)
                                     (if (gx#stx-pair? _g130338130356_)
                                         (let ((_e130343130359_
                                                (gx#syntax-e _g130338130356_)))
                                           (let ((_hd130342130363_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e130343130359_)))
                                                 (_tl130341130366_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e130343130359_))))
                                             (if (gx#stx-pair?
                                                  _tl130341130366_)
                                                 (let ((_e130346130369_
                                                        (gx#syntax-e
                                                         _tl130341130366_)))
                                                   (let ((_hd130345130373_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e130346130369_)))
                                                         (_tl130344130376_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e130346130369_))))
                                                     (if (gx#stx-null?
                                                          _tl130344130376_)
                                                         ((lambda (_L130379_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L130381_)
                    (let ()
                      (let ((__tmp135760 (gx#datum->syntax '#f 'if))
                            (__tmp135743
                             (let ((__tmp135746
                                    (let ((__tmp135759
                                           (gx#datum->syntax '#f 'and))
                                          (__tmp135747
                                           (let ((__tmp135756
                                                  (let ((__tmp135758
                                                         (gx#datum->syntax
                                                          '#f
                                                          'identifier?))
                                                        (__tmp135757
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L130381_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135758
                                                          __tmp135757)))
                                                 (__tmp135748
                                                  (let ((__tmp135749
                                                         (let ((__tmp135755
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'core-identifier=?))
                       (__tmp135750
                        (let ((__tmp135751
                               (let ((__tmp135752
                                      (let ((__tmp135754
                                             (gx#datum->syntax '#f 'quote))
                                            (__tmp135753
                                             (let ()
                                               (declare (not safe))
                                               (cons _L130379_ '()))))
                                        (declare (not safe))
                                        (cons __tmp135754 __tmp135753))))
                                 (declare (not safe))
                                 (cons __tmp135752 '()))))
                          (declare (not safe))
                          (cons _L130381_ __tmp135751))))
                   (declare (not safe))
                   (cons __tmp135755 __tmp135750))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135749 '()))))
                                             (declare (not safe))
                                             (cons __tmp135756 __tmp135748))))
                                      (declare (not safe))
                                      (cons __tmp135759 __tmp135747)))
                                   (__tmp135744
                                    (let ((__tmp135745
                                           (let ()
                                             (declare (not safe))
                                             (cons _E130298_ '()))))
                                      (declare (not safe))
                                      (cons _K130306_ __tmp135745))))
                               (declare (not safe))
                               (cons __tmp135746 __tmp135744))))
                        (declare (not safe))
                        (cons __tmp135760 __tmp135743))))
                  _hd130345130373_
                  _hd130342130363_)
                 (_g130337130352_ _g130338130356_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g130337130352_
                                                  _g130338130356_))))
                                         (_g130337130352_ _g130338130356_)))))
                             (_g130336130403_ (list _tgt130305_ _hd130303_)))
                           (let* ((_g130407130422_
                                   (lambda (_g130408130418_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g130408130418_)))
                                  (_g130406130466_
                                   (lambda (_g130408130426_)
                                     (if (gx#stx-pair? _g130408130426_)
                                         (let ((_e130413130429_
                                                (gx#syntax-e _g130408130426_)))
                                           (let ((_hd130412130433_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e130413130429_)))
                                                 (_tl130411130436_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e130413130429_))))
                                             (if (gx#stx-pair?
                                                  _tl130411130436_)
                                                 (let ((_e130416130439_
                                                        (gx#syntax-e
                                                         _tl130411130436_)))
                                                   (let ((_hd130415130443_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e130416130439_)))
                                                         (_tl130414130446_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e130416130439_))))
                                                     (if (gx#stx-null?
                                                          _tl130414130446_)
                                                         ((lambda (_L130449_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L130451_)
                    (let ()
                      (let ((__tmp135742 (gx#datum->syntax '#f 'let))
                            (__tmp135737
                             (let ((__tmp135739
                                    (let ((__tmp135740
                                           (let ((__tmp135741
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L130451_ '()))))
                                             (declare (not safe))
                                             (cons _L130449_ __tmp135741))))
                                      (declare (not safe))
                                      (cons __tmp135740 '())))
                                   (__tmp135738
                                    (let ()
                                      (declare (not safe))
                                      (cons _K130306_ '()))))
                               (declare (not safe))
                               (cons __tmp135739 __tmp135738))))
                        (declare (not safe))
                        (cons __tmp135742 __tmp135737))))
                  _hd130415130443_
                  _hd130412130433_)
                 (_g130407130422_ _g130408130426_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g130407130422_
                                                  _g130408130426_))))
                                         (_g130407130422_ _g130408130426_)))))
                             (_g130406130466_ (list _tgt130305_ _hd130303_)))))
                   (if (gx#stx-null? _hd130303_)
                       (let* ((_g130470130478_
                               (lambda (_g130471130474_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g130471130474_)))
                              (_g130469130496_
                               (lambda (_g130471130482_)
                                 ((lambda (_L130485_)
                                    (let ()
                                      (let ((__tmp135736
                                             (gx#datum->syntax '#f 'if))
                                            (__tmp135730
                                             (let ((__tmp135733
                                                    (let ((__tmp135735
                                                           (gx#datum->syntax
                                                            '#f
                                                            'stx-null?))
                                                          (__tmp135734
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L130485_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp135735 __tmp135734)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp135731
                                                    (let ((__tmp135732
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _E130298_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _K130306_ __tmp135732))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp135733
                                                     __tmp135731))))
                                        (declare (not safe))
                                        (cons __tmp135736 __tmp135730))))
                                  _g130471130482_))))
                         (_g130469130496_ _tgt130305_))
                       (if (gx#stx-datum? _hd130303_)
                           (let* ((_g130500130519_
                                   (lambda (_g130501130515_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g130501130515_)))
                                  (_g130499130577_
                                   (lambda (_g130501130523_)
                                     (if (gx#stx-pair? _g130501130523_)
                                         (let ((_e130507130526_
                                                (gx#syntax-e _g130501130523_)))
                                           (let ((_hd130506130530_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e130507130526_)))
                                                 (_tl130505130533_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e130507130526_))))
                                             (if (gx#stx-pair?
                                                  _tl130505130533_)
                                                 (let ((_e130510130536_
                                                        (gx#syntax-e
                                                         _tl130505130533_)))
                                                   (let ((_hd130509130540_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e130510130536_)))
                                                         (_tl130508130543_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e130510130536_))))
                                                     (if (gx#stx-pair?
                                                          _tl130508130543_)
                                                         (let ((_e130513130546_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl130508130543_)))
                   (let ((_hd130512130550_
                          (let ()
                            (declare (not safe))
                            (##car _e130513130546_)))
                         (_tl130511130553_
                          (let ()
                            (declare (not safe))
                            (##cdr _e130513130546_))))
                     (if (gx#stx-null? _tl130511130553_)
                         ((lambda (_L130556_ _L130558_ _L130559_)
                            (let ()
                              (let ((__tmp135729 (gx#datum->syntax '#f 'if))
                                    (__tmp135717
                                     (let ((__tmp135720
                                            (let ((__tmp135721
                                                   (let ((__tmp135726
                                                          (let ((__tmp135728
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'stx-e))
                        (__tmp135727
                         (let () (declare (not safe)) (cons _L130559_ '()))))
                    (declare (not safe))
                    (cons __tmp135728 __tmp135727)))
                 (__tmp135722
                  (let ((__tmp135723
                         (let ((__tmp135725 (gx#datum->syntax '#f 'quote))
                               (__tmp135724
                                (let ()
                                  (declare (not safe))
                                  (cons _L130558_ '()))))
                           (declare (not safe))
                           (cons __tmp135725 __tmp135724))))
                    (declare (not safe))
                    (cons __tmp135723 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp135726
                                                           __tmp135722))))
                                              (declare (not safe))
                                              (cons _L130556_ __tmp135721)))
                                           (__tmp135718
                                            (let ((__tmp135719
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _E130298_ '()))))
                                              (declare (not safe))
                                              (cons _K130306_ __tmp135719))))
                                       (declare (not safe))
                                       (cons __tmp135720 __tmp135718))))
                                (declare (not safe))
                                (cons __tmp135729 __tmp135717))))
                          _hd130512130550_
                          _hd130509130540_
                          _hd130506130530_)
                         (_g130500130519_ _g130501130523_))))
                 (_g130500130519_ _g130501130523_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g130500130519_
                                                  _g130501130523_))))
                                         (_g130500130519_ _g130501130523_)))))
                             (_g130499130577_
                              (list _tgt130305_
                                    _hd130303_
                                    (let ((_e130581_ (gx#stx-e _hd130303_)))
                                      (if (or (keyword? _e130581_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _e130581_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (let ()
                                                (declare (not safe))
                                                (number? _e130581_))
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _stx129748_
                            _where130293_
                            _hd130303_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx135581135582_)
                                                    (let ((_e130315130595_
                                                           (gx#syntax-e
                                                            ___stx135581135582_)))
                                                      (let ((_tl130313130602_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e130315130595_)))
                    (_hd130314130599_
                     (let () (declare (not safe)) (##car _e130315130595_))))
                (___kont135584135585_ _tl130313130602_ _hd130314130599_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont135586135587_)))))))
                                  (_recur130300_
                                   _hd130295_
                                   _tgt129900_
                                   (let ((__tmp135765
                                          (gx#datum->syntax '#f 'if))
                                         (__tmp135762
                                          (let ((__tmp135763
                                                 (let ((__tmp135764
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _E130298_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _body130297_
                                                         __tmp135764))))
                                            (declare (not safe))
                                            (cons _fender130296_
                                                  __tmp135763))))
                                     (declare (not safe))
                                     (cons __tmp135765 __tmp135762))))))
                             (_generate-clauses129908_
                              (lambda (_clauses130031_)
                                (let _lp130034_ ((_rest130037_ _clauses130031_)
                                                 (_E130039_ (gx#genident 'E))
                                                 (_r130040_ '()))
                                  (let* ((___stx135617135618_ _rest130037_)
                                         (_g130043130055_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx135617135618_))))
                                    (let ((___kont135620135621_
                                           (lambda (_L130120_ _L130122_)
                                             (let* ((___stx135597135598_
                                                     _L130122_)
                                                    (_g130134130145_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        ___stx135597135598_))))
                                               (let ((___kont135600135601_
                                                      (lambda (_L130274_)
                                                        (if (gx#stx-null?
                                                             _L130120_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L130274_)
                             (let ((__tmp135774 (gx#stx-null? _L130274_)))
                               (declare (not safe))
                               (not __tmp135774)))
                        (let ((__tmp135766
                               (let ((__tmp135767
                                      (let ((__tmp135768
                                             (gx#stx-wrap-source
                                              (let ((__tmp135773
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp135769
                                                     (let ((__tmp135770
                                                            (let ((__tmp135771
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp135772 (gx#datum->syntax '#f 'begin)))
                             (declare (not safe))
                             (cons __tmp135772 _L130274_))))
                      (declare (not safe))
                      (cons __tmp135771 '()))))
               (declare (not safe))
               (cons '() __tmp135770))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp135773 __tmp135769))
                                              (gx#stx-source _L130122_))))
                                        (declare (not safe))
                                        (cons __tmp135768 '()))))
                                 (declare (not safe))
                                 (cons _E130039_ __tmp135767))))
                          (declare (not safe))
                          (cons __tmp135766 _r130040_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _stx129748_
                         _L130122_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _stx129748_
                     _L130122_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont135602135603_
                                                      (lambda ()
                                                        (let* ((_g130156130164_
                                                                (lambda (_g130157130160_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g130157130160_)))
                       (_g130155130253_
                        (lambda (_g130157130168_)
                          ((lambda (_L130171_)
                             (let ()
                               (let* ((_g130187130195_
                                       (lambda (_g130188130191_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g130188130191_)))
                                      (_g130186130249_
                                       (lambda (_g130188130199_)
                                         ((lambda (_L130202_)
                                            (let ()
                                              (let* ((_g130215130223_
                                                      (lambda (_g130216130219_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g130216130219_)))
                                                     (_g130214130245_
                                                      (lambda (_g130216130227_)
                                                        ((lambda (_L130230_)
                                                           (let ()
                                                             (let ()
                                                               (_lp130034_
                                                                _L130120_
                                                                _L130171_
                                                                (let ((__tmp135775
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp135776
                                      (let ()
                                        (declare (not safe))
                                        (cons _L130230_ '()))))
                                 (declare (not safe))
                                 (cons _E130039_ __tmp135776))))
                          (declare (not safe))
                          (cons __tmp135775 _r130040_))))))
                 _g130216130227_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g130214130245_
                                                 (gx#stx-wrap-source
                                                  (let ((__tmp135779
                                                         (gx#datum->syntax
                                                          '#f
                                                          'lambda))
                                                        (__tmp135777
                                                         (let ((__tmp135778
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _L130202_ '()))))
                   (declare (not safe))
                   (cons '() __tmp135778))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135779
                                                          __tmp135777))
                                                  (gx#stx-source
                                                   _L130122_))))))
                                          _g130188130199_))))
                                 (_g130186130249_
                                  (_generate-clause129905_
                                   _L130122_
                                   (let ()
                                     (declare (not safe))
                                     (cons _L130171_ '())))))))
                           _g130157130168_))))
                  (_g130155130253_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      ___stx135597135598_)
                                                     (let ((_e130139130264_
                                                            (gx#syntax-e
                                                             ___stx135597135598_)))
                                                       (let ((_tl130137130271_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e130139130264_)))
                     (_hd130138130268_
                      (let () (declare (not safe)) (##car _e130139130264_))))
                 (if (gx#identifier? _hd130138130268_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g135780_|
                          _hd130138130268_)
                         (___kont135600135601_ _tl130137130271_)
                         (___kont135602135603_))
                     (___kont135602135603_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont135602135603_))))))
                                          (___kont135622135623_
                                           (lambda ()
                                             (let* ((_g130066130074_
                                                     (lambda (_g130067130070_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g130067130070_)))
                                                    (_g130065130099_
                                                     (lambda (_g130067130078_)
                                                       ((lambda (_L130081_)
                                                          (let ()
                                                            (let ((__tmp135781
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp135782
                                  (let ((__tmp135783
                                         (gx#stx-wrap-source
                                          (let ((__tmp135791
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp135784
                                                 (let ((__tmp135785
                                                        (let ((__tmp135786
                                                               (let ((__tmp135790
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'raise-syntax-error))
                             (__tmp135787
                              (let ((__tmp135788
                                     (let ((__tmp135789
                                            (let ()
                                              (declare (not safe))
                                              (cons _L130081_ '()))))
                                       (declare (not safe))
                                       (cons '"Bad syntax; invalid syntax-case clause"
                                             __tmp135789))))
                                (declare (not safe))
                                (cons '#f __tmp135788))))
                         (declare (not safe))
                         (cons __tmp135790 __tmp135787))))
                  (declare (not safe))
                  (cons __tmp135786 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '() __tmp135785))))
                                            (declare (not safe))
                                            (cons __tmp135791 __tmp135784))
                                          (gx#stx-source _stx129748_))))
                                    (declare (not safe))
                                    (cons __tmp135783 '()))))
                             (declare (not safe))
                             (cons _E130039_ __tmp135782))))
                      (declare (not safe))
                      (cons __tmp135781 _r130040_))))
                _g130067130078_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g130065130099_
                                                _tgt129900_)))))
                                      (if (gx#stx-pair? ___stx135617135618_)
                                          (let ((_e130049130110_
                                                 (gx#syntax-e
                                                  ___stx135617135618_)))
                                            (let ((_tl130047130117_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e130049130110_)))
                                                  (_hd130048130114_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e130049130110_))))
                                              (___kont135620135621_
                                               _tl130047130117_
                                               _hd130048130114_)))
                                          (___kont135622135623_))))))))
                      (let* ((_bind129910_
                              (_generate-clauses129908_ _clauses129903_))
                             (_g129913129930_
                              (lambda (_g129914129926_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g129914129926_)))
                             (_g129912130027_
                              (lambda (_g129914129934_)
                                (if (gx#stx-pair/null? _g129914129934_)
                                    (let ((_g135792_
                                           (gx#syntax-split-splice
                                            _g129914129934_
                                            '0)))
                                      (begin
                                        (let ((_g135793_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g135792_)
                                                     (##vector-length
                                                      _g135792_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g135793_ 2)))
                                              (error "Context expects 2 values"
                                                     _g135793_)))
                                        (let ((_target129916129937_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g135792_ 0)))
                                              (_tl129918129940_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g135792_ 1))))
                                          (if (gx#stx-null? _tl129918129940_)
                                              (letrec ((_loop129919129943_
                                                        (lambda (_hd129917129947_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind-try129923129950_)
                  (if (gx#stx-pair? _hd129917129947_)
                      (let ((_e129920129953_ (gx#syntax-e _hd129917129947_)))
                        (let ((_lp-hd129921129957_
                               (let ()
                                 (declare (not safe))
                                 (##car _e129920129953_)))
                              (_lp-tl129922129960_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e129920129953_))))
                          (_loop129919129943_
                           _lp-tl129922129960_
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd129921129957_
                                   _bind-try129923129950_)))))
                      (let ((_bind-try129924129963_
                             (reverse _bind-try129923129950_)))
                        ((lambda (_L129967_)
                           (let ()
                             (let* ((_g129985129993_
                                     (lambda (_g129986129989_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _g129986129989_)))
                                    (_g129984130023_
                                     (lambda (_g129986129997_)
                                       ((lambda (_L130000_)
                                          (let ()
                                            (let ()
                                              (let ((__tmp135799
                                                     (gx#datum->syntax
                                                      '#f
                                                      'let*))
                                                    (__tmp135794
                                                     (let ((__tmp135797
                                                            (let ((__tmp135798
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g130014130017_ _g130015130020_)
                             (let ()
                               (declare (not safe))
                               (cons _g130014130017_ _g130015130020_)))))
                      (declare (not safe))
                      (foldr1 __tmp135798 '() _L129967_)))
                   (__tmp135795
                    (let ((__tmp135796
                           (let () (declare (not safe)) (cons _L130000_ '()))))
                      (declare (not safe))
                      (cons __tmp135796 '()))))
               (declare (not safe))
               (cons __tmp135797 __tmp135795))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp135799
                                                      __tmp135794)))))
                                        _g129986129997_))))
                               (_g129984130023_
                                (car (let ()
                                       (declare (not safe))
                                       (last _bind129910_)))))))
                         _bind-try129924129963_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop129919129943_
                                                 _target129916129937_
                                                 '()))
                                              (_g129913129930_
                                               _g129914129934_)))))
                                    (_g129913129930_ _g129914129934_)))))
                        (_g129912130027_ _bind129910_))))))
          (let* ((_g129754129773_
                  (lambda (_g129755129769_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g129755129769_)))
                 (_g129753129896_
                  (lambda (_g129755129777_)
                    (if (gx#stx-pair? _g129755129777_)
                        (let ((_e129761129780_ (gx#syntax-e _g129755129777_)))
                          (let ((_hd129760129784_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e129761129780_)))
                                (_tl129759129787_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e129761129780_))))
                            (if (gx#stx-pair? _tl129759129787_)
                                (let ((_e129764129790_
                                       (gx#syntax-e _tl129759129787_)))
                                  (let ((_hd129763129794_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e129764129790_)))
                                        (_tl129762129797_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e129764129790_))))
                                    (if (gx#stx-pair? _tl129762129797_)
                                        (let ((_e129767129800_
                                               (gx#syntax-e _tl129762129797_)))
                                          (let ((_hd129766129804_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e129767129800_)))
                                                (_tl129765129807_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e129767129800_))))
                                            ((lambda (_L129810_
                                                      _L129812_
                                                      _L129813_)
                                               (if (and (gx#identifier-list?
                                                         _L129812_)
                                                        (gx#stx-list?
                                                         _L129810_))
                                                   (let* ((_g129831129839_
                                                           (lambda (_g129832129835_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g129832129835_)))
                                                          (_g129830129892_
                                                           (lambda (_g129832129843_)
                                                             ((lambda (_L129846_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g129858129866_
                                  (lambda (_g129859129862_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g129859129862_)))
                                 (_g129857129888_
                                  (lambda (_g129859129870_)
                                    ((lambda (_L129873_)
                                       (let ()
                                         (let ()
                                           (let ((__tmp135805
                                                  (gx#datum->syntax '#f 'let))
                                                 (__tmp135800
                                                  (let ((__tmp135802
                                                         (let ((__tmp135803
                                                                (let ((__tmp135804
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L129813_ '()))))
                          (declare (not safe))
                          (cons _L129846_ __tmp135804))))
                   (declare (not safe))
                   (cons __tmp135803 '())))
                (__tmp135801
                 (let () (declare (not safe)) (cons _L129873_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135802
                                                          __tmp135801))))
                                             (declare (not safe))
                                             (cons __tmp135805 __tmp135800)))))
                                     _g129859129870_))))
                            (_g129857129888_
                             (_generate129751_
                              _L129846_
                              (gx#syntax->list _L129812_)
                              _L129810_)))))
                      _g129832129843_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g129830129892_
                                                      (gx#genident 'e)))
                                                   (_g129754129773_
                                                    _g129755129777_)))
                                             _tl129765129807_
                                             _hd129766129804_
                                             _hd129763129794_)))
                                        (_g129754129773_ _g129755129777_))))
                                (_g129754129773_ _g129755129777_))))
                        (_g129754129773_ _g129755129777_)))))
            (_g129753129896_ _stx129748_)))))))
