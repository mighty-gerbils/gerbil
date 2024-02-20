(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g76693_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g76695_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g76697_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g76702_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g76705_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g76710_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g76713_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g76718_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g76721_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g76726_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g76729_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g76836_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj76688
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
           __obj76688
           'gerbil#AST::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj76688
           'syntax
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj76688
           '(e source)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj76688
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj76688
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj76688
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj76688
           '#f
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj76688
           '#f
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp76692 |gx[1]#_g76693_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj76688
           __tmp76692
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp76694 |gx[1]#_g76695_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj76688
           __tmp76694
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp76696 |gx[1]#_g76697_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj76688
           __tmp76696
           '11
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp76698
               (let ((__tmp76703
                      (let ((__tmp76704 |gx[1]#_g76705_|))
                        (declare (not safe))
                        (cons 'e __tmp76704)))
                     (__tmp76699
                      (let ((__tmp76700
                             (let ((__tmp76701 |gx[1]#_g76702_|))
                               (declare (not safe))
                               (cons 'source __tmp76701))))
                        (declare (not safe))
                        (cons __tmp76700 '()))))
                 (declare (not safe))
                 (cons __tmp76703 __tmp76699))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj76688
           __tmp76698
           '12
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp76706
               (let ((__tmp76711
                      (let ((__tmp76712 |gx[1]#_g76713_|))
                        (declare (not safe))
                        (cons 'e __tmp76712)))
                     (__tmp76707
                      (let ((__tmp76708
                             (let ((__tmp76709 |gx[1]#_g76710_|))
                               (declare (not safe))
                               (cons 'source __tmp76709))))
                        (declare (not safe))
                        (cons __tmp76708 '()))))
                 (declare (not safe))
                 (cons __tmp76711 __tmp76707))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj76688
           __tmp76706
           '13
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp76714
               (let ((__tmp76719
                      (let ((__tmp76720 |gx[1]#_g76721_|))
                        (declare (not safe))
                        (cons 'e __tmp76720)))
                     (__tmp76715
                      (let ((__tmp76716
                             (let ((__tmp76717 |gx[1]#_g76718_|))
                               (declare (not safe))
                               (cons 'source __tmp76717))))
                        (declare (not safe))
                        (cons __tmp76716 '()))))
                 (declare (not safe))
                 (cons __tmp76719 __tmp76715))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj76688
           __tmp76714
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp76722
               (let ((__tmp76727
                      (let ((__tmp76728 |gx[1]#_g76729_|))
                        (declare (not safe))
                        (cons 'e __tmp76728)))
                     (__tmp76723
                      (let ((__tmp76724
                             (let ((__tmp76725 |gx[1]#_g76726_|))
                               (declare (not safe))
                               (cons 'source __tmp76725))))
                        (declare (not safe))
                        (cons __tmp76724 '()))))
                 (declare (not safe))
                 (cons __tmp76727 __tmp76723))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj76688
           __tmp76722
           '15
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj76688))
    (define |gx[:0:]#check-procedure|
      (lambda (_$stx75308_)
        (let* ((_g7531275326_
                (lambda (_g7531375322_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g7531375322_)))
               (_g7531175368_
                (lambda (_g7531375330_)
                  (if (gx#stx-pair? _g7531375330_)
                      (let ((_e7531575333_ (gx#syntax-e _g7531375330_)))
                        (let ((_hd7531675337_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7531575333_)))
                              (_tl7531775340_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7531575333_))))
                          (if (gx#stx-pair? _tl7531775340_)
                              (let ((_e7531875343_
                                     (gx#syntax-e _tl7531775340_)))
                                (let ((_hd7531975347_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e7531875343_)))
                                      (_tl7532075350_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e7531875343_))))
                                  (if (gx#stx-null? _tl7532075350_)
                                      ((lambda (_L75353_)
                                         (let ((__tmp76739
                                                (gx#datum->syntax '#f 'unless))
                                               (__tmp76730
                                                (let ((__tmp76736
                                                       (let ((__tmp76738
                                                              (gx#datum->syntax
                                                               '#f
                                                               'procedure?))
                                                             (__tmp76737
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L75353_ '()))))
                 (declare (not safe))
                 (cons __tmp76738 __tmp76737)))
              (__tmp76731
               (let ((__tmp76732
                      (let ((__tmp76735 (gx#datum->syntax '#f 'error))
                            (__tmp76733
                             (let ((__tmp76734
                                    (let ()
                                      (declare (not safe))
                                      (cons _L75353_ '()))))
                               (declare (not safe))
                               (cons '"expected procedure" __tmp76734))))
                        (declare (not safe))
                        (cons __tmp76735 __tmp76733))))
                 (declare (not safe))
                 (cons __tmp76732 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp76736
                                                        __tmp76731))))
                                           (declare (not safe))
                                           (cons __tmp76739 __tmp76730)))
                                       _hd7531975347_)
                                      (_g7531275326_ _g7531375330_))))
                              (_g7531275326_ _g7531375330_))))
                      (_g7531275326_ _g7531375330_)))))
          (_g7531175368_ _$stx75308_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_stx75372_)
        (letrec ((_generate75375_
                  (lambda (_tgt75524_ _kws75526_ _clauses75527_)
                    (letrec ((_generate-clause75529_
                              (lambda (_hd76439_ _E76441_)
                                (let* ((___stx7659176592_ _hd76439_)
                                       (_g7644576472_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx7659176592_))))
                                  (let ((___kont7659476595_
                                         (lambda (_L76568_ _L76570_)
                                           (_generate175531_
                                            _hd76439_
                                            _L76570_
                                            '#t
                                            _L76568_
                                            _E76441_)))
                                        (___kont7659676597_
                                         (lambda (_L76520_ _L76522_ _L76523_)
                                           (_generate175531_
                                            _hd76439_
                                            _L76523_
                                            _L76522_
                                            _L76520_
                                            _E76441_)))
                                        (___kont7659876599_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _stx75372_
                                            _hd76439_))))
                                    (if (gx#stx-pair? ___stx7659176592_)
                                        (let ((_e7644976548_
                                               (gx#syntax-e
                                                ___stx7659176592_)))
                                          (let ((_tl7645176555_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e7644976548_)))
                                                (_hd7645076552_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e7644976548_))))
                                            (if (gx#stx-pair? _tl7645176555_)
                                                (let ((_e7645276558_
                                                       (gx#syntax-e
                                                        _tl7645176555_)))
                                                  (let ((_tl7645476565_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e7645276558_)))
                                                        (_hd7645376562_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e7645276558_))))
                                                    (if (gx#stx-null?
                                                         _tl7645476565_)
                                                        (___kont7659476595_
                                                         _hd7645376562_
                                                         _hd7645076552_)
                                                        (if (gx#stx-pair?
                                                             _tl7645476565_)
                                                            (let ((_e7646476510_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl7645476565_)))
                      (let ((_tl7646676517_
                             (let ()
                               (declare (not safe))
                               (##cdr _e7646476510_)))
                            (_hd7646576514_
                             (let ()
                               (declare (not safe))
                               (##car _e7646476510_))))
                        (if (gx#stx-null? _tl7646676517_)
                            (___kont7659676597_
                             _hd7646576514_
                             _hd7645376562_
                             _hd7645076552_)
                            (___kont7659876599_))))
                    (___kont7659876599_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont7659876599_))))
                                        (___kont7659876599_))))))
                             (_generate175531_
                              (lambda (_where75917_
                                       _hd75919_
                                       _fender75920_
                                       _body75921_
                                       _E75922_)
                                (letrec ((_recur75924_
                                          (lambda (_hd75927_
                                                   _tgt75929_
                                                   _K75930_)
                                            (let* ((___stx7663776638_
                                                    _hd75927_)
                                                   (_g7593375945_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx7663776638_))))
                                              (let ((___kont7664076641_
                                                     (lambda (_L76229_
                                                              _L76231_)
                                                       (let* ((_g7624276250_
                                                               (lambda (_g7624376246_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g7624376246_)))
                      (_g7624176431_
                       (lambda (_g7624376254_)
                         ((lambda (_L76257_)
                            (let ()
                              (let* ((_g7626976277_
                                      (lambda (_g7627076273_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g7627076273_)))
                                     (_g7626876427_
                                      (lambda (_g7627076281_)
                                        ((lambda (_L76284_)
                                           (let ()
                                             (let* ((_g7629776305_
                                                     (lambda (_g7629876301_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g7629876301_)))
                                                    (_g7629676423_
                                                     (lambda (_g7629876309_)
                                                       ((lambda (_L76312_)
                                                          (let ()
                                                            (let* ((_g7632576333_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g7632676329_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g7632676329_)))
                           (_g7632476419_
                            (lambda (_g7632676337_)
                              ((lambda (_L76340_)
                                 (let ()
                                   (let* ((_g7635376361_
                                           (lambda (_g7635476357_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g7635476357_)))
                                          (_g7635276415_
                                           (lambda (_g7635476365_)
                                             ((lambda (_L76368_)
                                                (let ()
                                                  (let* ((_g7638176389_
                                                          (lambda (_g7638276385_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g7638276385_)))
                                                         (_g7638076411_
                                                          (lambda (_g7638276393_)
                                                            ((lambda (_L76396_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((__tmp76772 (gx#datum->syntax '#f 'if))
                                 (__tmp76740
                                  (let ((__tmp76769
                                         (let ((__tmp76771
                                                (gx#datum->syntax
                                                 '#f
                                                 'stx-pair?))
                                               (__tmp76770
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L76257_ '()))))
                                           (declare (not safe))
                                           (cons __tmp76771 __tmp76770)))
                                        (__tmp76741
                                         (let ((__tmp76743
                                                (let ((__tmp76768
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp76744
                                                       (let ((__tmp76762
                                                              (let ((__tmp76763
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp76764
                                    (let ((__tmp76765
                                           (let ((__tmp76767
                                                  (gx#datum->syntax
                                                   '#f
                                                   'syntax-e))
                                                 (__tmp76766
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L76257_ '()))))
                                             (declare (not safe))
                                             (cons __tmp76767 __tmp76766))))
                                      (declare (not safe))
                                      (cons __tmp76765 '()))))
                               (declare (not safe))
                               (cons _L76284_ __tmp76764))))
                        (declare (not safe))
                        (cons __tmp76763 '())))
                     (__tmp76745
                      (let ((__tmp76746
                             (let ((__tmp76761 (gx#datum->syntax '#f 'let))
                                   (__tmp76747
                                    (let ((__tmp76749
                                           (let ((__tmp76756
                                                  (let ((__tmp76757
                                                         (let ((__tmp76758
                                                                (let ((__tmp76760
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '##car))
                              (__tmp76759
                               (let ()
                                 (declare (not safe))
                                 (cons _L76284_ '()))))
                          (declare (not safe))
                          (cons __tmp76760 __tmp76759))))
                   (declare (not safe))
                   (cons __tmp76758 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L76312_
                                                          __tmp76757)))
                                                 (__tmp76750
                                                  (let ((__tmp76751
                                                         (let ((__tmp76752
                                                                (let ((__tmp76753
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp76755 (gx#datum->syntax '#f '##cdr))
                                     (__tmp76754
                                      (let ()
                                        (declare (not safe))
                                        (cons _L76284_ '()))))
                                 (declare (not safe))
                                 (cons __tmp76755 __tmp76754))))
                          (declare (not safe))
                          (cons __tmp76753 '()))))
                   (declare (not safe))
                   (cons _L76340_ __tmp76752))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp76751 '()))))
                                             (declare (not safe))
                                             (cons __tmp76756 __tmp76750)))
                                          (__tmp76748
                                           (let ()
                                             (declare (not safe))
                                             (cons _L76368_ '()))))
                                      (declare (not safe))
                                      (cons __tmp76749 __tmp76748))))
                               (declare (not safe))
                               (cons __tmp76761 __tmp76747))))
                        (declare (not safe))
                        (cons __tmp76746 '()))))
                 (declare (not safe))
                 (cons __tmp76762 __tmp76745))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp76768
                                                        __tmp76744)))
                                               (__tmp76742
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L76396_ '()))))
                                           (declare (not safe))
                                           (cons __tmp76743 __tmp76742))))
                                    (declare (not safe))
                                    (cons __tmp76769 __tmp76741))))
                             (declare (not safe))
                             (cons __tmp76772 __tmp76740)))))
                     _g7638276393_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g7638076411_ _E75922_))))
                                              _g7635476365_))))
                                     (_g7635276415_
                                      (_recur75924_
                                       _L76231_
                                       _L76312_
                                       (_recur75924_
                                        _L76229_
                                        _L76340_
                                        _K75930_))))))
                               _g7632676337_))))
                      (_g7632476419_ (gx#genident 'tl)))))
                _g7629876309_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g7629676423_
                                                (gx#genident 'hd)))))
                                         _g7627076281_))))
                                (_g7626876427_ (gx#genident 'e)))))
                          _g7624376254_))))
                 (_g7624176431_ _tgt75929_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont7664276643_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _hd75927_)
                                                           (if (gx#underscore?
                                                                _hd75927_)
                                                               _K75930_
                                                               (if (let ((__tmp76773
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g7595575957_)
                                    (gx#bound-identifier=?
                                     _g7595575957_
                                     _hd75927_))))
                             (declare (not safe))
                             (find __tmp76773 _kws75526_))
                           (let* ((_g7596175976_
                                   (lambda (_g7596275972_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g7596275972_)))
                                  (_g7596076027_
                                   (lambda (_g7596275980_)
                                     (if (gx#stx-pair? _g7596275980_)
                                         (let ((_e7596575983_
                                                (gx#syntax-e _g7596275980_)))
                                           (let ((_hd7596675987_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e7596575983_)))
                                                 (_tl7596775990_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e7596575983_))))
                                             (if (gx#stx-pair? _tl7596775990_)
                                                 (let ((_e7596875993_
                                                        (gx#syntax-e
                                                         _tl7596775990_)))
                                                   (let ((_hd7596975997_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e7596875993_)))
                                                         (_tl7597076000_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e7596875993_))))
                                                     (if (gx#stx-null?
                                                          _tl7597076000_)
                                                         ((lambda (_L76003_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L76005_)
                    (let ()
                      (let ((__tmp76791 (gx#datum->syntax '#f 'if))
                            (__tmp76774
                             (let ((__tmp76777
                                    (let ((__tmp76790
                                           (gx#datum->syntax '#f 'and))
                                          (__tmp76778
                                           (let ((__tmp76787
                                                  (let ((__tmp76789
                                                         (gx#datum->syntax
                                                          '#f
                                                          'identifier?))
                                                        (__tmp76788
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L76005_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp76789
                                                          __tmp76788)))
                                                 (__tmp76779
                                                  (let ((__tmp76780
                                                         (let ((__tmp76786
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'core-identifier=?))
                       (__tmp76781
                        (let ((__tmp76782
                               (let ((__tmp76783
                                      (let ((__tmp76785
                                             (gx#datum->syntax '#f 'quote))
                                            (__tmp76784
                                             (let ()
                                               (declare (not safe))
                                               (cons _L76003_ '()))))
                                        (declare (not safe))
                                        (cons __tmp76785 __tmp76784))))
                                 (declare (not safe))
                                 (cons __tmp76783 '()))))
                          (declare (not safe))
                          (cons _L76005_ __tmp76782))))
                   (declare (not safe))
                   (cons __tmp76786 __tmp76781))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp76780 '()))))
                                             (declare (not safe))
                                             (cons __tmp76787 __tmp76779))))
                                      (declare (not safe))
                                      (cons __tmp76790 __tmp76778)))
                                   (__tmp76775
                                    (let ((__tmp76776
                                           (let ()
                                             (declare (not safe))
                                             (cons _E75922_ '()))))
                                      (declare (not safe))
                                      (cons _K75930_ __tmp76776))))
                               (declare (not safe))
                               (cons __tmp76777 __tmp76775))))
                        (declare (not safe))
                        (cons __tmp76791 __tmp76774))))
                  _hd7596975997_
                  _hd7596675987_)
                 (_g7596175976_ _g7596275980_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g7596175976_
                                                  _g7596275980_))))
                                         (_g7596175976_ _g7596275980_)))))
                             (_g7596076027_ (list _tgt75929_ _hd75927_)))
                           (let* ((_g7603176046_
                                   (lambda (_g7603276042_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g7603276042_)))
                                  (_g7603076090_
                                   (lambda (_g7603276050_)
                                     (if (gx#stx-pair? _g7603276050_)
                                         (let ((_e7603576053_
                                                (gx#syntax-e _g7603276050_)))
                                           (let ((_hd7603676057_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e7603576053_)))
                                                 (_tl7603776060_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e7603576053_))))
                                             (if (gx#stx-pair? _tl7603776060_)
                                                 (let ((_e7603876063_
                                                        (gx#syntax-e
                                                         _tl7603776060_)))
                                                   (let ((_hd7603976067_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e7603876063_)))
                                                         (_tl7604076070_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e7603876063_))))
                                                     (if (gx#stx-null?
                                                          _tl7604076070_)
                                                         ((lambda (_L76073_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L76075_)
                    (let ()
                      (let ((__tmp76797 (gx#datum->syntax '#f 'let))
                            (__tmp76792
                             (let ((__tmp76794
                                    (let ((__tmp76795
                                           (let ((__tmp76796
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L76075_ '()))))
                                             (declare (not safe))
                                             (cons _L76073_ __tmp76796))))
                                      (declare (not safe))
                                      (cons __tmp76795 '())))
                                   (__tmp76793
                                    (let ()
                                      (declare (not safe))
                                      (cons _K75930_ '()))))
                               (declare (not safe))
                               (cons __tmp76794 __tmp76793))))
                        (declare (not safe))
                        (cons __tmp76797 __tmp76792))))
                  _hd7603976067_
                  _hd7603676057_)
                 (_g7603176046_ _g7603276050_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g7603176046_
                                                  _g7603276050_))))
                                         (_g7603176046_ _g7603276050_)))))
                             (_g7603076090_ (list _tgt75929_ _hd75927_)))))
                   (if (gx#stx-null? _hd75927_)
                       (let* ((_g7609476102_
                               (lambda (_g7609576098_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g7609576098_)))
                              (_g7609376120_
                               (lambda (_g7609576106_)
                                 ((lambda (_L76109_)
                                    (let ()
                                      (let ((__tmp76804
                                             (gx#datum->syntax '#f 'if))
                                            (__tmp76798
                                             (let ((__tmp76801
                                                    (let ((__tmp76803
                                                           (gx#datum->syntax
                                                            '#f
                                                            'stx-null?))
                                                          (__tmp76802
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L76109_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp76803 __tmp76802)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp76799
                                                    (let ((__tmp76800
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _E75922_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _K75930_ __tmp76800))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp76801 __tmp76799))))
                                        (declare (not safe))
                                        (cons __tmp76804 __tmp76798))))
                                  _g7609576106_))))
                         (_g7609376120_ _tgt75929_))
                       (if (gx#stx-datum? _hd75927_)
                           (let* ((_g7612476143_
                                   (lambda (_g7612576139_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g7612576139_)))
                                  (_g7612376201_
                                   (lambda (_g7612576147_)
                                     (if (gx#stx-pair? _g7612576147_)
                                         (let ((_e7612976150_
                                                (gx#syntax-e _g7612576147_)))
                                           (let ((_hd7613076154_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e7612976150_)))
                                                 (_tl7613176157_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e7612976150_))))
                                             (if (gx#stx-pair? _tl7613176157_)
                                                 (let ((_e7613276160_
                                                        (gx#syntax-e
                                                         _tl7613176157_)))
                                                   (let ((_hd7613376164_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e7613276160_)))
                                                         (_tl7613476167_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e7613276160_))))
                                                     (if (gx#stx-pair?
                                                          _tl7613476167_)
                                                         (let ((_e7613576170_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl7613476167_)))
                   (let ((_hd7613676174_
                          (let () (declare (not safe)) (##car _e7613576170_)))
                         (_tl7613776177_
                          (let () (declare (not safe)) (##cdr _e7613576170_))))
                     (if (gx#stx-null? _tl7613776177_)
                         ((lambda (_L76180_ _L76182_ _L76183_)
                            (let ()
                              (let ((__tmp76817 (gx#datum->syntax '#f 'if))
                                    (__tmp76805
                                     (let ((__tmp76808
                                            (let ((__tmp76809
                                                   (let ((__tmp76814
                                                          (let ((__tmp76816
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'stx-e))
                        (__tmp76815
                         (let () (declare (not safe)) (cons _L76183_ '()))))
                    (declare (not safe))
                    (cons __tmp76816 __tmp76815)))
                 (__tmp76810
                  (let ((__tmp76811
                         (let ((__tmp76813 (gx#datum->syntax '#f 'quote))
                               (__tmp76812
                                (let ()
                                  (declare (not safe))
                                  (cons _L76182_ '()))))
                           (declare (not safe))
                           (cons __tmp76813 __tmp76812))))
                    (declare (not safe))
                    (cons __tmp76811 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp76814
                                                           __tmp76810))))
                                              (declare (not safe))
                                              (cons _L76180_ __tmp76809)))
                                           (__tmp76806
                                            (let ((__tmp76807
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _E75922_ '()))))
                                              (declare (not safe))
                                              (cons _K75930_ __tmp76807))))
                                       (declare (not safe))
                                       (cons __tmp76808 __tmp76806))))
                                (declare (not safe))
                                (cons __tmp76817 __tmp76805))))
                          _hd7613676174_
                          _hd7613376164_
                          _hd7613076154_)
                         (_g7612476143_ _g7612576147_))))
                 (_g7612476143_ _g7612576147_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g7612476143_
                                                  _g7612576147_))))
                                         (_g7612476143_ _g7612576147_)))))
                             (_g7612376201_
                              (list _tgt75929_
                                    _hd75927_
                                    (let ((_e76205_ (gx#stx-e _hd75927_)))
                                      (if (or (keyword? _e76205_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _e76205_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (let ()
                                                (declare (not safe))
                                                (number? _e76205_))
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _stx75372_
                            _where75917_
                            _hd75927_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx7663776638_)
                                                    (let ((_e7593776219_
                                                           (gx#syntax-e
                                                            ___stx7663776638_)))
                                                      (let ((_tl7593976226_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e7593776219_)))
                    (_hd7593876223_
                     (let () (declare (not safe)) (##car _e7593776219_))))
                (___kont7664076641_ _tl7593976226_ _hd7593876223_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont7664276643_)))))))
                                  (_recur75924_
                                   _hd75919_
                                   _tgt75524_
                                   (let ((__tmp76821
                                          (gx#datum->syntax '#f 'if))
                                         (__tmp76818
                                          (let ((__tmp76819
                                                 (let ((__tmp76820
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _E75922_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _body75921_
                                                         __tmp76820))))
                                            (declare (not safe))
                                            (cons _fender75920_ __tmp76819))))
                                     (declare (not safe))
                                     (cons __tmp76821 __tmp76818))))))
                             (_generate-clauses75532_
                              (lambda (_clauses75655_)
                                (let _lp75658_ ((_rest75661_ _clauses75655_)
                                                (_E75663_ (gx#genident 'E))
                                                (_r75664_ '()))
                                  (let* ((___stx7667376674_ _rest75661_)
                                         (_g7566775679_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx7667376674_))))
                                    (let ((___kont7667676677_
                                           (lambda (_L75744_ _L75746_)
                                             (let* ((___stx7665376654_
                                                     _L75746_)
                                                    (_g7575875769_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        ___stx7665376654_))))
                                               (let ((___kont7665676657_
                                                      (lambda (_L75898_)
                                                        (if (gx#stx-null?
                                                             _L75744_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L75898_)
                             (let ((__tmp76822 (gx#stx-null? _L75898_)))
                               (declare (not safe))
                               (not __tmp76822)))
                        (let ((__tmp76823
                               (let ((__tmp76824
                                      (let ((__tmp76825
                                             (gx#stx-wrap-source
                                              (let ((__tmp76830
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp76826
                                                     (let ((__tmp76827
                                                            (let ((__tmp76828
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp76829 (gx#datum->syntax '#f 'begin)))
                             (declare (not safe))
                             (cons __tmp76829 _L75898_))))
                      (declare (not safe))
                      (cons __tmp76828 '()))))
               (declare (not safe))
               (cons '() __tmp76827))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp76830 __tmp76826))
                                              (gx#stx-source _L75746_))))
                                        (declare (not safe))
                                        (cons __tmp76825 '()))))
                                 (declare (not safe))
                                 (cons _E75663_ __tmp76824))))
                          (declare (not safe))
                          (cons __tmp76823 _r75664_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _stx75372_
                         _L75746_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _stx75372_
                     _L75746_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont7665876659_
                                                      (lambda ()
                                                        (let* ((_g7578075788_
                                                                (lambda (_g7578175784_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g7578175784_)))
                       (_g7577975877_
                        (lambda (_g7578175792_)
                          ((lambda (_L75795_)
                             (let ()
                               (let* ((_g7581175819_
                                       (lambda (_g7581275815_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g7581275815_)))
                                      (_g7581075873_
                                       (lambda (_g7581275823_)
                                         ((lambda (_L75826_)
                                            (let ()
                                              (let* ((_g7583975847_
                                                      (lambda (_g7584075843_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g7584075843_)))
                                                     (_g7583875869_
                                                      (lambda (_g7584075851_)
                                                        ((lambda (_L75854_)
                                                           (let ()
                                                             (let ()
                                                               (_lp75658_
                                                                _L75744_
                                                                _L75795_
                                                                (let ((__tmp76831
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp76832
                                      (let ()
                                        (declare (not safe))
                                        (cons _L75854_ '()))))
                                 (declare (not safe))
                                 (cons _E75663_ __tmp76832))))
                          (declare (not safe))
                          (cons __tmp76831 _r75664_))))))
                 _g7584075851_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g7583875869_
                                                 (gx#stx-wrap-source
                                                  (let ((__tmp76835
                                                         (gx#datum->syntax
                                                          '#f
                                                          'lambda))
                                                        (__tmp76833
                                                         (let ((__tmp76834
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _L75826_ '()))))
                   (declare (not safe))
                   (cons '() __tmp76834))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp76835
                                                          __tmp76833))
                                                  (gx#stx-source _L75746_))))))
                                          _g7581275823_))))
                                 (_g7581075873_
                                  (_generate-clause75529_
                                   _L75746_
                                   (let ()
                                     (declare (not safe))
                                     (cons _L75795_ '())))))))
                           _g7578175792_))))
                  (_g7577975877_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      ___stx7665376654_)
                                                     (let ((_e7576175888_
                                                            (gx#syntax-e
                                                             ___stx7665376654_)))
                                                       (let ((_tl7576375895_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e7576175888_)))
                     (_hd7576275892_
                      (let () (declare (not safe)) (##car _e7576175888_))))
                 (if (gx#identifier? _hd7576275892_)
                     (if (gx#free-identifier=? |gx[1]#_g76836_| _hd7576275892_)
                         (___kont7665676657_ _tl7576375895_)
                         (___kont7665876659_))
                     (___kont7665876659_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont7665876659_))))))
                                          (___kont7667876679_
                                           (lambda ()
                                             (let* ((_g7569075698_
                                                     (lambda (_g7569175694_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g7569175694_)))
                                                    (_g7568975723_
                                                     (lambda (_g7569175702_)
                                                       ((lambda (_L75705_)
                                                          (let ()
                                                            (let ((__tmp76837
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp76838
                                  (let ((__tmp76839
                                         (gx#stx-wrap-source
                                          (let ((__tmp76847
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp76840
                                                 (let ((__tmp76841
                                                        (let ((__tmp76842
                                                               (let ((__tmp76846
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'raise-syntax-error))
                             (__tmp76843
                              (let ((__tmp76844
                                     (let ((__tmp76845
                                            (let ()
                                              (declare (not safe))
                                              (cons _L75705_ '()))))
                                       (declare (not safe))
                                       (cons '"Bad syntax; invalid syntax-case clause"
                                             __tmp76845))))
                                (declare (not safe))
                                (cons '#f __tmp76844))))
                         (declare (not safe))
                         (cons __tmp76846 __tmp76843))))
                  (declare (not safe))
                  (cons __tmp76842 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '() __tmp76841))))
                                            (declare (not safe))
                                            (cons __tmp76847 __tmp76840))
                                          (gx#stx-source _stx75372_))))
                                    (declare (not safe))
                                    (cons __tmp76839 '()))))
                             (declare (not safe))
                             (cons _E75663_ __tmp76838))))
                      (declare (not safe))
                      (cons __tmp76837 _r75664_))))
                _g7569175702_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g7568975723_ _tgt75524_)))))
                                      (if (gx#stx-pair? ___stx7667376674_)
                                          (let ((_e7567175734_
                                                 (gx#syntax-e
                                                  ___stx7667376674_)))
                                            (let ((_tl7567375741_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e7567175734_)))
                                                  (_hd7567275738_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e7567175734_))))
                                              (___kont7667676677_
                                               _tl7567375741_
                                               _hd7567275738_)))
                                          (___kont7667876679_))))))))
                      (let* ((_bind75534_
                              (_generate-clauses75532_ _clauses75527_))
                             (_g7553775554_
                              (lambda (_g7553875550_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g7553875550_)))
                             (_g7553675651_
                              (lambda (_g7553875558_)
                                (if (gx#stx-pair/null? _g7553875558_)
                                    (let ((_g76848_
                                           (gx#syntax-split-splice
                                            _g7553875558_
                                            '0)))
                                      (begin
                                        (let ((_g76849_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g76848_)
                                                     (##vector-length _g76848_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g76849_ 2)))
                                              (error "Context expects 2 values"
                                                     _g76849_)))
                                        (let ((_target7554075561_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g76848_ 0)))
                                              (_tl7554275564_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g76848_ 1))))
                                          (if (gx#stx-null? _tl7554275564_)
                                              (letrec ((_loop7554375567_
                                                        (lambda (_hd7554175571_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind-try7554775574_)
                  (if (gx#stx-pair? _hd7554175571_)
                      (let ((_e7554475577_ (gx#syntax-e _hd7554175571_)))
                        (let ((_lp-hd7554575581_
                               (let ()
                                 (declare (not safe))
                                 (##car _e7554475577_)))
                              (_lp-tl7554675584_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e7554475577_))))
                          (_loop7554375567_
                           _lp-tl7554675584_
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd7554575581_ _bind-try7554775574_)))))
                      (let ((_bind-try7554875587_
                             (reverse _bind-try7554775574_)))
                        ((lambda (_L75591_)
                           (let ()
                             (let* ((_g7560975617_
                                     (lambda (_g7561075613_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _g7561075613_)))
                                    (_g7560875647_
                                     (lambda (_g7561075621_)
                                       ((lambda (_L75624_)
                                          (let ()
                                            (let ()
                                              (let ((__tmp76855
                                                     (gx#datum->syntax
                                                      '#f
                                                      'let*))
                                                    (__tmp76850
                                                     (let ((__tmp76853
                                                            (let ((__tmp76854
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g7563875641_ _g7563975644_)
                             (let ()
                               (declare (not safe))
                               (cons _g7563875641_ _g7563975644_)))))
                      (declare (not safe))
                      (foldr1 __tmp76854 '() _L75591_)))
                   (__tmp76851
                    (let ((__tmp76852
                           (let () (declare (not safe)) (cons _L75624_ '()))))
                      (declare (not safe))
                      (cons __tmp76852 '()))))
               (declare (not safe))
               (cons __tmp76853 __tmp76851))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp76855
                                                      __tmp76850)))))
                                        _g7561075621_))))
                               (_g7560875647_
                                (car (let ()
                                       (declare (not safe))
                                       (last _bind75534_)))))))
                         _bind-try7554875587_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop7554375567_
                                                 _target7554075561_
                                                 '()))
                                              (_g7553775554_ _g7553875558_)))))
                                    (_g7553775554_ _g7553875558_)))))
                        (_g7553675651_ _bind75534_))))))
          (let* ((_g7537875397_
                  (lambda (_g7537975393_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g7537975393_)))
                 (_g7537775520_
                  (lambda (_g7537975401_)
                    (if (gx#stx-pair? _g7537975401_)
                        (let ((_e7538375404_ (gx#syntax-e _g7537975401_)))
                          (let ((_hd7538475408_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e7538375404_)))
                                (_tl7538575411_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e7538375404_))))
                            (if (gx#stx-pair? _tl7538575411_)
                                (let ((_e7538675414_
                                       (gx#syntax-e _tl7538575411_)))
                                  (let ((_hd7538775418_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e7538675414_)))
                                        (_tl7538875421_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e7538675414_))))
                                    (if (gx#stx-pair? _tl7538875421_)
                                        (let ((_e7538975424_
                                               (gx#syntax-e _tl7538875421_)))
                                          (let ((_hd7539075428_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e7538975424_)))
                                                (_tl7539175431_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e7538975424_))))
                                            ((lambda (_L75434_
                                                      _L75436_
                                                      _L75437_)
                                               (if (and (gx#identifier-list?
                                                         _L75436_)
                                                        (gx#stx-list?
                                                         _L75434_))
                                                   (let* ((_g7545575463_
                                                           (lambda (_g7545675459_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g7545675459_)))
                                                          (_g7545475516_
                                                           (lambda (_g7545675467_)
                                                             ((lambda (_L75470_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g7548275490_
                                  (lambda (_g7548375486_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g7548375486_)))
                                 (_g7548175512_
                                  (lambda (_g7548375494_)
                                    ((lambda (_L75497_)
                                       (let ()
                                         (let ()
                                           (let ((__tmp76861
                                                  (gx#datum->syntax '#f 'let))
                                                 (__tmp76856
                                                  (let ((__tmp76858
                                                         (let ((__tmp76859
                                                                (let ((__tmp76860
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L75437_ '()))))
                          (declare (not safe))
                          (cons _L75470_ __tmp76860))))
                   (declare (not safe))
                   (cons __tmp76859 '())))
                (__tmp76857 (let () (declare (not safe)) (cons _L75497_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp76858
                                                          __tmp76857))))
                                             (declare (not safe))
                                             (cons __tmp76861 __tmp76856)))))
                                     _g7548375494_))))
                            (_g7548175512_
                             (_generate75375_
                              _L75470_
                              (gx#syntax->list _L75436_)
                              _L75434_)))))
                      _g7545675467_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g7545475516_
                                                      (gx#genident 'e)))
                                                   (_g7537875397_
                                                    _g7537975401_)))
                                             _tl7539175431_
                                             _hd7539075428_
                                             _hd7538775418_)))
                                        (_g7537875397_ _g7537975401_))))
                                (_g7537875397_ _g7537975401_))))
                        (_g7537875397_ _g7537975401_)))))
            (_g7537775520_ _stx75372_)))))))
