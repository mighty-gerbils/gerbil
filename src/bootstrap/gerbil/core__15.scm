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
                                                 (let ((_g29376_
                                                        (gx#syntax-split-splice
                                                         _tl2742427466_
                                                         '0)))
                                                   (begin
                                                     (let ((_g29377_
                                                            (values-count
                                                             _g29376_)))
                                                       (if (not (fx= _g29377_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g29377_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2742827479_
                                                            (values-ref
                                                             _g29376_
                                                             0))
                                                           (_tl2743027482_
                                                            (values-ref
                                                             _g29376_
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
                                                 (let ((_g29378_
                                                        (gx#syntax-split-splice
                                                         _tl2762927671_
                                                         '0)))
                                                   (begin
                                                     (let ((_g29379_
                                                            (values-count
                                                             _g29378_)))
                                                       (if (not (fx= _g29379_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g29379_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2763327684_
                                                            (values-ref
                                                             _g29378_
                                                             0))
                                                           (_tl2763527687_
                                                            (values-ref
                                                             _g29378_
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
                                          (let ((_g29380_
                                                 (gx#syntax-split-splice
                                                  _tl2781927858_
                                                  '0)))
                                            (begin
                                              (let ((_g29381_
                                                     (values-count _g29380_)))
                                                (if (not (fx= _g29381_ 2))
                                                    (error "Context expects 2 values"
                                                           _g29381_)))
                                              (let ((_target2782027861_
                                                     (values-ref _g29380_ 0))
                                                    (_tl2782227864_
                                                     (values-ref _g29380_ 1)))
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
  (define |gerbil/core::<module-sugar>[1]#module-import-rename|
    (lambda (_in28008_ _rename28010_)
      (gx#make-module-import
       (gx#module-import-source _in28008_)
       _rename28010_
       (gx#module-import-phi _in28008_)
       (gx#module-import-weak? _in28008_))))
  (define |gerbil/core::<module-sugar>[1]#prefix-identifier-key|
    (lambda (_name27961_ _pre27963_)
      (let ((_name2796427972_ _name27961_))
        (let ((_E2796727978_
               (lambda () (error '"No clause matching" _name2796427972_))))
          (let ((_else2796627984_
                 (lambda () (make-symbol _pre27963_ _name27961_))))
            (let ((_K2796827992_
                   (lambda (_mark27988_ _id27990_)
                     (cons (make-symbol _pre27963_ _id27990_) _mark27988_))))
              (if (##pair? _name2796427972_)
                  (let ((_hd2796927996_ (##car _name2796427972_))
                        (_tl2797027999_ (##cdr _name2796427972_)))
                    (let ((_id28002_ _hd2796927996_))
                      (let ((_mark28005_ _tl2797027999_))
                        (_K2796827992_ _mark28005_ _id28002_))))
                  (_else2796627984_))))))))
  (define |gerbil/core::<module-sugar>[:0:]#rename-in|
    (gx#make-import-expander
     (lambda (_stx28012_)
       (let ((_g2801528048_
              (lambda (_g2801628044_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2801628044_))))
         (let ((_g2801428234_
                (lambda (_g2801628052_)
                  (if (gx#stx-pair? _g2801628052_)
                      (let ((_e2802028055_ (gx#syntax-e _g2801628052_)))
                        (let ((_hd2802128059_ (##car _e2802028055_))
                              (_tl2802228062_ (##cdr _e2802028055_)))
                          (if (gx#stx-pair? _tl2802228062_)
                              (let ((_e2802328065_
                                     (gx#syntax-e _tl2802228062_)))
                                (let ((_hd2802428069_ (##car _e2802328065_))
                                      (_tl2802528072_ (##cdr _e2802328065_)))
                                  (if (gx#stx-pair/null? _tl2802528072_)
                                      (if (fx>= (gx#stx-length _tl2802528072_)
                                                '0)
                                          (let ((_g29382_
                                                 (gx#syntax-split-splice
                                                  _tl2802528072_
                                                  '0)))
                                            (begin
                                              (let ((_g29383_
                                                     (values-count _g29382_)))
                                                (if (not (fx= _g29383_ 2))
                                                    (error "Context expects 2 values"
                                                           _g29383_)))
                                              (let ((_target2802628075_
                                                     (values-ref _g29382_ 0))
                                                    (_tl2802828078_
                                                     (values-ref _g29382_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2802828078_)
                                                    (letrec ((_loop2802928081_
                                                              (lambda (_hd2802728085_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _new-id2803328088_
                               _id2803428090_)
                        (if (gx#stx-pair? _hd2802728085_)
                            (let ((_e2803028093_ (gx#syntax-e _hd2802728085_)))
                              (let ((_lp-hd2803128097_ (##car _e2803028093_))
                                    (_lp-tl2803228100_ (##cdr _e2803028093_)))
                                (if (gx#stx-pair? _lp-hd2803128097_)
                                    (let ((_e2803728103_
                                           (gx#syntax-e _lp-hd2803128097_)))
                                      (let ((_hd2803828107_
                                             (##car _e2803728103_))
                                            (_tl2803928110_
                                             (##cdr _e2803728103_)))
                                        (if (gx#stx-pair? _tl2803928110_)
                                            (let ((_e2804028113_
                                                   (gx#syntax-e
                                                    _tl2803928110_)))
                                              (let ((_hd2804128117_
                                                     (##car _e2804028113_))
                                                    (_tl2804228120_
                                                     (##cdr _e2804028113_)))
                                                (if (gx#stx-null?
                                                     _tl2804228120_)
                                                    (_loop2802928081_
                                                     _lp-tl2803228100_
                                                     (cons _hd2804128117_
                                                           _new-id2803328088_)
                                                     (cons _hd2803828107_
                                                           _id2803428090_))
                                                    (_g2801528048_
                                                     _g2801628052_))))
                                            (_g2801528048_ _g2801628052_))))
                                    (_g2801528048_ _g2801628052_))))
                            (let ((_new-id2803528123_
                                   (reverse _new-id2803328088_))
                                  (_id2803628126_ (reverse _id2803428090_)))
                              ((lambda (_L28129_ _L28131_ _L28132_)
                                 (if (if (gx#identifier-list?
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g2815028153_
                                                            _g2815128156_)
                                                     (cons _g2815028153_
                                                           _g2815128156_))
                                                   '()
                                                   _L28131_)))
                                         (gx#identifier-list?
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g2815828161_
                                                            _g2815928164_)
                                                     (cons _g2815828161_
                                                           _g2815928164_))
                                                   '()
                                                   _L28129_)))
                                         '#f)
                                     (let ((_keytab28167_ (make-hash-table)))
                                       (let ((_found28170_ (make-hash-table)))
                                         (let ((_g29384_
                                                (for-each
                                                 (lambda (_id28173_
                                                          _new-id28175_)
                                                   (hash-put!
                                                    _keytab28167_
                                                    (gx#core-identifier-key
                                                     _id28173_)
                                                    (gx#core-identifier-key
                                                     _new-id28175_)))
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g2817628179_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2817728182_)
                    (cons _g2817628179_ _g2817728182_))
                  '()
                  _L28131_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g2818428187_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2818528190_)
                    (cons _g2818428187_ _g2818528190_))
                  '()
                  _L28129_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ((_imports28195_
                                                  (gx#core-expand-import-source
                                                   _L28132_)))
                                             (let ((_fold-e28215_
                                                    (letrec ((_fold-e28198_
                                                              (lambda (_in28201_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _r28203_)
                        (if (gx#module-import? _in28201_)
                            (let ((_name28205_
                                   (gx#module-import-name _in28201_)))
                              (let ((_$e28208_
                                     (hash-get _keytab28167_ _name28205_)))
                                (if _$e28208_
                                    ((lambda (_rename28212_)
                                       (begin
                                         (hash-put!
                                          _found28170_
                                          _name28205_
                                          '#t)
                                         (cons (|gerbil/core::<module-sugar>[1]#module-import-rename|
                                                _in28201_
                                                _rename28212_)
                                               _r28203_)))
                                     _$e28208_)
                                    (cons _in28201_ _r28203_))))
                            (if (gx#import-set? _in28201_)
                                (foldl _fold-e28198_
                                       _r28203_
                                       (gx#import-set-imports _in28201_))
                                (cons _in28201_ _r28203_))))))
              _fold-e28198_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_new-imports28218_
                                                      (foldl _fold-e28215_
                                                             '()
                                                             _imports28195_)))
                                                 (let ()
                                                   (begin
                                                     (for-each
                                                      (lambda (_id28223_)
                                                        (if (hash-get
                                                             _found28170_
                                                             (gx#core-identifier-key
                                                              _id28223_))
                                                            '#!void
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; identifier is not in the import set"
                                                             _stx28012_
                                                             _id28223_)))
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g2822528228_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g2822628231_)
                         (cons _g2822528228_ _g2822628231_))
                       '()
                       _L28131_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons 'begin:
                                                           _new-imports28218_)))))))))
                                     (_g2801528048_ _g2801628052_)))
                               _new-id2803528123_
                               _id2803628126_
                               _hd2802428069_))))))
              (_loop2802928081_ _target2802628075_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2801528048_
                                                     _g2801628052_)))))
                                          (_g2801528048_ _g2801628052_))
                                      (_g2801528048_ _g2801628052_))))
                              (_g2801528048_ _g2801628052_))))
                      (_g2801528048_ _g2801628052_)))))
           (_g2801428234_ _stx28012_))))))
  (define |gerbil/core::<module-sugar>[:0:]#prefix-in|
    (gx#make-import-expander
     (lambda (_stx28240_)
       (let ((_g2824328261_
              (lambda (_g2824428257_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2824428257_))))
         (let ((_g2824228340_
                (lambda (_g2824428265_)
                  (if (gx#stx-pair? _g2824428265_)
                      (let ((_e2824728268_ (gx#syntax-e _g2824428265_)))
                        (let ((_hd2824828272_ (##car _e2824728268_))
                              (_tl2824928275_ (##cdr _e2824728268_)))
                          (if (gx#stx-pair? _tl2824928275_)
                              (let ((_e2825028278_
                                     (gx#syntax-e _tl2824928275_)))
                                (let ((_hd2825128282_ (##car _e2825028278_))
                                      (_tl2825228285_ (##cdr _e2825028278_)))
                                  (if (gx#stx-pair? _tl2825228285_)
                                      (let ((_e2825328288_
                                             (gx#syntax-e _tl2825228285_)))
                                        (let ((_hd2825428292_
                                               (##car _e2825328288_))
                                              (_tl2825528295_
                                               (##cdr _e2825328288_)))
                                          (if (gx#stx-null? _tl2825528295_)
                                              ((lambda (_L28298_ _L28300_)
                                                 (if (gx#identifier? _L28298_)
                                                     (let ((_pre28316_
                                                            (gx#stx-e
                                                             _L28298_)))
                                                       (let ((_imports28319_
                                                              (gx#core-expand-import-source
                                                               _L28300_)))
                                                         (let ((_rename-e28325_
                                                                (lambda (_name28322_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (|gerbil/core::<module-sugar>[1]#prefix-identifier-key|
                           _name28322_
                           _pre28316_))))
                   (let ((_fold-e28335_
                          (letrec ((_fold-e28328_
                                    (lambda (_in28331_ _r28333_)
                                      (if (gx#module-import? _in28331_)
                                          (cons (|gerbil/core::<module-sugar>[1]#module-import-rename|
                                                 _in28331_
                                                 (_rename-e28325_
                                                  (gx#module-import-name
                                                   _in28331_)))
                                                _r28333_)
                                          (if (gx#import-set? _in28331_)
                                              (foldl _fold-e28328_
                                                     _r28333_
                                                     (gx#import-set-imports
                                                      _in28331_))
                                              (cons _in28331_ _r28333_))))))
                            _fold-e28328_)))
                     (let ()
                       (cons 'begin:
                             (foldl _fold-e28335_ '() _imports28319_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2824328261_
                                                      _g2824428265_)))
                                               _hd2825428292_
                                               _hd2825128282_)
                                              (_g2824328261_ _g2824428265_))))
                                      (_g2824328261_ _g2824428265_))))
                              (_g2824328261_ _g2824428265_))))
                      (_g2824328261_ _g2824428265_)))))
           (_g2824228340_ _stx28240_))))))
  (define |gerbil/core::<module-sugar>[:0:]#except-out|
    (gx#make-export-expander
     (lambda (_stx28344_)
       (let ((_g2834728371_
              (lambda (_g2834828367_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2834828367_))))
         (let ((_g2834628493_
                (lambda (_g2834828375_)
                  (if (gx#stx-pair? _g2834828375_)
                      (let ((_e2835128378_ (gx#syntax-e _g2834828375_)))
                        (let ((_hd2835228382_ (##car _e2835128378_))
                              (_tl2835328385_ (##cdr _e2835128378_)))
                          (if (gx#stx-pair? _tl2835328385_)
                              (let ((_e2835428388_
                                     (gx#syntax-e _tl2835328385_)))
                                (let ((_hd2835528392_ (##car _e2835428388_))
                                      (_tl2835628395_ (##cdr _e2835428388_)))
                                  (if (gx#stx-pair/null? _tl2835628395_)
                                      (if (fx>= (gx#stx-length _tl2835628395_)
                                                '0)
                                          (let ((_g29385_
                                                 (gx#syntax-split-splice
                                                  _tl2835628395_
                                                  '0)))
                                            (begin
                                              (let ((_g29386_
                                                     (values-count _g29385_)))
                                                (if (not (fx= _g29386_ 2))
                                                    (error "Context expects 2 values"
                                                           _g29386_)))
                                              (let ((_target2835728398_
                                                     (values-ref _g29385_ 0))
                                                    (_tl2835928401_
                                                     (values-ref _g29385_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2835928401_)
                                                    (letrec ((_loop2836028404_
                                                              (lambda (_hd2835828408_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _id2836428411_)
                        (if (gx#stx-pair? _hd2835828408_)
                            (let ((_e2836128414_ (gx#syntax-e _hd2835828408_)))
                              (let ((_lp-hd2836228418_ (##car _e2836128414_))
                                    (_lp-tl2836328421_ (##cdr _e2836128414_)))
                                (_loop2836028404_
                                 _lp-tl2836328421_
                                 (cons _lp-hd2836228418_ _id2836428411_))))
                            (let ((_id2836528424_ (reverse _id2836428411_)))
                              ((lambda (_L28428_ _L28430_)
                                 (if (gx#identifier-list?
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g2844728450_
                                                        _g2844828453_)
                                                 (cons _g2844728450_
                                                       _g2844828453_))
                                               '()
                                               _L28428_)))
                                     (let ((_keys28464_
                                            (gx#stx-map
                                             gx#core-identifier-key
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g2845528458_
                                                               _g2845628461_)
                                                        (cons _g2845528458_
                                                              _g2845628461_))
                                                      '()
                                                      _L28428_)))))
                                       (let ((_keytab28475_
                                              (let ((_ht28467_
                                                     (make-hash-table)))
                                                (begin
                                                  (for-each
                                                   (lambda (_g2846928471_)
                                                     (hash-put!
                                                      _ht28467_
                                                      _g2846928471_
                                                      '#t))
                                                   _keys28464_)
                                                  _ht28467_))))
                                         (let ((_exports28478_
                                                (gx#core-expand-export-source
                                                 _L28430_)))
                                           (let ((_fold-e28488_
                                                  (letrec ((_fold-e28481_
                                                            (lambda (_out28484_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _r28486_)
                      (if (gx#module-export? _out28484_)
                          (if (hash-get
                               _keytab28475_
                               (gx#module-export-name _out28484_))
                              _r28486_
                              (cons _out28484_ _r28486_))
                          (if (gx#export-set? _out28484_)
                              (foldl _fold-e28481_
                                     _r28486_
                                     (gx#export-set-exports _out28484_))
                              _r28486_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _fold-e28481_)))
                                             (let ()
                                               (cons 'begin:
                                                     (foldl _fold-e28488_
                                                            '()
                                                            _exports28478_)))))))
                                     (_g2834728371_ _g2834828375_)))
                               _id2836528424_
                               _hd2835528392_))))))
              (_loop2836028404_ _target2835728398_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2834728371_
                                                     _g2834828375_)))))
                                          (_g2834728371_ _g2834828375_))
                                      (_g2834728371_ _g2834828375_))))
                              (_g2834728371_ _g2834828375_))))
                      (_g2834728371_ _g2834828375_)))))
           (_g2834628493_ _stx28344_))))))
  (define |gerbil/core::<module-sugar>[1]#module-export-rename|
    (lambda (_out28498_ _rename28500_)
      (gx#make-module-export
       (gx#module-export-context _out28498_)
       (gx#module-export-key _out28498_)
       (gx#module-export-phi _out28498_)
       _rename28500_
       (gx#module-export-weak? _out28498_))))
  (define |gerbil/core::<module-sugar>[:0:]#rename-out|
    (gx#make-export-expander
     (lambda (_stx28502_)
       (let ((_g2850528538_
              (lambda (_g2850628534_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2850628534_))))
         (let ((_g2850428724_
                (lambda (_g2850628542_)
                  (if (gx#stx-pair? _g2850628542_)
                      (let ((_e2851028545_ (gx#syntax-e _g2850628542_)))
                        (let ((_hd2851128549_ (##car _e2851028545_))
                              (_tl2851228552_ (##cdr _e2851028545_)))
                          (if (gx#stx-pair? _tl2851228552_)
                              (let ((_e2851328555_
                                     (gx#syntax-e _tl2851228552_)))
                                (let ((_hd2851428559_ (##car _e2851328555_))
                                      (_tl2851528562_ (##cdr _e2851328555_)))
                                  (if (gx#stx-pair/null? _tl2851528562_)
                                      (if (fx>= (gx#stx-length _tl2851528562_)
                                                '0)
                                          (let ((_g29387_
                                                 (gx#syntax-split-splice
                                                  _tl2851528562_
                                                  '0)))
                                            (begin
                                              (let ((_g29388_
                                                     (values-count _g29387_)))
                                                (if (not (fx= _g29388_ 2))
                                                    (error "Context expects 2 values"
                                                           _g29388_)))
                                              (let ((_target2851628565_
                                                     (values-ref _g29387_ 0))
                                                    (_tl2851828568_
                                                     (values-ref _g29387_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2851828568_)
                                                    (letrec ((_loop2851928571_
                                                              (lambda (_hd2851728575_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _new-id2852328578_
                               _id2852428580_)
                        (if (gx#stx-pair? _hd2851728575_)
                            (let ((_e2852028583_ (gx#syntax-e _hd2851728575_)))
                              (let ((_lp-hd2852128587_ (##car _e2852028583_))
                                    (_lp-tl2852228590_ (##cdr _e2852028583_)))
                                (if (gx#stx-pair? _lp-hd2852128587_)
                                    (let ((_e2852728593_
                                           (gx#syntax-e _lp-hd2852128587_)))
                                      (let ((_hd2852828597_
                                             (##car _e2852728593_))
                                            (_tl2852928600_
                                             (##cdr _e2852728593_)))
                                        (if (gx#stx-pair? _tl2852928600_)
                                            (let ((_e2853028603_
                                                   (gx#syntax-e
                                                    _tl2852928600_)))
                                              (let ((_hd2853128607_
                                                     (##car _e2853028603_))
                                                    (_tl2853228610_
                                                     (##cdr _e2853028603_)))
                                                (if (gx#stx-null?
                                                     _tl2853228610_)
                                                    (_loop2851928571_
                                                     _lp-tl2852228590_
                                                     (cons _hd2853128607_
                                                           _new-id2852328578_)
                                                     (cons _hd2852828597_
                                                           _id2852428580_))
                                                    (_g2850528538_
                                                     _g2850628542_))))
                                            (_g2850528538_ _g2850628542_))))
                                    (_g2850528538_ _g2850628542_))))
                            (let ((_new-id2852528613_
                                   (reverse _new-id2852328578_))
                                  (_id2852628616_ (reverse _id2852428580_)))
                              ((lambda (_L28619_ _L28621_ _L28622_)
                                 (if (if (gx#identifier-list?
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g2864028643_
                                                            _g2864128646_)
                                                     (cons _g2864028643_
                                                           _g2864128646_))
                                                   '()
                                                   _L28621_)))
                                         (gx#identifier-list?
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g2864828651_
                                                            _g2864928654_)
                                                     (cons _g2864828651_
                                                           _g2864928654_))
                                                   '()
                                                   _L28619_)))
                                         '#f)
                                     (let ((_keytab28657_ (make-hash-table)))
                                       (let ((_found28660_ (make-hash-table)))
                                         (let ((_g29389_
                                                (for-each
                                                 (lambda (_id28663_
                                                          _new-id28665_)
                                                   (hash-put!
                                                    _keytab28657_
                                                    (gx#core-identifier-key
                                                     _id28663_)
                                                    (gx#core-identifier-key
                                                     _new-id28665_)))
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g2866628669_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2866728672_)
                    (cons _g2866628669_ _g2866728672_))
                  '()
                  _L28621_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g2867428677_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2867528680_)
                    (cons _g2867428677_ _g2867528680_))
                  '()
                  _L28619_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ((_exports28685_
                                                  (gx#core-expand-export-source
                                                   _L28622_)))
                                             (let ((_fold-e28705_
                                                    (letrec ((_fold-e28688_
                                                              (lambda (_out28691_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _r28693_)
                        (if (gx#module-export? _out28691_)
                            (let ((_name28695_
                                   (gx#module-export-name _out28691_)))
                              (let ((_$e28698_
                                     (hash-get _keytab28657_ _name28695_)))
                                (if _$e28698_
                                    ((lambda (_rename28702_)
                                       (begin
                                         (hash-put!
                                          _found28660_
                                          _name28695_
                                          '#t)
                                         (cons (|gerbil/core::<module-sugar>[1]#module-export-rename|
                                                _out28691_
                                                _rename28702_)
                                               _r28693_)))
                                     _$e28698_)
                                    (cons _out28691_ _r28693_))))
                            (if (gx#export-set? _out28691_)
                                (foldl _fold-e28688_
                                       _r28693_
                                       (gx#export-set-exports _out28691_))
                                (cons _out28691_ _r28693_))))))
              _fold-e28688_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_new-exports28708_
                                                      (foldl _fold-e28705_
                                                             '()
                                                             _exports28685_)))
                                                 (let ()
                                                   (begin
                                                     (for-each
                                                      (lambda (_id28713_)
                                                        (if (hash-get
                                                             _found28660_
                                                             (gx#core-identifier-key
                                                              _id28713_))
                                                            '#!void
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; identifier is not in the export set"
                                                             _stx28502_
                                                             _id28713_)))
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g2871528718_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g2871628721_)
                         (cons _g2871528718_ _g2871628721_))
                       '()
                       _L28621_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons 'begin:
                                                           _new-exports28708_)))))))))
                                     (_g2850528538_ _g2850628542_)))
                               _new-id2852528613_
                               _id2852628616_
                               _hd2851428559_))))))
              (_loop2851928571_ _target2851628565_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2850528538_
                                                     _g2850628542_)))))
                                          (_g2850528538_ _g2850628542_))
                                      (_g2850528538_ _g2850628542_))))
                              (_g2850528538_ _g2850628542_))))
                      (_g2850528538_ _g2850628542_)))))
           (_g2850428724_ _stx28502_))))))
  (define |gerbil/core::<module-sugar>[:0:]#prefix-out|
    (gx#make-export-expander
     (lambda (_stx28730_)
       (let ((_g2873328751_
              (lambda (_g2873428747_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2873428747_))))
         (let ((_g2873228830_
                (lambda (_g2873428755_)
                  (if (gx#stx-pair? _g2873428755_)
                      (let ((_e2873728758_ (gx#syntax-e _g2873428755_)))
                        (let ((_hd2873828762_ (##car _e2873728758_))
                              (_tl2873928765_ (##cdr _e2873728758_)))
                          (if (gx#stx-pair? _tl2873928765_)
                              (let ((_e2874028768_
                                     (gx#syntax-e _tl2873928765_)))
                                (let ((_hd2874128772_ (##car _e2874028768_))
                                      (_tl2874228775_ (##cdr _e2874028768_)))
                                  (if (gx#stx-pair? _tl2874228775_)
                                      (let ((_e2874328778_
                                             (gx#syntax-e _tl2874228775_)))
                                        (let ((_hd2874428782_
                                               (##car _e2874328778_))
                                              (_tl2874528785_
                                               (##cdr _e2874328778_)))
                                          (if (gx#stx-null? _tl2874528785_)
                                              ((lambda (_L28788_ _L28790_)
                                                 (if (gx#identifier? _L28788_)
                                                     (let ((_pre28806_
                                                            (gx#stx-e
                                                             _L28788_)))
                                                       (let ((_exports28809_
                                                              (gx#core-expand-export-source
                                                               _L28790_)))
                                                         (let ((_rename-e28815_
                                                                (lambda (_name28812_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (|gerbil/core::<module-sugar>[1]#prefix-identifier-key|
                           _name28812_
                           _pre28806_))))
                   (let ((_fold-e28825_
                          (letrec ((_fold-e28818_
                                    (lambda (_out28821_ _r28823_)
                                      (if (gx#module-export? _out28821_)
                                          (cons (|gerbil/core::<module-sugar>[1]#module-export-rename|
                                                 _out28821_
                                                 (_rename-e28815_
                                                  (gx#module-export-name
                                                   _out28821_)))
                                                _r28823_)
                                          (if (gx#export-set? _out28821_)
                                              (foldl _fold-e28818_
                                                     _r28823_
                                                     (gx#export-set-exports
                                                      _out28821_))
                                              (cons _out28821_ _r28823_))))))
                            _fold-e28818_)))
                     (let ()
                       (cons 'begin:
                             (foldl _fold-e28825_ '() _exports28809_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2873328751_
                                                      _g2873428755_)))
                                               _hd2874428782_
                                               _hd2874128772_)
                                              (_g2873328751_ _g2873428755_))))
                                      (_g2873328751_ _g2873428755_))))
                              (_g2873328751_ _g2873428755_))))
                      (_g2873328751_ _g2873428755_)))))
           (_g2873228830_ _stx28730_))))))
  (define |gerbil/core::<module-sugar>[:0:]#struct-out|
    (gx#make-export-expander
     (lambda (_stx28834_)
       (let ((_g2883728857_
              (lambda (_g2883828853_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2883828853_))))
         (let ((_g2883629092_
                (lambda (_g2883828861_)
                  (if (gx#stx-pair? _g2883828861_)
                      (let ((_e2884028864_ (gx#syntax-e _g2883828861_)))
                        (let ((_hd2884128868_ (##car _e2884028864_))
                              (_tl2884228871_ (##cdr _e2884028864_)))
                          (if (gx#stx-pair/null? _tl2884228871_)
                              (if (fx>= (gx#stx-length _tl2884228871_) '0)
                                  (let ((_g29390_
                                         (gx#syntax-split-splice
                                          _tl2884228871_
                                          '0)))
                                    (begin
                                      (let ((_g29391_ (values-count _g29390_)))
                                        (if (not (fx= _g29391_ 2))
                                            (error "Context expects 2 values"
                                                   _g29391_)))
                                      (let ((_target2884328874_
                                             (values-ref _g29390_ 0))
                                            (_tl2884528877_
                                             (values-ref _g29390_ 1)))
                                        (if (gx#stx-null? _tl2884528877_)
                                            (letrec ((_loop2884628880_
                                                      (lambda (_hd2884428884_
                                                               _id2885028887_)
                                                        (if (gx#stx-pair?
                                                             _hd2884428884_)
                                                            (let ((_e2884728890_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _hd2884428884_)))
                      (let ((_lp-hd2884828894_ (##car _e2884728890_))
                            (_lp-tl2884928897_ (##cdr _e2884728890_)))
                        (_loop2884628880_
                         _lp-tl2884928897_
                         (cons _lp-hd2884828894_ _id2885028887_))))
                    (let ((_id2885128900_ (reverse _id2885028887_)))
                      ((lambda (_L28904_)
                         ((letrec ((_lp28920_
                                    (lambda (_rest28923_ _ids28925_)
                                      (let ((_g2892828940_
                                             (lambda (_g2892928936_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2892928936_))))
                                        (let ((_g2892728951_
                                               (lambda (_g2892928944_)
                                                 ((lambda ()
                                                    (cons 'begin:
                                                          _ids28925_))))))
                                          (let ((_g2892629080_
                                                 (lambda (_g2892928955_)
                                                   (if (gx#stx-pair?
                                                        _g2892928955_)
                                                       (let ((_e2893228958_
                                                              (gx#syntax-e
                                                               _g2892928955_)))
                                                         (let ((_hd2893328962_
                                                                (##car _e2893228958_))
                                                               (_tl2893428965_
                                                                (##cdr _e2893228958_)))
                                                           ((lambda (_L28968_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L28970_)
                      (let ((_info28985_
                             (gx#syntax-local-value _L28970_ false)))
                        (if (|gerbil/core::<MOP>::<MOP:2>[1]#expander-type-info?|
                             _info28985_)
                            (let ((_g2898729004_
                                   (slot-ref
                                    _info28985_
                                    'expander-identifiers)))
                              (let ((_E2898929010_
                                     (lambda ()
                                       (error '"No clause matching"
                                              _g2898729004_))))
                                (let ((_K2899029022_
                                       (lambda (_setf29014_
                                                _getf29016_
                                                _type?29017_
                                                _make-type29018_
                                                _type::t29019_
                                                _super29020_)
                                         (_lp28920_
                                          _L28968_
                                          (cons _L28970_
                                                (cons _type::t29019_
                                                      (cons _make-type29018_
                                                            (cons _type?29017_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (foldr cons
                                 (foldr cons _ids28925_ _setf29014_)
                                 _getf29016_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (##pair? _g2898729004_)
                                      (let ((_hd2899129026_
                                             (##car _g2898729004_))
                                            (_tl2899229029_
                                             (##cdr _g2898729004_)))
                                        (let ((_super29032_ _hd2899129026_))
                                          (if (##pair? _tl2899229029_)
                                              (let ((_hd2899329035_
                                                     (##car _tl2899229029_))
                                                    (_tl2899429038_
                                                     (##cdr _tl2899229029_)))
                                                (let ((_type::t29041_
                                                       _hd2899329035_))
                                                  (if (##pair? _tl2899429038_)
                                                      (let ((_hd2899529044_
                                                             (##car _tl2899429038_))
                                                            (_tl2899629047_
                                                             (##cdr _tl2899429038_)))
                                                        (let ((_make-type29050_
                                                               _hd2899529044_))
                                                          (if (##pair? _tl2899629047_)
                                                              (let ((_hd2899729053_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##car _tl2899629047_))
                            (_tl2899829056_ (##cdr _tl2899629047_)))
                        (let ((_type?29059_ _hd2899729053_))
                          (if (##pair? _tl2899829056_)
                              (let ((_hd2899929062_ (##car _tl2899829056_))
                                    (_tl2900029065_ (##cdr _tl2899829056_)))
                                (let ((_getf29068_ _hd2899929062_))
                                  (if (##pair? _tl2900029065_)
                                      (let ((_hd2900129071_
                                             (##car _tl2900029065_))
                                            (_tl2900229074_
                                             (##cdr _tl2900029065_)))
                                        (let ((_setf29077_ _hd2900129071_))
                                          (if (##null? _tl2900229074_)
                                              (_K2899029022_
                                               _setf29077_
                                               _getf29068_
                                               _type?29059_
                                               _make-type29050_
                                               _type::t29041_
                                               _super29032_)
                                              (_E2898929010_))))
                                      (_E2898929010_))))
                              (_E2898929010_))))
                      (_E2898929010_))))
              (_E2898929010_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E2898929010_))))
                                      (_E2898929010_)))))
                            (gx#raise-syntax-error
                             '#f
                             '"Incomplete type info"
                             _stx28834_
                             _L28970_))))
                    _tl2893428965_
                    _hd2893328962_)))
               (_g2892728951_ _g2892928955_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2892629080_ _rest28923_)))))))
                            _lp28920_)
                          (begin
                            '#!void
                            (foldr (lambda (_g2908329086_ _g2908429089_)
                                     (cons _g2908329086_ _g2908429089_))
                                   '()
                                   _L28904_))
                          '()))
                       _id2885128900_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop2884628880_
                                               _target2884328874_
                                               '()))
                                            (_g2883728857_ _g2883828861_)))))
                                  (_g2883728857_ _g2883828861_))
                              (_g2883728857_ _g2883828861_))))
                      (_g2883728857_ _g2883828861_)))))
           (_g2883629092_ _stx28834_)))))))
