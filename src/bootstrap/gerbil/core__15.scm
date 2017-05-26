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
                                                 (let ((_g28657_
                                                        (gx#syntax-split-splice
                                                         _tl2742427466_
                                                         '0)))
                                                   (begin
                                                     (let ((_g28658_
                                                            (values-count
                                                             _g28657_)))
                                                       (if (not (fx= _g28658_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g28658_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2742827479_
                                                            (values-ref
                                                             _g28657_
                                                             0))
                                                           (_tl2743027482_
                                                            (values-ref
                                                             _g28657_
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
                                                 (let ((_g28659_
                                                        (gx#syntax-split-splice
                                                         _tl2762927671_
                                                         '0)))
                                                   (begin
                                                     (let ((_g28660_
                                                            (values-count
                                                             _g28659_)))
                                                       (if (not (fx= _g28660_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g28660_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2763327684_
                                                            (values-ref
                                                             _g28659_
                                                             0))
                                                           (_tl2763527687_
                                                            (values-ref
                                                             _g28659_
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
                                          (let ((_g28661_
                                                 (gx#syntax-split-splice
                                                  _tl2781927858_
                                                  '0)))
                                            (begin
                                              (let ((_g28662_
                                                     (values-count _g28661_)))
                                                (if (not (fx= _g28662_ 2))
                                                    (error "Context expects 2 values"
                                                           _g28662_)))
                                              (let ((_target2782027861_
                                                     (values-ref _g28661_ 0))
                                                    (_tl2782227864_
                                                     (values-ref _g28661_ 1)))
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
  (define |gerbil/core::<module-sugar>[:0:]#except-out|
    (gx#make-export-expander
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
                                          (let ((_g28663_
                                                 (gx#syntax-split-splice
                                                  _tl2797328012_
                                                  '0)))
                                            (begin
                                              (let ((_g28664_
                                                     (values-count _g28663_)))
                                                (if (not (fx= _g28664_ 2))
                                                    (error "Context expects 2 values"
                                                           _g28664_)))
                                              (let ((_target2797428015_
                                                     (values-ref _g28663_ 0))
                                                    (_tl2797628018_
                                                     (values-ref _g28663_ 1)))
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
                                         (let ((_exports28095_
                                                (gx#core-expand-export-source
                                                 _L28047_)))
                                           (let ((_fold-e28105_
                                                  (letrec ((_fold-e28098_
                                                            (lambda (_out28101_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _r28103_)
                      (if (gx#module-export? _out28101_)
                          (if (hash-get
                               _keytab28092_
                               (gx#module-export-name _out28101_))
                              _r28103_
                              (cons _out28101_ _r28103_))
                          (if (gx#export-set? _out28101_)
                              (foldl _fold-e28098_
                                     _r28103_
                                     (gx#export-set-exports _out28101_))
                              _r28103_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _fold-e28098_)))
                                             (let ()
                                               (cons 'begin:
                                                     (foldl _fold-e28105_
                                                            '()
                                                            _exports28095_)))))))
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
  (define |gerbil/core::<module-sugar>[:0:]#struct-out|
    (gx#make-export-expander
     (lambda (_stx28115_)
       (let ((_g2811828138_
              (lambda (_g2811928134_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2811928134_))))
         (let ((_g2811728373_
                (lambda (_g2811928142_)
                  (if (gx#stx-pair? _g2811928142_)
                      (let ((_e2812128145_ (gx#syntax-e _g2811928142_)))
                        (let ((_hd2812228149_ (##car _e2812128145_))
                              (_tl2812328152_ (##cdr _e2812128145_)))
                          (if (gx#stx-pair/null? _tl2812328152_)
                              (if (fx>= (gx#stx-length _tl2812328152_) '0)
                                  (let ((_g28665_
                                         (gx#syntax-split-splice
                                          _tl2812328152_
                                          '0)))
                                    (begin
                                      (let ((_g28666_ (values-count _g28665_)))
                                        (if (not (fx= _g28666_ 2))
                                            (error "Context expects 2 values"
                                                   _g28666_)))
                                      (let ((_target2812428155_
                                             (values-ref _g28665_ 0))
                                            (_tl2812628158_
                                             (values-ref _g28665_ 1)))
                                        (if (gx#stx-null? _tl2812628158_)
                                            (letrec ((_loop2812728161_
                                                      (lambda (_hd2812528165_
                                                               _id2813128168_)
                                                        (if (gx#stx-pair?
                                                             _hd2812528165_)
                                                            (let ((_e2812828171_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _hd2812528165_)))
                      (let ((_lp-hd2812928175_ (##car _e2812828171_))
                            (_lp-tl2813028178_ (##cdr _e2812828171_)))
                        (_loop2812728161_
                         _lp-tl2813028178_
                         (cons _lp-hd2812928175_ _id2813128168_))))
                    (let ((_id2813228181_ (reverse _id2813128168_)))
                      ((lambda (_L28185_)
                         ((letrec ((_lp28201_
                                    (lambda (_rest28204_ _ids28206_)
                                      (let ((_g2820928221_
                                             (lambda (_g2821028217_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2821028217_))))
                                        (let ((_g2820828232_
                                               (lambda (_g2821028225_)
                                                 ((lambda ()
                                                    (cons 'begin:
                                                          _ids28206_))))))
                                          (let ((_g2820728361_
                                                 (lambda (_g2821028236_)
                                                   (if (gx#stx-pair?
                                                        _g2821028236_)
                                                       (let ((_e2821328239_
                                                              (gx#syntax-e
                                                               _g2821028236_)))
                                                         (let ((_hd2821428243_
                                                                (##car _e2821328239_))
                                                               (_tl2821528246_
                                                                (##cdr _e2821328239_)))
                                                           ((lambda (_L28249_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L28251_)
                      (let ((_info28266_
                             (gx#syntax-local-value _L28251_ false)))
                        (if (|gerbil/core::<MOP>::<MOP:2>[1]#expander-type-info?|
                             _info28266_)
                            (let ((_g2826828285_
                                   (slot-ref
                                    _info28266_
                                    'expander-identifiers)))
                              (let ((_E2827028291_
                                     (lambda ()
                                       (error '"No clause matching"
                                              _g2826828285_))))
                                (let ((_K2827128303_
                                       (lambda (_setf28295_
                                                _getf28297_
                                                _type?28298_
                                                _make-type28299_
                                                _type::t28300_
                                                _super28301_)
                                         (_lp28201_
                                          _L28249_
                                          (cons _L28251_
                                                (cons _type::t28300_
                                                      (cons _make-type28299_
                                                            (cons _type?28298_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (foldr cons
                                 (foldr cons _ids28206_ _setf28295_)
                                 _getf28297_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (##pair? _g2826828285_)
                                      (let ((_hd2827228307_
                                             (##car _g2826828285_))
                                            (_tl2827328310_
                                             (##cdr _g2826828285_)))
                                        (let ((_super28313_ _hd2827228307_))
                                          (if (##pair? _tl2827328310_)
                                              (let ((_hd2827428316_
                                                     (##car _tl2827328310_))
                                                    (_tl2827528319_
                                                     (##cdr _tl2827328310_)))
                                                (let ((_type::t28322_
                                                       _hd2827428316_))
                                                  (if (##pair? _tl2827528319_)
                                                      (let ((_hd2827628325_
                                                             (##car _tl2827528319_))
                                                            (_tl2827728328_
                                                             (##cdr _tl2827528319_)))
                                                        (let ((_make-type28331_
                                                               _hd2827628325_))
                                                          (if (##pair? _tl2827728328_)
                                                              (let ((_hd2827828334_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##car _tl2827728328_))
                            (_tl2827928337_ (##cdr _tl2827728328_)))
                        (let ((_type?28340_ _hd2827828334_))
                          (if (##pair? _tl2827928337_)
                              (let ((_hd2828028343_ (##car _tl2827928337_))
                                    (_tl2828128346_ (##cdr _tl2827928337_)))
                                (let ((_getf28349_ _hd2828028343_))
                                  (if (##pair? _tl2828128346_)
                                      (let ((_hd2828228352_
                                             (##car _tl2828128346_))
                                            (_tl2828328355_
                                             (##cdr _tl2828128346_)))
                                        (let ((_setf28358_ _hd2828228352_))
                                          (if (##null? _tl2828328355_)
                                              (_K2827128303_
                                               _setf28358_
                                               _getf28349_
                                               _type?28340_
                                               _make-type28331_
                                               _type::t28322_
                                               _super28313_)
                                              (_E2827028291_))))
                                      (_E2827028291_))))
                              (_E2827028291_))))
                      (_E2827028291_))))
              (_E2827028291_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E2827028291_))))
                                      (_E2827028291_)))))
                            (gx#raise-syntax-error
                             '#f
                             '"Incomplete type info"
                             _stx28115_
                             _L28251_))))
                    _tl2821528246_
                    _hd2821428243_)))
               (_g2820828232_ _g2821028236_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2820728361_ _rest28204_)))))))
                            _lp28201_)
                          (begin
                            '#!void
                            (foldr (lambda (_g2836428367_ _g2836528370_)
                                     (cons _g2836428367_ _g2836528370_))
                                   '()
                                   _L28185_))
                          '()))
                       _id2813228181_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop2812728161_
                                               _target2812428155_
                                               '()))
                                            (_g2811828138_ _g2811928142_)))))
                                  (_g2811828138_ _g2811928142_))
                              (_g2811828138_ _g2811928142_))))
                      (_g2811828138_ _g2811928142_)))))
           (_g2811728373_ _stx28115_)))))))
