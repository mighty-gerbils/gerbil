(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gx[1]#_g135600_|
    (##structure
     gx#syntax-quote::t
     'AST::t
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135602_|
    (##structure
     gx#syntax-quote::t
     'make-AST
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135604_|
    (##structure
     gx#syntax-quote::t
     'AST?
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135609_|
    (##structure
     gx#syntax-quote::t
     'AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135612_|
    (##structure
     gx#syntax-quote::t
     'AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135617_|
    (##structure
     gx#syntax-quote::t
     'AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135620_|
    (##structure
     gx#syntax-quote::t
     'AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135625_|
    (##structure
     gx#syntax-quote::t
     '&AST-source
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135628_|
    (##structure
     gx#syntax-quote::t
     '&AST-e
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135633_|
    (##structure
     gx#syntax-quote::t
     '&AST-source-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135636_|
    (##structure
     gx#syntax-quote::t
     '&AST-e-set!
     #f
     (gx#current-expander-context)
     '()))
  (define |gx[1]#_g135743_|
    (##structure
     gx#syntax-quote::t
     'else
     #f
     (gx#current-expander-context)
     '()))
  (begin
    (define |gx[:0:]#AST|
      (let ((__obj135595
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
           __obj135595
           'gerbil#AST::t
           '1
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135595
           'syntax
           '2
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135595
           '(e source)
           '4
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135595
           '()
           '3
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135595
           '#t
           '5
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135595
           '#f
           '6
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135595
           '#f
           '7
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp135599 |gx[1]#_g135600_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135595
           __tmp135599
           '8
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp135601 |gx[1]#_g135602_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135595
           __tmp135601
           '9
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp135603 |gx[1]#_g135604_|))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135595
           __tmp135603
           '10
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        (let ((__tmp135605
               (let ((__tmp135610
                      (let ((__tmp135611 |gx[1]#_g135612_|))
                        (declare (not safe))
                        (cons 'e __tmp135611)))
                     (__tmp135606
                      (let ((__tmp135607
                             (let ((__tmp135608 |gx[1]#_g135609_|))
                               (declare (not safe))
                               (cons 'source __tmp135608))))
                        (declare (not safe))
                        (cons __tmp135607 '()))))
                 (declare (not safe))
                 (cons __tmp135610 __tmp135606))))
          (declare (not safe))
          (##unchecked-structure-set!
           __obj135595
           __tmp135605
           '11
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
           __obj135595
           __tmp135613
           '12
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
           __obj135595
           __tmp135621
           '13
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
           __obj135595
           __tmp135629
           '14
           gerbil/core$<MOP>$<MOP:2>#class-type-info::t
           '#f))
        __obj135595))
    (define |gx[:0:]#check-procedure|
      (lambda (_$stx129647_)
        (let* ((_g129651129665_
                (lambda (_g129652129661_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g129652129661_)))
               (_g129650129707_
                (lambda (_g129652129669_)
                  (if (gx#stx-pair? _g129652129669_)
                      (let ((_e129656129672_ (gx#syntax-e _g129652129669_)))
                        (let ((_hd129655129676_
                               (let ()
                                 (declare (not safe))
                                 (##car _e129656129672_)))
                              (_tl129654129679_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e129656129672_))))
                          (if (gx#stx-pair? _tl129654129679_)
                              (let ((_e129659129682_
                                     (gx#syntax-e _tl129654129679_)))
                                (let ((_hd129658129686_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e129659129682_)))
                                      (_tl129657129689_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e129659129682_))))
                                  (if (gx#stx-null? _tl129657129689_)
                                      ((lambda (_L129692_)
                                         (let ((__tmp135646
                                                (gx#datum->syntax '#f 'unless))
                                               (__tmp135637
                                                (let ((__tmp135643
                                                       (let ((__tmp135645
                                                              (gx#datum->syntax
                                                               '#f
                                                               'procedure?))
                                                             (__tmp135644
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (cons _L129692_ '()))))
                 (declare (not safe))
                 (cons __tmp135645 __tmp135644)))
              (__tmp135638
               (let ((__tmp135639
                      (let ((__tmp135642 (gx#datum->syntax '#f 'error))
                            (__tmp135640
                             (let ((__tmp135641
                                    (let ()
                                      (declare (not safe))
                                      (cons _L129692_ '()))))
                               (declare (not safe))
                               (cons '"expected procedure" __tmp135641))))
                        (declare (not safe))
                        (cons __tmp135642 __tmp135640))))
                 (declare (not safe))
                 (cons __tmp135639 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp135643
                                                        __tmp135638))))
                                           (declare (not safe))
                                           (cons __tmp135646 __tmp135637)))
                                       _hd129658129686_)
                                      (_g129651129665_ _g129652129669_))))
                              (_g129651129665_ _g129652129669_))))
                      (_g129651129665_ _g129652129669_)))))
          (_g129650129707_ _$stx129647_))))
    (define |gx[:0:]#core-syntax-case|
      (lambda (_stx129711_)
        (letrec ((_generate129714_
                  (lambda (_tgt129863_ _kws129865_ _clauses129866_)
                    (letrec ((_generate-clause129868_
                              (lambda (_hd130778_ _E130780_)
                                (let* ((___stx135498135499_ _hd130778_)
                                       (_g130784130811_
                                        (lambda ()
                                          (gx#raise-syntax-error
                                           '#f
                                           '"Bad syntax; invalid match target"
                                           ___stx135498135499_))))
                                  (let ((___kont135501135502_
                                         (lambda (_L130907_ _L130909_)
                                           (_generate1129870_
                                            _hd130778_
                                            _L130909_
                                            '#t
                                            _L130907_
                                            _E130780_)))
                                        (___kont135503135504_
                                         (lambda (_L130859_
                                                  _L130861_
                                                  _L130862_)
                                           (_generate1129870_
                                            _hd130778_
                                            _L130862_
                                            _L130861_
                                            _L130859_
                                            _E130780_)))
                                        (___kont135505135506_
                                         (lambda ()
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid syntax-case pattern"
                                            _stx129711_
                                            _hd130778_))))
                                    (if (gx#stx-pair? ___stx135498135499_)
                                        (let ((_e130790130887_
                                               (gx#syntax-e
                                                ___stx135498135499_)))
                                          (let ((_tl130788130894_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e130790130887_)))
                                                (_hd130789130891_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e130790130887_))))
                                            (if (gx#stx-pair? _tl130788130894_)
                                                (let ((_e130793130897_
                                                       (gx#syntax-e
                                                        _tl130788130894_)))
                                                  (let ((_tl130791130904_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e130793130897_)))
                                                        (_hd130792130901_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e130793130897_))))
                                                    (if (gx#stx-null?
                                                         _tl130791130904_)
                                                        (___kont135501135502_
                                                         _hd130792130901_
                                                         _hd130789130891_)
                                                        (if (gx#stx-pair?
                                                             _tl130791130904_)
                                                            (let ((_e130805130849_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl130791130904_)))
                      (let ((_tl130803130856_
                             (let ()
                               (declare (not safe))
                               (##cdr _e130805130849_)))
                            (_hd130804130853_
                             (let ()
                               (declare (not safe))
                               (##car _e130805130849_))))
                        (if (gx#stx-null? _tl130803130856_)
                            (___kont135503135504_
                             _hd130804130853_
                             _hd130792130901_
                             _hd130789130891_)
                            (___kont135505135506_))))
                    (___kont135505135506_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (___kont135505135506_))))
                                        (___kont135505135506_))))))
                             (_generate1129870_
                              (lambda (_where130256_
                                       _hd130258_
                                       _fender130259_
                                       _body130260_
                                       _E130261_)
                                (letrec ((_recur130263_
                                          (lambda (_hd130266_
                                                   _tgt130268_
                                                   _K130269_)
                                            (let* ((___stx135544135545_
                                                    _hd130266_)
                                                   (_g130272130284_
                                                    (lambda ()
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad syntax; invalid match target"
                                                       ___stx135544135545_))))
                                              (let ((___kont135547135548_
                                                     (lambda (_L130568_
                                                              _L130570_)
                                                       (let* ((_g130581130589_
                                                               (lambda (_g130582130585_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _g130582130585_)))
                      (_g130580130770_
                       (lambda (_g130582130593_)
                         ((lambda (_L130596_)
                            (let ()
                              (let* ((_g130608130616_
                                      (lambda (_g130609130612_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; invalid match target"
                                         _g130609130612_)))
                                     (_g130607130766_
                                      (lambda (_g130609130620_)
                                        ((lambda (_L130623_)
                                           (let ()
                                             (let* ((_g130636130644_
                                                     (lambda (_g130637130640_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g130637130640_)))
                                                    (_g130635130762_
                                                     (lambda (_g130637130648_)
                                                       ((lambda (_L130651_)
                                                          (let ()
                                                            (let* ((_g130664130672_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (lambda (_g130665130668_)
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid match target"
                               _g130665130668_)))
                           (_g130663130758_
                            (lambda (_g130665130676_)
                              ((lambda (_L130679_)
                                 (let ()
                                   (let* ((_g130692130700_
                                           (lambda (_g130693130696_)
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _g130693130696_)))
                                          (_g130691130754_
                                           (lambda (_g130693130704_)
                                             ((lambda (_L130707_)
                                                (let ()
                                                  (let* ((_g130720130728_
                                                          (lambda (_g130721130724_)
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; invalid match target"
                                                             _g130721130724_)))
                                                         (_g130719130750_
                                                          (lambda (_g130721130732_)
                                                            ((lambda (_L130735_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (let ((__tmp135679 (gx#datum->syntax '#f 'if))
                                 (__tmp135647
                                  (let ((__tmp135676
                                         (let ((__tmp135678
                                                (gx#datum->syntax
                                                 '#f
                                                 'stx-pair?))
                                               (__tmp135677
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L130596_ '()))))
                                           (declare (not safe))
                                           (cons __tmp135678 __tmp135677)))
                                        (__tmp135648
                                         (let ((__tmp135650
                                                (let ((__tmp135675
                                                       (gx#datum->syntax
                                                        '#f
                                                        'let))
                                                      (__tmp135651
                                                       (let ((__tmp135669
                                                              (let ((__tmp135670
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp135671
                                    (let ((__tmp135672
                                           (let ((__tmp135674
                                                  (gx#datum->syntax
                                                   '#f
                                                   'syntax-e))
                                                 (__tmp135673
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L130596_ '()))))
                                             (declare (not safe))
                                             (cons __tmp135674 __tmp135673))))
                                      (declare (not safe))
                                      (cons __tmp135672 '()))))
                               (declare (not safe))
                               (cons _L130623_ __tmp135671))))
                        (declare (not safe))
                        (cons __tmp135670 '())))
                     (__tmp135652
                      (let ((__tmp135653
                             (let ((__tmp135668 (gx#datum->syntax '#f 'let))
                                   (__tmp135654
                                    (let ((__tmp135656
                                           (let ((__tmp135663
                                                  (let ((__tmp135664
                                                         (let ((__tmp135665
                                                                (let ((__tmp135667
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gx#datum->syntax '#f '##car))
                              (__tmp135666
                               (let ()
                                 (declare (not safe))
                                 (cons _L130623_ '()))))
                          (declare (not safe))
                          (cons __tmp135667 __tmp135666))))
                   (declare (not safe))
                   (cons __tmp135665 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons _L130651_
                                                          __tmp135664)))
                                                 (__tmp135657
                                                  (let ((__tmp135658
                                                         (let ((__tmp135659
                                                                (let ((__tmp135660
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp135662
                                      (gx#datum->syntax '#f '##cdr))
                                     (__tmp135661
                                      (let ()
                                        (declare (not safe))
                                        (cons _L130623_ '()))))
                                 (declare (not safe))
                                 (cons __tmp135662 __tmp135661))))
                          (declare (not safe))
                          (cons __tmp135660 '()))))
                   (declare (not safe))
                   (cons _L130679_ __tmp135659))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135658 '()))))
                                             (declare (not safe))
                                             (cons __tmp135663 __tmp135657)))
                                          (__tmp135655
                                           (let ()
                                             (declare (not safe))
                                             (cons _L130707_ '()))))
                                      (declare (not safe))
                                      (cons __tmp135656 __tmp135655))))
                               (declare (not safe))
                               (cons __tmp135668 __tmp135654))))
                        (declare (not safe))
                        (cons __tmp135653 '()))))
                 (declare (not safe))
                 (cons __tmp135669 __tmp135652))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons __tmp135675
                                                        __tmp135651)))
                                               (__tmp135649
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L130735_ '()))))
                                           (declare (not safe))
                                           (cons __tmp135650 __tmp135649))))
                                    (declare (not safe))
                                    (cons __tmp135676 __tmp135648))))
                             (declare (not safe))
                             (cons __tmp135679 __tmp135647)))))
                     _g130721130732_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g130719130750_
                                                     _E130261_))))
                                              _g130693130704_))))
                                     (_g130691130754_
                                      (_recur130263_
                                       _L130570_
                                       _L130651_
                                       (_recur130263_
                                        _L130568_
                                        _L130679_
                                        _K130269_))))))
                               _g130665130676_))))
                      (_g130663130758_ (gx#genident 'tl)))))
                _g130637130648_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g130635130762_
                                                (gx#genident 'hd)))))
                                         _g130609130620_))))
                                (_g130607130766_ (gx#genident 'e)))))
                          _g130582130593_))))
                 (_g130580130770_ _tgt130268_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont135549135550_
                                                     (lambda ()
                                                       (if (gx#identifier?
                                                            _hd130266_)
                                                           (if (gx#underscore?
                                                                _hd130266_)
                                                               _K130269_
                                                               (if (let ((__tmp135724
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  (lambda (_g130294130296_)
                                    (gx#bound-identifier=?
                                     _g130294130296_
                                     _hd130266_))))
                             (declare (not safe))
                             (find __tmp135724 _kws129865_))
                           (let* ((_g130300130315_
                                   (lambda (_g130301130311_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g130301130311_)))
                                  (_g130299130366_
                                   (lambda (_g130301130319_)
                                     (if (gx#stx-pair? _g130301130319_)
                                         (let ((_e130306130322_
                                                (gx#syntax-e _g130301130319_)))
                                           (let ((_hd130305130326_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e130306130322_)))
                                                 (_tl130304130329_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e130306130322_))))
                                             (if (gx#stx-pair?
                                                  _tl130304130329_)
                                                 (let ((_e130309130332_
                                                        (gx#syntax-e
                                                         _tl130304130329_)))
                                                   (let ((_hd130308130336_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e130309130332_)))
                                                         (_tl130307130339_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e130309130332_))))
                                                     (if (gx#stx-null?
                                                          _tl130307130339_)
                                                         ((lambda (_L130342_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L130344_)
                    (let ()
                      (let ((__tmp135723 (gx#datum->syntax '#f 'if))
                            (__tmp135706
                             (let ((__tmp135709
                                    (let ((__tmp135722
                                           (gx#datum->syntax '#f 'and))
                                          (__tmp135710
                                           (let ((__tmp135719
                                                  (let ((__tmp135721
                                                         (gx#datum->syntax
                                                          '#f
                                                          'identifier?))
                                                        (__tmp135720
                                                         (let ()
                                                           (declare (not safe))
                                                           (cons _L130344_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135721
                                                          __tmp135720)))
                                                 (__tmp135711
                                                  (let ((__tmp135712
                                                         (let ((__tmp135718
                                                                (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#f
                         'core-identifier=?))
                       (__tmp135713
                        (let ((__tmp135714
                               (let ((__tmp135715
                                      (let ((__tmp135717
                                             (gx#datum->syntax '#f 'quote))
                                            (__tmp135716
                                             (let ()
                                               (declare (not safe))
                                               (cons _L130342_ '()))))
                                        (declare (not safe))
                                        (cons __tmp135717 __tmp135716))))
                                 (declare (not safe))
                                 (cons __tmp135715 '()))))
                          (declare (not safe))
                          (cons _L130344_ __tmp135714))))
                   (declare (not safe))
                   (cons __tmp135718 __tmp135713))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135712 '()))))
                                             (declare (not safe))
                                             (cons __tmp135719 __tmp135711))))
                                      (declare (not safe))
                                      (cons __tmp135722 __tmp135710)))
                                   (__tmp135707
                                    (let ((__tmp135708
                                           (let ()
                                             (declare (not safe))
                                             (cons _E130261_ '()))))
                                      (declare (not safe))
                                      (cons _K130269_ __tmp135708))))
                               (declare (not safe))
                               (cons __tmp135709 __tmp135707))))
                        (declare (not safe))
                        (cons __tmp135723 __tmp135706))))
                  _hd130308130336_
                  _hd130305130326_)
                 (_g130300130315_ _g130301130319_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g130300130315_
                                                  _g130301130319_))))
                                         (_g130300130315_ _g130301130319_)))))
                             (_g130299130366_ (list _tgt130268_ _hd130266_)))
                           (let* ((_g130370130385_
                                   (lambda (_g130371130381_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g130371130381_)))
                                  (_g130369130429_
                                   (lambda (_g130371130389_)
                                     (if (gx#stx-pair? _g130371130389_)
                                         (let ((_e130376130392_
                                                (gx#syntax-e _g130371130389_)))
                                           (let ((_hd130375130396_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e130376130392_)))
                                                 (_tl130374130399_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e130376130392_))))
                                             (if (gx#stx-pair?
                                                  _tl130374130399_)
                                                 (let ((_e130379130402_
                                                        (gx#syntax-e
                                                         _tl130374130399_)))
                                                   (let ((_hd130378130406_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e130379130402_)))
                                                         (_tl130377130409_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e130379130402_))))
                                                     (if (gx#stx-null?
                                                          _tl130377130409_)
                                                         ((lambda (_L130412_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _L130414_)
                    (let ()
                      (let ((__tmp135705 (gx#datum->syntax '#f 'let))
                            (__tmp135700
                             (let ((__tmp135702
                                    (let ((__tmp135703
                                           (let ((__tmp135704
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L130414_ '()))))
                                             (declare (not safe))
                                             (cons _L130412_ __tmp135704))))
                                      (declare (not safe))
                                      (cons __tmp135703 '())))
                                   (__tmp135701
                                    (let ()
                                      (declare (not safe))
                                      (cons _K130269_ '()))))
                               (declare (not safe))
                               (cons __tmp135702 __tmp135701))))
                        (declare (not safe))
                        (cons __tmp135705 __tmp135700))))
                  _hd130378130406_
                  _hd130375130396_)
                 (_g130370130385_ _g130371130389_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g130370130385_
                                                  _g130371130389_))))
                                         (_g130370130385_ _g130371130389_)))))
                             (_g130369130429_ (list _tgt130268_ _hd130266_)))))
                   (if (gx#stx-null? _hd130266_)
                       (let* ((_g130433130441_
                               (lambda (_g130434130437_)
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax; invalid match target"
                                  _g130434130437_)))
                              (_g130432130459_
                               (lambda (_g130434130445_)
                                 ((lambda (_L130448_)
                                    (let ()
                                      (let ((__tmp135699
                                             (gx#datum->syntax '#f 'if))
                                            (__tmp135693
                                             (let ((__tmp135696
                                                    (let ((__tmp135698
                                                           (gx#datum->syntax
                                                            '#f
                                                            'stx-null?))
                                                          (__tmp135697
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L130448_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp135698 __tmp135697)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp135694
                                                    (let ((__tmp135695
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _E130261_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons _K130269_ __tmp135695))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp135696
                                                     __tmp135694))))
                                        (declare (not safe))
                                        (cons __tmp135699 __tmp135693))))
                                  _g130434130445_))))
                         (_g130432130459_ _tgt130268_))
                       (if (gx#stx-datum? _hd130266_)
                           (let* ((_g130463130482_
                                   (lambda (_g130464130478_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Bad syntax; invalid match target"
                                      _g130464130478_)))
                                  (_g130462130540_
                                   (lambda (_g130464130486_)
                                     (if (gx#stx-pair? _g130464130486_)
                                         (let ((_e130470130489_
                                                (gx#syntax-e _g130464130486_)))
                                           (let ((_hd130469130493_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _e130470130489_)))
                                                 (_tl130468130496_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _e130470130489_))))
                                             (if (gx#stx-pair?
                                                  _tl130468130496_)
                                                 (let ((_e130473130499_
                                                        (gx#syntax-e
                                                         _tl130468130496_)))
                                                   (let ((_hd130472130503_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _e130473130499_)))
                                                         (_tl130471130506_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _e130473130499_))))
                                                     (if (gx#stx-pair?
                                                          _tl130471130506_)
                                                         (let ((_e130476130509_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl130471130506_)))
                   (let ((_hd130475130513_
                          (let ()
                            (declare (not safe))
                            (##car _e130476130509_)))
                         (_tl130474130516_
                          (let ()
                            (declare (not safe))
                            (##cdr _e130476130509_))))
                     (if (gx#stx-null? _tl130474130516_)
                         ((lambda (_L130519_ _L130521_ _L130522_)
                            (let ()
                              (let ((__tmp135692 (gx#datum->syntax '#f 'if))
                                    (__tmp135680
                                     (let ((__tmp135683
                                            (let ((__tmp135684
                                                   (let ((__tmp135689
                                                          (let ((__tmp135691
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#datum->syntax '#f 'stx-e))
                        (__tmp135690
                         (let () (declare (not safe)) (cons _L130522_ '()))))
                    (declare (not safe))
                    (cons __tmp135691 __tmp135690)))
                 (__tmp135685
                  (let ((__tmp135686
                         (let ((__tmp135688 (gx#datum->syntax '#f 'quote))
                               (__tmp135687
                                (let ()
                                  (declare (not safe))
                                  (cons _L130521_ '()))))
                           (declare (not safe))
                           (cons __tmp135688 __tmp135687))))
                    (declare (not safe))
                    (cons __tmp135686 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp135689
                                                           __tmp135685))))
                                              (declare (not safe))
                                              (cons _L130519_ __tmp135684)))
                                           (__tmp135681
                                            (let ((__tmp135682
                                                   (let ()
                                                     (declare (not safe))
                                                     (cons _E130261_ '()))))
                                              (declare (not safe))
                                              (cons _K130269_ __tmp135682))))
                                       (declare (not safe))
                                       (cons __tmp135683 __tmp135681))))
                                (declare (not safe))
                                (cons __tmp135692 __tmp135680))))
                          _hd130475130513_
                          _hd130472130503_
                          _hd130469130493_)
                         (_g130463130482_ _g130464130486_))))
                 (_g130463130482_ _g130464130486_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g130463130482_
                                                  _g130464130486_))))
                                         (_g130463130482_ _g130464130486_)))))
                             (_g130462130540_
                              (list _tgt130268_
                                    _hd130266_
                                    (let ((_e130544_ (gx#stx-e _hd130266_)))
                                      (if (or (keyword? _e130544_)
                                              (let ()
                                                (declare (not safe))
                                                (immediate? _e130544_)))
                                          (gx#datum->syntax '#f 'eq?)
                                          (if (let ()
                                                (declare (not safe))
                                                (number? _e130544_))
                                              (gx#datum->syntax '#f 'eqv?)
                                              (gx#datum->syntax
                                               '#f
                                               'equal?)))))))
                           (gx#raise-syntax-error
                            '#f
                            '"Bad syntax; invalid syntax-case head"
                            _stx129711_
                            _where130256_
                            _hd130266_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (gx#stx-pair?
                                                     ___stx135544135545_)
                                                    (let ((_e130278130558_
                                                           (gx#syntax-e
                                                            ___stx135544135545_)))
                                                      (let ((_tl130276130565_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e130278130558_)))
                    (_hd130277130562_
                     (let () (declare (not safe)) (##car _e130278130558_))))
                (___kont135547135548_ _tl130276130565_ _hd130277130562_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___kont135549135550_)))))))
                                  (_recur130263_
                                   _hd130258_
                                   _tgt129863_
                                   (let ((__tmp135728
                                          (gx#datum->syntax '#f 'if))
                                         (__tmp135725
                                          (let ((__tmp135726
                                                 (let ((__tmp135727
                                                        (let ()
                                                          (declare (not safe))
                                                          (cons _E130261_
                                                                '()))))
                                                   (declare (not safe))
                                                   (cons _body130260_
                                                         __tmp135727))))
                                            (declare (not safe))
                                            (cons _fender130259_
                                                  __tmp135726))))
                                     (declare (not safe))
                                     (cons __tmp135728 __tmp135725))))))
                             (_generate-clauses129871_
                              (lambda (_clauses129994_)
                                (let _lp129997_ ((_rest130000_ _clauses129994_)
                                                 (_E130002_ (gx#genident 'E))
                                                 (_r130003_ '()))
                                  (let* ((___stx135580135581_ _rest130000_)
                                         (_g130006130018_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad syntax; invalid match target"
                                             ___stx135580135581_))))
                                    (let ((___kont135583135584_
                                           (lambda (_L130083_ _L130085_)
                                             (let* ((___stx135560135561_
                                                     _L130085_)
                                                    (_g130097130108_
                                                     (lambda ()
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        ___stx135560135561_))))
                                               (let ((___kont135563135564_
                                                      (lambda (_L130237_)
                                                        (if (gx#stx-null?
                                                             _L130083_)
                                                            (if (and (gx#stx-list?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _L130237_)
                             (let ((__tmp135737 (gx#stx-null? _L130237_)))
                               (declare (not safe))
                               (not __tmp135737)))
                        (let ((__tmp135729
                               (let ((__tmp135730
                                      (let ((__tmp135731
                                             (gx#stx-wrap-source
                                              (let ((__tmp135736
                                                     (gx#datum->syntax
                                                      '#f
                                                      'lambda))
                                                    (__tmp135732
                                                     (let ((__tmp135733
                                                            (let ((__tmp135734
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp135735 (gx#datum->syntax '#f 'begin)))
                             (declare (not safe))
                             (cons __tmp135735 _L130237_))))
                      (declare (not safe))
                      (cons __tmp135734 '()))))
               (declare (not safe))
               (cons '() __tmp135733))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp135736 __tmp135732))
                                              (gx#stx-source _L130085_))))
                                        (declare (not safe))
                                        (cons __tmp135731 '()))))
                                 (declare (not safe))
                                 (cons _E130002_ __tmp135730))))
                          (declare (not safe))
                          (cons __tmp135729 _r130003_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid else body"
                         _stx129711_
                         _L130085_))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; misplaced else"
                     _stx129711_
                     _L130085_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont135565135566_
                                                      (lambda ()
                                                        (let* ((_g130119130127_
                                                                (lambda (_g130120130123_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _g130120130123_)))
                       (_g130118130216_
                        (lambda (_g130120130131_)
                          ((lambda (_L130134_)
                             (let ()
                               (let* ((_g130150130158_
                                       (lambda (_g130151130154_)
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _g130151130154_)))
                                      (_g130149130212_
                                       (lambda (_g130151130162_)
                                         ((lambda (_L130165_)
                                            (let ()
                                              (let* ((_g130178130186_
                                                      (lambda (_g130179130182_)
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid match target"
                                                         _g130179130182_)))
                                                     (_g130177130208_
                                                      (lambda (_g130179130190_)
                                                        ((lambda (_L130193_)
                                                           (let ()
                                                             (let ()
                                                               (_lp129997_
                                                                _L130083_
                                                                _L130134_
                                                                (let ((__tmp135738
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ((__tmp135739
                                      (let ()
                                        (declare (not safe))
                                        (cons _L130193_ '()))))
                                 (declare (not safe))
                                 (cons _E130002_ __tmp135739))))
                          (declare (not safe))
                          (cons __tmp135738 _r130003_))))))
                 _g130179130190_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g130177130208_
                                                 (gx#stx-wrap-source
                                                  (let ((__tmp135742
                                                         (gx#datum->syntax
                                                          '#f
                                                          'lambda))
                                                        (__tmp135740
                                                         (let ((__tmp135741
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (cons _L130165_ '()))))
                   (declare (not safe))
                   (cons '() __tmp135741))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135742
                                                          __tmp135740))
                                                  (gx#stx-source
                                                   _L130085_))))))
                                          _g130151130162_))))
                                 (_g130149130212_
                                  (_generate-clause129868_
                                   _L130085_
                                   (let ()
                                     (declare (not safe))
                                     (cons _L130134_ '())))))))
                           _g130120130131_))))
                  (_g130118130216_ (gx#genident 'E))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-pair?
                                                      ___stx135560135561_)
                                                     (let ((_e130102130227_
                                                            (gx#syntax-e
                                                             ___stx135560135561_)))
                                                       (let ((_tl130100130234_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _e130102130227_)))
                     (_hd130101130231_
                      (let () (declare (not safe)) (##car _e130102130227_))))
                 (if (gx#identifier? _hd130101130231_)
                     (if (gx#free-identifier=?
                          |gx[1]#_g135743_|
                          _hd130101130231_)
                         (___kont135563135564_ _tl130100130234_)
                         (___kont135565135566_))
                     (___kont135565135566_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (___kont135565135566_))))))
                                          (___kont135585135586_
                                           (lambda ()
                                             (let* ((_g130029130037_
                                                     (lambda (_g130030130033_)
                                                       (gx#raise-syntax-error
                                                        '#f
                                                        '"Bad syntax; invalid match target"
                                                        _g130030130033_)))
                                                    (_g130028130062_
                                                     (lambda (_g130030130041_)
                                                       ((lambda (_L130044_)
                                                          (let ()
                                                            (let ((__tmp135744
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ((__tmp135745
                                  (let ((__tmp135746
                                         (gx#stx-wrap-source
                                          (let ((__tmp135754
                                                 (gx#datum->syntax
                                                  '#f
                                                  'lambda))
                                                (__tmp135747
                                                 (let ((__tmp135748
                                                        (let ((__tmp135749
                                                               (let ((__tmp135753
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#datum->syntax '#f 'raise-syntax-error))
                             (__tmp135750
                              (let ((__tmp135751
                                     (let ((__tmp135752
                                            (let ()
                                              (declare (not safe))
                                              (cons _L130044_ '()))))
                                       (declare (not safe))
                                       (cons '"Bad syntax; invalid syntax-case clause"
                                             __tmp135752))))
                                (declare (not safe))
                                (cons '#f __tmp135751))))
                         (declare (not safe))
                         (cons __tmp135753 __tmp135750))))
                  (declare (not safe))
                  (cons __tmp135749 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (declare (not safe))
                                                   (cons '() __tmp135748))))
                                            (declare (not safe))
                                            (cons __tmp135754 __tmp135747))
                                          (gx#stx-source _stx129711_))))
                                    (declare (not safe))
                                    (cons __tmp135746 '()))))
                             (declare (not safe))
                             (cons _E130002_ __tmp135745))))
                      (declare (not safe))
                      (cons __tmp135744 _r130003_))))
                _g130030130041_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g130028130062_
                                                _tgt129863_)))))
                                      (if (gx#stx-pair? ___stx135580135581_)
                                          (let ((_e130012130073_
                                                 (gx#syntax-e
                                                  ___stx135580135581_)))
                                            (let ((_tl130010130080_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e130012130073_)))
                                                  (_hd130011130077_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e130012130073_))))
                                              (___kont135583135584_
                                               _tl130010130080_
                                               _hd130011130077_)))
                                          (___kont135585135586_))))))))
                      (let* ((_bind129873_
                              (_generate-clauses129871_ _clauses129866_))
                             (_g129876129893_
                              (lambda (_g129877129889_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid match target"
                                 _g129877129889_)))
                             (_g129875129990_
                              (lambda (_g129877129897_)
                                (if (gx#stx-pair/null? _g129877129897_)
                                    (let ((_g135755_
                                           (gx#syntax-split-splice
                                            _g129877129897_
                                            '0)))
                                      (begin
                                        (let ((_g135756_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g135755_)
                                                     (##vector-length
                                                      _g135755_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g135756_ 2)))
                                              (error "Context expects 2 values"
                                                     _g135756_)))
                                        (let ((_target129879129900_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g135755_ 0)))
                                              (_tl129881129903_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g135755_ 1))))
                                          (if (gx#stx-null? _tl129881129903_)
                                              (letrec ((_loop129882129906_
                                                        (lambda (_hd129880129910_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _bind-try129886129913_)
                  (if (gx#stx-pair? _hd129880129910_)
                      (let ((_e129883129916_ (gx#syntax-e _hd129880129910_)))
                        (let ((_lp-hd129884129920_
                               (let ()
                                 (declare (not safe))
                                 (##car _e129883129916_)))
                              (_lp-tl129885129923_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e129883129916_))))
                          (_loop129882129906_
                           _lp-tl129885129923_
                           (let ()
                             (declare (not safe))
                             (cons _lp-hd129884129920_
                                   _bind-try129886129913_)))))
                      (let ((_bind-try129887129926_
                             (reverse _bind-try129886129913_)))
                        ((lambda (_L129930_)
                           (let ()
                             (let* ((_g129948129956_
                                     (lambda (_g129949129952_)
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax; invalid match target"
                                        _g129949129952_)))
                                    (_g129947129986_
                                     (lambda (_g129949129960_)
                                       ((lambda (_L129963_)
                                          (let ()
                                            (let ()
                                              (let ((__tmp135762
                                                     (gx#datum->syntax
                                                      '#f
                                                      'let*))
                                                    (__tmp135757
                                                     (let ((__tmp135760
                                                            (let ((__tmp135761
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (lambda (_g129977129980_ _g129978129983_)
                             (let ()
                               (declare (not safe))
                               (cons _g129977129980_ _g129978129983_)))))
                      (declare (not safe))
                      (foldr1 __tmp135761 '() _L129930_)))
                   (__tmp135758
                    (let ((__tmp135759
                           (let () (declare (not safe)) (cons _L129963_ '()))))
                      (declare (not safe))
                      (cons __tmp135759 '()))))
               (declare (not safe))
               (cons __tmp135760 __tmp135758))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp135762
                                                      __tmp135757)))))
                                        _g129949129960_))))
                               (_g129947129986_
                                (car (let ()
                                       (declare (not safe))
                                       (last _bind129873_)))))))
                         _bind-try129887129926_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop129882129906_
                                                 _target129879129900_
                                                 '()))
                                              (_g129876129893_
                                               _g129877129897_)))))
                                    (_g129876129893_ _g129877129897_)))))
                        (_g129875129990_ _bind129873_))))))
          (let* ((_g129717129736_
                  (lambda (_g129718129732_)
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _g129718129732_)))
                 (_g129716129859_
                  (lambda (_g129718129740_)
                    (if (gx#stx-pair? _g129718129740_)
                        (let ((_e129724129743_ (gx#syntax-e _g129718129740_)))
                          (let ((_hd129723129747_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e129724129743_)))
                                (_tl129722129750_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e129724129743_))))
                            (if (gx#stx-pair? _tl129722129750_)
                                (let ((_e129727129753_
                                       (gx#syntax-e _tl129722129750_)))
                                  (let ((_hd129726129757_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e129727129753_)))
                                        (_tl129725129760_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e129727129753_))))
                                    (if (gx#stx-pair? _tl129725129760_)
                                        (let ((_e129730129763_
                                               (gx#syntax-e _tl129725129760_)))
                                          (let ((_hd129729129767_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e129730129763_)))
                                                (_tl129728129770_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e129730129763_))))
                                            ((lambda (_L129773_
                                                      _L129775_
                                                      _L129776_)
                                               (if (and (gx#identifier-list?
                                                         _L129775_)
                                                        (gx#stx-list?
                                                         _L129773_))
                                                   (let* ((_g129794129802_
                                                           (lambda (_g129795129798_)
                                                             (gx#raise-syntax-error
                                                              '#f
                                                              '"Bad syntax; invalid match target"
                                                              _g129795129798_)))
                                                          (_g129793129855_
                                                           (lambda (_g129795129806_)
                                                             ((lambda (_L129809_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let* ((_g129821129829_
                                  (lambda (_g129822129825_)
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax; invalid match target"
                                     _g129822129825_)))
                                 (_g129820129851_
                                  (lambda (_g129822129833_)
                                    ((lambda (_L129836_)
                                       (let ()
                                         (let ()
                                           (let ((__tmp135768
                                                  (gx#datum->syntax '#f 'let))
                                                 (__tmp135763
                                                  (let ((__tmp135765
                                                         (let ((__tmp135766
                                                                (let ((__tmp135767
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (let ()
                                 (declare (not safe))
                                 (cons _L129776_ '()))))
                          (declare (not safe))
                          (cons _L129809_ __tmp135767))))
                   (declare (not safe))
                   (cons __tmp135766 '())))
                (__tmp135764
                 (let () (declare (not safe)) (cons _L129836_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (cons __tmp135765
                                                          __tmp135764))))
                                             (declare (not safe))
                                             (cons __tmp135768 __tmp135763)))))
                                     _g129822129833_))))
                            (_g129820129851_
                             (_generate129714_
                              _L129809_
                              (gx#syntax->list _L129775_)
                              _L129773_)))))
                      _g129795129806_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g129793129855_
                                                      (gx#genident 'e)))
                                                   (_g129717129736_
                                                    _g129718129740_)))
                                             _tl129728129770_
                                             _hd129729129767_
                                             _hd129726129757_)))
                                        (_g129717129736_ _g129718129740_))))
                                (_g129717129736_ _g129718129740_))))
                        (_g129717129736_ _g129718129740_)))))
            (_g129716129859_ _stx129711_)))))))
