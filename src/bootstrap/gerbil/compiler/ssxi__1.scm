(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx287181_)
      (let* ((_g287185287203_
              (lambda (_g287186287199_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g287186287199_))))
             (_g287184287258_
              (lambda (_g287186287207_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g287186287207_))
                    (let ((_e287189287210_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g287186287207_))))
                      (let ((_hd287190287214_
                             (let ()
                               (declare (not safe))
                               (##car _e287189287210_)))
                            (_tl287191287217_
                             (let ()
                               (declare (not safe))
                               (##cdr _e287189287210_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl287191287217_))
                            (let ((_e287192287220_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl287191287217_))))
                              (let ((_hd287193287224_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e287192287220_)))
                                    (_tl287194287227_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e287192287220_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl287194287227_))
                                    (let ((_e287195287230_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl287194287227_))))
                                      (let ((_hd287196287234_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e287195287230_)))
                                            (_tl287197287237_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e287195287230_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl287197287237_))
                                            ((lambda (_L287240_ _L287242_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _L287242_))
                                                   (let ((__tmp294789
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'optimizer-declare-type!)))
                                                         (__tmp294784
                                                          (let ((__tmp294786
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp294788
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp294787
                                (let ()
                                  (declare (not safe))
                                  (cons _L287242_ '()))))
                           (declare (not safe))
                           (cons __tmp294788 __tmp294787)))
                        (__tmp294785
                         (let () (declare (not safe)) (cons _L287240_ '()))))
                    (declare (not safe))
                    (cons __tmp294786 __tmp294785))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp294789
                                                           __tmp294784))
                                                   (_g287185287203_
                                                    _g287186287207_)))
                                             _hd287196287234_
                                             _hd287193287224_)
                                            (_g287185287203_
                                             _g287186287207_))))
                                    (_g287185287203_ _g287186287207_))))
                            (_g287185287203_ _g287186287207_))))
                    (_g287185287203_ _g287186287207_)))))
        (_g287184287258_ _$stx287181_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx287262_)
      (let* ((_g287266287295_
              (lambda (_g287267287291_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g287267287291_))))
             (_g287265287395_
              (lambda (_g287267287299_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g287267287299_))
                    (let ((_e287270287302_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g287267287299_))))
                      (let ((_hd287271287306_
                             (let ()
                               (declare (not safe))
                               (##car _e287270287302_)))
                            (_tl287272287309_
                             (let ()
                               (declare (not safe))
                               (##cdr _e287270287302_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl287272287309_))
                            (let ((_g294790_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl287272287309_
                                      '0))))
                              (begin
                                (let ((_g294791_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g294790_)
                                             (##vector-length _g294790_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g294791_ 2)))
                                      (error "Context expects 2 values"
                                             _g294791_)))
                                (let ((_target287273287312_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g294790_ 0)))
                                      (_tl287275287315_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g294790_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl287275287315_))
                                      (letrec ((_loop287276287318_
                                                (lambda (_hd287274287322_
                                                         _type287280287325_
                                                         _symbol287281287327_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd287274287322_))
                                                      (let ((_e287277287330_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd287274287322_))))
                (let ((_lp-hd287278287334_
                       (let () (declare (not safe)) (##car _e287277287330_)))
                      (_lp-tl287279287337_
                       (let () (declare (not safe)) (##cdr _e287277287330_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd287278287334_))
                      (let ((_e287284287340_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd287278287334_))))
                        (let ((_hd287285287344_
                               (let ()
                                 (declare (not safe))
                                 (##car _e287284287340_)))
                              (_tl287286287347_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e287284287340_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl287286287347_))
                              (let ((_e287287287350_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl287286287347_))))
                                (let ((_hd287288287354_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e287287287350_)))
                                      (_tl287289287357_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e287287287350_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl287289287357_))
                                      (_loop287276287318_
                                       _lp-tl287279287337_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd287288287354_
                                               _type287280287325_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd287285287344_
                                               _symbol287281287327_)))
                                      (_g287266287295_ _g287267287299_))))
                              (_g287266287295_ _g287267287299_))))
                      (_g287266287295_ _g287267287299_))))
              (let ((_type287282287360_ (reverse _type287280287325_))
                    (_symbol287283287363_ (reverse _symbol287281287327_)))
                ((lambda (_L287366_ _L287368_)
                   (let ((__tmp294798
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp294792
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L287366_
                               _L287368_))
                            (let ((__tmp294793
                                   (lambda (_g287383287387_
                                            _g287384287390_
                                            _g287385287392_)
                                     (let ((__tmp294794
                                            (let ((__tmp294797
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type)))
                                                  (__tmp294795
                                                   (let ((__tmp294796
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _g287383287387_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g287384287390_
                                                           __tmp294796))))
                                              (declare (not safe))
                                              (cons __tmp294797 __tmp294795))))
                                       (declare (not safe))
                                       (cons __tmp294794 _g287385287392_)))))
                              (declare (not safe))
                              (foldr2 __tmp294793 '() _L287366_ _L287368_)))))
                     (declare (not safe))
                     (cons __tmp294798 __tmp294792)))
                 _type287282287360_
                 _symbol287283287363_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop287276287318_
                                         _target287273287312_
                                         '()
                                         '()))
                                      (_g287266287295_ _g287267287299_)))))
                            (_g287266287295_ _g287267287299_))))
                    (_g287266287295_ _g287267287299_)))))
        (_g287265287395_ _$stx287262_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx287400_)
      (let* ((___stx294349294350_ _$stx287400_)
             (_g287405287447_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx294349294350_)))))
        (let ((___kont294352294353_
               (lambda (_L287575_ _L287577_ _L287578_ _L287579_)
                 (let ((__tmp294812
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'optimizer-declare-method!)))
                       (__tmp294799
                        (let ((__tmp294809
                               (let ((__tmp294811
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp294810
                                      (let ()
                                        (declare (not safe))
                                        (cons _L287579_ '()))))
                                 (declare (not safe))
                                 (cons __tmp294811 __tmp294810)))
                              (__tmp294800
                               (let ((__tmp294806
                                      (let ((__tmp294808
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp294807
                                             (let ()
                                               (declare (not safe))
                                               (cons _L287578_ '()))))
                                        (declare (not safe))
                                        (cons __tmp294808 __tmp294807)))
                                     (__tmp294801
                                      (let ((__tmp294803
                                             (let ((__tmp294805
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp294804
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L287577_ '()))))
                                               (declare (not safe))
                                               (cons __tmp294805 __tmp294804)))
                                            (__tmp294802
                                             (let ()
                                               (declare (not safe))
                                               (cons _L287575_ '()))))
                                        (declare (not safe))
                                        (cons __tmp294803 __tmp294802))))
                                 (declare (not safe))
                                 (cons __tmp294806 __tmp294801))))
                          (declare (not safe))
                          (cons __tmp294809 __tmp294800))))
                   (declare (not safe))
                   (cons __tmp294812 __tmp294799))))
              (___kont294354294355_
               (lambda (_L287494_ _L287496_ _L287497_ _L287498_)
                 (let ((__tmp294813
                        (let ((__tmp294814
                               (let ((__tmp294815
                                      (let ((__tmp294816
                                             (let ((__tmp294817
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'rebind?))))
                                               (declare (not safe))
                                               (cons __tmp294817 '()))))
                                        (declare (not safe))
                                        (cons _L287494_ __tmp294816))))
                                 (declare (not safe))
                                 (cons _L287496_ __tmp294815))))
                          (declare (not safe))
                          (cons _L287497_ __tmp294814))))
                   (declare (not safe))
                   (cons _L287498_ __tmp294813)))))
          (let ((___match294388294389_
                 (lambda (_e287411287525_
                          _hd287412287529_
                          _tl287413287532_
                          _e287414287535_
                          _hd287415287539_
                          _tl287416287542_
                          _e287417287545_
                          _hd287418287549_
                          _tl287419287552_
                          _e287420287555_
                          _hd287421287559_
                          _tl287422287562_
                          _e287423287565_
                          _hd287424287569_
                          _tl287425287572_)
                   (let ((_L287575_ _hd287424287569_)
                         (_L287577_ _hd287421287559_)
                         (_L287578_ _hd287418287549_)
                         (_L287579_ _hd287415287539_))
                     (if (and (let ()
                                (declare (not safe))
                                (gx#identifier? _L287579_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L287578_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L287577_)))
                         (___kont294352294353_
                          _L287575_
                          _L287577_
                          _L287578_
                          _L287579_)
                         (let () (declare (not safe)) (_g287405287447_)))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx294349294350_))
                (let ((_e287411287525_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx294349294350_))))
                  (let ((_tl287413287532_
                         (let () (declare (not safe)) (##cdr _e287411287525_)))
                        (_hd287412287529_
                         (let ()
                           (declare (not safe))
                           (##car _e287411287525_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl287413287532_))
                        (let ((_e287414287535_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl287413287532_))))
                          (let ((_tl287416287542_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e287414287535_)))
                                (_hd287415287539_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e287414287535_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl287416287542_))
                                (let ((_e287417287545_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl287416287542_))))
                                  (let ((_tl287419287552_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e287417287545_)))
                                        (_hd287418287549_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e287417287545_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl287419287552_))
                                        (let ((_e287420287555_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _tl287419287552_))))
                                          (let ((_tl287422287562_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e287420287555_)))
                                                (_hd287421287559_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e287420287555_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl287422287562_))
                                                (let ((_e287423287565_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl287422287562_))))
                                                  (let ((_tl287425287572_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e287423287565_)))
                                                        (_hd287424287569_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e287423287565_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl287425287572_))
                                                        (___match294388294389_
                                                         _e287411287525_
                                                         _hd287412287529_
                                                         _tl287413287532_
                                                         _e287414287535_
                                                         _hd287415287539_
                                                         _tl287416287542_
                                                         _e287417287545_
                                                         _hd287418287549_
                                                         _tl287419287552_
                                                         _e287420287555_
                                                         _hd287421287559_
                                                         _tl287422287562_
                                                         _e287423287565_
                                                         _hd287424287569_
                                                         _tl287425287572_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g287405287447_)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl287422287562_))
                                                    (___kont294354294355_
                                                     _hd287421287559_
                                                     _hd287418287549_
                                                     _hd287415287539_
                                                     _hd287412287529_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g287405287447_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g287405287447_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g287405287447_)))))
                        (let () (declare (not safe)) (_g287405287447_)))))
                (let () (declare (not safe)) (_g287405287447_))))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx287604_)
      (let* ((_g287608287643_
              (lambda (_g287609287639_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g287609287639_))))
             (_g287607287762_
              (lambda (_g287609287647_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g287609287647_))
                    (let ((_e287613287650_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g287609287647_))))
                      (let ((_hd287614287654_
                             (let ()
                               (declare (not safe))
                               (##car _e287613287650_)))
                            (_tl287615287657_
                             (let ()
                               (declare (not safe))
                               (##cdr _e287613287650_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl287615287657_))
                            (let ((_g294818_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl287615287657_
                                      '0))))
                              (begin
                                (let ((_g294819_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g294818_)
                                             (##vector-length _g294818_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g294819_ 2)))
                                      (error "Context expects 2 values"
                                             _g294819_)))
                                (let ((_target287616287660_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g294818_ 0)))
                                      (_tl287618287663_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g294818_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl287618287663_))
                                      (letrec ((_loop287619287666_
                                                (lambda (_hd287617287670_
                                                         _symbol287623287673_
                                                         _method287624287675_
                                                         _type-t287625287677_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd287617287670_))
                                                      (let ((_e287620287680_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd287617287670_))))
                (let ((_lp-hd287621287684_
                       (let () (declare (not safe)) (##car _e287620287680_)))
                      (_lp-tl287622287687_
                       (let () (declare (not safe)) (##cdr _e287620287680_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd287621287684_))
                      (let ((_e287629287690_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd287621287684_))))
                        (let ((_hd287630287694_
                               (let ()
                                 (declare (not safe))
                                 (##car _e287629287690_)))
                              (_tl287631287697_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e287629287690_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl287631287697_))
                              (let ((_e287632287700_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl287631287697_))))
                                (let ((_hd287633287704_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e287632287700_)))
                                      (_tl287634287707_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e287632287700_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl287634287707_))
                                      (let ((_e287635287710_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl287634287707_))))
                                        (let ((_hd287636287714_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e287635287710_)))
                                              (_tl287637287717_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e287635287710_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl287637287717_))
                                              (_loop287619287666_
                                               _lp-tl287622287687_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd287636287714_
                                                       _symbol287623287673_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd287633287704_
                                                       _method287624287675_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd287630287694_
                                                       _type-t287625287677_)))
                                              (_g287608287643_
                                               _g287609287647_))))
                                      (_g287608287643_ _g287609287647_))))
                              (_g287608287643_ _g287609287647_))))
                      (_g287608287643_ _g287609287647_))))
              (let ((_symbol287626287720_ (reverse _symbol287623287673_))
                    (_method287627287723_ (reverse _method287624287675_))
                    (_type-t287628287725_ (reverse _type-t287625287677_)))
                ((lambda (_L287728_ _L287730_ _L287731_)
                   (let ((__tmp294827
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp294820
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L287728_
                               _L287730_
                               _L287731_))
                            (let ((__tmp294821
                                   (lambda (_g287747287752_
                                            _g287748287755_
                                            _g287749287757_
                                            _g287750287759_)
                                     (let ((__tmp294822
                                            (let ((__tmp294826
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-method)))
                                                  (__tmp294823
                                                   (let ((__tmp294824
                                                          (let ((__tmp294825
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g287747287752_ '()))))
                    (declare (not safe))
                    (cons _g287748287755_ __tmp294825))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g287749287757_
                                                           __tmp294824))))
                                              (declare (not safe))
                                              (cons __tmp294826 __tmp294823))))
                                       (declare (not safe))
                                       (cons __tmp294822 _g287750287759_)))))
                              (declare (not safe))
                              (foldr* __tmp294821
                                      '()
                                      _L287728_
                                      _L287730_
                                      _L287731_)))))
                     (declare (not safe))
                     (cons __tmp294827 __tmp294820)))
                 _symbol287626287720_
                 _method287627287723_
                 _type-t287628287725_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop287619287666_
                                         _target287616287660_
                                         '()
                                         '()
                                         '()))
                                      (_g287608287643_ _g287609287647_)))))
                            (_g287608287643_ _g287609287647_))))
                    (_g287608287643_ _g287609287647_)))))
        (_g287607287762_ _$stx287604_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx287767_)
      (let* ((_g287771287804_
              (lambda (_g287772287800_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g287772287800_))))
             (_g287770287918_
              (lambda (_g287772287808_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g287772287808_))
                    (let ((_e287776287811_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g287772287808_))))
                      (let ((_hd287777287815_
                             (let ()
                               (declare (not safe))
                               (##car _e287776287811_)))
                            (_tl287778287818_
                             (let ()
                               (declare (not safe))
                               (##cdr _e287776287811_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl287778287818_))
                            (let ((_e287779287821_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl287778287818_))))
                              (let ((_hd287780287825_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e287779287821_)))
                                    (_tl287781287828_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e287779287821_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl287781287828_))
                                    (let ((_g294828_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl287781287828_
                                              '0))))
                                      (begin
                                        (let ((_g294829_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g294828_)
                                                     (##vector-length
                                                      _g294828_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g294829_ 2)))
                                              (error "Context expects 2 values"
                                                     _g294829_)))
                                        (let ((_target287782287831_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g294828_ 0)))
                                              (_tl287784287834_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g294828_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl287784287834_))
                                              (letrec ((_loop287785287837_
                                                        (lambda (_hd287783287841_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol287789287844_
                         _method287790287846_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd287783287841_))
                      (let ((_e287786287849_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _hd287783287841_))))
                        (let ((_lp-hd287787287853_
                               (let ()
                                 (declare (not safe))
                                 (##car _e287786287849_)))
                              (_lp-tl287788287856_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e287786287849_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _lp-hd287787287853_))
                              (let ((_e287793287859_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _lp-hd287787287853_))))
                                (let ((_hd287794287863_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e287793287859_)))
                                      (_tl287795287866_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e287793287859_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl287795287866_))
                                      (let ((_e287796287869_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl287795287866_))))
                                        (let ((_hd287797287873_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e287796287869_)))
                                              (_tl287798287876_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e287796287869_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl287798287876_))
                                              (_loop287785287837_
                                               _lp-tl287788287856_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd287797287873_
                                                       _symbol287789287844_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd287794287863_
                                                       _method287790287846_)))
                                              (_g287771287804_
                                               _g287772287808_))))
                                      (_g287771287804_ _g287772287808_))))
                              (_g287771287804_ _g287772287808_))))
                      (let ((_symbol287791287879_
                             (reverse _symbol287789287844_))
                            (_method287792287882_
                             (reverse _method287790287846_)))
                        ((lambda (_L287885_ _L287887_ _L287888_)
                           (let ((__tmp294837
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'begin)))
                                 (__tmp294830
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-check-splice-targets
                                       _L287885_
                                       _L287887_))
                                    (let ((__tmp294831
                                           (lambda (_g287906287910_
                                                    _g287907287913_
                                                    _g287908287915_)
                                             (let ((__tmp294832
                                                    (let ((__tmp294836
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'declare-method)))
                                                          (__tmp294833
                                                           (let ((__tmp294834
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp294835
                                 (let ()
                                   (declare (not safe))
                                   (cons _g287906287910_ '()))))
                            (declare (not safe))
                            (cons _g287907287913_ __tmp294835))))
                     (declare (not safe))
                     (cons _L287888_ __tmp294834))))
              (declare (not safe))
              (cons __tmp294836 __tmp294833))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp294832
                                                     _g287908287915_)))))
                                      (declare (not safe))
                                      (foldr2 __tmp294831
                                              '()
                                              _L287885_
                                              _L287887_)))))
                             (declare (not safe))
                             (cons __tmp294837 __tmp294830)))
                         _symbol287791287879_
                         _method287792287882_
                         _hd287780287825_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop287785287837_
                                                 _target287782287831_
                                                 '()
                                                 '()))
                                              (_g287771287804_
                                               _g287772287808_)))))
                                    (_g287771287804_ _g287772287808_))))
                            (_g287771287804_ _g287772287808_))))
                    (_g287771287804_ _g287772287808_)))))
        (_g287770287918_ _$stx287767_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx287923_)
      (let* ((_g287927287941_
              (lambda (_g287928287937_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g287928287937_))))
             (_g287926287982_
              (lambda (_g287928287945_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g287928287945_))
                    (let ((_e287930287948_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g287928287945_))))
                      (let ((_hd287931287952_
                             (let ()
                               (declare (not safe))
                               (##car _e287930287948_)))
                            (_tl287932287955_
                             (let ()
                               (declare (not safe))
                               (##cdr _e287930287948_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl287932287955_))
                            (let ((_e287933287958_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl287932287955_))))
                              (let ((_hd287934287962_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e287933287958_)))
                                    (_tl287935287965_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e287933287958_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl287935287965_))
                                    ((lambda (_L287968_)
                                       (let ((__tmp294842
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!alias)))
                                             (__tmp294838
                                              (let ((__tmp294839
                                                     (let ((__tmp294841
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp294840
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L287968_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp294841 __tmp294840))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp294839 '()))))
                                         (declare (not safe))
                                         (cons __tmp294842 __tmp294838)))
                                     _hd287934287962_)
                                    (_g287927287941_ _g287928287945_))))
                            (_g287927287941_ _g287928287945_))))
                    (_g287927287941_ _g287928287945_)))))
        (_g287926287982_ _$stx287923_))))
  (define |gxc[:0:]#@class|
    (lambda (_$stx287986_)
      (let* ((_g287990288040_
              (lambda (_g287991288036_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g287991288036_))))
             (_g287989288207_
              (lambda (_g287991288044_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g287991288044_))
                    (let ((_e288002288047_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g287991288044_))))
                      (let ((_hd288003288051_
                             (let ()
                               (declare (not safe))
                               (##car _e288002288047_)))
                            (_tl288004288054_
                             (let ()
                               (declare (not safe))
                               (##cdr _e288002288047_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl288004288054_))
                            (let ((_e288005288057_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl288004288054_))))
                              (let ((_hd288006288061_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e288005288057_)))
                                    (_tl288007288064_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e288005288057_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl288007288064_))
                                    (let ((_e288008288067_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl288007288064_))))
                                      (let ((_hd288009288071_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e288008288067_)))
                                            (_tl288010288074_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e288008288067_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl288010288074_))
                                            (let ((_e288011288077_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl288010288074_))))
                                              (let ((_hd288012288081_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e288011288077_)))
                                                    (_tl288013288084_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e288011288077_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl288013288084_))
                                                    (let ((_e288014288087_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl288013288084_))))
                                                      (let ((_hd288015288091_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e288014288087_)))
                    (_tl288016288094_
                     (let () (declare (not safe)) (##cdr _e288014288087_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl288016288094_))
                    (let ((_e288017288097_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl288016288094_))))
                      (let ((_hd288018288101_
                             (let ()
                               (declare (not safe))
                               (##car _e288017288097_)))
                            (_tl288019288104_
                             (let ()
                               (declare (not safe))
                               (##cdr _e288017288097_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl288019288104_))
                            (let ((_e288020288107_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl288019288104_))))
                              (let ((_hd288021288111_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e288020288107_)))
                                    (_tl288022288114_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e288020288107_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl288022288114_))
                                    (let ((_e288023288117_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl288022288114_))))
                                      (let ((_hd288024288121_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e288023288117_)))
                                            (_tl288025288124_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e288023288117_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl288025288124_))
                                            (let ((_e288026288127_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl288025288124_))))
                                              (let ((_hd288027288131_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e288026288127_)))
                                                    (_tl288028288134_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e288026288127_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl288028288134_))
                                                    (let ((_e288029288137_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl288028288134_))))
                                                      (let ((_hd288030288141_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e288029288137_)))
                    (_tl288031288144_
                     (let () (declare (not safe)) (##cdr _e288029288137_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl288031288144_))
                    (let ((_e288032288147_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl288031288144_))))
                      (let ((_hd288033288151_
                             (let ()
                               (declare (not safe))
                               (##car _e288032288147_)))
                            (_tl288034288154_
                             (let ()
                               (declare (not safe))
                               (##cdr _e288032288147_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _tl288034288154_))
                            ((lambda (_L288157_
                                      _L288159_
                                      _L288160_
                                      _L288161_
                                      _L288162_
                                      _L288163_
                                      _L288164_
                                      _L288165_
                                      _L288166_
                                      _L288167_)
                               (let ((__tmp294877
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0
                                         '#f
                                         'make-!class)))
                                     (__tmp294843
                                      (let ((__tmp294874
                                             (let ((__tmp294876
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp294875
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L288167_ '()))))
                                               (declare (not safe))
                                               (cons __tmp294876 __tmp294875)))
                                            (__tmp294844
                                             (let ((__tmp294871
                                                    (let ((__tmp294873
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'quote)))
                                                          (__tmp294872
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (cons _L288166_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))))
              (declare (not safe))
              (cons __tmp294873 __tmp294872)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (__tmp294845
                                                    (let ((__tmp294868
                                                           (let ((__tmp294870
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp294869
                          (let () (declare (not safe)) (cons _L288165_ '()))))
                     (declare (not safe))
                     (cons __tmp294870 __tmp294869)))
                  (__tmp294846
                   (let ((__tmp294865
                          (let ((__tmp294867
                                 (let ()
                                   (declare (not safe))
                                   (gx#datum->syntax__0 '#f 'quote)))
                                (__tmp294866
                                 (let ()
                                   (declare (not safe))
                                   (cons _L288164_ '()))))
                            (declare (not safe))
                            (cons __tmp294867 __tmp294866)))
                         (__tmp294847
                          (let ((__tmp294862
                                 (let ((__tmp294864
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f 'quote)))
                                       (__tmp294863
                                        (let ()
                                          (declare (not safe))
                                          (cons _L288163_ '()))))
                                   (declare (not safe))
                                   (cons __tmp294864 __tmp294863)))
                                (__tmp294848
                                 (let ((__tmp294859
                                        (let ((__tmp294861
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  'quote)))
                                              (__tmp294860
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _L288162_ '()))))
                                          (declare (not safe))
                                          (cons __tmp294861 __tmp294860)))
                                       (__tmp294849
                                        (let ((__tmp294850
                                               (let ((__tmp294851
                                                      (let ((__tmp294856
                                                             (let ((__tmp294858
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp294857
                            (let ()
                              (declare (not safe))
                              (cons _L288159_ '()))))
                       (declare (not safe))
                       (cons __tmp294858 __tmp294857)))
                    (__tmp294852
                     (let ((__tmp294853
                            (let ((__tmp294855
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp294854
                                   (let ()
                                     (declare (not safe))
                                     (cons _L288157_ '()))))
                              (declare (not safe))
                              (cons __tmp294855 __tmp294854))))
                       (declare (not safe))
                       (cons __tmp294853 '()))))
                (declare (not safe))
                (cons __tmp294856 __tmp294852))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons _L288160_
                                                       __tmp294851))))
                                          (declare (not safe))
                                          (cons _L288161_ __tmp294850))))
                                   (declare (not safe))
                                   (cons __tmp294859 __tmp294849))))
                            (declare (not safe))
                            (cons __tmp294862 __tmp294848))))
                     (declare (not safe))
                     (cons __tmp294865 __tmp294847))))
              (declare (not safe))
              (cons __tmp294868 __tmp294846))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp294871
                                                     __tmp294845))))
                                        (declare (not safe))
                                        (cons __tmp294874 __tmp294844))))
                                 (declare (not safe))
                                 (cons __tmp294877 __tmp294843)))
                             _hd288033288151_
                             _hd288030288141_
                             _hd288027288131_
                             _hd288024288121_
                             _hd288021288111_
                             _hd288018288101_
                             _hd288015288091_
                             _hd288012288081_
                             _hd288009288071_
                             _hd288006288061_)
                            (_g287990288040_ _g287991288044_))))
                    (_g287990288040_ _g287991288044_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g287990288040_
                                                     _g287991288044_))))
                                            (_g287990288040_
                                             _g287991288044_))))
                                    (_g287990288040_ _g287991288044_))))
                            (_g287990288040_ _g287991288044_))))
                    (_g287990288040_ _g287991288044_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g287990288040_
                                                     _g287991288044_))))
                                            (_g287990288040_
                                             _g287991288044_))))
                                    (_g287990288040_ _g287991288044_))))
                            (_g287990288040_ _g287991288044_))))
                    (_g287990288040_ _g287991288044_)))))
        (_g287989288207_ _$stx287986_))))
  (define |gxc[:0:]#@predicate|
    (lambda (_$stx288211_)
      (let* ((_g288215288229_
              (lambda (_g288216288225_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g288216288225_))))
             (_g288214288270_
              (lambda (_g288216288233_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g288216288233_))
                    (let ((_e288218288236_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g288216288233_))))
                      (let ((_hd288219288240_
                             (let ()
                               (declare (not safe))
                               (##car _e288218288236_)))
                            (_tl288220288243_
                             (let ()
                               (declare (not safe))
                               (##cdr _e288218288236_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl288220288243_))
                            (let ((_e288221288246_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl288220288243_))))
                              (let ((_hd288222288250_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e288221288246_)))
                                    (_tl288223288253_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e288221288246_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl288223288253_))
                                    ((lambda (_L288256_)
                                       (let ((__tmp294882
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!predicate)))
                                             (__tmp294878
                                              (let ((__tmp294879
                                                     (let ((__tmp294881
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp294880
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L288256_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp294881 __tmp294880))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp294879 '()))))
                                         (declare (not safe))
                                         (cons __tmp294882 __tmp294878)))
                                     _hd288222288250_)
                                    (_g288215288229_ _g288216288233_))))
                            (_g288215288229_ _g288216288233_))))
                    (_g288215288229_ _g288216288233_)))))
        (_g288214288270_ _$stx288211_))))
  (define |gxc[:0:]#@constructor|
    (lambda (_$stx288274_)
      (let* ((_g288278288292_
              (lambda (_g288279288288_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g288279288288_))))
             (_g288277288333_
              (lambda (_g288279288296_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g288279288296_))
                    (let ((_e288281288299_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g288279288296_))))
                      (let ((_hd288282288303_
                             (let ()
                               (declare (not safe))
                               (##car _e288281288299_)))
                            (_tl288283288306_
                             (let ()
                               (declare (not safe))
                               (##cdr _e288281288299_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl288283288306_))
                            (let ((_e288284288309_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl288283288306_))))
                              (let ((_hd288285288313_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e288284288309_)))
                                    (_tl288286288316_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e288284288309_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl288286288316_))
                                    ((lambda (_L288319_)
                                       (let ((__tmp294887
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!constructor)))
                                             (__tmp294883
                                              (let ((__tmp294884
                                                     (let ((__tmp294886
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp294885
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L288319_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp294886 __tmp294885))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp294884 '()))))
                                         (declare (not safe))
                                         (cons __tmp294887 __tmp294883)))
                                     _hd288285288313_)
                                    (_g288278288292_ _g288279288296_))))
                            (_g288278288292_ _g288279288296_))))
                    (_g288278288292_ _g288279288296_)))))
        (_g288277288333_ _$stx288274_))))
  (define |gxc[:0:]#@accessor|
    (lambda (_$stx288337_)
      (let* ((_g288341288363_
              (lambda (_g288342288359_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g288342288359_))))
             (_g288340288432_
              (lambda (_g288342288367_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g288342288367_))
                    (let ((_e288346288370_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g288342288367_))))
                      (let ((_hd288347288374_
                             (let ()
                               (declare (not safe))
                               (##car _e288346288370_)))
                            (_tl288348288377_
                             (let ()
                               (declare (not safe))
                               (##cdr _e288346288370_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl288348288377_))
                            (let ((_e288349288380_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl288348288377_))))
                              (let ((_hd288350288384_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e288349288380_)))
                                    (_tl288351288387_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e288349288380_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl288351288387_))
                                    (let ((_e288352288390_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl288351288387_))))
                                      (let ((_hd288353288394_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e288352288390_)))
                                            (_tl288354288397_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e288352288390_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl288354288397_))
                                            (let ((_e288355288400_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl288354288397_))))
                                              (let ((_hd288356288404_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e288355288400_)))
                                                    (_tl288357288407_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e288355288400_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl288357288407_))
                                                    ((lambda (_L288410_
                                                              _L288412_
                                                              _L288413_)
                                                       (let ((__tmp294897
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!accessor)))
                     (__tmp294888
                      (let ((__tmp294894
                             (let ((__tmp294896
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp294895
                                    (let ()
                                      (declare (not safe))
                                      (cons _L288413_ '()))))
                               (declare (not safe))
                               (cons __tmp294896 __tmp294895)))
                            (__tmp294889
                             (let ((__tmp294891
                                    (let ((__tmp294893
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp294892
                                           (let ()
                                             (declare (not safe))
                                             (cons _L288412_ '()))))
                                      (declare (not safe))
                                      (cons __tmp294893 __tmp294892)))
                                   (__tmp294890
                                    (let ()
                                      (declare (not safe))
                                      (cons _L288410_ '()))))
                               (declare (not safe))
                               (cons __tmp294891 __tmp294890))))
                        (declare (not safe))
                        (cons __tmp294894 __tmp294889))))
                 (declare (not safe))
                 (cons __tmp294897 __tmp294888)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd288356288404_
                                                     _hd288353288394_
                                                     _hd288350288384_)
                                                    (_g288341288363_
                                                     _g288342288367_))))
                                            (_g288341288363_
                                             _g288342288367_))))
                                    (_g288341288363_ _g288342288367_))))
                            (_g288341288363_ _g288342288367_))))
                    (_g288341288363_ _g288342288367_)))))
        (_g288340288432_ _$stx288337_))))
  (define |gxc[:0:]#@mutator|
    (lambda (_$stx288436_)
      (let* ((_g288440288462_
              (lambda (_g288441288458_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g288441288458_))))
             (_g288439288531_
              (lambda (_g288441288466_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g288441288466_))
                    (let ((_e288445288469_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g288441288466_))))
                      (let ((_hd288446288473_
                             (let ()
                               (declare (not safe))
                               (##car _e288445288469_)))
                            (_tl288447288476_
                             (let ()
                               (declare (not safe))
                               (##cdr _e288445288469_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl288447288476_))
                            (let ((_e288448288479_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl288447288476_))))
                              (let ((_hd288449288483_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e288448288479_)))
                                    (_tl288450288486_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e288448288479_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl288450288486_))
                                    (let ((_e288451288489_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl288450288486_))))
                                      (let ((_hd288452288493_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e288451288489_)))
                                            (_tl288453288496_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e288451288489_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl288453288496_))
                                            (let ((_e288454288499_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl288453288496_))))
                                              (let ((_hd288455288503_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e288454288499_)))
                                                    (_tl288456288506_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e288454288499_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl288456288506_))
                                                    ((lambda (_L288509_
                                                              _L288511_
                                                              _L288512_)
                                                       (let ((__tmp294907
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!mutator)))
                     (__tmp294898
                      (let ((__tmp294904
                             (let ((__tmp294906
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp294905
                                    (let ()
                                      (declare (not safe))
                                      (cons _L288512_ '()))))
                               (declare (not safe))
                               (cons __tmp294906 __tmp294905)))
                            (__tmp294899
                             (let ((__tmp294901
                                    (let ((__tmp294903
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp294902
                                           (let ()
                                             (declare (not safe))
                                             (cons _L288511_ '()))))
                                      (declare (not safe))
                                      (cons __tmp294903 __tmp294902)))
                                   (__tmp294900
                                    (let ()
                                      (declare (not safe))
                                      (cons _L288509_ '()))))
                               (declare (not safe))
                               (cons __tmp294901 __tmp294900))))
                        (declare (not safe))
                        (cons __tmp294904 __tmp294899))))
                 (declare (not safe))
                 (cons __tmp294907 __tmp294898)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd288455288503_
                                                     _hd288452288493_
                                                     _hd288449288483_)
                                                    (_g288440288462_
                                                     _g288441288466_))))
                                            (_g288440288462_
                                             _g288441288466_))))
                                    (_g288440288462_ _g288441288466_))))
                            (_g288440288462_ _g288441288466_))))
                    (_g288440288462_ _g288441288466_)))))
        (_g288439288531_ _$stx288436_))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx288535_)
      (let* ((___stx294417294418_ _$stx288535_)
             (_g288543288611_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx294417294418_)))))
        (let ((___kont294420294421_
               (lambda (_L288889_ _L288891_)
                 (let ((__tmp294923
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp294908
                        (let ((__tmp294919
                               (let ((__tmp294922
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp294920
                                      (let ((__tmp294921
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp294921 '()))))
                                 (declare (not safe))
                                 (cons __tmp294922 __tmp294920)))
                              (__tmp294909
                               (let ((__tmp294916
                                      (let ((__tmp294918
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp294917
                                             (let ()
                                               (declare (not safe))
                                               (cons _L288891_ '()))))
                                        (declare (not safe))
                                        (cons __tmp294918 __tmp294917)))
                                     (__tmp294910
                                      (let ((__tmp294911
                                             (let ((__tmp294912
                                                    (let ((__tmp294913
                                                           (let ((__tmp294915
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp294914
                          (let () (declare (not safe)) (cons _L288889_ '()))))
                     (declare (not safe))
                     (cons __tmp294915 __tmp294914))))
              (declare (not safe))
              (cons __tmp294913 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L288889_ __tmp294912))))
                                        (declare (not safe))
                                        (cons '#f __tmp294911))))
                                 (declare (not safe))
                                 (cons __tmp294916 __tmp294910))))
                          (declare (not safe))
                          (cons __tmp294919 __tmp294909))))
                   (declare (not safe))
                   (cons __tmp294923 __tmp294908))))
              (___kont294422294423_
               (lambda (_L288820_ _L288822_)
                 (let ((__tmp294924
                        (let ((__tmp294925
                               (let ((__tmp294926
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L288820_ __tmp294926))))
                          (declare (not safe))
                          (cons 'primitive: __tmp294925))))
                   (declare (not safe))
                   (cons _L288822_ __tmp294924))))
              (___kont294424294425_
               (lambda (_L288759_ _L288761_)
                 (let ((__tmp294940
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!primitive-lambda)))
                       (__tmp294927
                        (let ((__tmp294936
                               (let ((__tmp294939
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp294937
                                      (let ((__tmp294938
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp294938 '()))))
                                 (declare (not safe))
                                 (cons __tmp294939 __tmp294937)))
                              (__tmp294928
                               (let ((__tmp294933
                                      (let ((__tmp294935
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp294934
                                             (let ()
                                               (declare (not safe))
                                               (cons _L288761_ '()))))
                                        (declare (not safe))
                                        (cons __tmp294935 __tmp294934)))
                                     (__tmp294929
                                      (let ((__tmp294930
                                             (let ((__tmp294932
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp294931
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L288759_ '()))))
                                               (declare (not safe))
                                               (cons __tmp294932
                                                     __tmp294931))))
                                        (declare (not safe))
                                        (cons __tmp294930 '()))))
                                 (declare (not safe))
                                 (cons __tmp294933 __tmp294929))))
                          (declare (not safe))
                          (cons __tmp294936 __tmp294928))))
                   (declare (not safe))
                   (cons __tmp294940 __tmp294927))))
              (___kont294426294427_
               (lambda (_L288691_ _L288693_)
                 (let ((__tmp294954
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp294941
                        (let ((__tmp294950
                               (let ((__tmp294953
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp294951
                                      (let ((__tmp294952
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp294952 '()))))
                                 (declare (not safe))
                                 (cons __tmp294953 __tmp294951)))
                              (__tmp294942
                               (let ((__tmp294947
                                      (let ((__tmp294949
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp294948
                                             (let ()
                                               (declare (not safe))
                                               (cons _L288693_ '()))))
                                        (declare (not safe))
                                        (cons __tmp294949 __tmp294948)))
                                     (__tmp294943
                                      (let ((__tmp294944
                                             (let ((__tmp294946
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp294945
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L288691_ '()))))
                                               (declare (not safe))
                                               (cons __tmp294946
                                                     __tmp294945))))
                                        (declare (not safe))
                                        (cons __tmp294944 '()))))
                                 (declare (not safe))
                                 (cons __tmp294947 __tmp294943))))
                          (declare (not safe))
                          (cons __tmp294950 __tmp294942))))
                   (declare (not safe))
                   (cons __tmp294954 __tmp294941))))
              (___kont294428294429_
               (lambda (_L288638_ _L288640_)
                 (let ((__tmp294955
                        (let ((__tmp294956
                               (let () (declare (not safe)) (cons '#f '()))))
                          (declare (not safe))
                          (cons _L288638_ __tmp294956))))
                   (declare (not safe))
                   (cons _L288640_ __tmp294955)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx294417294418_))
              (let ((_e288547288845_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx294417294418_))))
                (let ((_tl288549288852_
                       (let () (declare (not safe)) (##cdr _e288547288845_)))
                      (_hd288548288849_
                       (let () (declare (not safe)) (##car _e288547288845_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl288549288852_))
                      (let ((_e288550288855_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl288549288852_))))
                        (let ((_tl288552288862_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e288550288855_)))
                              (_hd288551288859_
                               (let ()
                                 (declare (not safe))
                                 (##car _e288550288855_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl288552288862_))
                              (let ((_e288553288865_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl288552288862_))))
                                (let ((_tl288555288872_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e288553288865_)))
                                      (_hd288554288869_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e288553288865_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd288554288869_))
                                      (let ((_e288556288875_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd288554288869_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e288556288875_
                                                      'inline:))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl288555288872_))
                                                (let ((_e288557288879_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl288555288872_))))
                                                  (let ((_tl288559288886_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e288557288879_)))
                                                        (_hd288558288883_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e288557288879_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl288559288886_))
                                                        (___kont294420294421_
                                                         _hd288558288883_
                                                         _hd288551288859_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-datum?
                                                               _hd288551288859_))
                                                            (let ((_e288568288806_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd288551288859_))))
                      (declare (not safe))
                      (_g288543288611_))
                    (let () (declare (not safe)) (_g288543288611_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd288551288859_))
                                                    (let ((_e288568288806_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd288551288859_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e288568288806_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'primitive:))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl288555288872_))
                      (___kont294422294423_ _hd288554288869_ _hd288548288849_)
                      (let () (declare (not safe)) (_g288543288611_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl288555288872_))
                      (___kont294426294427_ _hd288554288869_ _hd288551288859_)
                      (let () (declare (not safe)) (_g288543288611_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl288555288872_))
                                                        (___kont294426294427_
                                                         _hd288554288869_
                                                         _hd288551288859_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g288543288611_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd288551288859_))
                                                (let ((_e288568288806_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd288551288859_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e288568288806_
                                                                'primitive:))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl288555288872_))
                                                          (___kont294422294423_
                                                           _hd288554288869_
                                                           _hd288548288849_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl288555288872_))
                      (let ((_e288584288749_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl288555288872_))))
                        (let ((_tl288586288756_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e288584288749_)))
                              (_hd288585288753_
                               (let ()
                                 (declare (not safe))
                                 (##car _e288584288749_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl288586288756_))
                              (___kont294424294425_
                               _hd288585288753_
                               _hd288554288869_)
                              (let ()
                                (declare (not safe))
                                (_g288543288611_)))))
                      (let () (declare (not safe)) (_g288543288611_))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl288555288872_))
                  (___kont294426294427_ _hd288554288869_ _hd288551288859_)
                  (let () (declare (not safe)) (_g288543288611_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl288555288872_))
                                                    (___kont294426294427_
                                                     _hd288554288869_
                                                     _hd288551288859_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g288543288611_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-datum? _hd288551288859_))
                                          (let ((_e288568288806_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd288551288859_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e288568288806_
                                                          'primitive:))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl288555288872_))
                                                    (___kont294422294423_
                                                     _hd288554288869_
                                                     _hd288548288849_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl288555288872_))
                                                        (let ((_e288584288749_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl288555288872_))))
                  (let ((_tl288586288756_
                         (let () (declare (not safe)) (##cdr _e288584288749_)))
                        (_hd288585288753_
                         (let ()
                           (declare (not safe))
                           (##car _e288584288749_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl288586288756_))
                        (___kont294424294425_
                         _hd288585288753_
                         _hd288554288869_)
                        (let () (declare (not safe)) (_g288543288611_)))))
                (let () (declare (not safe)) (_g288543288611_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl288555288872_))
                                                    (___kont294426294427_
                                                     _hd288554288869_
                                                     _hd288551288859_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g288543288611_)))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl288555288872_))
                                              (___kont294426294427_
                                               _hd288554288869_
                                               _hd288551288859_)
                                              (let ()
                                                (declare (not safe))
                                                (_g288543288611_)))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _hd288551288859_))
                                  (let ((_e288568288806_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd288551288859_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl288552288862_))
                                        (___kont294428294429_
                                         _hd288551288859_
                                         _hd288548288849_)
                                        (let ()
                                          (declare (not safe))
                                          (_g288543288611_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl288552288862_))
                                      (___kont294428294429_
                                       _hd288551288859_
                                       _hd288548288849_)
                                      (let ()
                                        (declare (not safe))
                                        (_g288543288611_)))))))
                      (let () (declare (not safe)) (_g288543288611_)))))
              (let () (declare (not safe)) (_g288543288611_)))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx288913_)
      (let* ((___stx294557294558_ _$stx288913_)
             (_g288918288973_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx294557294558_)))))
        (let ((___kont294560294561_
               (lambda (_L289158_ _L289160_)
                 (let ((__tmp294972
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'make-!primitive-case-lambda)))
                       (__tmp294957
                        (let ((__tmp294968
                               (let ((__tmp294971
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp294969
                                      (let ((__tmp294970
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp294970 '()))))
                                 (declare (not safe))
                                 (cons __tmp294971 __tmp294969)))
                              (__tmp294958
                               (let ((__tmp294959
                                      (let ((__tmp294967
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp294960
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L289158_
                                                  _L289160_))
                                               (let ((__tmp294961
                                                      (lambda (_g289177289181_
                                                               _g289178289184_
                                                               _g289179289186_)
                                                        (let ((__tmp294962
                                                               (let ((__tmp294966
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp294963
                              (let ((__tmp294964
                                     (let ((__tmp294965
                                            (let ()
                                              (declare (not safe))
                                              (cons _g289177289181_ '()))))
                                       (declare (not safe))
                                       (cons _g289178289184_ __tmp294965))))
                                (declare (not safe))
                                (cons 'primitive: __tmp294964))))
                         (declare (not safe))
                         (cons __tmp294966 __tmp294963))))
                  (declare (not safe))
                  (cons __tmp294962 _g289179289186_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp294961
                                                         '()
                                                         _L289158_
                                                         _L289160_)))))
                                        (declare (not safe))
                                        (cons __tmp294967 __tmp294960))))
                                 (declare (not safe))
                                 (cons __tmp294959 '()))))
                          (declare (not safe))
                          (cons __tmp294968 __tmp294958))))
                   (declare (not safe))
                   (cons __tmp294972 __tmp294957))))
              (___kont294564294565_
               (lambda (_L289044_ _L289046_)
                 (let ((__tmp294987
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda)))
                       (__tmp294973
                        (let ((__tmp294983
                               (let ((__tmp294986
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp294984
                                      (let ((__tmp294985
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp294985 '()))))
                                 (declare (not safe))
                                 (cons __tmp294986 __tmp294984)))
                              (__tmp294974
                               (let ((__tmp294975
                                      (let ((__tmp294982
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp294976
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L289044_
                                                  _L289046_))
                                               (let ((__tmp294977
                                                      (lambda (_g289061289065_
                                                               _g289062289068_
                                                               _g289063289070_)
                                                        (let ((__tmp294978
                                                               (let ((__tmp294981
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp294979
                              (let ((__tmp294980
                                     (let ()
                                       (declare (not safe))
                                       (cons _g289061289065_ '()))))
                                (declare (not safe))
                                (cons _g289062289068_ __tmp294980))))
                         (declare (not safe))
                         (cons __tmp294981 __tmp294979))))
                  (declare (not safe))
                  (cons __tmp294978 _g289063289070_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp294977
                                                         '()
                                                         _L289044_
                                                         _L289046_)))))
                                        (declare (not safe))
                                        (cons __tmp294982 __tmp294976))))
                                 (declare (not safe))
                                 (cons __tmp294975 '()))))
                          (declare (not safe))
                          (cons __tmp294983 __tmp294974))))
                   (declare (not safe))
                   (cons __tmp294987 __tmp294973)))))
          (let* ((___match294608294609_
                  (lambda (_e288948288980_
                           _hd288949288984_
                           _tl288950288987_
                           ___splice294566294567_
                           _target288951288990_
                           _tl288953288993_)
                    (letrec ((_loop288954288996_
                              (lambda (_hd288952289000_
                                       _dispatch288958289003_
                                       _arity288959289005_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd288952289000_))
                                    (let ((_e288955289008_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd288952289000_))))
                                      (let ((_lp-tl288957289015_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e288955289008_)))
                                            (_lp-hd288956289012_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e288955289008_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd288956289012_))
                                            (let ((_e288962289018_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd288956289012_))))
                                              (let ((_tl288964289025_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e288962289018_)))
                                                    (_hd288963289022_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e288962289018_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl288964289025_))
                                                    (let ((_e288965289028_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl288964289025_))))
                                                      (let ((_tl288967289035_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e288965289028_)))
                    (_hd288966289032_
                     (let () (declare (not safe)) (##car _e288965289028_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl288967289035_))
                    (_loop288954288996_
                     _lp-tl288957289015_
                     (let ()
                       (declare (not safe))
                       (cons _hd288966289032_ _dispatch288958289003_))
                     (let ()
                       (declare (not safe))
                       (cons _hd288963289022_ _arity288959289005_)))
                    (let () (declare (not safe)) (_g288918288973_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g288918288973_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g288918288973_)))))
                                    (let ((_arity288961289041_
                                           (reverse _arity288959289005_))
                                          (_dispatch288960289038_
                                           (reverse _dispatch288958289003_)))
                                      (___kont294564294565_
                                       _dispatch288960289038_
                                       _arity288961289041_))))))
                      (_loop288954288996_ _target288951288990_ '() '()))))
                 (___match294600294601_
                  (lambda (_e288948288980_ _hd288949288984_ _tl288950288987_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl288950288987_))
                        (let ((___splice294566294567_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl288950288987_
                                  '0))))
                          (let ((_tl288953288993_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice294566294567_ '1)))
                                (_target288951288990_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice294566294567_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl288953288993_))
                                (___match294608294609_
                                 _e288948288980_
                                 _hd288949288984_
                                 _tl288950288987_
                                 ___splice294566294567_
                                 _target288951288990_
                                 _tl288953288993_)
                                (let ()
                                  (declare (not safe))
                                  (_g288918288973_)))))
                        (let () (declare (not safe)) (_g288918288973_)))))
                 (___match294594294595_
                  (lambda (_e288922289080_
                           _hd288923289084_
                           _tl288924289087_
                           _e288925289090_
                           _hd288926289094_
                           _tl288927289097_
                           _e288928289100_
                           ___splice294562294563_
                           _target288929289104_
                           _tl288931289107_)
                    (letrec ((_loop288932289110_
                              (lambda (_hd288930289114_
                                       _dispatch288936289117_
                                       _arity288937289119_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd288930289114_))
                                    (let ((_e288933289122_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd288930289114_))))
                                      (let ((_lp-tl288935289129_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e288933289122_)))
                                            (_lp-hd288934289126_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e288933289122_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd288934289126_))
                                            (let ((_e288940289132_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd288934289126_))))
                                              (let ((_tl288942289139_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e288940289132_)))
                                                    (_hd288941289136_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e288940289132_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl288942289139_))
                                                    (let ((_e288943289142_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl288942289139_))))
                                                      (let ((_tl288945289149_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e288943289142_)))
                    (_hd288944289146_
                     (let () (declare (not safe)) (##car _e288943289142_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl288945289149_))
                    (_loop288932289110_
                     _lp-tl288935289129_
                     (let ()
                       (declare (not safe))
                       (cons _hd288944289146_ _dispatch288936289117_))
                     (let ()
                       (declare (not safe))
                       (cons _hd288941289136_ _arity288937289119_)))
                    (___match294600294601_
                     _e288922289080_
                     _hd288923289084_
                     _tl288924289087_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match294600294601_
                                                     _e288922289080_
                                                     _hd288923289084_
                                                     _tl288924289087_))))
                                            (___match294600294601_
                                             _e288922289080_
                                             _hd288923289084_
                                             _tl288924289087_))))
                                    (let ((_arity288939289155_
                                           (reverse _arity288937289119_))
                                          (_dispatch288938289152_
                                           (reverse _dispatch288936289117_)))
                                      (___kont294560294561_
                                       _dispatch288938289152_
                                       _arity288939289155_))))))
                      (_loop288932289110_ _target288929289104_ '() '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx294557294558_))
                (let ((_e288922289080_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx294557294558_))))
                  (let ((_tl288924289087_
                         (let () (declare (not safe)) (##cdr _e288922289080_)))
                        (_hd288923289084_
                         (let ()
                           (declare (not safe))
                           (##car _e288922289080_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl288924289087_))
                        (let ((_e288925289090_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl288924289087_))))
                          (let ((_tl288927289097_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e288925289090_)))
                                (_hd288926289094_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e288925289090_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _hd288926289094_))
                                (let ((_e288928289100_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd288926289094_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e288928289100_ 'primitive:))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl288927289097_))
                                          (let ((___splice294562294563_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl288927289097_
                                                    '0))))
                                            (let ((_tl288931289107_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice294562294563_
                                                      '1)))
                                                  (_target288929289104_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice294562294563_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl288931289107_))
                                                  (___match294594294595_
                                                   _e288922289080_
                                                   _hd288923289084_
                                                   _tl288924289087_
                                                   _e288925289090_
                                                   _hd288926289094_
                                                   _tl288927289097_
                                                   _e288928289100_
                                                   ___splice294562294563_
                                                   _target288929289104_
                                                   _tl288931289107_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl288924289087_))
                                                      (let ((___splice294566294567_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl288924289087_ '0))))
                (let ((_tl288953288993_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice294566294567_ '1)))
                      (_target288951288990_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice294566294567_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl288953288993_))
                      (___match294608294609_
                       _e288922289080_
                       _hd288923289084_
                       _tl288924289087_
                       ___splice294566294567_
                       _target288951288990_
                       _tl288953288993_)
                      (let () (declare (not safe)) (_g288918288973_)))))
              (let () (declare (not safe)) (_g288918288973_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl288924289087_))
                                              (let ((___splice294566294567_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl288924289087_
                                                        '0))))
                                                (let ((_tl288953288993_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice294566294567_
                                                          '1)))
                                                      (_target288951288990_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice294566294567_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl288953288993_))
                                                      (___match294608294609_
                                                       _e288922289080_
                                                       _hd288923289084_
                                                       _tl288924289087_
                                                       ___splice294566294567_
                                                       _target288951288990_
                                                       _tl288953288993_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g288918288973_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g288918288973_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl288924289087_))
                                          (let ((___splice294566294567_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl288924289087_
                                                    '0))))
                                            (let ((_tl288953288993_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice294566294567_
                                                      '1)))
                                                  (_target288951288990_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice294566294567_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl288953288993_))
                                                  (___match294608294609_
                                                   _e288922289080_
                                                   _hd288923289084_
                                                   _tl288924289087_
                                                   ___splice294566294567_
                                                   _target288951288990_
                                                   _tl288953288993_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g288918288973_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g288918288973_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl288924289087_))
                                    (let ((___splice294566294567_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl288924289087_
                                              '0))))
                                      (let ((_tl288953288993_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice294566294567_
                                                '1)))
                                            (_target288951288990_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice294566294567_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl288953288993_))
                                            (___match294608294609_
                                             _e288922289080_
                                             _hd288923289084_
                                             _tl288924289087_
                                             ___splice294566294567_
                                             _target288951288990_
                                             _tl288953288993_)
                                            (let ()
                                              (declare (not safe))
                                              (_g288918288973_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g288918288973_))))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl288924289087_))
                            (let ((___splice294566294567_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl288924289087_
                                      '0))))
                              (let ((_tl288953288993_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice294566294567_
                                        '1)))
                                    (_target288951288990_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice294566294567_
                                        '0))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl288953288993_))
                                    (___match294608294609_
                                     _e288922289080_
                                     _hd288923289084_
                                     _tl288924289087_
                                     ___splice294566294567_
                                     _target288951288990_
                                     _tl288953288993_)
                                    (let ()
                                      (declare (not safe))
                                      (_g288918288973_)))))
                            (let () (declare (not safe)) (_g288918288973_))))))
                (let () (declare (not safe)) (_g288918288973_))))))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx289195_)
      (let* ((_g289199289217_
              (lambda (_g289200289213_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g289200289213_))))
             (_g289198289272_
              (lambda (_g289200289221_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g289200289221_))
                    (let ((_e289203289224_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g289200289221_))))
                      (let ((_hd289204289228_
                             (let ()
                               (declare (not safe))
                               (##car _e289203289224_)))
                            (_tl289205289231_
                             (let ()
                               (declare (not safe))
                               (##cdr _e289203289224_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl289205289231_))
                            (let ((_e289206289234_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl289205289231_))))
                              (let ((_hd289207289238_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e289206289234_)))
                                    (_tl289208289241_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e289206289234_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl289208289241_))
                                    (let ((_e289209289244_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl289208289241_))))
                                      (let ((_hd289210289248_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e289209289244_)))
                                            (_tl289211289251_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e289209289244_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl289211289251_))
                                            ((lambda (_L289254_ _L289256_)
                                               (let ((__tmp295001
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda)))
                                                     (__tmp294988
                                                      (let ((__tmp294997
                                                             (let ((__tmp295000
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp294998
                            (let ((__tmp294999
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'kw-lambda))))
                              (declare (not safe))
                              (cons __tmp294999 '()))))
                       (declare (not safe))
                       (cons __tmp295000 __tmp294998)))
                    (__tmp294989
                     (let ((__tmp294994
                            (let ((__tmp294996
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp294995
                                   (let ()
                                     (declare (not safe))
                                     (cons _L289256_ '()))))
                              (declare (not safe))
                              (cons __tmp294996 __tmp294995)))
                           (__tmp294990
                            (let ((__tmp294991
                                   (let ((__tmp294993
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp294992
                                          (let ()
                                            (declare (not safe))
                                            (cons _L289254_ '()))))
                                     (declare (not safe))
                                     (cons __tmp294993 __tmp294992))))
                              (declare (not safe))
                              (cons __tmp294991 '()))))
                       (declare (not safe))
                       (cons __tmp294994 __tmp294990))))
                (declare (not safe))
                (cons __tmp294997 __tmp294989))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp295001
                                                       __tmp294988)))
                                             _hd289210289248_
                                             _hd289207289238_)
                                            (_g289199289217_
                                             _g289200289221_))))
                                    (_g289199289217_ _g289200289221_))))
                            (_g289199289217_ _g289200289221_))))
                    (_g289199289217_ _g289200289221_)))))
        (_g289198289272_ _$stx289195_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx289276_)
      (let* ((_g289280289298_
              (lambda (_g289281289294_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g289281289294_))))
             (_g289279289353_
              (lambda (_g289281289302_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g289281289302_))
                    (let ((_e289284289305_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g289281289302_))))
                      (let ((_hd289285289309_
                             (let ()
                               (declare (not safe))
                               (##car _e289284289305_)))
                            (_tl289286289312_
                             (let ()
                               (declare (not safe))
                               (##cdr _e289284289305_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl289286289312_))
                            (let ((_e289287289315_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl289286289312_))))
                              (let ((_hd289288289319_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e289287289315_)))
                                    (_tl289289289322_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e289287289315_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl289289289322_))
                                    (let ((_e289290289325_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl289289289322_))))
                                      (let ((_hd289291289329_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e289290289325_)))
                                            (_tl289292289332_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e289290289325_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl289292289332_))
                                            ((lambda (_L289335_ _L289337_)
                                               (let ((__tmp295015
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda-primary)))
                                                     (__tmp295002
                                                      (let ((__tmp295011
                                                             (let ((__tmp295014
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp295012
                            (let ((__tmp295013
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      'kw-lambda-dispatch))))
                              (declare (not safe))
                              (cons __tmp295013 '()))))
                       (declare (not safe))
                       (cons __tmp295014 __tmp295012)))
                    (__tmp295003
                     (let ((__tmp295008
                            (let ((__tmp295010
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp295009
                                   (let ()
                                     (declare (not safe))
                                     (cons _L289337_ '()))))
                              (declare (not safe))
                              (cons __tmp295010 __tmp295009)))
                           (__tmp295004
                            (let ((__tmp295005
                                   (let ((__tmp295007
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp295006
                                          (let ()
                                            (declare (not safe))
                                            (cons _L289335_ '()))))
                                     (declare (not safe))
                                     (cons __tmp295007 __tmp295006))))
                              (declare (not safe))
                              (cons __tmp295005 '()))))
                       (declare (not safe))
                       (cons __tmp295008 __tmp295004))))
                (declare (not safe))
                (cons __tmp295011 __tmp295003))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp295015
                                                       __tmp295002)))
                                             _hd289291289329_
                                             _hd289288289319_)
                                            (_g289280289298_
                                             _g289281289302_))))
                                    (_g289280289298_ _g289281289302_))))
                            (_g289280289298_ _g289281289302_))))
                    (_g289280289298_ _g289281289302_)))))
        (_g289279289353_ _$stx289276_))))
  (define |gxc[:0:]#declare-primitive|
    (lambda (_$stx289357_)
      (let* ((___stx294611294612_ _$stx289357_)
             (_g289364289435_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx294611294612_)))))
        (let ((___kont294614294615_
               (lambda (_L289726_ _L289728_)
                 (let ((__tmp295021
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp295016
                        (let ((__tmp295017
                               (let ((__tmp295018
                                      (let ((__tmp295020
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp295019
                                             (let ()
                                               (declare (not safe))
                                               (cons _L289726_ '()))))
                                        (declare (not safe))
                                        (cons __tmp295020 __tmp295019))))
                                 (declare (not safe))
                                 (cons __tmp295018 '()))))
                          (declare (not safe))
                          (cons _L289728_ __tmp295017))))
                   (declare (not safe))
                   (cons __tmp295021 __tmp295016))))
              (___kont294616294617_
               (lambda (_L289645_ _L289647_)
                 (let ((__tmp295030
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp295022
                        (let ((__tmp295023
                               (let ((__tmp295024
                                      (let ((__tmp295029
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp295025
                                             (let ((__tmp295026
                                                    (lambda (_g289666289669_
                                                             _g289667289672_)
                                                      (let ((__tmp295027
                                                             (let ((__tmp295028
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g289666289669_ __tmp295028))))
                (declare (not safe))
                (cons __tmp295027 _g289667289672_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp295026
                                                       '()
                                                       _L289645_))))
                                        (declare (not safe))
                                        (cons __tmp295029 __tmp295025))))
                                 (declare (not safe))
                                 (cons __tmp295024 '()))))
                          (declare (not safe))
                          (cons _L289647_ __tmp295023))))
                   (declare (not safe))
                   (cons __tmp295030 __tmp295022))))
              (___kont294620294621_
               (lambda (_L289557_ _L289559_)
                 (let ((__tmp295037
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp295031
                        (let ((__tmp295032
                               (let ((__tmp295033
                                      (let ((__tmp295036
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp295034
                                             (let ((__tmp295035
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L289557_ '()))))
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp295035))))
                                        (declare (not safe))
                                        (cons __tmp295036 __tmp295034))))
                                 (declare (not safe))
                                 (cons __tmp295033 '()))))
                          (declare (not safe))
                          (cons _L289559_ __tmp295032))))
                   (declare (not safe))
                   (cons __tmp295037 __tmp295031))))
              (___kont294622294623_
               (lambda (_L289492_ _L289494_)
                 (let ((__tmp295047
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp295038
                        (let ((__tmp295039
                               (let ((__tmp295040
                                      (let ((__tmp295046
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp295041
                                             (let ((__tmp295042
                                                    (let ((__tmp295043
                                                           (lambda (_g289511289514_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g289512289517_)
                     (let ((__tmp295044
                            (let ((__tmp295045
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons _g289511289514_ __tmp295045))))
                       (declare (not safe))
                       (cons __tmp295044 _g289512289517_)))))
              (declare (not safe))
              (foldr1 __tmp295043 '() _L289492_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp295042))))
                                        (declare (not safe))
                                        (cons __tmp295046 __tmp295041))))
                                 (declare (not safe))
                                 (cons __tmp295040 '()))))
                          (declare (not safe))
                          (cons _L289494_ __tmp295039))))
                   (declare (not safe))
                   (cons __tmp295047 __tmp295038)))))
          (let* ((___match294730294731_
                  (lambda (_e289415289442_
                           _hd289416289446_
                           _tl289417289449_
                           _e289418289452_
                           _hd289419289456_
                           _tl289420289459_
                           ___splice294624294625_
                           _target289421289462_
                           _tl289423289465_)
                    (letrec ((_loop289424289468_
                              (lambda (_hd289422289472_ _arity289428289475_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd289422289472_))
                                    (let ((_e289425289478_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd289422289472_))))
                                      (let ((_lp-tl289427289485_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e289425289478_)))
                                            (_lp-hd289426289482_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e289425289478_))))
                                        (_loop289424289468_
                                         _lp-tl289427289485_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd289426289482_
                                                 _arity289428289475_)))))
                                    (let ((_arity289429289488_
                                           (reverse _arity289428289475_)))
                                      (___kont294622294623_
                                       _arity289429289488_
                                       _hd289419289456_))))))
                      (_loop289424289468_ _target289421289462_ '()))))
                 (___match294690294691_
                  (lambda (_e289383289581_
                           _hd289384289585_
                           _tl289385289588_
                           _e289386289591_
                           _hd289387289595_
                           _tl289388289598_
                           _e289389289601_
                           _hd289390289605_
                           _tl289391289608_
                           _e289392289611_
                           ___splice294618294619_
                           _target289393289615_
                           _tl289395289618_)
                    (letrec ((_loop289396289621_
                              (lambda (_hd289394289625_ _arity289400289628_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd289394289625_))
                                    (let ((_e289397289631_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd289394289625_))))
                                      (let ((_lp-tl289399289638_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e289397289631_)))
                                            (_lp-hd289398289635_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e289397289631_))))
                                        (_loop289396289621_
                                         _lp-tl289399289638_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd289398289635_
                                                 _arity289400289628_)))))
                                    (let ((_arity289401289641_
                                           (reverse _arity289400289628_)))
                                      (___kont294616294617_
                                       _arity289401289641_
                                       _hd289387289595_))))))
                      (_loop289396289621_ _target289393289615_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx294611294612_))
                (let ((_e289368289682_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx294611294612_))))
                  (let ((_tl289370289689_
                         (let () (declare (not safe)) (##cdr _e289368289682_)))
                        (_hd289369289686_
                         (let ()
                           (declare (not safe))
                           (##car _e289368289682_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl289370289689_))
                        (let ((_e289371289692_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl289370289689_))))
                          (let ((_tl289373289699_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e289371289692_)))
                                (_hd289372289696_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e289371289692_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl289373289699_))
                                (let ((_e289374289702_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl289373289699_))))
                                  (let ((_tl289376289709_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e289374289702_)))
                                        (_hd289375289706_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e289374289702_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _hd289375289706_))
                                        (let ((_e289377289712_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd289375289706_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e289377289712_
                                                        'unchecked:))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl289376289709_))
                                                  (let ((_e289378289716_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl289376289709_))))
                                                    (let ((_tl289380289723_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e289378289716_)))
                                                          (_hd289379289720_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e289378289716_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl289380289723_))
                                                          (___kont294614294615_
                                                           _hd289379289720_
                                                           _hd289372289696_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl289376289709_))
                      (let ((___splice294618294619_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl289376289709_ '0))))
                        (let ((_tl289395289618_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice294618294619_ '1)))
                              (_target289393289615_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice294618294619_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl289395289618_))
                              (___match294690294691_
                               _e289368289682_
                               _hd289369289686_
                               _tl289370289689_
                               _e289371289692_
                               _hd289372289696_
                               _tl289373289699_
                               _e289374289702_
                               _hd289375289706_
                               _tl289376289709_
                               _e289377289712_
                               ___splice294618294619_
                               _target289393289615_
                               _tl289395289618_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl289373289699_))
                                  (let ((___splice294624294625_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl289373289699_
                                            '0))))
                                    (let ((_tl289423289465_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice294624294625_
                                              '1)))
                                          (_target289421289462_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice294624294625_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl289423289465_))
                                          (___match294730294731_
                                           _e289368289682_
                                           _hd289369289686_
                                           _tl289370289689_
                                           _e289371289692_
                                           _hd289372289696_
                                           _tl289373289699_
                                           ___splice294624294625_
                                           _target289421289462_
                                           _tl289423289465_)
                                          (let ()
                                            (declare (not safe))
                                            (_g289364289435_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g289364289435_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl289373289699_))
                          (let ((___splice294624294625_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl289373289699_
                                    '0))))
                            (let ((_tl289423289465_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice294624294625_ '1)))
                                  (_target289421289462_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice294624294625_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl289423289465_))
                                  (___match294730294731_
                                   _e289368289682_
                                   _hd289369289686_
                                   _tl289370289689_
                                   _e289371289692_
                                   _hd289372289696_
                                   _tl289373289699_
                                   ___splice294624294625_
                                   _target289421289462_
                                   _tl289423289465_)
                                  (let ()
                                    (declare (not safe))
                                    (_g289364289435_)))))
                          (let () (declare (not safe)) (_g289364289435_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl289376289709_))
                                                      (let ((___splice294618294619_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl289376289709_ '0))))
                (let ((_tl289395289618_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice294618294619_ '1)))
                      (_target289393289615_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice294618294619_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl289395289618_))
                      (___match294690294691_
                       _e289368289682_
                       _hd289369289686_
                       _tl289370289689_
                       _e289371289692_
                       _hd289372289696_
                       _tl289373289699_
                       _e289374289702_
                       _hd289375289706_
                       _tl289376289709_
                       _e289377289712_
                       ___splice294618294619_
                       _target289393289615_
                       _tl289395289618_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl289376289709_))
                          (___kont294620294621_
                           _hd289375289706_
                           _hd289372289696_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl289373289699_))
                              (let ((___splice294624294625_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl289373289699_
                                        '0))))
                                (let ((_tl289423289465_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice294624294625_
                                          '1)))
                                      (_target289421289462_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice294624294625_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl289423289465_))
                                      (___match294730294731_
                                       _e289368289682_
                                       _hd289369289686_
                                       _tl289370289689_
                                       _e289371289692_
                                       _hd289372289696_
                                       _tl289373289699_
                                       ___splice294624294625_
                                       _target289421289462_
                                       _tl289423289465_)
                                      (let ()
                                        (declare (not safe))
                                        (_g289364289435_)))))
                              (let ()
                                (declare (not safe))
                                (_g289364289435_)))))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl289376289709_))
                  (___kont294620294621_ _hd289375289706_ _hd289372289696_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl289373289699_))
                      (let ((___splice294624294625_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl289373289699_ '0))))
                        (let ((_tl289423289465_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice294624294625_ '1)))
                              (_target289421289462_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice294624294625_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl289423289465_))
                              (___match294730294731_
                               _e289368289682_
                               _hd289369289686_
                               _tl289370289689_
                               _e289371289692_
                               _hd289372289696_
                               _tl289373289699_
                               ___splice294624294625_
                               _target289421289462_
                               _tl289423289465_)
                              (let ()
                                (declare (not safe))
                                (_g289364289435_)))))
                      (let () (declare (not safe)) (_g289364289435_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl289376289709_))
                                                  (___kont294620294621_
                                                   _hd289375289706_
                                                   _hd289372289696_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl289373289699_))
                                                      (let ((___splice294624294625_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl289373289699_ '0))))
                (let ((_tl289423289465_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice294624294625_ '1)))
                      (_target289421289462_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice294624294625_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl289423289465_))
                      (___match294730294731_
                       _e289368289682_
                       _hd289369289686_
                       _tl289370289689_
                       _e289371289692_
                       _hd289372289696_
                       _tl289373289699_
                       ___splice294624294625_
                       _target289421289462_
                       _tl289423289465_)
                      (let () (declare (not safe)) (_g289364289435_)))))
              (let () (declare (not safe)) (_g289364289435_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl289376289709_))
                                            (___kont294620294621_
                                             _hd289375289706_
                                             _hd289372289696_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _tl289373289699_))
                                                (let ((___splice294624294625_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _tl289373289699_
                                                          '0))))
                                                  (let ((_tl289423289465_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice294624294625_
                                                            '1)))
                                                        (_target289421289462_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice294624294625_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl289423289465_))
                                                        (___match294730294731_
                                                         _e289368289682_
                                                         _hd289369289686_
                                                         _tl289370289689_
                                                         _e289371289692_
                                                         _hd289372289696_
                                                         _tl289373289699_
                                                         ___splice294624294625_
                                                         _target289421289462_
                                                         _tl289423289465_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g289364289435_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g289364289435_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl289373289699_))
                                    (let ((___splice294624294625_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl289373289699_
                                              '0))))
                                      (let ((_tl289423289465_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice294624294625_
                                                '1)))
                                            (_target289421289462_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice294624294625_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl289423289465_))
                                            (___match294730294731_
                                             _e289368289682_
                                             _hd289369289686_
                                             _tl289370289689_
                                             _e289371289692_
                                             _hd289372289696_
                                             _tl289373289699_
                                             ___splice294624294625_
                                             _target289421289462_
                                             _tl289423289465_)
                                            (let ()
                                              (declare (not safe))
                                              (_g289364289435_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g289364289435_))))))
                        (let () (declare (not safe)) (_g289364289435_)))))
                (let () (declare (not safe)) (_g289364289435_))))))))
  (define |gxc[:0:]#declare-primitive/unchecked|
    (lambda (_$stx289752_)
      (let* ((___stx294733294734_ _$stx289752_)
             (_g289757289792_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx294733294734_)))))
        (let ((___kont294736294737_
               (lambda (_L289914_ _L289916_)
                 (let ((__tmp295053
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp295048
                        (let ((__tmp295049
                               (let ((__tmp295050
                                      (let ((__tmp295052
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp295051
                                             (let ()
                                               (declare (not safe))
                                               (cons _L289914_ '()))))
                                        (declare (not safe))
                                        (cons __tmp295052 __tmp295051))))
                                 (declare (not safe))
                                 (cons __tmp295050 '()))))
                          (declare (not safe))
                          (cons _L289916_ __tmp295049))))
                   (declare (not safe))
                   (cons __tmp295053 __tmp295048))))
              (___kont294738294739_
               (lambda (_L289849_ _L289851_)
                 (let ((__tmp295062
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp295054
                        (let ((__tmp295055
                               (let ((__tmp295056
                                      (let ((__tmp295061
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp295057
                                             (let ((__tmp295058
                                                    (lambda (_g289868289871_
                                                             _g289869289874_)
                                                      (let ((__tmp295059
                                                             (let ((__tmp295060
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g289868289871_ __tmp295060))))
                (declare (not safe))
                (cons __tmp295059 _g289869289874_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp295058
                                                       '()
                                                       _L289849_))))
                                        (declare (not safe))
                                        (cons __tmp295061 __tmp295057))))
                                 (declare (not safe))
                                 (cons __tmp295056 '()))))
                          (declare (not safe))
                          (cons _L289851_ __tmp295055))))
                   (declare (not safe))
                   (cons __tmp295062 __tmp295054)))))
          (let ((___match294782294783_
                 (lambda (_e289772289799_
                          _hd289773289803_
                          _tl289774289806_
                          _e289775289809_
                          _hd289776289813_
                          _tl289777289816_
                          ___splice294740294741_
                          _target289778289819_
                          _tl289780289822_)
                   (letrec ((_loop289781289825_
                             (lambda (_hd289779289829_ _arity289785289832_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd289779289829_))
                                   (let ((_e289782289835_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _hd289779289829_))))
                                     (let ((_lp-tl289784289842_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e289782289835_)))
                                           (_lp-hd289783289839_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e289782289835_))))
                                       (_loop289781289825_
                                        _lp-tl289784289842_
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd289783289839_
                                                _arity289785289832_)))))
                                   (let ((_arity289786289845_
                                          (reverse _arity289785289832_)))
                                     (___kont294738294739_
                                      _arity289786289845_
                                      _hd289776289813_))))))
                     (_loop289781289825_ _target289778289819_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx294733294734_))
                (let ((_e289761289884_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx294733294734_))))
                  (let ((_tl289763289891_
                         (let () (declare (not safe)) (##cdr _e289761289884_)))
                        (_hd289762289888_
                         (let ()
                           (declare (not safe))
                           (##car _e289761289884_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl289763289891_))
                        (let ((_e289764289894_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl289763289891_))))
                          (let ((_tl289766289901_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e289764289894_)))
                                (_hd289765289898_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e289764289894_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl289766289901_))
                                (let ((_e289767289904_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl289766289901_))))
                                  (let ((_tl289769289911_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e289767289904_)))
                                        (_hd289768289908_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e289767289904_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl289769289911_))
                                        (___kont294736294737_
                                         _hd289768289908_
                                         _hd289765289898_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _tl289766289901_))
                                            (let ((___splice294740294741_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _tl289766289901_
                                                      '0))))
                                              (let ((_tl289780289822_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice294740294741_
                                                        '1)))
                                                    (_target289778289819_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice294740294741_
                                                        '0))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl289780289822_))
                                                    (___match294782294783_
                                                     _e289761289884_
                                                     _hd289762289888_
                                                     _tl289763289891_
                                                     _e289764289894_
                                                     _hd289765289898_
                                                     _tl289766289901_
                                                     ___splice294740294741_
                                                     _target289778289819_
                                                     _tl289780289822_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g289757289792_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g289757289792_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl289766289901_))
                                    (let ((___splice294740294741_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl289766289901_
                                              '0))))
                                      (let ((_tl289780289822_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice294740294741_
                                                '1)))
                                            (_target289778289819_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice294740294741_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl289780289822_))
                                            (___match294782294783_
                                             _e289761289884_
                                             _hd289762289888_
                                             _tl289763289891_
                                             _e289764289894_
                                             _hd289765289898_
                                             _tl289766289901_
                                             ___splice294740294741_
                                             _target289778289819_
                                             _tl289780289822_)
                                            (let ()
                                              (declare (not safe))
                                              (_g289757289792_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g289757289792_))))))
                        (let () (declare (not safe)) (_g289757289792_)))))
                (let () (declare (not safe)) (_g289757289792_))))))))
  (define |gxc[:0:]#declare-primitive*|
    (lambda (_$stx289936_)
      (let* ((_g289940289975_
              (lambda (_g289941289971_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g289941289971_))))
             (_g289939290103_
              (lambda (_g289941289979_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g289941289979_))
                    (let ((_e289944289982_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g289941289979_))))
                      (let ((_hd289945289986_
                             (let ()
                               (declare (not safe))
                               (##car _e289944289982_)))
                            (_tl289946289989_
                             (let ()
                               (declare (not safe))
                               (##cdr _e289944289982_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl289946289989_))
                            (let ((_g295063_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl289946289989_
                                      '0))))
                              (begin
                                (let ((_g295064_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g295063_)
                                             (##vector-length _g295063_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g295064_ 2)))
                                      (error "Context expects 2 values"
                                             _g295064_)))
                                (let ((_target289947289992_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g295063_ 0)))
                                      (_tl289949289995_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g295063_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl289949289995_))
                                      (letrec ((_loop289950289998_
                                                (lambda (_hd289948290002_
                                                         _arity289954290005_
                                                         _prim289955290007_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd289948290002_))
                                                      (let ((_e289951290010_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd289948290002_))))
                (let ((_lp-hd289952290014_
                       (let () (declare (not safe)) (##car _e289951290010_)))
                      (_lp-tl289953290017_
                       (let () (declare (not safe)) (##cdr _e289951290010_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd289952290014_))
                      (let ((_e289958290020_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd289952290014_))))
                        (let ((_hd289959290024_
                               (let ()
                                 (declare (not safe))
                                 (##car _e289958290020_)))
                              (_tl289960290027_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e289958290020_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl289960290027_))
                              (let ((_g295065_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl289960290027_
                                        '0))))
                                (begin
                                  (let ((_g295066_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g295065_)
                                               (##vector-length _g295065_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g295066_ 2)))
                                        (error "Context expects 2 values"
                                               _g295066_)))
                                  (let ((_target289961290030_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g295065_ 0)))
                                        (_tl289963290033_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g295065_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl289963290033_))
                                        (letrec ((_loop289964290036_
                                                  (lambda (_hd289962290040_
                                                           _arity289968290043_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd289962290040_))
                                                        (let ((_e289965290046_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd289962290040_))))
                  (let ((_lp-hd289966290050_
                         (let () (declare (not safe)) (##car _e289965290046_)))
                        (_lp-tl289967290053_
                         (let ()
                           (declare (not safe))
                           (##cdr _e289965290046_))))
                    (_loop289964290036_
                     _lp-tl289967290053_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd289966290050_ _arity289968290043_)))))
                (let ((_arity289969290056_ (reverse _arity289968290043_)))
                  (_loop289950289998_
                   _lp-tl289953290017_
                   (let ()
                     (declare (not safe))
                     (cons _arity289969290056_ _arity289954290005_))
                   (let ()
                     (declare (not safe))
                     (cons _hd289959290024_ _prim289955290007_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop289964290036_
                                           _target289961290030_
                                           '()))
                                        (_g289940289975_ _g289941289979_)))))
                              (_g289940289975_ _g289941289979_))))
                      (_g289940289975_ _g289941289979_))))
              (let ((_arity289956290060_ (reverse _arity289954290005_))
                    (_prim289957290063_ (reverse _prim289955290007_)))
                ((lambda (_L290066_ _L290068_)
                   (let ((__tmp295074
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp295067
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L290066_
                               _L290068_))
                            (let ((__tmp295068
                                   (lambda (_g290083290089_
                                            _g290084290092_
                                            _g290085290094_)
                                     (let ((__tmp295069
                                            (let ((__tmp295073
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive)))
                                                  (__tmp295070
                                                   (let ((__tmp295071
                                                          (let ((__tmp295072
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g290086290097_ _g290087290100_)
                           (let ()
                             (declare (not safe))
                             (cons _g290086290097_ _g290087290100_)))))
                    (declare (not safe))
                    (foldr1 __tmp295072 '() _g290083290089_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g290084290092_
                                                           __tmp295071))))
                                              (declare (not safe))
                                              (cons __tmp295073 __tmp295070))))
                                       (declare (not safe))
                                       (cons __tmp295069 _g290085290094_)))))
                              (declare (not safe))
                              (foldr2 __tmp295068 '() _L290066_ _L290068_)))))
                     (declare (not safe))
                     (cons __tmp295074 __tmp295067)))
                 _arity289956290060_
                 _prim289957290063_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop289950289998_
                                         _target289947289992_
                                         '()
                                         '()))
                                      (_g289940289975_ _g289941289979_)))))
                            (_g289940289975_ _g289941289979_))))
                    (_g289940289975_ _g289941289979_)))))
        (_g289939290103_ _$stx289936_))))
  (define |gxc[:0:]#declare-primitive/unchecked*|
    (lambda (_$stx290109_)
      (let* ((_g290113290148_
              (lambda (_g290114290144_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g290114290144_))))
             (_g290112290276_
              (lambda (_g290114290152_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g290114290152_))
                    (let ((_e290117290155_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g290114290152_))))
                      (let ((_hd290118290159_
                             (let ()
                               (declare (not safe))
                               (##car _e290117290155_)))
                            (_tl290119290162_
                             (let ()
                               (declare (not safe))
                               (##cdr _e290117290155_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl290119290162_))
                            (let ((_g295075_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl290119290162_
                                      '0))))
                              (begin
                                (let ((_g295076_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g295075_)
                                             (##vector-length _g295075_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g295076_ 2)))
                                      (error "Context expects 2 values"
                                             _g295076_)))
                                (let ((_target290120290165_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g295075_ 0)))
                                      (_tl290122290168_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g295075_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl290122290168_))
                                      (letrec ((_loop290123290171_
                                                (lambda (_hd290121290175_
                                                         _arity290127290178_
                                                         _prim290128290180_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd290121290175_))
                                                      (let ((_e290124290183_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd290121290175_))))
                (let ((_lp-hd290125290187_
                       (let () (declare (not safe)) (##car _e290124290183_)))
                      (_lp-tl290126290190_
                       (let () (declare (not safe)) (##cdr _e290124290183_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd290125290187_))
                      (let ((_e290131290193_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd290125290187_))))
                        (let ((_hd290132290197_
                               (let ()
                                 (declare (not safe))
                                 (##car _e290131290193_)))
                              (_tl290133290200_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e290131290193_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl290133290200_))
                              (let ((_g295077_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl290133290200_
                                        '0))))
                                (begin
                                  (let ((_g295078_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g295077_)
                                               (##vector-length _g295077_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g295078_ 2)))
                                        (error "Context expects 2 values"
                                               _g295078_)))
                                  (let ((_target290134290203_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g295077_ 0)))
                                        (_tl290136290206_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g295077_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl290136290206_))
                                        (letrec ((_loop290137290209_
                                                  (lambda (_hd290135290213_
                                                           _arity290141290216_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd290135290213_))
                                                        (let ((_e290138290219_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd290135290213_))))
                  (let ((_lp-hd290139290223_
                         (let () (declare (not safe)) (##car _e290138290219_)))
                        (_lp-tl290140290226_
                         (let ()
                           (declare (not safe))
                           (##cdr _e290138290219_))))
                    (_loop290137290209_
                     _lp-tl290140290226_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd290139290223_ _arity290141290216_)))))
                (let ((_arity290142290229_ (reverse _arity290141290216_)))
                  (_loop290123290171_
                   _lp-tl290126290190_
                   (let ()
                     (declare (not safe))
                     (cons _arity290142290229_ _arity290127290178_))
                   (let ()
                     (declare (not safe))
                     (cons _hd290132290197_ _prim290128290180_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop290137290209_
                                           _target290134290203_
                                           '()))
                                        (_g290113290148_ _g290114290152_)))))
                              (_g290113290148_ _g290114290152_))))
                      (_g290113290148_ _g290114290152_))))
              (let ((_arity290129290233_ (reverse _arity290127290178_))
                    (_prim290130290236_ (reverse _prim290128290180_)))
                ((lambda (_L290239_ _L290241_)
                   (let ((__tmp295086
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp295079
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L290239_
                               _L290241_))
                            (let ((__tmp295080
                                   (lambda (_g290256290262_
                                            _g290257290265_
                                            _g290258290267_)
                                     (let ((__tmp295081
                                            (let ((__tmp295085
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive/unchecked)))
                                                  (__tmp295082
                                                   (let ((__tmp295083
                                                          (let ((__tmp295084
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g290259290270_ _g290260290273_)
                           (let ()
                             (declare (not safe))
                             (cons _g290259290270_ _g290260290273_)))))
                    (declare (not safe))
                    (foldr1 __tmp295084 '() _g290256290262_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g290257290265_
                                                           __tmp295083))))
                                              (declare (not safe))
                                              (cons __tmp295085 __tmp295082))))
                                       (declare (not safe))
                                       (cons __tmp295081 _g290258290267_)))))
                              (declare (not safe))
                              (foldr2 __tmp295080 '() _L290239_ _L290241_)))))
                     (declare (not safe))
                     (cons __tmp295086 __tmp295079)))
                 _arity290129290233_
                 _prim290130290236_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop290123290171_
                                         _target290120290165_
                                         '()
                                         '()))
                                      (_g290113290148_ _g290114290152_)))))
                            (_g290113290148_ _g290114290152_))))
                    (_g290113290148_ _g290114290152_)))))
        (_g290112290276_ _$stx290109_)))))
