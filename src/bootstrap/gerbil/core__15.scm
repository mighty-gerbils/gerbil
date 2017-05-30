(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<module-sugar>[:0:]#require|
    (lambda (_$stx27302_)
      (let ((_g2730727326_
             (lambda (_g2730827322_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2730827322_))))
        (let ((_g2730627372_
               (lambda (_g2730827330_)
                 (if (gx#stx-pair? _g2730827330_)
                     (let ((_e2731527333_ (gx#syntax-e _g2730827330_)))
                       (let ((_hd2731627337_ (##car _e2731527333_))
                             (_tl2731727340_ (##cdr _e2731527333_)))
                         (if (gx#stx-pair? _tl2731727340_)
                             (let ((_e2731827343_
                                    (gx#syntax-e _tl2731727340_)))
                               (let ((_hd2731927347_ (##car _e2731827343_))
                                     (_tl2732027350_ (##cdr _e2731827343_)))
                                 ((lambda (_L27353_ _L27355_ _L27356_)
                                    (cons (gx#datum->syntax '#f 'cond-expand)
                                          (cons (cons _L27355_
                                                      (cons (cons _L27356_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L27353_)
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'else)
                                                            (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '#f
                                 'syntax-error)
                                (cons '"Missing required feature"
                                      (cons _L27355_ '())))
                          '()))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _tl2732027350_
                                  _hd2731927347_
                                  _hd2731627337_)))
                             (_g2730727326_ _g2730827330_))))
                     (_g2730727326_ _g2730827330_)))))
          (let ((_g2730527393_
                 (lambda (_g2730827376_)
                   (if (gx#stx-pair? _g2730827376_)
                       (let ((_e2730927379_ (gx#syntax-e _g2730827376_)))
                         (let ((_hd2731027383_ (##car _e2730927379_))
                               (_tl2731127386_ (##cdr _e2730927379_)))
                           (if (gx#stx-null? _tl2731127386_)
                               ((lambda ()
                                  (cons (gx#datum->syntax '#f 'begin) '())))
                               (_g2730627372_ _g2730827376_))))
                       (_g2730627372_ _g2730827376_)))))
            (_g2730527393_ _$stx27302_))))))
  (define |gerbil/core::<module-sugar>[:0:]#defsyntax-for-import|
    (lambda (_$stx27397_)
      (let ((_g2740227442_
             (lambda (_g2740327438_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2740327438_))))
        (let ((_g2740127543_
               (lambda (_g2740327446_)
                 (if (gx#stx-pair? _g2740327446_)
                     (let ((_e2741927449_ (gx#syntax-e _g2740327446_)))
                       (let ((_hd2742027453_ (##car _e2741927449_))
                             (_tl2742127456_ (##cdr _e2741927449_)))
                         (if (gx#stx-pair? _tl2742127456_)
                             (let ((_e2742227459_
                                    (gx#syntax-e _tl2742127456_)))
                               (let ((_hd2742327463_ (##car _e2742227459_))
                                     (_tl2742427466_ (##cdr _e2742227459_)))
                                 (if (gx#stx-pair? _hd2742327463_)
                                     (let ((_e2742527469_
                                            (gx#syntax-e _hd2742327463_)))
                                       (let ((_hd2742627473_
                                              (##car _e2742527469_))
                                             (_tl2742727476_
                                              (##cdr _e2742527469_)))
                                         (if (gx#stx-pair/null? _tl2742427466_)
                                             (if (fx>= (gx#stx-length
                                                        _tl2742427466_)
                                                       '0)
                                                 (let ((_g29530_
                                                        (gx#syntax-split-splice
                                                         _tl2742427466_
                                                         '0)))
                                                   (begin
                                                     (let ((_g29531_
                                                            (values-count
                                                             _g29530_)))
                                                       (if (not (fx= _g29531_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g29531_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2742827479_
                                                            (values-ref
                                                             _g29530_
                                                             0))
                                                           (_tl2743027482_
                                                            (values-ref
                                                             _g29530_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl2743027482_)
                                                           (letrec ((_loop2743127485_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2742927489_ _body2743527492_)
                               (if (gx#stx-pair? _hd2742927489_)
                                   (let ((_e2743227495_
                                          (gx#syntax-e _hd2742927489_)))
                                     (let ((_lp-hd2743327499_
                                            (##car _e2743227495_))
                                           (_lp-tl2743427502_
                                            (##cdr _e2743227495_)))
                                       (_loop2743127485_
                                        _lp-tl2743427502_
                                        (cons _lp-hd2743327499_
                                              _body2743527492_))))
                                   (let ((_body2743627505_
                                          (reverse _body2743527492_)))
                                     ((lambda (_L27509_
                                               _L27511_
                                               _L27512_
                                               _L27513_)
                                        (if (gx#identifier? _L27512_)
                                            (cons _L27513_
                                                  (cons _L27512_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'lambda)
                            (cons _L27511_
                                  (begin
                                    '#!void
                                    (foldr (lambda (_g2753427537_
                                                    _g2753527540_)
                                             (cons _g2753427537_
                                                   _g2753527540_))
                                           '()
                                           _L27509_))))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2740227442_ _g2740327446_)))
                                      _body2743627505_
                                      _tl2742727476_
                                      _hd2742627473_
                                      _hd2742027453_))))))
                     (_loop2743127485_ _target2742827479_ '()))
                   (_g2740227442_ _g2740327446_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2740227442_ _g2740327446_))
                                             (_g2740227442_ _g2740327446_))))
                                     (_g2740227442_ _g2740327446_))))
                             (_g2740227442_ _g2740327446_))))
                     (_g2740227442_ _g2740327446_)))))
          (let ((_g2740027597_
                 (lambda (_g2740327547_)
                   (if (gx#stx-pair? _g2740327547_)
                       (let ((_e2740627550_ (gx#syntax-e _g2740327547_)))
                         (let ((_hd2740727554_ (##car _e2740627550_))
                               (_tl2740827557_ (##cdr _e2740627550_)))
                           (if (gx#stx-pair? _tl2740827557_)
                               (let ((_e2740927560_
                                      (gx#syntax-e _tl2740827557_)))
                                 (let ((_hd2741027564_ (##car _e2740927560_))
                                       (_tl2741127567_ (##cdr _e2740927560_)))
                                   (if (gx#stx-pair? _tl2741127567_)
                                       (let ((_e2741227570_
                                              (gx#syntax-e _tl2741127567_)))
                                         (let ((_hd2741327574_
                                                (##car _e2741227570_))
                                               (_tl2741427577_
                                                (##cdr _e2741227570_)))
                                           (if (gx#stx-null? _tl2741427577_)
                                               ((lambda (_L27580_ _L27582_)
                                                  (if (gx#identifier? _L27582_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'defsyntax)
                                                            (cons _L27582_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax
                                       '#f
                                       'make-import-expander)
                                      (cons _L27580_ '()))
                                '())))
              (_g2740127543_ _g2740327547_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd2741327574_
                                                _hd2741027564_)
                                               (_g2740127543_ _g2740327547_))))
                                       (_g2740127543_ _g2740327547_))))
                               (_g2740127543_ _g2740327547_))))
                       (_g2740127543_ _g2740327547_)))))
            (_g2740027597_ _$stx27397_))))))
  (define |gerbil/core::<module-sugar>[:0:]#defsyntax-for-export|
    (lambda (_$stx27602_)
      (let ((_g2760727647_
             (lambda (_g2760827643_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2760827643_))))
        (let ((_g2760627748_
               (lambda (_g2760827651_)
                 (if (gx#stx-pair? _g2760827651_)
                     (let ((_e2762427654_ (gx#syntax-e _g2760827651_)))
                       (let ((_hd2762527658_ (##car _e2762427654_))
                             (_tl2762627661_ (##cdr _e2762427654_)))
                         (if (gx#stx-pair? _tl2762627661_)
                             (let ((_e2762727664_
                                    (gx#syntax-e _tl2762627661_)))
                               (let ((_hd2762827668_ (##car _e2762727664_))
                                     (_tl2762927671_ (##cdr _e2762727664_)))
                                 (if (gx#stx-pair? _hd2762827668_)
                                     (let ((_e2763027674_
                                            (gx#syntax-e _hd2762827668_)))
                                       (let ((_hd2763127678_
                                              (##car _e2763027674_))
                                             (_tl2763227681_
                                              (##cdr _e2763027674_)))
                                         (if (gx#stx-pair/null? _tl2762927671_)
                                             (if (fx>= (gx#stx-length
                                                        _tl2762927671_)
                                                       '0)
                                                 (let ((_g29532_
                                                        (gx#syntax-split-splice
                                                         _tl2762927671_
                                                         '0)))
                                                   (begin
                                                     (let ((_g29533_
                                                            (values-count
                                                             _g29532_)))
                                                       (if (not (fx= _g29533_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g29533_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2763327684_
                                                            (values-ref
                                                             _g29532_
                                                             0))
                                                           (_tl2763527687_
                                                            (values-ref
                                                             _g29532_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl2763527687_)
                                                           (letrec ((_loop2763627690_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2763427694_ _body2764027697_)
                               (if (gx#stx-pair? _hd2763427694_)
                                   (let ((_e2763727700_
                                          (gx#syntax-e _hd2763427694_)))
                                     (let ((_lp-hd2763827704_
                                            (##car _e2763727700_))
                                           (_lp-tl2763927707_
                                            (##cdr _e2763727700_)))
                                       (_loop2763627690_
                                        _lp-tl2763927707_
                                        (cons _lp-hd2763827704_
                                              _body2764027697_))))
                                   (let ((_body2764127710_
                                          (reverse _body2764027697_)))
                                     ((lambda (_L27714_
                                               _L27716_
                                               _L27717_
                                               _L27718_)
                                        (if (gx#identifier? _L27717_)
                                            (cons _L27718_
                                                  (cons _L27717_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'lambda)
                            (cons _L27716_
                                  (begin
                                    '#!void
                                    (foldr (lambda (_g2773927742_
                                                    _g2774027745_)
                                             (cons _g2773927742_
                                                   _g2774027745_))
                                           '()
                                           _L27714_))))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2760727647_ _g2760827651_)))
                                      _body2764127710_
                                      _tl2763227681_
                                      _hd2763127678_
                                      _hd2762527658_))))))
                     (_loop2763627690_ _target2763327684_ '()))
                   (_g2760727647_ _g2760827651_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2760727647_ _g2760827651_))
                                             (_g2760727647_ _g2760827651_))))
                                     (_g2760727647_ _g2760827651_))))
                             (_g2760727647_ _g2760827651_))))
                     (_g2760727647_ _g2760827651_)))))
          (let ((_g2760527802_
                 (lambda (_g2760827752_)
                   (if (gx#stx-pair? _g2760827752_)
                       (let ((_e2761127755_ (gx#syntax-e _g2760827752_)))
                         (let ((_hd2761227759_ (##car _e2761127755_))
                               (_tl2761327762_ (##cdr _e2761127755_)))
                           (if (gx#stx-pair? _tl2761327762_)
                               (let ((_e2761427765_
                                      (gx#syntax-e _tl2761327762_)))
                                 (let ((_hd2761527769_ (##car _e2761427765_))
                                       (_tl2761627772_ (##cdr _e2761427765_)))
                                   (if (gx#stx-pair? _tl2761627772_)
                                       (let ((_e2761727775_
                                              (gx#syntax-e _tl2761627772_)))
                                         (let ((_hd2761827779_
                                                (##car _e2761727775_))
                                               (_tl2761927782_
                                                (##cdr _e2761727775_)))
                                           (if (gx#stx-null? _tl2761927782_)
                                               ((lambda (_L27785_ _L27787_)
                                                  (if (gx#identifier? _L27787_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'defsyntax)
                                                            (cons _L27787_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax
                                       '#f
                                       'make-export-expander)
                                      (cons _L27785_ '()))
                                '())))
              (_g2760627748_ _g2760827752_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd2761827779_
                                                _hd2761527769_)
                                               (_g2760627748_ _g2760827752_))))
                                       (_g2760627748_ _g2760827752_))))
                               (_g2760627748_ _g2760827752_))))
                       (_g2760627748_ _g2760827752_)))))
            (_g2760527802_ _$stx27602_))))))
  (define |gerbil/core::<module-sugar>[:0:]#only-in|
    (gx#make-import-expander
     (lambda (_stx27807_)
       (let ((_g2781027834_
              (lambda (_g2781127830_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2781127830_))))
         (let ((_g2780927956_
                (lambda (_g2781127838_)
                  (if (gx#stx-pair? _g2781127838_)
                      (let ((_e2781427841_ (gx#syntax-e _g2781127838_)))
                        (let ((_hd2781527845_ (##car _e2781427841_))
                              (_tl2781627848_ (##cdr _e2781427841_)))
                          (if (gx#stx-pair? _tl2781627848_)
                              (let ((_e2781727851_
                                     (gx#syntax-e _tl2781627848_)))
                                (let ((_hd2781827855_ (##car _e2781727851_))
                                      (_tl2781927858_ (##cdr _e2781727851_)))
                                  (if (gx#stx-pair/null? _tl2781927858_)
                                      (if (fx>= (gx#stx-length _tl2781927858_)
                                                '0)
                                          (let ((_g29534_
                                                 (gx#syntax-split-splice
                                                  _tl2781927858_
                                                  '0)))
                                            (begin
                                              (let ((_g29535_
                                                     (values-count _g29534_)))
                                                (if (not (fx= _g29535_ 2))
                                                    (error "Context expects 2 values"
                                                           _g29535_)))
                                              (let ((_target2782027861_
                                                     (values-ref _g29534_ 0))
                                                    (_tl2782227864_
                                                     (values-ref _g29534_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2782227864_)
                                                    (letrec ((_loop2782327867_
                                                              (lambda (_hd2782127871_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _id2782727874_)
                        (if (gx#stx-pair? _hd2782127871_)
                            (let ((_e2782427877_ (gx#syntax-e _hd2782127871_)))
                              (let ((_lp-hd2782527881_ (##car _e2782427877_))
                                    (_lp-tl2782627884_ (##cdr _e2782427877_)))
                                (_loop2782327867_
                                 _lp-tl2782627884_
                                 (cons _lp-hd2782527881_ _id2782727874_))))
                            (let ((_id2782827887_ (reverse _id2782727874_)))
                              ((lambda (_L27891_ _L27893_)
                                 (if (gx#identifier-list?
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g2791027913_
                                                        _g2791127916_)
                                                 (cons _g2791027913_
                                                       _g2791127916_))
                                               '()
                                               _L27891_)))
                                     (let ((_keys27927_
                                            (gx#stx-map
                                             gx#core-identifier-key
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g2791827921_
                                                               _g2791927924_)
                                                        (cons _g2791827921_
                                                              _g2791927924_))
                                                      '()
                                                      _L27891_)))))
                                       (let ((_keytab27938_
                                              (let ((_ht27930_
                                                     (make-hash-table)))
                                                (begin
                                                  (for-each
                                                   (lambda (_g2793227934_)
                                                     (hash-put!
                                                      _ht27930_
                                                      _g2793227934_
                                                      '#t))
                                                   _keys27927_)
                                                  _ht27930_))))
                                         (let ((_imports27941_
                                                (gx#core-expand-import-source
                                                 _L27893_)))
                                           (let ((_fold-e27951_
                                                  (letrec ((_fold-e27944_
                                                            (lambda (_in27947_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _r27949_)
                      (if (gx#module-import? _in27947_)
                          (if (hash-get
                               _keytab27938_
                               (gx#module-import-name _in27947_))
                              (cons _in27947_ _r27949_)
                              _r27949_)
                          (if (gx#import-set? _in27947_)
                              (foldl _fold-e27944_
                                     _r27949_
                                     (gx#import-set-imports _in27947_))
                              _r27949_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _fold-e27944_)))
                                             (let ()
                                               (cons 'begin:
                                                     (foldl _fold-e27951_
                                                            '()
                                                            _imports27941_)))))))
                                     (_g2781027834_ _g2781127838_)))
                               _id2782827887_
                               _hd2781827855_))))))
              (_loop2782327867_ _target2782027861_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2781027834_
                                                     _g2781127838_)))))
                                          (_g2781027834_ _g2781127838_))
                                      (_g2781027834_ _g2781127838_))))
                              (_g2781027834_ _g2781127838_))))
                      (_g2781027834_ _g2781127838_)))))
           (_g2780927956_ _stx27807_))))))
  (define |gerbil/core::<module-sugar>[:0:]#except-in|
    (gx#make-import-expander
     (lambda (_stx27961_)
       (let ((_g2796427988_
              (lambda (_g2796527984_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2796527984_))))
         (let ((_g2796328110_
                (lambda (_g2796527992_)
                  (if (gx#stx-pair? _g2796527992_)
                      (let ((_e2796827995_ (gx#syntax-e _g2796527992_)))
                        (let ((_hd2796927999_ (##car _e2796827995_))
                              (_tl2797028002_ (##cdr _e2796827995_)))
                          (if (gx#stx-pair? _tl2797028002_)
                              (let ((_e2797128005_
                                     (gx#syntax-e _tl2797028002_)))
                                (let ((_hd2797228009_ (##car _e2797128005_))
                                      (_tl2797328012_ (##cdr _e2797128005_)))
                                  (if (gx#stx-pair/null? _tl2797328012_)
                                      (if (fx>= (gx#stx-length _tl2797328012_)
                                                '0)
                                          (let ((_g29536_
                                                 (gx#syntax-split-splice
                                                  _tl2797328012_
                                                  '0)))
                                            (begin
                                              (let ((_g29537_
                                                     (values-count _g29536_)))
                                                (if (not (fx= _g29537_ 2))
                                                    (error "Context expects 2 values"
                                                           _g29537_)))
                                              (let ((_target2797428015_
                                                     (values-ref _g29536_ 0))
                                                    (_tl2797628018_
                                                     (values-ref _g29536_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2797628018_)
                                                    (letrec ((_loop2797728021_
                                                              (lambda (_hd2797528025_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _id2798128028_)
                        (if (gx#stx-pair? _hd2797528025_)
                            (let ((_e2797828031_ (gx#syntax-e _hd2797528025_)))
                              (let ((_lp-hd2797928035_ (##car _e2797828031_))
                                    (_lp-tl2798028038_ (##cdr _e2797828031_)))
                                (_loop2797728021_
                                 _lp-tl2798028038_
                                 (cons _lp-hd2797928035_ _id2798128028_))))
                            (let ((_id2798228041_ (reverse _id2798128028_)))
                              ((lambda (_L28045_ _L28047_)
                                 (if (gx#identifier-list?
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g2806428067_
                                                        _g2806528070_)
                                                 (cons _g2806428067_
                                                       _g2806528070_))
                                               '()
                                               _L28045_)))
                                     (let ((_keys28081_
                                            (gx#stx-map
                                             gx#core-identifier-key
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g2807228075_
                                                               _g2807328078_)
                                                        (cons _g2807228075_
                                                              _g2807328078_))
                                                      '()
                                                      _L28045_)))))
                                       (let ((_keytab28092_
                                              (let ((_ht28084_
                                                     (make-hash-table)))
                                                (begin
                                                  (for-each
                                                   (lambda (_g2808628088_)
                                                     (hash-put!
                                                      _ht28084_
                                                      _g2808628088_
                                                      '#t))
                                                   _keys28081_)
                                                  _ht28084_))))
                                         (let ((_imports28095_
                                                (gx#core-expand-import-source
                                                 _L28047_)))
                                           (let ((_fold-e28105_
                                                  (letrec ((_fold-e28098_
                                                            (lambda (_in28101_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _r28103_)
                      (if (gx#module-import? _in28101_)
                          (if (hash-get
                               _keytab28092_
                               (gx#module-import-name _in28101_))
                              _r28103_
                              (cons _in28101_ _r28103_))
                          (if (gx#import-set? _in28101_)
                              (foldl _fold-e28098_
                                     _r28103_
                                     (gx#import-set-imports _in28101_))
                              (cons _in28101_ _r28103_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _fold-e28098_)))
                                             (let ()
                                               (cons 'begin:
                                                     (foldl _fold-e28105_
                                                            '()
                                                            _imports28095_)))))))
                                     (_g2796427988_ _g2796527992_)))
                               _id2798228041_
                               _hd2797228009_))))))
              (_loop2797728021_ _target2797428015_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2796427988_
                                                     _g2796527992_)))))
                                          (_g2796427988_ _g2796527992_))
                                      (_g2796427988_ _g2796527992_))))
                              (_g2796427988_ _g2796527992_))))
                      (_g2796427988_ _g2796527992_)))))
           (_g2796328110_ _stx27961_))))))
  (define |gerbil/core::<module-sugar>[1]#module-import-rename|
    (lambda (_in28162_ _rename28164_)
      (gx#make-module-import
       (gx#module-import-source _in28162_)
       _rename28164_
       (gx#module-import-phi _in28162_)
       (gx#module-import-weak? _in28162_))))
  (define |gerbil/core::<module-sugar>[1]#prefix-identifier-key|
    (lambda (_name28115_ _pre28117_)
      (let ((_name2811828126_ _name28115_))
        (let ((_E2812128132_
               (lambda () (error '"No clause matching" _name2811828126_))))
          (let ((_else2812028138_
                 (lambda () (make-symbol _pre28117_ _name28115_))))
            (let ((_K2812228146_
                   (lambda (_mark28142_ _id28144_)
                     (cons (make-symbol _pre28117_ _id28144_) _mark28142_))))
              (if (##pair? _name2811828126_)
                  (let ((_hd2812328150_ (##car _name2811828126_))
                        (_tl2812428153_ (##cdr _name2811828126_)))
                    (let ((_id28156_ _hd2812328150_))
                      (let ((_mark28159_ _tl2812428153_))
                        (_K2812228146_ _mark28159_ _id28156_))))
                  (_else2812028138_))))))))
  (define |gerbil/core::<module-sugar>[:0:]#rename-in|
    (gx#make-import-expander
     (lambda (_stx28166_)
       (let ((_g2816928202_
              (lambda (_g2817028198_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2817028198_))))
         (let ((_g2816828388_
                (lambda (_g2817028206_)
                  (if (gx#stx-pair? _g2817028206_)
                      (let ((_e2817428209_ (gx#syntax-e _g2817028206_)))
                        (let ((_hd2817528213_ (##car _e2817428209_))
                              (_tl2817628216_ (##cdr _e2817428209_)))
                          (if (gx#stx-pair? _tl2817628216_)
                              (let ((_e2817728219_
                                     (gx#syntax-e _tl2817628216_)))
                                (let ((_hd2817828223_ (##car _e2817728219_))
                                      (_tl2817928226_ (##cdr _e2817728219_)))
                                  (if (gx#stx-pair/null? _tl2817928226_)
                                      (if (fx>= (gx#stx-length _tl2817928226_)
                                                '0)
                                          (let ((_g29538_
                                                 (gx#syntax-split-splice
                                                  _tl2817928226_
                                                  '0)))
                                            (begin
                                              (let ((_g29539_
                                                     (values-count _g29538_)))
                                                (if (not (fx= _g29539_ 2))
                                                    (error "Context expects 2 values"
                                                           _g29539_)))
                                              (let ((_target2818028229_
                                                     (values-ref _g29538_ 0))
                                                    (_tl2818228232_
                                                     (values-ref _g29538_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2818228232_)
                                                    (letrec ((_loop2818328235_
                                                              (lambda (_hd2818128239_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _new-id2818728242_
                               _id2818828244_)
                        (if (gx#stx-pair? _hd2818128239_)
                            (let ((_e2818428247_ (gx#syntax-e _hd2818128239_)))
                              (let ((_lp-hd2818528251_ (##car _e2818428247_))
                                    (_lp-tl2818628254_ (##cdr _e2818428247_)))
                                (if (gx#stx-pair? _lp-hd2818528251_)
                                    (let ((_e2819128257_
                                           (gx#syntax-e _lp-hd2818528251_)))
                                      (let ((_hd2819228261_
                                             (##car _e2819128257_))
                                            (_tl2819328264_
                                             (##cdr _e2819128257_)))
                                        (if (gx#stx-pair? _tl2819328264_)
                                            (let ((_e2819428267_
                                                   (gx#syntax-e
                                                    _tl2819328264_)))
                                              (let ((_hd2819528271_
                                                     (##car _e2819428267_))
                                                    (_tl2819628274_
                                                     (##cdr _e2819428267_)))
                                                (if (gx#stx-null?
                                                     _tl2819628274_)
                                                    (_loop2818328235_
                                                     _lp-tl2818628254_
                                                     (cons _hd2819528271_
                                                           _new-id2818728242_)
                                                     (cons _hd2819228261_
                                                           _id2818828244_))
                                                    (_g2816928202_
                                                     _g2817028206_))))
                                            (_g2816928202_ _g2817028206_))))
                                    (_g2816928202_ _g2817028206_))))
                            (let ((_new-id2818928277_
                                   (reverse _new-id2818728242_))
                                  (_id2819028280_ (reverse _id2818828244_)))
                              ((lambda (_L28283_ _L28285_ _L28286_)
                                 (if (if (gx#identifier-list?
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g2830428307_
                                                            _g2830528310_)
                                                     (cons _g2830428307_
                                                           _g2830528310_))
                                                   '()
                                                   _L28285_)))
                                         (gx#identifier-list?
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g2831228315_
                                                            _g2831328318_)
                                                     (cons _g2831228315_
                                                           _g2831328318_))
                                                   '()
                                                   _L28283_)))
                                         '#f)
                                     (let ((_keytab28321_ (make-hash-table)))
                                       (let ((_found28324_ (make-hash-table)))
                                         (let ((_g29540_
                                                (for-each
                                                 (lambda (_id28327_
                                                          _new-id28329_)
                                                   (hash-put!
                                                    _keytab28321_
                                                    (gx#core-identifier-key
                                                     _id28327_)
                                                    (gx#core-identifier-key
                                                     _new-id28329_)))
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g2833028333_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2833128336_)
                    (cons _g2833028333_ _g2833128336_))
                  '()
                  _L28285_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g2833828341_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2833928344_)
                    (cons _g2833828341_ _g2833928344_))
                  '()
                  _L28283_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ((_imports28349_
                                                  (gx#core-expand-import-source
                                                   _L28286_)))
                                             (let ((_fold-e28369_
                                                    (letrec ((_fold-e28352_
                                                              (lambda (_in28355_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _r28357_)
                        (if (gx#module-import? _in28355_)
                            (let ((_name28359_
                                   (gx#module-import-name _in28355_)))
                              (let ((_$e28362_
                                     (hash-get _keytab28321_ _name28359_)))
                                (if _$e28362_
                                    ((lambda (_rename28366_)
                                       (begin
                                         (hash-put!
                                          _found28324_
                                          _name28359_
                                          '#t)
                                         (cons (|gerbil/core::<module-sugar>[1]#module-import-rename|
                                                _in28355_
                                                _rename28366_)
                                               _r28357_)))
                                     _$e28362_)
                                    (cons _in28355_ _r28357_))))
                            (if (gx#import-set? _in28355_)
                                (foldl _fold-e28352_
                                       _r28357_
                                       (gx#import-set-imports _in28355_))
                                (cons _in28355_ _r28357_))))))
              _fold-e28352_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_new-imports28372_
                                                      (foldl _fold-e28369_
                                                             '()
                                                             _imports28349_)))
                                                 (let ()
                                                   (begin
                                                     (for-each
                                                      (lambda (_id28377_)
                                                        (if (hash-get
                                                             _found28324_
                                                             (gx#core-identifier-key
                                                              _id28377_))
                                                            '#!void
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; identifier is not in the import set"
                                                             _stx28166_
                                                             _id28377_)))
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g2837928382_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g2838028385_)
                         (cons _g2837928382_ _g2838028385_))
                       '()
                       _L28285_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons 'begin:
                                                           _new-imports28372_)))))))))
                                     (_g2816928202_ _g2817028206_)))
                               _new-id2818928277_
                               _id2819028280_
                               _hd2817828223_))))))
              (_loop2818328235_ _target2818028229_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2816928202_
                                                     _g2817028206_)))))
                                          (_g2816928202_ _g2817028206_))
                                      (_g2816928202_ _g2817028206_))))
                              (_g2816928202_ _g2817028206_))))
                      (_g2816928202_ _g2817028206_)))))
           (_g2816828388_ _stx28166_))))))
  (define |gerbil/core::<module-sugar>[:0:]#prefix-in|
    (gx#make-import-expander
     (lambda (_stx28394_)
       (let ((_g2839728415_
              (lambda (_g2839828411_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2839828411_))))
         (let ((_g2839628494_
                (lambda (_g2839828419_)
                  (if (gx#stx-pair? _g2839828419_)
                      (let ((_e2840128422_ (gx#syntax-e _g2839828419_)))
                        (let ((_hd2840228426_ (##car _e2840128422_))
                              (_tl2840328429_ (##cdr _e2840128422_)))
                          (if (gx#stx-pair? _tl2840328429_)
                              (let ((_e2840428432_
                                     (gx#syntax-e _tl2840328429_)))
                                (let ((_hd2840528436_ (##car _e2840428432_))
                                      (_tl2840628439_ (##cdr _e2840428432_)))
                                  (if (gx#stx-pair? _tl2840628439_)
                                      (let ((_e2840728442_
                                             (gx#syntax-e _tl2840628439_)))
                                        (let ((_hd2840828446_
                                               (##car _e2840728442_))
                                              (_tl2840928449_
                                               (##cdr _e2840728442_)))
                                          (if (gx#stx-null? _tl2840928449_)
                                              ((lambda (_L28452_ _L28454_)
                                                 (if (gx#identifier? _L28452_)
                                                     (let ((_pre28470_
                                                            (gx#stx-e
                                                             _L28452_)))
                                                       (let ((_imports28473_
                                                              (gx#core-expand-import-source
                                                               _L28454_)))
                                                         (let ((_rename-e28479_
                                                                (lambda (_name28476_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (|gerbil/core::<module-sugar>[1]#prefix-identifier-key|
                           _name28476_
                           _pre28470_))))
                   (let ((_fold-e28489_
                          (letrec ((_fold-e28482_
                                    (lambda (_in28485_ _r28487_)
                                      (if (gx#module-import? _in28485_)
                                          (cons (|gerbil/core::<module-sugar>[1]#module-import-rename|
                                                 _in28485_
                                                 (_rename-e28479_
                                                  (gx#module-import-name
                                                   _in28485_)))
                                                _r28487_)
                                          (if (gx#import-set? _in28485_)
                                              (foldl _fold-e28482_
                                                     _r28487_
                                                     (gx#import-set-imports
                                                      _in28485_))
                                              (cons _in28485_ _r28487_))))))
                            _fold-e28482_)))
                     (let ()
                       (cons 'begin:
                             (foldl _fold-e28489_ '() _imports28473_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2839728415_
                                                      _g2839828419_)))
                                               _hd2840828446_
                                               _hd2840528436_)
                                              (_g2839728415_ _g2839828419_))))
                                      (_g2839728415_ _g2839828419_))))
                              (_g2839728415_ _g2839828419_))))
                      (_g2839728415_ _g2839828419_)))))
           (_g2839628494_ _stx28394_))))))
  (define |gerbil/core::<module-sugar>[:0:]#except-out|
    (gx#make-export-expander
     (lambda (_stx28498_)
       (let ((_g2850128525_
              (lambda (_g2850228521_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2850228521_))))
         (let ((_g2850028647_
                (lambda (_g2850228529_)
                  (if (gx#stx-pair? _g2850228529_)
                      (let ((_e2850528532_ (gx#syntax-e _g2850228529_)))
                        (let ((_hd2850628536_ (##car _e2850528532_))
                              (_tl2850728539_ (##cdr _e2850528532_)))
                          (if (gx#stx-pair? _tl2850728539_)
                              (let ((_e2850828542_
                                     (gx#syntax-e _tl2850728539_)))
                                (let ((_hd2850928546_ (##car _e2850828542_))
                                      (_tl2851028549_ (##cdr _e2850828542_)))
                                  (if (gx#stx-pair/null? _tl2851028549_)
                                      (if (fx>= (gx#stx-length _tl2851028549_)
                                                '0)
                                          (let ((_g29541_
                                                 (gx#syntax-split-splice
                                                  _tl2851028549_
                                                  '0)))
                                            (begin
                                              (let ((_g29542_
                                                     (values-count _g29541_)))
                                                (if (not (fx= _g29542_ 2))
                                                    (error "Context expects 2 values"
                                                           _g29542_)))
                                              (let ((_target2851128552_
                                                     (values-ref _g29541_ 0))
                                                    (_tl2851328555_
                                                     (values-ref _g29541_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2851328555_)
                                                    (letrec ((_loop2851428558_
                                                              (lambda (_hd2851228562_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _id2851828565_)
                        (if (gx#stx-pair? _hd2851228562_)
                            (let ((_e2851528568_ (gx#syntax-e _hd2851228562_)))
                              (let ((_lp-hd2851628572_ (##car _e2851528568_))
                                    (_lp-tl2851728575_ (##cdr _e2851528568_)))
                                (_loop2851428558_
                                 _lp-tl2851728575_
                                 (cons _lp-hd2851628572_ _id2851828565_))))
                            (let ((_id2851928578_ (reverse _id2851828565_)))
                              ((lambda (_L28582_ _L28584_)
                                 (if (gx#identifier-list?
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g2860128604_
                                                        _g2860228607_)
                                                 (cons _g2860128604_
                                                       _g2860228607_))
                                               '()
                                               _L28582_)))
                                     (let ((_keys28618_
                                            (gx#stx-map
                                             gx#core-identifier-key
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g2860928612_
                                                               _g2861028615_)
                                                        (cons _g2860928612_
                                                              _g2861028615_))
                                                      '()
                                                      _L28582_)))))
                                       (let ((_keytab28629_
                                              (let ((_ht28621_
                                                     (make-hash-table)))
                                                (begin
                                                  (for-each
                                                   (lambda (_g2862328625_)
                                                     (hash-put!
                                                      _ht28621_
                                                      _g2862328625_
                                                      '#t))
                                                   _keys28618_)
                                                  _ht28621_))))
                                         (let ((_exports28632_
                                                (gx#core-expand-export-source
                                                 _L28584_)))
                                           (let ((_fold-e28642_
                                                  (letrec ((_fold-e28635_
                                                            (lambda (_out28638_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _r28640_)
                      (if (gx#module-export? _out28638_)
                          (if (hash-get
                               _keytab28629_
                               (gx#module-export-name _out28638_))
                              _r28640_
                              (cons _out28638_ _r28640_))
                          (if (gx#export-set? _out28638_)
                              (foldl _fold-e28635_
                                     _r28640_
                                     (gx#export-set-exports _out28638_))
                              _r28640_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _fold-e28635_)))
                                             (let ()
                                               (cons 'begin:
                                                     (foldl _fold-e28642_
                                                            '()
                                                            _exports28632_)))))))
                                     (_g2850128525_ _g2850228529_)))
                               _id2851928578_
                               _hd2850928546_))))))
              (_loop2851428558_ _target2851128552_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2850128525_
                                                     _g2850228529_)))))
                                          (_g2850128525_ _g2850228529_))
                                      (_g2850128525_ _g2850228529_))))
                              (_g2850128525_ _g2850228529_))))
                      (_g2850128525_ _g2850228529_)))))
           (_g2850028647_ _stx28498_))))))
  (define |gerbil/core::<module-sugar>[1]#module-export-rename|
    (lambda (_out28652_ _rename28654_)
      (gx#make-module-export
       (gx#module-export-context _out28652_)
       (gx#module-export-key _out28652_)
       (gx#module-export-phi _out28652_)
       _rename28654_
       (gx#module-export-weak? _out28652_))))
  (define |gerbil/core::<module-sugar>[:0:]#rename-out|
    (gx#make-export-expander
     (lambda (_stx28656_)
       (let ((_g2865928692_
              (lambda (_g2866028688_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2866028688_))))
         (let ((_g2865828878_
                (lambda (_g2866028696_)
                  (if (gx#stx-pair? _g2866028696_)
                      (let ((_e2866428699_ (gx#syntax-e _g2866028696_)))
                        (let ((_hd2866528703_ (##car _e2866428699_))
                              (_tl2866628706_ (##cdr _e2866428699_)))
                          (if (gx#stx-pair? _tl2866628706_)
                              (let ((_e2866728709_
                                     (gx#syntax-e _tl2866628706_)))
                                (let ((_hd2866828713_ (##car _e2866728709_))
                                      (_tl2866928716_ (##cdr _e2866728709_)))
                                  (if (gx#stx-pair/null? _tl2866928716_)
                                      (if (fx>= (gx#stx-length _tl2866928716_)
                                                '0)
                                          (let ((_g29543_
                                                 (gx#syntax-split-splice
                                                  _tl2866928716_
                                                  '0)))
                                            (begin
                                              (let ((_g29544_
                                                     (values-count _g29543_)))
                                                (if (not (fx= _g29544_ 2))
                                                    (error "Context expects 2 values"
                                                           _g29544_)))
                                              (let ((_target2867028719_
                                                     (values-ref _g29543_ 0))
                                                    (_tl2867228722_
                                                     (values-ref _g29543_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2867228722_)
                                                    (letrec ((_loop2867328725_
                                                              (lambda (_hd2867128729_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _new-id2867728732_
                               _id2867828734_)
                        (if (gx#stx-pair? _hd2867128729_)
                            (let ((_e2867428737_ (gx#syntax-e _hd2867128729_)))
                              (let ((_lp-hd2867528741_ (##car _e2867428737_))
                                    (_lp-tl2867628744_ (##cdr _e2867428737_)))
                                (if (gx#stx-pair? _lp-hd2867528741_)
                                    (let ((_e2868128747_
                                           (gx#syntax-e _lp-hd2867528741_)))
                                      (let ((_hd2868228751_
                                             (##car _e2868128747_))
                                            (_tl2868328754_
                                             (##cdr _e2868128747_)))
                                        (if (gx#stx-pair? _tl2868328754_)
                                            (let ((_e2868428757_
                                                   (gx#syntax-e
                                                    _tl2868328754_)))
                                              (let ((_hd2868528761_
                                                     (##car _e2868428757_))
                                                    (_tl2868628764_
                                                     (##cdr _e2868428757_)))
                                                (if (gx#stx-null?
                                                     _tl2868628764_)
                                                    (_loop2867328725_
                                                     _lp-tl2867628744_
                                                     (cons _hd2868528761_
                                                           _new-id2867728732_)
                                                     (cons _hd2868228751_
                                                           _id2867828734_))
                                                    (_g2865928692_
                                                     _g2866028696_))))
                                            (_g2865928692_ _g2866028696_))))
                                    (_g2865928692_ _g2866028696_))))
                            (let ((_new-id2867928767_
                                   (reverse _new-id2867728732_))
                                  (_id2868028770_ (reverse _id2867828734_)))
                              ((lambda (_L28773_ _L28775_ _L28776_)
                                 (if (if (gx#identifier-list?
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g2879428797_
                                                            _g2879528800_)
                                                     (cons _g2879428797_
                                                           _g2879528800_))
                                                   '()
                                                   _L28775_)))
                                         (gx#identifier-list?
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g2880228805_
                                                            _g2880328808_)
                                                     (cons _g2880228805_
                                                           _g2880328808_))
                                                   '()
                                                   _L28773_)))
                                         '#f)
                                     (let ((_keytab28811_ (make-hash-table)))
                                       (let ((_found28814_ (make-hash-table)))
                                         (let ((_g29545_
                                                (for-each
                                                 (lambda (_id28817_
                                                          _new-id28819_)
                                                   (hash-put!
                                                    _keytab28811_
                                                    (gx#core-identifier-key
                                                     _id28817_)
                                                    (gx#core-identifier-key
                                                     _new-id28819_)))
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g2882028823_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2882128826_)
                    (cons _g2882028823_ _g2882128826_))
                  '()
                  _L28775_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g2882828831_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2882928834_)
                    (cons _g2882828831_ _g2882928834_))
                  '()
                  _L28773_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ((_exports28839_
                                                  (gx#core-expand-export-source
                                                   _L28776_)))
                                             (let ((_fold-e28859_
                                                    (letrec ((_fold-e28842_
                                                              (lambda (_out28845_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _r28847_)
                        (if (gx#module-export? _out28845_)
                            (let ((_name28849_
                                   (gx#module-export-name _out28845_)))
                              (let ((_$e28852_
                                     (hash-get _keytab28811_ _name28849_)))
                                (if _$e28852_
                                    ((lambda (_rename28856_)
                                       (begin
                                         (hash-put!
                                          _found28814_
                                          _name28849_
                                          '#t)
                                         (cons (|gerbil/core::<module-sugar>[1]#module-export-rename|
                                                _out28845_
                                                _rename28856_)
                                               _r28847_)))
                                     _$e28852_)
                                    (cons _out28845_ _r28847_))))
                            (if (gx#export-set? _out28845_)
                                (foldl _fold-e28842_
                                       _r28847_
                                       (gx#export-set-exports _out28845_))
                                (cons _out28845_ _r28847_))))))
              _fold-e28842_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_new-exports28862_
                                                      (foldl _fold-e28859_
                                                             '()
                                                             _exports28839_)))
                                                 (let ()
                                                   (begin
                                                     (for-each
                                                      (lambda (_id28867_)
                                                        (if (hash-get
                                                             _found28814_
                                                             (gx#core-identifier-key
                                                              _id28867_))
                                                            '#!void
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; identifier is not in the export set"
                                                             _stx28656_
                                                             _id28867_)))
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g2886928872_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g2887028875_)
                         (cons _g2886928872_ _g2887028875_))
                       '()
                       _L28775_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons 'begin:
                                                           _new-exports28862_)))))))))
                                     (_g2865928692_ _g2866028696_)))
                               _new-id2867928767_
                               _id2868028770_
                               _hd2866828713_))))))
              (_loop2867328725_ _target2867028719_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2865928692_
                                                     _g2866028696_)))))
                                          (_g2865928692_ _g2866028696_))
                                      (_g2865928692_ _g2866028696_))))
                              (_g2865928692_ _g2866028696_))))
                      (_g2865928692_ _g2866028696_)))))
           (_g2865828878_ _stx28656_))))))
  (define |gerbil/core::<module-sugar>[:0:]#prefix-out|
    (gx#make-export-expander
     (lambda (_stx28884_)
       (let ((_g2888728905_
              (lambda (_g2888828901_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2888828901_))))
         (let ((_g2888628984_
                (lambda (_g2888828909_)
                  (if (gx#stx-pair? _g2888828909_)
                      (let ((_e2889128912_ (gx#syntax-e _g2888828909_)))
                        (let ((_hd2889228916_ (##car _e2889128912_))
                              (_tl2889328919_ (##cdr _e2889128912_)))
                          (if (gx#stx-pair? _tl2889328919_)
                              (let ((_e2889428922_
                                     (gx#syntax-e _tl2889328919_)))
                                (let ((_hd2889528926_ (##car _e2889428922_))
                                      (_tl2889628929_ (##cdr _e2889428922_)))
                                  (if (gx#stx-pair? _tl2889628929_)
                                      (let ((_e2889728932_
                                             (gx#syntax-e _tl2889628929_)))
                                        (let ((_hd2889828936_
                                               (##car _e2889728932_))
                                              (_tl2889928939_
                                               (##cdr _e2889728932_)))
                                          (if (gx#stx-null? _tl2889928939_)
                                              ((lambda (_L28942_ _L28944_)
                                                 (if (gx#identifier? _L28942_)
                                                     (let ((_pre28960_
                                                            (gx#stx-e
                                                             _L28942_)))
                                                       (let ((_exports28963_
                                                              (gx#core-expand-export-source
                                                               _L28944_)))
                                                         (let ((_rename-e28969_
                                                                (lambda (_name28966_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (|gerbil/core::<module-sugar>[1]#prefix-identifier-key|
                           _name28966_
                           _pre28960_))))
                   (let ((_fold-e28979_
                          (letrec ((_fold-e28972_
                                    (lambda (_out28975_ _r28977_)
                                      (if (gx#module-export? _out28975_)
                                          (cons (|gerbil/core::<module-sugar>[1]#module-export-rename|
                                                 _out28975_
                                                 (_rename-e28969_
                                                  (gx#module-export-name
                                                   _out28975_)))
                                                _r28977_)
                                          (if (gx#export-set? _out28975_)
                                              (foldl _fold-e28972_
                                                     _r28977_
                                                     (gx#export-set-exports
                                                      _out28975_))
                                              (cons _out28975_ _r28977_))))))
                            _fold-e28972_)))
                     (let ()
                       (cons 'begin:
                             (foldl _fold-e28979_ '() _exports28963_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2888728905_
                                                      _g2888828909_)))
                                               _hd2889828936_
                                               _hd2889528926_)
                                              (_g2888728905_ _g2888828909_))))
                                      (_g2888728905_ _g2888828909_))))
                              (_g2888728905_ _g2888828909_))))
                      (_g2888728905_ _g2888828909_)))))
           (_g2888628984_ _stx28884_))))))
  (define |gerbil/core::<module-sugar>[:0:]#struct-out|
    (gx#make-export-expander
     (lambda (_stx28988_)
       (let ((_g2899129011_
              (lambda (_g2899229007_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2899229007_))))
         (let ((_g2899029246_
                (lambda (_g2899229015_)
                  (if (gx#stx-pair? _g2899229015_)
                      (let ((_e2899429018_ (gx#syntax-e _g2899229015_)))
                        (let ((_hd2899529022_ (##car _e2899429018_))
                              (_tl2899629025_ (##cdr _e2899429018_)))
                          (if (gx#stx-pair/null? _tl2899629025_)
                              (if (fx>= (gx#stx-length _tl2899629025_) '0)
                                  (let ((_g29546_
                                         (gx#syntax-split-splice
                                          _tl2899629025_
                                          '0)))
                                    (begin
                                      (let ((_g29547_ (values-count _g29546_)))
                                        (if (not (fx= _g29547_ 2))
                                            (error "Context expects 2 values"
                                                   _g29547_)))
                                      (let ((_target2899729028_
                                             (values-ref _g29546_ 0))
                                            (_tl2899929031_
                                             (values-ref _g29546_ 1)))
                                        (if (gx#stx-null? _tl2899929031_)
                                            (letrec ((_loop2900029034_
                                                      (lambda (_hd2899829038_
                                                               _id2900429041_)
                                                        (if (gx#stx-pair?
                                                             _hd2899829038_)
                                                            (let ((_e2900129044_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _hd2899829038_)))
                      (let ((_lp-hd2900229048_ (##car _e2900129044_))
                            (_lp-tl2900329051_ (##cdr _e2900129044_)))
                        (_loop2900029034_
                         _lp-tl2900329051_
                         (cons _lp-hd2900229048_ _id2900429041_))))
                    (let ((_id2900529054_ (reverse _id2900429041_)))
                      ((lambda (_L29058_)
                         ((letrec ((_lp29074_
                                    (lambda (_rest29077_ _ids29079_)
                                      (let ((_g2908229094_
                                             (lambda (_g2908329090_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2908329090_))))
                                        (let ((_g2908129105_
                                               (lambda (_g2908329098_)
                                                 ((lambda ()
                                                    (cons 'begin:
                                                          _ids29079_))))))
                                          (let ((_g2908029234_
                                                 (lambda (_g2908329109_)
                                                   (if (gx#stx-pair?
                                                        _g2908329109_)
                                                       (let ((_e2908629112_
                                                              (gx#syntax-e
                                                               _g2908329109_)))
                                                         (let ((_hd2908729116_
                                                                (##car _e2908629112_))
                                                               (_tl2908829119_
                                                                (##cdr _e2908629112_)))
                                                           ((lambda (_L29122_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L29124_)
                      (let ((_info29139_
                             (gx#syntax-local-value _L29124_ false)))
                        (if (|gerbil/core::<MOP>::<MOP:2>[1]#expander-type-info?|
                             _info29139_)
                            (let ((_g2914129158_
                                   (slot-ref
                                    _info29139_
                                    'expander-identifiers)))
                              (let ((_E2914329164_
                                     (lambda ()
                                       (error '"No clause matching"
                                              _g2914129158_))))
                                (let ((_K2914429176_
                                       (lambda (_setf29168_
                                                _getf29170_
                                                _type?29171_
                                                _make-type29172_
                                                _type::t29173_
                                                _super29174_)
                                         (_lp29074_
                                          _L29122_
                                          (cons _L29124_
                                                (cons _type::t29173_
                                                      (cons _make-type29172_
                                                            (cons _type?29171_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (foldr cons
                                 (foldr cons _ids29079_ _setf29168_)
                                 _getf29170_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (##pair? _g2914129158_)
                                      (let ((_hd2914529180_
                                             (##car _g2914129158_))
                                            (_tl2914629183_
                                             (##cdr _g2914129158_)))
                                        (let ((_super29186_ _hd2914529180_))
                                          (if (##pair? _tl2914629183_)
                                              (let ((_hd2914729189_
                                                     (##car _tl2914629183_))
                                                    (_tl2914829192_
                                                     (##cdr _tl2914629183_)))
                                                (let ((_type::t29195_
                                                       _hd2914729189_))
                                                  (if (##pair? _tl2914829192_)
                                                      (let ((_hd2914929198_
                                                             (##car _tl2914829192_))
                                                            (_tl2915029201_
                                                             (##cdr _tl2914829192_)))
                                                        (let ((_make-type29204_
                                                               _hd2914929198_))
                                                          (if (##pair? _tl2915029201_)
                                                              (let ((_hd2915129207_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##car _tl2915029201_))
                            (_tl2915229210_ (##cdr _tl2915029201_)))
                        (let ((_type?29213_ _hd2915129207_))
                          (if (##pair? _tl2915229210_)
                              (let ((_hd2915329216_ (##car _tl2915229210_))
                                    (_tl2915429219_ (##cdr _tl2915229210_)))
                                (let ((_getf29222_ _hd2915329216_))
                                  (if (##pair? _tl2915429219_)
                                      (let ((_hd2915529225_
                                             (##car _tl2915429219_))
                                            (_tl2915629228_
                                             (##cdr _tl2915429219_)))
                                        (let ((_setf29231_ _hd2915529225_))
                                          (if (##null? _tl2915629228_)
                                              (_K2914429176_
                                               _setf29231_
                                               _getf29222_
                                               _type?29213_
                                               _make-type29204_
                                               _type::t29195_
                                               _super29186_)
                                              (_E2914329164_))))
                                      (_E2914329164_))))
                              (_E2914329164_))))
                      (_E2914329164_))))
              (_E2914329164_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E2914329164_))))
                                      (_E2914329164_)))))
                            (gx#raise-syntax-error
                             '#f
                             '"Incomplete type info"
                             _stx28988_
                             _L29124_))))
                    _tl2908829119_
                    _hd2908729116_)))
               (_g2908129105_ _g2908329109_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2908029234_ _rest29077_)))))))
                            _lp29074_)
                          (begin
                            '#!void
                            (foldr (lambda (_g2923729240_ _g2923829243_)
                                     (cons _g2923729240_ _g2923829243_))
                                   '()
                                   _L29058_))
                          '()))
                       _id2900529054_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop2900029034_
                                               _target2899729028_
                                               '()))
                                            (_g2899129011_ _g2899229015_)))))
                                  (_g2899129011_ _g2899229015_))
                              (_g2899129011_ _g2899229015_))))
                      (_g2899129011_ _g2899229015_)))))
           (_g2899029246_ _stx28988_)))))))
