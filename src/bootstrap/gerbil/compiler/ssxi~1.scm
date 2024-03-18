(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx160328_)
      (let* ((_g160332160350_
              (lambda (_g160333160346_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160333160346_))))
             (_g160331160405_
              (lambda (_g160333160354_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160333160354_))
                    (let ((_e160338160357_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160333160354_))))
                      (let ((_hd160337160361_
                             (let ()
                               (declare (not safe))
                               (##car _e160338160357_)))
                            (_tl160336160364_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160338160357_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160336160364_))
                            (let ((_e160341160367_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160336160364_))))
                              (let ((_hd160340160371_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160341160367_)))
                                    (_tl160339160374_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160341160367_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl160339160374_))
                                    (let ((_e160344160377_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl160339160374_))))
                                      (let ((_hd160343160381_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e160344160377_)))
                                            (_tl160342160384_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e160344160377_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl160342160384_))
                                            ((lambda (_L160387_ _L160389_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#identifier?
                                                      _L160389_))
                                                   (let ((__tmp163887
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             'optimizer-declare-type!)))
                                                         (__tmp163882
                                                          (let ((__tmp163884
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ((__tmp163886
                                (let ()
                                  (declare (not safe))
                                  (gx#datum->syntax__0 '#f 'quote)))
                               (__tmp163885
                                (let ()
                                  (declare (not safe))
                                  (cons _L160389_ '()))))
                           (declare (not safe))
                           (cons __tmp163886 __tmp163885)))
                        (__tmp163883
                         (let () (declare (not safe)) (cons _L160387_ '()))))
                    (declare (not safe))
                    (cons __tmp163884 __tmp163883))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons __tmp163887
                                                           __tmp163882))
                                                   (_g160332160350_
                                                    _g160333160354_)))
                                             _hd160343160381_
                                             _hd160340160371_)
                                            (_g160332160350_
                                             _g160333160354_))))
                                    (_g160332160350_ _g160333160354_))))
                            (_g160332160350_ _g160333160354_))))
                    (_g160332160350_ _g160333160354_)))))
        (_g160331160405_ _$stx160328_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx160409_)
      (let* ((_g160413160442_
              (lambda (_g160414160438_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160414160438_))))
             (_g160412160542_
              (lambda (_g160414160446_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160414160446_))
                    (let ((_e160419160449_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160414160446_))))
                      (let ((_hd160418160453_
                             (let ()
                               (declare (not safe))
                               (##car _e160419160449_)))
                            (_tl160417160456_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160419160449_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl160417160456_))
                            (let ((_g163888_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl160417160456_
                                      '0))))
                              (begin
                                (let ((_g163889_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g163888_)
                                             (##vector-length _g163888_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g163889_ 2)))
                                      (error "Context expects 2 values"
                                             _g163889_)))
                                (let ((_target160420160459_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g163888_ 0)))
                                      (_tl160422160462_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g163888_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl160422160462_))
                                      (letrec ((_loop160423160465_
                                                (lambda (_hd160421160469_
                                                         _type160427160472_
                                                         _symbol160428160474_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd160421160469_))
                                                      (let ((_e160424160477_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd160421160469_))))
                (let ((_lp-hd160425160481_
                       (let () (declare (not safe)) (##car _e160424160477_)))
                      (_lp-tl160426160484_
                       (let () (declare (not safe)) (##cdr _e160424160477_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd160425160481_))
                      (let ((_e160433160487_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd160425160481_))))
                        (let ((_hd160432160491_
                               (let ()
                                 (declare (not safe))
                                 (##car _e160433160487_)))
                              (_tl160431160494_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e160433160487_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl160431160494_))
                              (let ((_e160436160497_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl160431160494_))))
                                (let ((_hd160435160501_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e160436160497_)))
                                      (_tl160434160504_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e160436160497_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl160434160504_))
                                      (_loop160423160465_
                                       _lp-tl160426160484_
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd160435160501_
                                               _type160427160472_))
                                       (let ()
                                         (declare (not safe))
                                         (cons _hd160432160491_
                                               _symbol160428160474_)))
                                      (_g160413160442_ _g160414160446_))))
                              (_g160413160442_ _g160414160446_))))
                      (_g160413160442_ _g160414160446_))))
              (let ((_type160429160507_ (reverse _type160427160472_))
                    (_symbol160430160510_ (reverse _symbol160428160474_)))
                ((lambda (_L160513_ _L160515_)
                   (let ((__tmp163896
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp163890
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L160513_
                               _L160515_))
                            (let ((__tmp163891
                                   (lambda (_g160530160534_
                                            _g160531160537_
                                            _g160532160539_)
                                     (let ((__tmp163892
                                            (let ((__tmp163895
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-type)))
                                                  (__tmp163893
                                                   (let ((__tmp163894
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (cons _g160530160534_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g160531160537_
                                                           __tmp163894))))
                                              (declare (not safe))
                                              (cons __tmp163895 __tmp163893))))
                                       (declare (not safe))
                                       (cons __tmp163892 _g160532160539_)))))
                              (declare (not safe))
                              (foldr2 __tmp163891 '() _L160513_ _L160515_)))))
                     (declare (not safe))
                     (cons __tmp163896 __tmp163890)))
                 _type160429160507_
                 _symbol160430160510_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop160423160465_
                                         _target160420160459_
                                         '()
                                         '()))
                                      (_g160413160442_ _g160414160446_)))))
                            (_g160413160442_ _g160414160446_))))
                    (_g160413160442_ _g160414160446_)))))
        (_g160412160542_ _$stx160409_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx160547_)
      (let* ((___stx163447163448_ _$stx160547_)
             (_g160552160594_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx163447163448_)))))
        (let ((___kont163450163451_
               (lambda (_L160722_ _L160724_ _L160725_ _L160726_)
                 (let ((__tmp163910
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'optimizer-declare-method!)))
                       (__tmp163897
                        (let ((__tmp163907
                               (let ((__tmp163909
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp163908
                                      (let ()
                                        (declare (not safe))
                                        (cons _L160726_ '()))))
                                 (declare (not safe))
                                 (cons __tmp163909 __tmp163908)))
                              (__tmp163898
                               (let ((__tmp163904
                                      (let ((__tmp163906
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp163905
                                             (let ()
                                               (declare (not safe))
                                               (cons _L160725_ '()))))
                                        (declare (not safe))
                                        (cons __tmp163906 __tmp163905)))
                                     (__tmp163899
                                      (let ((__tmp163901
                                             (let ((__tmp163903
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp163902
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L160724_ '()))))
                                               (declare (not safe))
                                               (cons __tmp163903 __tmp163902)))
                                            (__tmp163900
                                             (let ()
                                               (declare (not safe))
                                               (cons _L160722_ '()))))
                                        (declare (not safe))
                                        (cons __tmp163901 __tmp163900))))
                                 (declare (not safe))
                                 (cons __tmp163904 __tmp163899))))
                          (declare (not safe))
                          (cons __tmp163907 __tmp163898))))
                   (declare (not safe))
                   (cons __tmp163910 __tmp163897))))
              (___kont163452163453_
               (lambda (_L160641_ _L160643_ _L160644_ _L160645_)
                 (let ((__tmp163911
                        (let ((__tmp163912
                               (let ((__tmp163913
                                      (let ((__tmp163914
                                             (let ((__tmp163915
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'rebind?))))
                                               (declare (not safe))
                                               (cons __tmp163915 '()))))
                                        (declare (not safe))
                                        (cons _L160641_ __tmp163914))))
                                 (declare (not safe))
                                 (cons _L160643_ __tmp163913))))
                          (declare (not safe))
                          (cons _L160644_ __tmp163912))))
                   (declare (not safe))
                   (cons _L160645_ __tmp163911)))))
          (let ((___match163486163487_
                 (lambda (_e160560160672_
                          _hd160559160676_
                          _tl160558160679_
                          _e160563160682_
                          _hd160562160686_
                          _tl160561160689_
                          _e160566160692_
                          _hd160565160696_
                          _tl160564160699_
                          _e160569160702_
                          _hd160568160706_
                          _tl160567160709_
                          _e160572160712_
                          _hd160571160716_
                          _tl160570160719_)
                   (let ((_L160722_ _hd160571160716_)
                         (_L160724_ _hd160568160706_)
                         (_L160725_ _hd160565160696_)
                         (_L160726_ _hd160562160686_))
                     (if (and (let ()
                                (declare (not safe))
                                (gx#identifier? _L160726_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L160725_))
                              (let ()
                                (declare (not safe))
                                (gx#identifier? _L160724_)))
                         (___kont163450163451_
                          _L160722_
                          _L160724_
                          _L160725_
                          _L160726_)
                         (let () (declare (not safe)) (_g160552160594_)))))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx163447163448_))
                (let ((_e160560160672_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx163447163448_))))
                  (let ((_tl160558160679_
                         (let () (declare (not safe)) (##cdr _e160560160672_)))
                        (_hd160559160676_
                         (let ()
                           (declare (not safe))
                           (##car _e160560160672_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl160558160679_))
                        (let ((_e160563160682_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl160558160679_))))
                          (let ((_tl160561160689_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e160563160682_)))
                                (_hd160562160686_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e160563160682_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl160561160689_))
                                (let ((_e160566160692_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl160561160689_))))
                                  (let ((_tl160564160699_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e160566160692_)))
                                        (_hd160565160696_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e160566160692_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _tl160564160699_))
                                        (let ((_e160569160702_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-e
                                                  _tl160564160699_))))
                                          (let ((_tl160567160709_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e160569160702_)))
                                                (_hd160568160706_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e160569160702_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl160567160709_))
                                                (let ((_e160572160712_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl160567160709_))))
                                                  (let ((_tl160570160719_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e160572160712_)))
                                                        (_hd160571160716_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e160572160712_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl160570160719_))
                                                        (___match163486163487_
                                                         _e160560160672_
                                                         _hd160559160676_
                                                         _tl160558160679_
                                                         _e160563160682_
                                                         _hd160562160686_
                                                         _tl160561160689_
                                                         _e160566160692_
                                                         _hd160565160696_
                                                         _tl160564160699_
                                                         _e160569160702_
                                                         _hd160568160706_
                                                         _tl160567160709_
                                                         _e160572160712_
                                                         _hd160571160716_
                                                         _tl160570160719_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g160552160594_)))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl160567160709_))
                                                    (___kont163452163453_
                                                     _hd160568160706_
                                                     _hd160565160696_
                                                     _hd160562160686_
                                                     _hd160559160676_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g160552160594_))))))
                                        (let ()
                                          (declare (not safe))
                                          (_g160552160594_)))))
                                (let ()
                                  (declare (not safe))
                                  (_g160552160594_)))))
                        (let () (declare (not safe)) (_g160552160594_)))))
                (let () (declare (not safe)) (_g160552160594_))))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx160751_)
      (let* ((_g160755160790_
              (lambda (_g160756160786_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160756160786_))))
             (_g160754160909_
              (lambda (_g160756160794_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160756160794_))
                    (let ((_e160762160797_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160756160794_))))
                      (let ((_hd160761160801_
                             (let ()
                               (declare (not safe))
                               (##car _e160762160797_)))
                            (_tl160760160804_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160762160797_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl160760160804_))
                            (let ((_g163916_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl160760160804_
                                      '0))))
                              (begin
                                (let ((_g163917_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g163916_)
                                             (##vector-length _g163916_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g163917_ 2)))
                                      (error "Context expects 2 values"
                                             _g163917_)))
                                (let ((_target160763160807_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g163916_ 0)))
                                      (_tl160765160810_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g163916_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl160765160810_))
                                      (letrec ((_loop160766160813_
                                                (lambda (_hd160764160817_
                                                         _symbol160770160820_
                                                         _method160771160822_
                                                         _type-t160772160824_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd160764160817_))
                                                      (let ((_e160767160827_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd160764160817_))))
                (let ((_lp-hd160768160831_
                       (let () (declare (not safe)) (##car _e160767160827_)))
                      (_lp-tl160769160834_
                       (let () (declare (not safe)) (##cdr _e160767160827_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd160768160831_))
                      (let ((_e160778160837_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd160768160831_))))
                        (let ((_hd160777160841_
                               (let ()
                                 (declare (not safe))
                                 (##car _e160778160837_)))
                              (_tl160776160844_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e160778160837_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl160776160844_))
                              (let ((_e160781160847_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl160776160844_))))
                                (let ((_hd160780160851_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e160781160847_)))
                                      (_tl160779160854_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e160781160847_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl160779160854_))
                                      (let ((_e160784160857_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl160779160854_))))
                                        (let ((_hd160783160861_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e160784160857_)))
                                              (_tl160782160864_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e160784160857_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl160782160864_))
                                              (_loop160766160813_
                                               _lp-tl160769160834_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd160783160861_
                                                       _symbol160770160820_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd160780160851_
                                                       _method160771160822_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd160777160841_
                                                       _type-t160772160824_)))
                                              (_g160755160790_
                                               _g160756160794_))))
                                      (_g160755160790_ _g160756160794_))))
                              (_g160755160790_ _g160756160794_))))
                      (_g160755160790_ _g160756160794_))))
              (let ((_symbol160773160867_ (reverse _symbol160770160820_))
                    (_method160774160870_ (reverse _method160771160822_))
                    (_type-t160775160872_ (reverse _type-t160772160824_)))
                ((lambda (_L160875_ _L160877_ _L160878_)
                   (let ((__tmp163925
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp163918
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L160875_
                               _L160877_
                               _L160878_))
                            (let ((__tmp163919
                                   (lambda (_g160894160899_
                                            _g160895160902_
                                            _g160896160904_
                                            _g160897160906_)
                                     (let ((__tmp163920
                                            (let ((__tmp163924
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-method)))
                                                  (__tmp163921
                                                   (let ((__tmp163922
                                                          (let ((__tmp163923
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (cons _g160894160899_ '()))))
                    (declare (not safe))
                    (cons _g160895160902_ __tmp163923))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g160896160904_
                                                           __tmp163922))))
                                              (declare (not safe))
                                              (cons __tmp163924 __tmp163921))))
                                       (declare (not safe))
                                       (cons __tmp163920 _g160897160906_)))))
                              (declare (not safe))
                              (foldr* __tmp163919
                                      '()
                                      _L160875_
                                      _L160877_
                                      _L160878_)))))
                     (declare (not safe))
                     (cons __tmp163925 __tmp163918)))
                 _symbol160773160867_
                 _method160774160870_
                 _type-t160775160872_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop160766160813_
                                         _target160763160807_
                                         '()
                                         '()
                                         '()))
                                      (_g160755160790_ _g160756160794_)))))
                            (_g160755160790_ _g160756160794_))))
                    (_g160755160790_ _g160756160794_)))))
        (_g160754160909_ _$stx160751_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx160914_)
      (let* ((_g160918160951_
              (lambda (_g160919160947_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g160919160947_))))
             (_g160917161065_
              (lambda (_g160919160955_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g160919160955_))
                    (let ((_e160925160958_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g160919160955_))))
                      (let ((_hd160924160962_
                             (let ()
                               (declare (not safe))
                               (##car _e160925160958_)))
                            (_tl160923160965_
                             (let ()
                               (declare (not safe))
                               (##cdr _e160925160958_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl160923160965_))
                            (let ((_e160928160968_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl160923160965_))))
                              (let ((_hd160927160972_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e160928160968_)))
                                    (_tl160926160975_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e160928160968_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl160926160975_))
                                    (let ((_g163926_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl160926160975_
                                              '0))))
                                      (begin
                                        (let ((_g163927_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g163926_)
                                                     (##vector-length
                                                      _g163926_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g163927_ 2)))
                                              (error "Context expects 2 values"
                                                     _g163927_)))
                                        (let ((_target160929160978_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g163926_ 0)))
                                              (_tl160931160981_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g163926_ 1))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl160931160981_))
                                              (letrec ((_loop160932160984_
                                                        (lambda (_hd160930160988_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol160936160991_
                         _method160937160993_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _hd160930160988_))
                      (let ((_e160933160996_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _hd160930160988_))))
                        (let ((_lp-hd160934161000_
                               (let ()
                                 (declare (not safe))
                                 (##car _e160933160996_)))
                              (_lp-tl160935161003_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e160933160996_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _lp-hd160934161000_))
                              (let ((_e160942161006_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _lp-hd160934161000_))))
                                (let ((_hd160941161010_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e160942161006_)))
                                      (_tl160940161013_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e160942161006_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _tl160940161013_))
                                      (let ((_e160945161016_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-e
                                                _tl160940161013_))))
                                        (let ((_hd160944161020_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e160945161016_)))
                                              (_tl160943161023_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e160945161016_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl160943161023_))
                                              (_loop160932160984_
                                               _lp-tl160935161003_
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd160944161020_
                                                       _symbol160936160991_))
                                               (let ()
                                                 (declare (not safe))
                                                 (cons _hd160941161010_
                                                       _method160937160993_)))
                                              (_g160918160951_
                                               _g160919160955_))))
                                      (_g160918160951_ _g160919160955_))))
                              (_g160918160951_ _g160919160955_))))
                      (let ((_symbol160938161026_
                             (reverse _symbol160936160991_))
                            (_method160939161029_
                             (reverse _method160937160993_)))
                        ((lambda (_L161032_ _L161034_ _L161035_)
                           (let ((__tmp163935
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'begin)))
                                 (__tmp163928
                                  (begin
                                    (let ()
                                      (declare (not safe))
                                      (gx#syntax-check-splice-targets
                                       _L161032_
                                       _L161034_))
                                    (let ((__tmp163929
                                           (lambda (_g161053161057_
                                                    _g161054161060_
                                                    _g161055161062_)
                                             (let ((__tmp163930
                                                    (let ((__tmp163934
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              'declare-method)))
                                                          (__tmp163931
                                                           (let ((__tmp163932
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ((__tmp163933
                                 (let ()
                                   (declare (not safe))
                                   (cons _g161053161057_ '()))))
                            (declare (not safe))
                            (cons _g161054161060_ __tmp163933))))
                     (declare (not safe))
                     (cons _L161035_ __tmp163932))))
              (declare (not safe))
              (cons __tmp163934 __tmp163931))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons __tmp163930
                                                     _g161055161062_)))))
                                      (declare (not safe))
                                      (foldr2 __tmp163929
                                              '()
                                              _L161032_
                                              _L161034_)))))
                             (declare (not safe))
                             (cons __tmp163935 __tmp163928)))
                         _symbol160938161026_
                         _method160939161029_
                         _hd160927160972_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop160932160984_
                                                 _target160929160978_
                                                 '()
                                                 '()))
                                              (_g160918160951_
                                               _g160919160955_)))))
                                    (_g160918160951_ _g160919160955_))))
                            (_g160918160951_ _g160919160955_))))
                    (_g160918160951_ _g160919160955_)))))
        (_g160917161065_ _$stx160914_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx161070_)
      (let* ((_g161074161088_
              (lambda (_g161075161084_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161075161084_))))
             (_g161073161129_
              (lambda (_g161075161092_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161075161092_))
                    (let ((_e161079161095_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161075161092_))))
                      (let ((_hd161078161099_
                             (let ()
                               (declare (not safe))
                               (##car _e161079161095_)))
                            (_tl161077161102_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161079161095_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161077161102_))
                            (let ((_e161082161105_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161077161102_))))
                              (let ((_hd161081161109_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161082161105_)))
                                    (_tl161080161112_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161082161105_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl161080161112_))
                                    ((lambda (_L161115_)
                                       (let ((__tmp163940
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!alias)))
                                             (__tmp163936
                                              (let ((__tmp163937
                                                     (let ((__tmp163939
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp163938
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L161115_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp163939 __tmp163938))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp163937 '()))))
                                         (declare (not safe))
                                         (cons __tmp163940 __tmp163936)))
                                     _hd161081161109_)
                                    (_g161074161088_ _g161075161092_))))
                            (_g161074161088_ _g161075161092_))))
                    (_g161074161088_ _g161075161092_)))))
        (_g161073161129_ _$stx161070_))))
  (define |gxc[:0:]#@class|
    (lambda (_$stx161133_)
      (let* ((_g161137161191_
              (lambda (_g161138161187_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161138161187_))))
             (_g161136161372_
              (lambda (_g161138161195_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161138161195_))
                    (let ((_e161152161198_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161138161195_))))
                      (let ((_hd161151161202_
                             (let ()
                               (declare (not safe))
                               (##car _e161152161198_)))
                            (_tl161150161205_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161152161198_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161150161205_))
                            (let ((_e161155161208_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161150161205_))))
                              (let ((_hd161154161212_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161155161208_)))
                                    (_tl161153161215_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161155161208_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl161153161215_))
                                    (let ((_e161158161218_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl161153161215_))))
                                      (let ((_hd161157161222_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e161158161218_)))
                                            (_tl161156161225_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e161158161218_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl161156161225_))
                                            (let ((_e161161161228_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl161156161225_))))
                                              (let ((_hd161160161232_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e161161161228_)))
                                                    (_tl161159161235_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e161161161228_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl161159161235_))
                                                    (let ((_e161164161238_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl161159161235_))))
                                                      (let ((_hd161163161242_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e161164161238_)))
                    (_tl161162161245_
                     (let () (declare (not safe)) (##cdr _e161164161238_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl161162161245_))
                    (let ((_e161167161248_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl161162161245_))))
                      (let ((_hd161166161252_
                             (let ()
                               (declare (not safe))
                               (##car _e161167161248_)))
                            (_tl161165161255_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161167161248_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161165161255_))
                            (let ((_e161170161258_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161165161255_))))
                              (let ((_hd161169161262_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161170161258_)))
                                    (_tl161168161265_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161170161258_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl161168161265_))
                                    (let ((_e161173161268_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl161168161265_))))
                                      (let ((_hd161172161272_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e161173161268_)))
                                            (_tl161171161275_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e161173161268_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl161171161275_))
                                            (let ((_e161176161278_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl161171161275_))))
                                              (let ((_hd161175161282_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e161176161278_)))
                                                    (_tl161174161285_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e161176161278_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl161174161285_))
                                                    (let ((_e161179161288_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl161174161285_))))
                                                      (let ((_hd161178161292_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e161179161288_)))
                    (_tl161177161295_
                     (let () (declare (not safe)) (##cdr _e161179161288_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _tl161177161295_))
                    (let ((_e161182161298_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _tl161177161295_))))
                      (let ((_hd161181161302_
                             (let ()
                               (declare (not safe))
                               (##car _e161182161298_)))
                            (_tl161180161305_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161182161298_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161180161305_))
                            (let ((_e161185161308_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161180161305_))))
                              (let ((_hd161184161312_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161185161308_)))
                                    (_tl161183161315_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161185161308_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl161183161315_))
                                    ((lambda (_L161318_
                                              _L161320_
                                              _L161321_
                                              _L161322_
                                              _L161323_
                                              _L161324_
                                              _L161325_
                                              _L161326_
                                              _L161327_
                                              _L161328_
                                              _L161329_)
                                       (let ((__tmp163976
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!class)))
                                             (__tmp163941
                                              (let ((__tmp163973
                                                     (let ((__tmp163975
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp163974
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L161329_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp163975 __tmp163974)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (__tmp163942
                                                     (let ((__tmp163970
                                                            (let ((__tmp163972
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#datum->syntax__0 '#f 'quote)))
                          (__tmp163971
                           (let () (declare (not safe)) (cons _L161328_ '()))))
                      (declare (not safe))
                      (cons __tmp163972 __tmp163971)))
                   (__tmp163943
                    (let ((__tmp163967
                           (let ((__tmp163969
                                  (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f 'quote)))
                                 (__tmp163968
                                  (let ()
                                    (declare (not safe))
                                    (cons _L161327_ '()))))
                             (declare (not safe))
                             (cons __tmp163969 __tmp163968)))
                          (__tmp163944
                           (let ((__tmp163964
                                  (let ((__tmp163966
                                         (let ()
                                           (declare (not safe))
                                           (gx#datum->syntax__0 '#f 'quote)))
                                        (__tmp163965
                                         (let ()
                                           (declare (not safe))
                                           (cons _L161326_ '()))))
                                    (declare (not safe))
                                    (cons __tmp163966 __tmp163965)))
                                 (__tmp163945
                                  (let ((__tmp163961
                                         (let ((__tmp163963
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#datum->syntax__0
                                                   '#f
                                                   'quote)))
                                               (__tmp163962
                                                (let ()
                                                  (declare (not safe))
                                                  (cons _L161325_ '()))))
                                           (declare (not safe))
                                           (cons __tmp163963 __tmp163962)))
                                        (__tmp163946
                                         (let ((__tmp163958
                                                (let ((__tmp163960
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          'quote)))
                                                      (__tmp163959
                                                       (let ()
                                                         (declare (not safe))
                                                         (cons _L161324_
                                                               '()))))
                                                  (declare (not safe))
                                                  (cons __tmp163960
                                                        __tmp163959)))
                                               (__tmp163947
                                                (let ((__tmp163948
                                                       (let ((__tmp163949
                                                              (let ((__tmp163950
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ((__tmp163955
                                    (let ((__tmp163957
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp163956
                                           (let ()
                                             (declare (not safe))
                                             (cons _L161320_ '()))))
                                      (declare (not safe))
                                      (cons __tmp163957 __tmp163956)))
                                   (__tmp163951
                                    (let ((__tmp163952
                                           (let ((__tmp163954
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#datum->syntax__0
                                                     '#f
                                                     'quote)))
                                                 (__tmp163953
                                                  (let ()
                                                    (declare (not safe))
                                                    (cons _L161318_ '()))))
                                             (declare (not safe))
                                             (cons __tmp163954 __tmp163953))))
                                      (declare (not safe))
                                      (cons __tmp163952 '()))))
                               (declare (not safe))
                               (cons __tmp163955 __tmp163951))))
                        (declare (not safe))
                        (cons _L161321_ __tmp163950))))
                 (declare (not safe))
                 (cons _L161322_ __tmp163949))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (cons _L161323_
                                                        __tmp163948))))
                                           (declare (not safe))
                                           (cons __tmp163958 __tmp163947))))
                                    (declare (not safe))
                                    (cons __tmp163961 __tmp163946))))
                             (declare (not safe))
                             (cons __tmp163964 __tmp163945))))
                      (declare (not safe))
                      (cons __tmp163967 __tmp163944))))
               (declare (not safe))
               (cons __tmp163970 __tmp163943))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp163973
                                                      __tmp163942))))
                                         (declare (not safe))
                                         (cons __tmp163976 __tmp163941)))
                                     _hd161184161312_
                                     _hd161181161302_
                                     _hd161178161292_
                                     _hd161175161282_
                                     _hd161172161272_
                                     _hd161169161262_
                                     _hd161166161252_
                                     _hd161163161242_
                                     _hd161160161232_
                                     _hd161157161222_
                                     _hd161154161212_)
                                    (_g161137161191_ _g161138161195_))))
                            (_g161137161191_ _g161138161195_))))
                    (_g161137161191_ _g161138161195_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g161137161191_
                                                     _g161138161195_))))
                                            (_g161137161191_
                                             _g161138161195_))))
                                    (_g161137161191_ _g161138161195_))))
                            (_g161137161191_ _g161138161195_))))
                    (_g161137161191_ _g161138161195_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g161137161191_
                                                     _g161138161195_))))
                                            (_g161137161191_
                                             _g161138161195_))))
                                    (_g161137161191_ _g161138161195_))))
                            (_g161137161191_ _g161138161195_))))
                    (_g161137161191_ _g161138161195_)))))
        (_g161136161372_ _$stx161133_))))
  (define |gxc[:0:]#@predicate|
    (lambda (_$stx161376_)
      (let* ((_g161380161394_
              (lambda (_g161381161390_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161381161390_))))
             (_g161379161435_
              (lambda (_g161381161398_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161381161398_))
                    (let ((_e161385161401_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161381161398_))))
                      (let ((_hd161384161405_
                             (let ()
                               (declare (not safe))
                               (##car _e161385161401_)))
                            (_tl161383161408_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161385161401_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161383161408_))
                            (let ((_e161388161411_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161383161408_))))
                              (let ((_hd161387161415_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161388161411_)))
                                    (_tl161386161418_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161388161411_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl161386161418_))
                                    ((lambda (_L161421_)
                                       (let ((__tmp163981
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!predicate)))
                                             (__tmp163977
                                              (let ((__tmp163978
                                                     (let ((__tmp163980
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp163979
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L161421_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp163980 __tmp163979))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp163978 '()))))
                                         (declare (not safe))
                                         (cons __tmp163981 __tmp163977)))
                                     _hd161387161415_)
                                    (_g161380161394_ _g161381161398_))))
                            (_g161380161394_ _g161381161398_))))
                    (_g161380161394_ _g161381161398_)))))
        (_g161379161435_ _$stx161376_))))
  (define |gxc[:0:]#@constructor|
    (lambda (_$stx161439_)
      (let* ((_g161443161457_
              (lambda (_g161444161453_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161444161453_))))
             (_g161442161498_
              (lambda (_g161444161461_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161444161461_))
                    (let ((_e161448161464_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161444161461_))))
                      (let ((_hd161447161468_
                             (let ()
                               (declare (not safe))
                               (##car _e161448161464_)))
                            (_tl161446161471_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161448161464_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161446161471_))
                            (let ((_e161451161474_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161446161471_))))
                              (let ((_hd161450161478_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161451161474_)))
                                    (_tl161449161481_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161451161474_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl161449161481_))
                                    ((lambda (_L161484_)
                                       (let ((__tmp163986
                                              (let ()
                                                (declare (not safe))
                                                (gx#datum->syntax__0
                                                 '#f
                                                 'make-!constructor)))
                                             (__tmp163982
                                              (let ((__tmp163983
                                                     (let ((__tmp163985
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#datum->syntax__0
                                                               '#f
                                                               'quote)))
                                                           (__tmp163984
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (cons _L161484_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))))
               (declare (not safe))
               (cons __tmp163985 __tmp163984))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (declare (not safe))
                                                (cons __tmp163983 '()))))
                                         (declare (not safe))
                                         (cons __tmp163986 __tmp163982)))
                                     _hd161450161478_)
                                    (_g161443161457_ _g161444161461_))))
                            (_g161443161457_ _g161444161461_))))
                    (_g161443161457_ _g161444161461_)))))
        (_g161442161498_ _$stx161439_))))
  (define |gxc[:0:]#@accessor|
    (lambda (_$stx161502_)
      (let* ((_g161506161528_
              (lambda (_g161507161524_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161507161524_))))
             (_g161505161597_
              (lambda (_g161507161532_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161507161532_))
                    (let ((_e161513161535_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161507161532_))))
                      (let ((_hd161512161539_
                             (let ()
                               (declare (not safe))
                               (##car _e161513161535_)))
                            (_tl161511161542_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161513161535_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161511161542_))
                            (let ((_e161516161545_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161511161542_))))
                              (let ((_hd161515161549_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161516161545_)))
                                    (_tl161514161552_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161516161545_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl161514161552_))
                                    (let ((_e161519161555_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl161514161552_))))
                                      (let ((_hd161518161559_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e161519161555_)))
                                            (_tl161517161562_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e161519161555_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl161517161562_))
                                            (let ((_e161522161565_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl161517161562_))))
                                              (let ((_hd161521161569_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e161522161565_)))
                                                    (_tl161520161572_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e161522161565_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl161520161572_))
                                                    ((lambda (_L161575_
                                                              _L161577_
                                                              _L161578_)
                                                       (let ((__tmp163996
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!accessor)))
                     (__tmp163987
                      (let ((__tmp163993
                             (let ((__tmp163995
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp163994
                                    (let ()
                                      (declare (not safe))
                                      (cons _L161578_ '()))))
                               (declare (not safe))
                               (cons __tmp163995 __tmp163994)))
                            (__tmp163988
                             (let ((__tmp163990
                                    (let ((__tmp163992
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp163991
                                           (let ()
                                             (declare (not safe))
                                             (cons _L161577_ '()))))
                                      (declare (not safe))
                                      (cons __tmp163992 __tmp163991)))
                                   (__tmp163989
                                    (let ()
                                      (declare (not safe))
                                      (cons _L161575_ '()))))
                               (declare (not safe))
                               (cons __tmp163990 __tmp163989))))
                        (declare (not safe))
                        (cons __tmp163993 __tmp163988))))
                 (declare (not safe))
                 (cons __tmp163996 __tmp163987)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd161521161569_
                                                     _hd161518161559_
                                                     _hd161515161549_)
                                                    (_g161506161528_
                                                     _g161507161532_))))
                                            (_g161506161528_
                                             _g161507161532_))))
                                    (_g161506161528_ _g161507161532_))))
                            (_g161506161528_ _g161507161532_))))
                    (_g161506161528_ _g161507161532_)))))
        (_g161505161597_ _$stx161502_))))
  (define |gxc[:0:]#@mutator|
    (lambda (_$stx161601_)
      (let* ((_g161605161627_
              (lambda (_g161606161623_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g161606161623_))))
             (_g161604161696_
              (lambda (_g161606161631_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g161606161631_))
                    (let ((_e161612161634_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g161606161631_))))
                      (let ((_hd161611161638_
                             (let ()
                               (declare (not safe))
                               (##car _e161612161634_)))
                            (_tl161610161641_
                             (let ()
                               (declare (not safe))
                               (##cdr _e161612161634_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl161610161641_))
                            (let ((_e161615161644_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl161610161641_))))
                              (let ((_hd161614161648_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e161615161644_)))
                                    (_tl161613161651_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e161615161644_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl161613161651_))
                                    (let ((_e161618161654_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl161613161651_))))
                                      (let ((_hd161617161658_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e161618161654_)))
                                            (_tl161616161661_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e161618161654_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair? _tl161616161661_))
                                            (let ((_e161621161664_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _tl161616161661_))))
                                              (let ((_hd161620161668_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e161621161664_)))
                                                    (_tl161619161671_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e161621161664_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl161619161671_))
                                                    ((lambda (_L161674_
                                                              _L161676_
                                                              _L161677_)
                                                       (let ((__tmp164006
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#datum->syntax__0 '#f 'make-!mutator)))
                     (__tmp163997
                      (let ((__tmp164003
                             (let ((__tmp164005
                                    (let ()
                                      (declare (not safe))
                                      (gx#datum->syntax__0 '#f 'quote)))
                                   (__tmp164004
                                    (let ()
                                      (declare (not safe))
                                      (cons _L161677_ '()))))
                               (declare (not safe))
                               (cons __tmp164005 __tmp164004)))
                            (__tmp163998
                             (let ((__tmp164000
                                    (let ((__tmp164002
                                           (let ()
                                             (declare (not safe))
                                             (gx#datum->syntax__0 '#f 'quote)))
                                          (__tmp164001
                                           (let ()
                                             (declare (not safe))
                                             (cons _L161676_ '()))))
                                      (declare (not safe))
                                      (cons __tmp164002 __tmp164001)))
                                   (__tmp163999
                                    (let ()
                                      (declare (not safe))
                                      (cons _L161674_ '()))))
                               (declare (not safe))
                               (cons __tmp164000 __tmp163999))))
                        (declare (not safe))
                        (cons __tmp164003 __tmp163998))))
                 (declare (not safe))
                 (cons __tmp164006 __tmp163997)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _hd161620161668_
                                                     _hd161617161658_
                                                     _hd161614161648_)
                                                    (_g161605161627_
                                                     _g161606161631_))))
                                            (_g161605161627_
                                             _g161606161631_))))
                                    (_g161605161627_ _g161606161631_))))
                            (_g161605161627_ _g161606161631_))))
                    (_g161605161627_ _g161606161631_)))))
        (_g161604161696_ _$stx161601_))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx161700_)
      (let* ((___stx163515163516_ _$stx161700_)
             (_g161708161776_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx163515163516_)))))
        (let ((___kont163518163519_
               (lambda (_L162054_ _L162056_)
                 (let ((__tmp164027
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp164007
                        (let ((__tmp164023
                               (let ((__tmp164026
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp164024
                                      (let ((__tmp164025
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp164025 '()))))
                                 (declare (not safe))
                                 (cons __tmp164026 __tmp164024)))
                              (__tmp164008
                               (let ((__tmp164020
                                      (let ((__tmp164022
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp164021
                                             (let ()
                                               (declare (not safe))
                                               (cons _L162056_ '()))))
                                        (declare (not safe))
                                        (cons __tmp164022 __tmp164021)))
                                     (__tmp164009
                                      (let ((__tmp164010
                                             (let ((__tmp164011
                                                    (let ((__tmp164012
                                                           (let ((__tmp164019
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'quote)))
                         (__tmp164013
                          (let ((__tmp164014
                                 (let ((__tmp164018
                                        (let ()
                                          (declare (not safe))
                                          (gx#datum->syntax__0 '#f '@lambda)))
                                       (__tmp164015
                                        (let ((__tmp164016
                                               (let ((__tmp164017
                                                      (let ()
                                                        (declare (not safe))
                                                        (cons _L162054_ '()))))
                                                 (declare (not safe))
                                                 (cons 'inline: __tmp164017))))
                                          (declare (not safe))
                                          (cons _L162056_ __tmp164016))))
                                   (declare (not safe))
                                   (cons __tmp164018 __tmp164015))))
                            (declare (not safe))
                            (cons __tmp164014 '()))))
                     (declare (not safe))
                     (cons __tmp164019 __tmp164013))))
              (declare (not safe))
              (cons __tmp164012 '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons _L162054_ __tmp164011))))
                                        (declare (not safe))
                                        (cons '#f __tmp164010))))
                                 (declare (not safe))
                                 (cons __tmp164020 __tmp164009))))
                          (declare (not safe))
                          (cons __tmp164023 __tmp164008))))
                   (declare (not safe))
                   (cons __tmp164027 __tmp164007))))
              (___kont163520163521_
               (lambda (_L161985_ _L161987_)
                 (let ((__tmp164028
                        (let ((__tmp164029
                               (let ((__tmp164030
                                      (let ()
                                        (declare (not safe))
                                        (cons '#f '()))))
                                 (declare (not safe))
                                 (cons _L161985_ __tmp164030))))
                          (declare (not safe))
                          (cons 'primitive: __tmp164029))))
                   (declare (not safe))
                   (cons _L161987_ __tmp164028))))
              (___kont163522163523_
               (lambda (_L161924_ _L161926_)
                 (let ((__tmp164044
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!primitive-lambda)))
                       (__tmp164031
                        (let ((__tmp164040
                               (let ((__tmp164043
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp164041
                                      (let ((__tmp164042
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp164042 '()))))
                                 (declare (not safe))
                                 (cons __tmp164043 __tmp164041)))
                              (__tmp164032
                               (let ((__tmp164037
                                      (let ((__tmp164039
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp164038
                                             (let ()
                                               (declare (not safe))
                                               (cons _L161926_ '()))))
                                        (declare (not safe))
                                        (cons __tmp164039 __tmp164038)))
                                     (__tmp164033
                                      (let ((__tmp164034
                                             (let ((__tmp164036
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp164035
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L161924_ '()))))
                                               (declare (not safe))
                                               (cons __tmp164036
                                                     __tmp164035))))
                                        (declare (not safe))
                                        (cons __tmp164034 '()))))
                                 (declare (not safe))
                                 (cons __tmp164037 __tmp164033))))
                          (declare (not safe))
                          (cons __tmp164040 __tmp164032))))
                   (declare (not safe))
                   (cons __tmp164044 __tmp164031))))
              (___kont163524163525_
               (lambda (_L161856_ _L161858_)
                 (let ((__tmp164058
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!lambda)))
                       (__tmp164045
                        (let ((__tmp164054
                               (let ((__tmp164057
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp164055
                                      (let ((__tmp164056
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'lambda))))
                                        (declare (not safe))
                                        (cons __tmp164056 '()))))
                                 (declare (not safe))
                                 (cons __tmp164057 __tmp164055)))
                              (__tmp164046
                               (let ((__tmp164051
                                      (let ((__tmp164053
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'quote)))
                                            (__tmp164052
                                             (let ()
                                               (declare (not safe))
                                               (cons _L161858_ '()))))
                                        (declare (not safe))
                                        (cons __tmp164053 __tmp164052)))
                                     (__tmp164047
                                      (let ((__tmp164048
                                             (let ((__tmp164050
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       'quote)))
                                                   (__tmp164049
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L161856_ '()))))
                                               (declare (not safe))
                                               (cons __tmp164050
                                                     __tmp164049))))
                                        (declare (not safe))
                                        (cons __tmp164048 '()))))
                                 (declare (not safe))
                                 (cons __tmp164051 __tmp164047))))
                          (declare (not safe))
                          (cons __tmp164054 __tmp164046))))
                   (declare (not safe))
                   (cons __tmp164058 __tmp164045))))
              (___kont163526163527_
               (lambda (_L161803_ _L161805_)
                 (let ((__tmp164059
                        (let ((__tmp164060
                               (let () (declare (not safe)) (cons '#f '()))))
                          (declare (not safe))
                          (cons _L161803_ __tmp164060))))
                   (declare (not safe))
                   (cons _L161805_ __tmp164059)))))
          (if (let () (declare (not safe)) (gx#stx-pair? ___stx163515163516_))
              (let ((_e161714162010_
                     (let ()
                       (declare (not safe))
                       (gx#syntax-e ___stx163515163516_))))
                (let ((_tl161712162017_
                       (let () (declare (not safe)) (##cdr _e161714162010_)))
                      (_hd161713162014_
                       (let () (declare (not safe)) (##car _e161714162010_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _tl161712162017_))
                      (let ((_e161717162020_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl161712162017_))))
                        (let ((_tl161715162027_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e161717162020_)))
                              (_hd161716162024_
                               (let ()
                                 (declare (not safe))
                                 (##car _e161717162020_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _tl161715162027_))
                              (let ((_e161720162030_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-e _tl161715162027_))))
                                (let ((_tl161718162037_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e161720162030_)))
                                      (_hd161719162034_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e161720162030_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-datum? _hd161719162034_))
                                      (let ((_e161721162040_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e _hd161719162034_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (equal? _e161721162040_
                                                      'inline:))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _tl161718162037_))
                                                (let ((_e161724162044_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-e
                                                          _tl161718162037_))))
                                                  (let ((_tl161722162051_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e161724162044_)))
                                                        (_hd161723162048_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e161724162044_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl161722162051_))
                                                        (___kont163518163519_
                                                         _hd161723162048_
                                                         _hd161716162024_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-datum?
                                                               _hd161716162024_))
                                                            (let ((_e161733161971_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _hd161716162024_))))
                      (declare (not safe))
                      (_g161708161776_))
                    (let () (declare (not safe)) (_g161708161776_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-datum?
                                                       _hd161716162024_))
                                                    (let ((_e161733161971_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _hd161716162024_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (equal? _e161733161971_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'primitive:))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl161718162037_))
                      (___kont163520163521_ _hd161719162034_ _hd161713162014_)
                      (let () (declare (not safe)) (_g161708161776_)))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl161718162037_))
                      (___kont163524163525_ _hd161719162034_ _hd161716162024_)
                      (let () (declare (not safe)) (_g161708161776_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl161718162037_))
                                                        (___kont163524163525_
                                                         _hd161719162034_
                                                         _hd161716162024_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g161708161776_)))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-datum?
                                                   _hd161716162024_))
                                                (let ((_e161733161971_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _hd161716162024_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (equal? _e161733161971_
                                                                'primitive:))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl161718162037_))
                                                          (___kont163520163521_
                                                           _hd161719162034_
                                                           _hd161713162014_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _tl161718162037_))
                      (let ((_e161751161914_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _tl161718162037_))))
                        (let ((_tl161749161921_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e161751161914_)))
                              (_hd161750161918_
                               (let ()
                                 (declare (not safe))
                                 (##car _e161751161914_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl161749161921_))
                              (___kont163522163523_
                               _hd161750161918_
                               _hd161719162034_)
                              (let ()
                                (declare (not safe))
                                (_g161708161776_)))))
                      (let () (declare (not safe)) (_g161708161776_))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl161718162037_))
                  (___kont163524163525_ _hd161719162034_ _hd161716162024_)
                  (let () (declare (not safe)) (_g161708161776_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl161718162037_))
                                                    (___kont163524163525_
                                                     _hd161719162034_
                                                     _hd161716162024_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g161708161776_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-datum? _hd161716162024_))
                                          (let ((_e161733161971_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _hd161716162024_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (equal? _e161733161971_
                                                          'primitive:))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl161718162037_))
                                                    (___kont163520163521_
                                                     _hd161719162034_
                                                     _hd161713162014_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _tl161718162037_))
                                                        (let ((_e161751161914_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _tl161718162037_))))
                  (let ((_tl161749161921_
                         (let () (declare (not safe)) (##cdr _e161751161914_)))
                        (_hd161750161918_
                         (let ()
                           (declare (not safe))
                           (##car _e161751161914_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _tl161749161921_))
                        (___kont163522163523_
                         _hd161750161918_
                         _hd161719162034_)
                        (let () (declare (not safe)) (_g161708161776_)))))
                (let () (declare (not safe)) (_g161708161776_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl161718162037_))
                                                    (___kont163524163525_
                                                     _hd161719162034_
                                                     _hd161716162024_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g161708161776_)))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _tl161718162037_))
                                              (___kont163524163525_
                                               _hd161719162034_
                                               _hd161716162024_)
                                              (let ()
                                                (declare (not safe))
                                                (_g161708161776_)))))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-datum? _hd161716162024_))
                                  (let ((_e161733161971_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _hd161716162024_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl161715162027_))
                                        (___kont163526163527_
                                         _hd161716162024_
                                         _hd161713162014_)
                                        (let ()
                                          (declare (not safe))
                                          (_g161708161776_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl161715162027_))
                                      (___kont163526163527_
                                       _hd161716162024_
                                       _hd161713162014_)
                                      (let ()
                                        (declare (not safe))
                                        (_g161708161776_)))))))
                      (let () (declare (not safe)) (_g161708161776_)))))
              (let () (declare (not safe)) (_g161708161776_)))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx162078_)
      (let* ((___stx163655163656_ _$stx162078_)
             (_g162083162138_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx163655163656_)))))
        (let ((___kont163658163659_
               (lambda (_L162323_ _L162325_)
                 (let ((__tmp164076
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0
                           '#f
                           'make-!primitive-case-lambda)))
                       (__tmp164061
                        (let ((__tmp164072
                               (let ((__tmp164075
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp164073
                                      (let ((__tmp164074
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp164074 '()))))
                                 (declare (not safe))
                                 (cons __tmp164075 __tmp164073)))
                              (__tmp164062
                               (let ((__tmp164063
                                      (let ((__tmp164071
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp164064
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L162323_
                                                  _L162325_))
                                               (let ((__tmp164065
                                                      (lambda (_g162342162346_
                                                               _g162343162349_
                                                               _g162344162351_)
                                                        (let ((__tmp164066
                                                               (let ((__tmp164070
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp164067
                              (let ((__tmp164068
                                     (let ((__tmp164069
                                            (let ()
                                              (declare (not safe))
                                              (cons _g162342162346_ '()))))
                                       (declare (not safe))
                                       (cons _g162343162349_ __tmp164069))))
                                (declare (not safe))
                                (cons 'primitive: __tmp164068))))
                         (declare (not safe))
                         (cons __tmp164070 __tmp164067))))
                  (declare (not safe))
                  (cons __tmp164066 _g162344162351_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp164065
                                                         '()
                                                         _L162323_
                                                         _L162325_)))))
                                        (declare (not safe))
                                        (cons __tmp164071 __tmp164064))))
                                 (declare (not safe))
                                 (cons __tmp164063 '()))))
                          (declare (not safe))
                          (cons __tmp164072 __tmp164062))))
                   (declare (not safe))
                   (cons __tmp164076 __tmp164061))))
              (___kont163662163663_
               (lambda (_L162209_ _L162211_)
                 (let ((__tmp164091
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'make-!case-lambda)))
                       (__tmp164077
                        (let ((__tmp164087
                               (let ((__tmp164090
                                      (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f 'quote)))
                                     (__tmp164088
                                      (let ((__tmp164089
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                'case-lambda))))
                                        (declare (not safe))
                                        (cons __tmp164089 '()))))
                                 (declare (not safe))
                                 (cons __tmp164090 __tmp164088)))
                              (__tmp164078
                               (let ((__tmp164079
                                      (let ((__tmp164086
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@list)))
                                            (__tmp164080
                                             (begin
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-check-splice-targets
                                                  _L162209_
                                                  _L162211_))
                                               (let ((__tmp164081
                                                      (lambda (_g162226162230_
                                                               _g162227162233_
                                                               _g162228162235_)
                                                        (let ((__tmp164082
                                                               (let ((__tmp164085
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#datum->syntax__0 '#f '@lambda)))
                             (__tmp164083
                              (let ((__tmp164084
                                     (let ()
                                       (declare (not safe))
                                       (cons _g162226162230_ '()))))
                                (declare (not safe))
                                (cons _g162227162233_ __tmp164084))))
                         (declare (not safe))
                         (cons __tmp164085 __tmp164083))))
                  (declare (not safe))
                  (cons __tmp164082 _g162228162235_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (foldr2 __tmp164081
                                                         '()
                                                         _L162209_
                                                         _L162211_)))))
                                        (declare (not safe))
                                        (cons __tmp164086 __tmp164080))))
                                 (declare (not safe))
                                 (cons __tmp164079 '()))))
                          (declare (not safe))
                          (cons __tmp164087 __tmp164078))))
                   (declare (not safe))
                   (cons __tmp164091 __tmp164077)))))
          (let* ((___match163706163707_
                  (lambda (_e162115162145_
                           _hd162114162149_
                           _tl162113162152_
                           ___splice163664163665_
                           _target162116162155_
                           _tl162118162158_)
                    (letrec ((_loop162119162161_
                              (lambda (_hd162117162165_
                                       _dispatch162123162168_
                                       _arity162124162170_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd162117162165_))
                                    (let ((_e162120162173_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd162117162165_))))
                                      (let ((_lp-tl162122162180_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e162120162173_)))
                                            (_lp-hd162121162177_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e162120162173_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd162121162177_))
                                            (let ((_e162129162183_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd162121162177_))))
                                              (let ((_tl162127162190_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e162129162183_)))
                                                    (_hd162128162187_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e162129162183_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl162127162190_))
                                                    (let ((_e162132162193_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl162127162190_))))
                                                      (let ((_tl162130162200_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e162132162193_)))
                    (_hd162131162197_
                     (let () (declare (not safe)) (##car _e162132162193_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl162130162200_))
                    (_loop162119162161_
                     _lp-tl162122162180_
                     (let ()
                       (declare (not safe))
                       (cons _hd162131162197_ _dispatch162123162168_))
                     (let ()
                       (declare (not safe))
                       (cons _hd162128162187_ _arity162124162170_)))
                    (let () (declare (not safe)) (_g162083162138_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g162083162138_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g162083162138_)))))
                                    (let ((_arity162126162206_
                                           (reverse _arity162124162170_))
                                          (_dispatch162125162203_
                                           (reverse _dispatch162123162168_)))
                                      (___kont163662163663_
                                       _dispatch162125162203_
                                       _arity162126162206_))))))
                      (_loop162119162161_ _target162116162155_ '() '()))))
                 (___match163698163699_
                  (lambda (_e162115162145_ _hd162114162149_ _tl162113162152_)
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair/null? _tl162113162152_))
                        (let ((___splice163664163665_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-split-splice
                                  _tl162113162152_
                                  '0))))
                          (let ((_tl162118162158_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice163664163665_ '1)))
                                (_target162116162155_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref ___splice163664163665_ '0))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _tl162118162158_))
                                (___match163706163707_
                                 _e162115162145_
                                 _hd162114162149_
                                 _tl162113162152_
                                 ___splice163664163665_
                                 _target162116162155_
                                 _tl162118162158_)
                                (let ()
                                  (declare (not safe))
                                  (_g162083162138_)))))
                        (let () (declare (not safe)) (_g162083162138_)))))
                 (___match163692163693_
                  (lambda (_e162089162245_
                           _hd162088162249_
                           _tl162087162252_
                           _e162092162255_
                           _hd162091162259_
                           _tl162090162262_
                           _e162093162265_
                           ___splice163660163661_
                           _target162094162269_
                           _tl162096162272_)
                    (letrec ((_loop162097162275_
                              (lambda (_hd162095162279_
                                       _dispatch162101162282_
                                       _arity162102162284_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd162095162279_))
                                    (let ((_e162098162287_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd162095162279_))))
                                      (let ((_lp-tl162100162294_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e162098162287_)))
                                            (_lp-hd162099162291_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e162098162287_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _lp-hd162099162291_))
                                            (let ((_e162107162297_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-e
                                                      _lp-hd162099162291_))))
                                              (let ((_tl162105162304_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e162107162297_)))
                                                    (_hd162106162301_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e162107162297_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _tl162105162304_))
                                                    (let ((_e162110162307_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-e
                                                              _tl162105162304_))))
                                                      (let ((_tl162108162314_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _e162110162307_)))
                    (_hd162109162311_
                     (let () (declare (not safe)) (##car _e162110162307_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _tl162108162314_))
                    (_loop162097162275_
                     _lp-tl162100162294_
                     (let ()
                       (declare (not safe))
                       (cons _hd162109162311_ _dispatch162101162282_))
                     (let ()
                       (declare (not safe))
                       (cons _hd162106162301_ _arity162102162284_)))
                    (___match163698163699_
                     _e162089162245_
                     _hd162088162249_
                     _tl162087162252_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (___match163698163699_
                                                     _e162089162245_
                                                     _hd162088162249_
                                                     _tl162087162252_))))
                                            (___match163698163699_
                                             _e162089162245_
                                             _hd162088162249_
                                             _tl162087162252_))))
                                    (let ((_arity162104162320_
                                           (reverse _arity162102162284_))
                                          (_dispatch162103162317_
                                           (reverse _dispatch162101162282_)))
                                      (___kont163658163659_
                                       _dispatch162103162317_
                                       _arity162104162320_))))))
                      (_loop162097162275_ _target162094162269_ '() '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx163655163656_))
                (let ((_e162089162245_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx163655163656_))))
                  (let ((_tl162087162252_
                         (let () (declare (not safe)) (##cdr _e162089162245_)))
                        (_hd162088162249_
                         (let ()
                           (declare (not safe))
                           (##car _e162089162245_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl162087162252_))
                        (let ((_e162092162255_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl162087162252_))))
                          (let ((_tl162090162262_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e162092162255_)))
                                (_hd162091162259_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e162092162255_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-datum? _hd162091162259_))
                                (let ((_e162093162265_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _hd162091162259_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (equal? _e162093162265_ 'primitive:))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl162090162262_))
                                          (let ((___splice163660163661_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl162090162262_
                                                    '0))))
                                            (let ((_tl162096162272_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice163660163661_
                                                      '1)))
                                                  (_target162094162269_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice163660163661_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl162096162272_))
                                                  (___match163692163693_
                                                   _e162089162245_
                                                   _hd162088162249_
                                                   _tl162087162252_
                                                   _e162092162255_
                                                   _hd162091162259_
                                                   _tl162090162262_
                                                   _e162093162265_
                                                   ___splice163660163661_
                                                   _target162094162269_
                                                   _tl162096162272_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl162087162252_))
                                                      (let ((___splice163664163665_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl162087162252_ '0))))
                (let ((_tl162118162158_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice163664163665_ '1)))
                      (_target162116162155_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice163664163665_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl162118162158_))
                      (___match163706163707_
                       _e162089162245_
                       _hd162088162249_
                       _tl162087162252_
                       ___splice163664163665_
                       _target162116162155_
                       _tl162118162158_)
                      (let () (declare (not safe)) (_g162083162138_)))))
              (let () (declare (not safe)) (_g162083162138_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair/null?
                                                 _tl162087162252_))
                                              (let ((___splice163664163665_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#syntax-split-splice
                                                        _tl162087162252_
                                                        '0))))
                                                (let ((_tl162118162158_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice163664163665_
                                                          '1)))
                                                      (_target162116162155_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##vector-ref
                                                          ___splice163664163665_
                                                          '0))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _tl162118162158_))
                                                      (___match163706163707_
                                                       _e162089162245_
                                                       _hd162088162249_
                                                       _tl162087162252_
                                                       ___splice163664163665_
                                                       _target162116162155_
                                                       _tl162118162158_)
                                                      (let ()
                                                        (declare (not safe))
                                                        (_g162083162138_)))))
                                              (let ()
                                                (declare (not safe))
                                                (_g162083162138_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair/null?
                                             _tl162087162252_))
                                          (let ((___splice163664163665_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#syntax-split-splice
                                                    _tl162087162252_
                                                    '0))))
                                            (let ((_tl162118162158_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice163664163665_
                                                      '1)))
                                                  (_target162116162155_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      ___splice163664163665_
                                                      '0))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl162118162158_))
                                                  (___match163706163707_
                                                   _e162089162245_
                                                   _hd162088162249_
                                                   _tl162087162252_
                                                   ___splice163664163665_
                                                   _target162116162155_
                                                   _tl162118162158_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (_g162083162138_)))))
                                          (let ()
                                            (declare (not safe))
                                            (_g162083162138_)))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl162087162252_))
                                    (let ((___splice163664163665_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl162087162252_
                                              '0))))
                                      (let ((_tl162118162158_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice163664163665_
                                                '1)))
                                            (_target162116162155_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice163664163665_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl162118162158_))
                                            (___match163706163707_
                                             _e162089162245_
                                             _hd162088162249_
                                             _tl162087162252_
                                             ___splice163664163665_
                                             _target162116162155_
                                             _tl162118162158_)
                                            (let ()
                                              (declare (not safe))
                                              (_g162083162138_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g162083162138_))))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl162087162252_))
                            (let ((___splice163664163665_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl162087162252_
                                      '0))))
                              (let ((_tl162118162158_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice163664163665_
                                        '1)))
                                    (_target162116162155_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref
                                        ___splice163664163665_
                                        '0))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _tl162118162158_))
                                    (___match163706163707_
                                     _e162089162245_
                                     _hd162088162249_
                                     _tl162087162252_
                                     ___splice163664163665_
                                     _target162116162155_
                                     _tl162118162158_)
                                    (let ()
                                      (declare (not safe))
                                      (_g162083162138_)))))
                            (let () (declare (not safe)) (_g162083162138_))))))
                (let () (declare (not safe)) (_g162083162138_))))))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx162360_)
      (let* ((_g162364162382_
              (lambda (_g162365162378_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g162365162378_))))
             (_g162363162437_
              (lambda (_g162365162386_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g162365162386_))
                    (let ((_e162370162389_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g162365162386_))))
                      (let ((_hd162369162393_
                             (let ()
                               (declare (not safe))
                               (##car _e162370162389_)))
                            (_tl162368162396_
                             (let ()
                               (declare (not safe))
                               (##cdr _e162370162389_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl162368162396_))
                            (let ((_e162373162399_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl162368162396_))))
                              (let ((_hd162372162403_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e162373162399_)))
                                    (_tl162371162406_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e162373162399_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl162371162406_))
                                    (let ((_e162376162409_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl162371162406_))))
                                      (let ((_hd162375162413_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e162376162409_)))
                                            (_tl162374162416_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e162376162409_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl162374162416_))
                                            ((lambda (_L162419_ _L162421_)
                                               (let ((__tmp164105
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda)))
                                                     (__tmp164092
                                                      (let ((__tmp164101
                                                             (let ((__tmp164104
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp164102
                            (let ((__tmp164103
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'kw-lambda))))
                              (declare (not safe))
                              (cons __tmp164103 '()))))
                       (declare (not safe))
                       (cons __tmp164104 __tmp164102)))
                    (__tmp164093
                     (let ((__tmp164098
                            (let ((__tmp164100
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp164099
                                   (let ()
                                     (declare (not safe))
                                     (cons _L162421_ '()))))
                              (declare (not safe))
                              (cons __tmp164100 __tmp164099)))
                           (__tmp164094
                            (let ((__tmp164095
                                   (let ((__tmp164097
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp164096
                                          (let ()
                                            (declare (not safe))
                                            (cons _L162419_ '()))))
                                     (declare (not safe))
                                     (cons __tmp164097 __tmp164096))))
                              (declare (not safe))
                              (cons __tmp164095 '()))))
                       (declare (not safe))
                       (cons __tmp164098 __tmp164094))))
                (declare (not safe))
                (cons __tmp164101 __tmp164093))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp164105
                                                       __tmp164092)))
                                             _hd162375162413_
                                             _hd162372162403_)
                                            (_g162364162382_
                                             _g162365162386_))))
                                    (_g162364162382_ _g162365162386_))))
                            (_g162364162382_ _g162365162386_))))
                    (_g162364162382_ _g162365162386_)))))
        (_g162363162437_ _$stx162360_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx162441_)
      (let* ((_g162445162463_
              (lambda (_g162446162459_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g162446162459_))))
             (_g162444162518_
              (lambda (_g162446162467_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g162446162467_))
                    (let ((_e162451162470_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g162446162467_))))
                      (let ((_hd162450162474_
                             (let ()
                               (declare (not safe))
                               (##car _e162451162470_)))
                            (_tl162449162477_
                             (let ()
                               (declare (not safe))
                               (##cdr _e162451162470_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _tl162449162477_))
                            (let ((_e162454162480_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-e _tl162449162477_))))
                              (let ((_hd162453162484_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e162454162480_)))
                                    (_tl162452162487_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e162454162480_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _tl162452162487_))
                                    (let ((_e162457162490_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _tl162452162487_))))
                                      (let ((_hd162456162494_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e162457162490_)))
                                            (_tl162455162497_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e162457162490_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl162455162497_))
                                            ((lambda (_L162500_ _L162502_)
                                               (let ((__tmp164119
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#datum->syntax__0
                                                         '#f
                                                         'make-!kw-lambda-primary)))
                                                     (__tmp164106
                                                      (let ((__tmp164115
                                                             (let ((__tmp164118
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#datum->syntax__0 '#f 'quote)))
                           (__tmp164116
                            (let ((__tmp164117
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0
                                      '#f
                                      'kw-lambda-dispatch))))
                              (declare (not safe))
                              (cons __tmp164117 '()))))
                       (declare (not safe))
                       (cons __tmp164118 __tmp164116)))
                    (__tmp164107
                     (let ((__tmp164112
                            (let ((__tmp164114
                                   (let ()
                                     (declare (not safe))
                                     (gx#datum->syntax__0 '#f 'quote)))
                                  (__tmp164113
                                   (let ()
                                     (declare (not safe))
                                     (cons _L162502_ '()))))
                              (declare (not safe))
                              (cons __tmp164114 __tmp164113)))
                           (__tmp164108
                            (let ((__tmp164109
                                   (let ((__tmp164111
                                          (let ()
                                            (declare (not safe))
                                            (gx#datum->syntax__0 '#f 'quote)))
                                         (__tmp164110
                                          (let ()
                                            (declare (not safe))
                                            (cons _L162500_ '()))))
                                     (declare (not safe))
                                     (cons __tmp164111 __tmp164110))))
                              (declare (not safe))
                              (cons __tmp164109 '()))))
                       (declare (not safe))
                       (cons __tmp164112 __tmp164108))))
                (declare (not safe))
                (cons __tmp164115 __tmp164107))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (cons __tmp164119
                                                       __tmp164106)))
                                             _hd162456162494_
                                             _hd162453162484_)
                                            (_g162445162463_
                                             _g162446162467_))))
                                    (_g162445162463_ _g162446162467_))))
                            (_g162445162463_ _g162446162467_))))
                    (_g162445162463_ _g162446162467_)))))
        (_g162444162518_ _$stx162441_))))
  (define |gxc[:0:]#declare-primitive|
    (lambda (_$stx162522_)
      (let* ((___stx163709163710_ _$stx162522_)
             (_g162529162600_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx163709163710_)))))
        (let ((___kont163712163713_
               (lambda (_L162891_ _L162893_)
                 (let ((__tmp164125
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp164120
                        (let ((__tmp164121
                               (let ((__tmp164122
                                      (let ((__tmp164124
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp164123
                                             (let ()
                                               (declare (not safe))
                                               (cons _L162891_ '()))))
                                        (declare (not safe))
                                        (cons __tmp164124 __tmp164123))))
                                 (declare (not safe))
                                 (cons __tmp164122 '()))))
                          (declare (not safe))
                          (cons _L162893_ __tmp164121))))
                   (declare (not safe))
                   (cons __tmp164125 __tmp164120))))
              (___kont163714163715_
               (lambda (_L162810_ _L162812_)
                 (let ((__tmp164134
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp164126
                        (let ((__tmp164127
                               (let ((__tmp164128
                                      (let ((__tmp164133
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp164129
                                             (let ((__tmp164130
                                                    (lambda (_g162831162834_
                                                             _g162832162837_)
                                                      (let ((__tmp164131
                                                             (let ((__tmp164132
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g162831162834_ __tmp164132))))
                (declare (not safe))
                (cons __tmp164131 _g162832162837_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp164130
                                                       '()
                                                       _L162810_))))
                                        (declare (not safe))
                                        (cons __tmp164133 __tmp164129))))
                                 (declare (not safe))
                                 (cons __tmp164128 '()))))
                          (declare (not safe))
                          (cons _L162812_ __tmp164127))))
                   (declare (not safe))
                   (cons __tmp164134 __tmp164126))))
              (___kont163718163719_
               (lambda (_L162722_ _L162724_)
                 (let ((__tmp164141
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp164135
                        (let ((__tmp164136
                               (let ((__tmp164137
                                      (let ((__tmp164140
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp164138
                                             (let ((__tmp164139
                                                    (let ()
                                                      (declare (not safe))
                                                      (cons _L162722_ '()))))
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp164139))))
                                        (declare (not safe))
                                        (cons __tmp164140 __tmp164138))))
                                 (declare (not safe))
                                 (cons __tmp164137 '()))))
                          (declare (not safe))
                          (cons _L162724_ __tmp164136))))
                   (declare (not safe))
                   (cons __tmp164141 __tmp164135))))
              (___kont163720163721_
               (lambda (_L162657_ _L162659_)
                 (let ((__tmp164151
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp164142
                        (let ((__tmp164143
                               (let ((__tmp164144
                                      (let ((__tmp164150
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp164145
                                             (let ((__tmp164146
                                                    (let ((__tmp164147
                                                           (lambda (_g162676162679_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _g162677162682_)
                     (let ((__tmp164148
                            (let ((__tmp164149
                                   (let ()
                                     (declare (not safe))
                                     (cons '#f '()))))
                              (declare (not safe))
                              (cons _g162676162679_ __tmp164149))))
                       (declare (not safe))
                       (cons __tmp164148 _g162677162682_)))))
              (declare (not safe))
              (foldr1 __tmp164147 '() _L162657_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (cons 'primitive:
                                                     __tmp164146))))
                                        (declare (not safe))
                                        (cons __tmp164150 __tmp164145))))
                                 (declare (not safe))
                                 (cons __tmp164144 '()))))
                          (declare (not safe))
                          (cons _L162659_ __tmp164143))))
                   (declare (not safe))
                   (cons __tmp164151 __tmp164142)))))
          (let* ((___match163828163829_
                  (lambda (_e162582162607_
                           _hd162581162611_
                           _tl162580162614_
                           _e162585162617_
                           _hd162584162621_
                           _tl162583162624_
                           ___splice163722163723_
                           _target162586162627_
                           _tl162588162630_)
                    (letrec ((_loop162589162633_
                              (lambda (_hd162587162637_ _arity162593162640_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd162587162637_))
                                    (let ((_e162590162643_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd162587162637_))))
                                      (let ((_lp-tl162592162650_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e162590162643_)))
                                            (_lp-hd162591162647_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e162590162643_))))
                                        (_loop162589162633_
                                         _lp-tl162592162650_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd162591162647_
                                                 _arity162593162640_)))))
                                    (let ((_arity162594162653_
                                           (reverse _arity162593162640_)))
                                      (___kont163720163721_
                                       _arity162594162653_
                                       _hd162584162621_))))))
                      (_loop162589162633_ _target162586162627_ '()))))
                 (___match163788163789_
                  (lambda (_e162550162746_
                           _hd162549162750_
                           _tl162548162753_
                           _e162553162756_
                           _hd162552162760_
                           _tl162551162763_
                           _e162556162766_
                           _hd162555162770_
                           _tl162554162773_
                           _e162557162776_
                           ___splice163716163717_
                           _target162558162780_
                           _tl162560162783_)
                    (letrec ((_loop162561162786_
                              (lambda (_hd162559162790_ _arity162565162793_)
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _hd162559162790_))
                                    (let ((_e162562162796_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-e _hd162559162790_))))
                                      (let ((_lp-tl162564162803_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e162562162796_)))
                                            (_lp-hd162563162800_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e162562162796_))))
                                        (_loop162561162786_
                                         _lp-tl162564162803_
                                         (let ()
                                           (declare (not safe))
                                           (cons _lp-hd162563162800_
                                                 _arity162565162793_)))))
                                    (let ((_arity162566162806_
                                           (reverse _arity162565162793_)))
                                      (___kont163714163715_
                                       _arity162566162806_
                                       _hd162552162760_))))))
                      (_loop162561162786_ _target162558162780_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx163709163710_))
                (let ((_e162535162847_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx163709163710_))))
                  (let ((_tl162533162854_
                         (let () (declare (not safe)) (##cdr _e162535162847_)))
                        (_hd162534162851_
                         (let ()
                           (declare (not safe))
                           (##car _e162535162847_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl162533162854_))
                        (let ((_e162538162857_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl162533162854_))))
                          (let ((_tl162536162864_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e162538162857_)))
                                (_hd162537162861_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e162538162857_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl162536162864_))
                                (let ((_e162541162867_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl162536162864_))))
                                  (let ((_tl162539162874_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e162541162867_)))
                                        (_hd162540162871_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e162541162867_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-datum? _hd162540162871_))
                                        (let ((_e162542162877_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e _hd162540162871_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (equal? _e162542162877_
                                                        'unchecked:))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _tl162539162874_))
                                                  (let ((_e162545162881_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#syntax-e
                                                            _tl162539162874_))))
                                                    (let ((_tl162543162888_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e162545162881_)))
                                                          (_hd162544162885_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e162545162881_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _tl162543162888_))
                                                          (___kont163712163713_
                                                           _hd162544162885_
                                                           _hd162537162861_)
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair/null? _tl162539162874_))
                      (let ((___splice163716163717_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl162539162874_ '0))))
                        (let ((_tl162560162783_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice163716163717_ '1)))
                              (_target162558162780_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice163716163717_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl162560162783_))
                              (___match163788163789_
                               _e162535162847_
                               _hd162534162851_
                               _tl162533162854_
                               _e162538162857_
                               _hd162537162861_
                               _tl162536162864_
                               _e162541162867_
                               _hd162540162871_
                               _tl162539162874_
                               _e162542162877_
                               ___splice163716163717_
                               _target162558162780_
                               _tl162560162783_)
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair/null? _tl162536162864_))
                                  (let ((___splice163722163723_
                                         (let ()
                                           (declare (not safe))
                                           (gx#syntax-split-splice
                                            _tl162536162864_
                                            '0))))
                                    (let ((_tl162588162630_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice163722163723_
                                              '1)))
                                          (_target162586162627_
                                           (let ()
                                             (declare (not safe))
                                             (##vector-ref
                                              ___splice163722163723_
                                              '0))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null? _tl162588162630_))
                                          (___match163828163829_
                                           _e162535162847_
                                           _hd162534162851_
                                           _tl162533162854_
                                           _e162538162857_
                                           _hd162537162861_
                                           _tl162536162864_
                                           ___splice163722163723_
                                           _target162586162627_
                                           _tl162588162630_)
                                          (let ()
                                            (declare (not safe))
                                            (_g162529162600_)))))
                                  (let ()
                                    (declare (not safe))
                                    (_g162529162600_))))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair/null? _tl162536162864_))
                          (let ((___splice163722163723_
                                 (let ()
                                   (declare (not safe))
                                   (gx#syntax-split-splice
                                    _tl162536162864_
                                    '0))))
                            (let ((_tl162588162630_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref ___splice163722163723_ '1)))
                                  (_target162586162627_
                                   (let ()
                                     (declare (not safe))
                                     (##vector-ref
                                      ___splice163722163723_
                                      '0))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _tl162588162630_))
                                  (___match163828163829_
                                   _e162535162847_
                                   _hd162534162851_
                                   _tl162533162854_
                                   _e162538162857_
                                   _hd162537162861_
                                   _tl162536162864_
                                   ___splice163722163723_
                                   _target162586162627_
                                   _tl162588162630_)
                                  (let ()
                                    (declare (not safe))
                                    (_g162529162600_)))))
                          (let () (declare (not safe)) (_g162529162600_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl162539162874_))
                                                      (let ((___splice163716163717_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl162539162874_ '0))))
                (let ((_tl162560162783_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice163716163717_ '1)))
                      (_target162558162780_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice163716163717_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl162560162783_))
                      (___match163788163789_
                       _e162535162847_
                       _hd162534162851_
                       _tl162533162854_
                       _e162538162857_
                       _hd162537162861_
                       _tl162536162864_
                       _e162541162867_
                       _hd162540162871_
                       _tl162539162874_
                       _e162542162877_
                       ___splice163716163717_
                       _target162558162780_
                       _tl162560162783_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _tl162539162874_))
                          (___kont163718163719_
                           _hd162540162871_
                           _hd162537162861_)
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl162536162864_))
                              (let ((___splice163722163723_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl162536162864_
                                        '0))))
                                (let ((_tl162588162630_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice163722163723_
                                          '1)))
                                      (_target162586162627_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref
                                          ___splice163722163723_
                                          '0))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl162588162630_))
                                      (___match163828163829_
                                       _e162535162847_
                                       _hd162534162851_
                                       _tl162533162854_
                                       _e162538162857_
                                       _hd162537162861_
                                       _tl162536162864_
                                       ___splice163722163723_
                                       _target162586162627_
                                       _tl162588162630_)
                                      (let ()
                                        (declare (not safe))
                                        (_g162529162600_)))))
                              (let ()
                                (declare (not safe))
                                (_g162529162600_)))))))
              (if (let () (declare (not safe)) (gx#stx-null? _tl162539162874_))
                  (___kont163718163719_ _hd162540162871_ _hd162537162861_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair/null? _tl162536162864_))
                      (let ((___splice163722163723_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-split-splice _tl162536162864_ '0))))
                        (let ((_tl162588162630_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice163722163723_ '1)))
                              (_target162586162627_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref ___splice163722163723_ '0))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-null? _tl162588162630_))
                              (___match163828163829_
                               _e162535162847_
                               _hd162534162851_
                               _tl162533162854_
                               _e162538162857_
                               _hd162537162861_
                               _tl162536162864_
                               ___splice163722163723_
                               _target162586162627_
                               _tl162588162630_)
                              (let ()
                                (declare (not safe))
                                (_g162529162600_)))))
                      (let () (declare (not safe)) (_g162529162600_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _tl162539162874_))
                                                  (___kont163718163719_
                                                   _hd162540162871_
                                                   _hd162537162861_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _tl162536162864_))
                                                      (let ((___splice163722163723_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice _tl162536162864_ '0))))
                (let ((_tl162588162630_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice163722163723_ '1)))
                      (_target162586162627_
                       (let ()
                         (declare (not safe))
                         (##vector-ref ___splice163722163723_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _tl162588162630_))
                      (___match163828163829_
                       _e162535162847_
                       _hd162534162851_
                       _tl162533162854_
                       _e162538162857_
                       _hd162537162861_
                       _tl162536162864_
                       ___splice163722163723_
                       _target162586162627_
                       _tl162588162630_)
                      (let () (declare (not safe)) (_g162529162600_)))))
              (let () (declare (not safe)) (_g162529162600_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl162539162874_))
                                            (___kont163718163719_
                                             _hd162540162871_
                                             _hd162537162861_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _tl162536162864_))
                                                (let ((___splice163722163723_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice
                                                          _tl162536162864_
                                                          '0))))
                                                  (let ((_tl162588162630_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice163722163723_
                                                            '1)))
                                                        (_target162586162627_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            ___splice163722163723_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _tl162588162630_))
                                                        (___match163828163829_
                                                         _e162535162847_
                                                         _hd162534162851_
                                                         _tl162533162854_
                                                         _e162538162857_
                                                         _hd162537162861_
                                                         _tl162536162864_
                                                         ___splice163722163723_
                                                         _target162586162627_
                                                         _tl162588162630_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_g162529162600_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_g162529162600_)))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl162536162864_))
                                    (let ((___splice163722163723_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl162536162864_
                                              '0))))
                                      (let ((_tl162588162630_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice163722163723_
                                                '1)))
                                            (_target162586162627_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice163722163723_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl162588162630_))
                                            (___match163828163829_
                                             _e162535162847_
                                             _hd162534162851_
                                             _tl162533162854_
                                             _e162538162857_
                                             _hd162537162861_
                                             _tl162536162864_
                                             ___splice163722163723_
                                             _target162586162627_
                                             _tl162588162630_)
                                            (let ()
                                              (declare (not safe))
                                              (_g162529162600_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g162529162600_))))))
                        (let () (declare (not safe)) (_g162529162600_)))))
                (let () (declare (not safe)) (_g162529162600_))))))))
  (define |gxc[:0:]#declare-primitive/unchecked|
    (lambda (_$stx162917_)
      (let* ((___stx163831163832_ _$stx162917_)
             (_g162922162957_
              (lambda ()
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   ___stx163831163832_)))))
        (let ((___kont163834163835_
               (lambda (_L163079_ _L163081_)
                 (let ((__tmp164157
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp164152
                        (let ((__tmp164153
                               (let ((__tmp164154
                                      (let ((__tmp164156
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@lambda)))
                                            (__tmp164155
                                             (let ()
                                               (declare (not safe))
                                               (cons _L163079_ '()))))
                                        (declare (not safe))
                                        (cons __tmp164156 __tmp164155))))
                                 (declare (not safe))
                                 (cons __tmp164154 '()))))
                          (declare (not safe))
                          (cons _L163081_ __tmp164153))))
                   (declare (not safe))
                   (cons __tmp164157 __tmp164152))))
              (___kont163836163837_
               (lambda (_L163014_ _L163016_)
                 (let ((__tmp164166
                        (let ()
                          (declare (not safe))
                          (gx#datum->syntax__0 '#f 'declare-type)))
                       (__tmp164158
                        (let ((__tmp164159
                               (let ((__tmp164160
                                      (let ((__tmp164165
                                             (let ()
                                               (declare (not safe))
                                               (gx#datum->syntax__0
                                                '#f
                                                '@case-lambda)))
                                            (__tmp164161
                                             (let ((__tmp164162
                                                    (lambda (_g163033163036_
                                                             _g163034163039_)
                                                      (let ((__tmp164163
                                                             (let ((__tmp164164
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let () (declare (not safe)) (cons '#f '()))))
                       (declare (not safe))
                       (cons _g163033163036_ __tmp164164))))
                (declare (not safe))
                (cons __tmp164163 _g163034163039_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (foldr1 __tmp164162
                                                       '()
                                                       _L163014_))))
                                        (declare (not safe))
                                        (cons __tmp164165 __tmp164161))))
                                 (declare (not safe))
                                 (cons __tmp164160 '()))))
                          (declare (not safe))
                          (cons _L163016_ __tmp164159))))
                   (declare (not safe))
                   (cons __tmp164166 __tmp164158)))))
          (let ((___match163880163881_
                 (lambda (_e162939162964_
                          _hd162938162968_
                          _tl162937162971_
                          _e162942162974_
                          _hd162941162978_
                          _tl162940162981_
                          ___splice163838163839_
                          _target162943162984_
                          _tl162945162987_)
                   (letrec ((_loop162946162990_
                             (lambda (_hd162944162994_ _arity162950162997_)
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _hd162944162994_))
                                   (let ((_e162947163000_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-e _hd162944162994_))))
                                     (let ((_lp-tl162949163007_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e162947163000_)))
                                           (_lp-hd162948163004_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e162947163000_))))
                                       (_loop162946162990_
                                        _lp-tl162949163007_
                                        (let ()
                                          (declare (not safe))
                                          (cons _lp-hd162948163004_
                                                _arity162950162997_)))))
                                   (let ((_arity162951163010_
                                          (reverse _arity162950162997_)))
                                     (___kont163836163837_
                                      _arity162951163010_
                                      _hd162941162978_))))))
                     (_loop162946162990_ _target162943162984_ '())))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? ___stx163831163832_))
                (let ((_e162928163049_
                       (let ()
                         (declare (not safe))
                         (gx#syntax-e ___stx163831163832_))))
                  (let ((_tl162926163056_
                         (let () (declare (not safe)) (##cdr _e162928163049_)))
                        (_hd162927163053_
                         (let ()
                           (declare (not safe))
                           (##car _e162928163049_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _tl162926163056_))
                        (let ((_e162931163059_
                               (let ()
                                 (declare (not safe))
                                 (gx#syntax-e _tl162926163056_))))
                          (let ((_tl162929163066_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e162931163059_)))
                                (_hd162930163063_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e162931163059_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _tl162929163066_))
                                (let ((_e162934163069_
                                       (let ()
                                         (declare (not safe))
                                         (gx#syntax-e _tl162929163066_))))
                                  (let ((_tl162932163076_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e162934163069_)))
                                        (_hd162933163073_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e162934163069_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl162932163076_))
                                        (___kont163834163835_
                                         _hd162933163073_
                                         _hd162930163063_)
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair/null?
                                               _tl162929163066_))
                                            (let ((___splice163838163839_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#syntax-split-splice
                                                      _tl162929163066_
                                                      '0))))
                                              (let ((_tl162945162987_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice163838163839_
                                                        '1)))
                                                    (_target162943162984_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice163838163839_
                                                        '0))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _tl162945162987_))
                                                    (___match163880163881_
                                                     _e162928163049_
                                                     _hd162927163053_
                                                     _tl162926163056_
                                                     _e162931163059_
                                                     _hd162930163063_
                                                     _tl162929163066_
                                                     ___splice163838163839_
                                                     _target162943162984_
                                                     _tl162945162987_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_g162922162957_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_g162922162957_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair/null? _tl162929163066_))
                                    (let ((___splice163838163839_
                                           (let ()
                                             (declare (not safe))
                                             (gx#syntax-split-splice
                                              _tl162929163066_
                                              '0))))
                                      (let ((_tl162945162987_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice163838163839_
                                                '1)))
                                            (_target162943162984_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice163838163839_
                                                '0))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null? _tl162945162987_))
                                            (___match163880163881_
                                             _e162928163049_
                                             _hd162927163053_
                                             _tl162926163056_
                                             _e162931163059_
                                             _hd162930163063_
                                             _tl162929163066_
                                             ___splice163838163839_
                                             _target162943162984_
                                             _tl162945162987_)
                                            (let ()
                                              (declare (not safe))
                                              (_g162922162957_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_g162922162957_))))))
                        (let () (declare (not safe)) (_g162922162957_)))))
                (let () (declare (not safe)) (_g162922162957_))))))))
  (define |gxc[:0:]#declare-primitive*|
    (lambda (_$stx163101_)
      (let* ((_g163105163140_
              (lambda (_g163106163136_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g163106163136_))))
             (_g163104163268_
              (lambda (_g163106163144_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g163106163144_))
                    (let ((_e163111163147_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g163106163144_))))
                      (let ((_hd163110163151_
                             (let ()
                               (declare (not safe))
                               (##car _e163111163147_)))
                            (_tl163109163154_
                             (let ()
                               (declare (not safe))
                               (##cdr _e163111163147_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl163109163154_))
                            (let ((_g164167_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl163109163154_
                                      '0))))
                              (begin
                                (let ((_g164168_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g164167_)
                                             (##vector-length _g164167_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g164168_ 2)))
                                      (error "Context expects 2 values"
                                             _g164168_)))
                                (let ((_target163112163157_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g164167_ 0)))
                                      (_tl163114163160_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g164167_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl163114163160_))
                                      (letrec ((_loop163115163163_
                                                (lambda (_hd163113163167_
                                                         _arity163119163170_
                                                         _prim163120163172_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd163113163167_))
                                                      (let ((_e163116163175_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd163113163167_))))
                (let ((_lp-hd163117163179_
                       (let () (declare (not safe)) (##car _e163116163175_)))
                      (_lp-tl163118163182_
                       (let () (declare (not safe)) (##cdr _e163116163175_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd163117163179_))
                      (let ((_e163125163185_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd163117163179_))))
                        (let ((_hd163124163189_
                               (let ()
                                 (declare (not safe))
                                 (##car _e163125163185_)))
                              (_tl163123163192_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e163125163185_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl163123163192_))
                              (let ((_g164177_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl163123163192_
                                        '0))))
                                (begin
                                  (let ((_g164178_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g164177_)
                                               (##vector-length _g164177_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g164178_ 2)))
                                        (error "Context expects 2 values"
                                               _g164178_)))
                                  (let ((_target163126163195_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g164177_ 0)))
                                        (_tl163128163198_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g164177_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl163128163198_))
                                        (letrec ((_loop163129163201_
                                                  (lambda (_hd163127163205_
                                                           _arity163133163208_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd163127163205_))
                                                        (let ((_e163130163211_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd163127163205_))))
                  (let ((_lp-hd163131163215_
                         (let () (declare (not safe)) (##car _e163130163211_)))
                        (_lp-tl163132163218_
                         (let ()
                           (declare (not safe))
                           (##cdr _e163130163211_))))
                    (_loop163129163201_
                     _lp-tl163132163218_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd163131163215_ _arity163133163208_)))))
                (let ((_arity163134163221_ (reverse _arity163133163208_)))
                  (_loop163115163163_
                   _lp-tl163118163182_
                   (let ()
                     (declare (not safe))
                     (cons _arity163134163221_ _arity163119163170_))
                   (let ()
                     (declare (not safe))
                     (cons _hd163124163189_ _prim163120163172_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop163129163201_
                                           _target163126163195_
                                           '()))
                                        (_g163105163140_ _g163106163144_)))))
                              (_g163105163140_ _g163106163144_))))
                      (_g163105163140_ _g163106163144_))))
              (let ((_arity163121163225_ (reverse _arity163119163170_))
                    (_prim163122163228_ (reverse _prim163120163172_)))
                ((lambda (_L163231_ _L163233_)
                   (let ((__tmp164176
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp164169
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L163231_
                               _L163233_))
                            (let ((__tmp164170
                                   (lambda (_g163248163254_
                                            _g163249163257_
                                            _g163250163259_)
                                     (let ((__tmp164171
                                            (let ((__tmp164175
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive)))
                                                  (__tmp164172
                                                   (let ((__tmp164173
                                                          (let ((__tmp164174
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g163251163262_ _g163252163265_)
                           (let ()
                             (declare (not safe))
                             (cons _g163251163262_ _g163252163265_)))))
                    (declare (not safe))
                    (foldr1 __tmp164174 '() _g163248163254_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g163249163257_
                                                           __tmp164173))))
                                              (declare (not safe))
                                              (cons __tmp164175 __tmp164172))))
                                       (declare (not safe))
                                       (cons __tmp164171 _g163250163259_)))))
                              (declare (not safe))
                              (foldr2 __tmp164170 '() _L163231_ _L163233_)))))
                     (declare (not safe))
                     (cons __tmp164176 __tmp164169)))
                 _arity163121163225_
                 _prim163122163228_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop163115163163_
                                         _target163112163157_
                                         '()
                                         '()))
                                      (_g163105163140_ _g163106163144_)))))
                            (_g163105163140_ _g163106163144_))))
                    (_g163105163140_ _g163106163144_)))))
        (_g163104163268_ _$stx163101_))))
  (define |gxc[:0:]#declare-primitive/unchecked*|
    (lambda (_$stx163274_)
      (let* ((_g163278163313_
              (lambda (_g163279163309_)
                (let ()
                  (declare (not safe))
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid match target"
                   _g163279163309_))))
             (_g163277163441_
              (lambda (_g163279163317_)
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _g163279163317_))
                    (let ((_e163284163320_
                           (let ()
                             (declare (not safe))
                             (gx#syntax-e _g163279163317_))))
                      (let ((_hd163283163324_
                             (let ()
                               (declare (not safe))
                               (##car _e163284163320_)))
                            (_tl163282163327_
                             (let ()
                               (declare (not safe))
                               (##cdr _e163284163320_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair/null? _tl163282163327_))
                            (let ((_g164179_
                                   (let ()
                                     (declare (not safe))
                                     (gx#syntax-split-splice
                                      _tl163282163327_
                                      '0))))
                              (begin
                                (let ((_g164180_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g164179_)
                                             (##vector-length _g164179_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g164180_ 2)))
                                      (error "Context expects 2 values"
                                             _g164180_)))
                                (let ((_target163285163330_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g164179_ 0)))
                                      (_tl163287163333_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g164179_ 1))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _tl163287163333_))
                                      (letrec ((_loop163288163336_
                                                (lambda (_hd163286163340_
                                                         _arity163292163343_
                                                         _prim163293163345_)
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _hd163286163340_))
                                                      (let ((_e163289163348_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-e _hd163286163340_))))
                (let ((_lp-hd163290163352_
                       (let () (declare (not safe)) (##car _e163289163348_)))
                      (_lp-tl163291163355_
                       (let () (declare (not safe)) (##cdr _e163289163348_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _lp-hd163290163352_))
                      (let ((_e163298163358_
                             (let ()
                               (declare (not safe))
                               (gx#syntax-e _lp-hd163290163352_))))
                        (let ((_hd163297163362_
                               (let ()
                                 (declare (not safe))
                                 (##car _e163298163358_)))
                              (_tl163296163365_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e163298163358_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair/null? _tl163296163365_))
                              (let ((_g164189_
                                     (let ()
                                       (declare (not safe))
                                       (gx#syntax-split-splice
                                        _tl163296163365_
                                        '0))))
                                (begin
                                  (let ((_g164190_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g164189_)
                                               (##vector-length _g164189_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g164190_ 2)))
                                        (error "Context expects 2 values"
                                               _g164190_)))
                                  (let ((_target163299163368_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g164189_ 0)))
                                        (_tl163301163371_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g164189_ 1))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _tl163301163371_))
                                        (letrec ((_loop163302163374_
                                                  (lambda (_hd163300163378_
                                                           _arity163306163381_)
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair?
                                                           _hd163300163378_))
                                                        (let ((_e163303163384_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-e _hd163300163378_))))
                  (let ((_lp-hd163304163388_
                         (let () (declare (not safe)) (##car _e163303163384_)))
                        (_lp-tl163305163391_
                         (let ()
                           (declare (not safe))
                           (##cdr _e163303163384_))))
                    (_loop163302163374_
                     _lp-tl163305163391_
                     (let ()
                       (declare (not safe))
                       (cons _lp-hd163304163388_ _arity163306163381_)))))
                (let ((_arity163307163394_ (reverse _arity163306163381_)))
                  (_loop163288163336_
                   _lp-tl163291163355_
                   (let ()
                     (declare (not safe))
                     (cons _arity163307163394_ _arity163292163343_))
                   (let ()
                     (declare (not safe))
                     (cons _hd163297163362_ _prim163293163345_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop163302163374_
                                           _target163299163368_
                                           '()))
                                        (_g163278163313_ _g163279163317_)))))
                              (_g163278163313_ _g163279163317_))))
                      (_g163278163313_ _g163279163317_))))
              (let ((_arity163294163398_ (reverse _arity163292163343_))
                    (_prim163295163401_ (reverse _prim163293163345_)))
                ((lambda (_L163404_ _L163406_)
                   (let ((__tmp164188
                          (let ()
                            (declare (not safe))
                            (gx#datum->syntax__0 '#f 'begin)))
                         (__tmp164181
                          (begin
                            (let ()
                              (declare (not safe))
                              (gx#syntax-check-splice-targets
                               _L163404_
                               _L163406_))
                            (let ((__tmp164182
                                   (lambda (_g163421163427_
                                            _g163422163430_
                                            _g163423163432_)
                                     (let ((__tmp164183
                                            (let ((__tmp164187
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#datum->syntax__0
                                                      '#f
                                                      'declare-primitive/unchecked)))
                                                  (__tmp164184
                                                   (let ((__tmp164185
                                                          (let ((__tmp164186
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (lambda (_g163424163435_ _g163425163438_)
                           (let ()
                             (declare (not safe))
                             (cons _g163424163435_ _g163425163438_)))))
                    (declare (not safe))
                    (foldr1 __tmp164186 '() _g163421163427_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (cons _g163422163430_
                                                           __tmp164185))))
                                              (declare (not safe))
                                              (cons __tmp164187 __tmp164184))))
                                       (declare (not safe))
                                       (cons __tmp164183 _g163423163432_)))))
                              (declare (not safe))
                              (foldr2 __tmp164182 '() _L163404_ _L163406_)))))
                     (declare (not safe))
                     (cons __tmp164188 __tmp164181)))
                 _arity163294163398_
                 _prim163295163401_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop163288163336_
                                         _target163285163330_
                                         '()
                                         '()))
                                      (_g163278163313_ _g163279163317_)))))
                            (_g163278163313_ _g163279163317_))))
                    (_g163278163313_ _g163279163317_)))))
        (_g163277163441_ _$stx163274_)))))
