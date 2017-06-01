(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<module-sugar>[:0:]#require|
    (lambda (_$stx27403_)
      (let ((_g2740827427_
             (lambda (_g2740927423_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2740927423_))))
        (let ((_g2740727473_
               (lambda (_g2740927431_)
                 (if (gx#stx-pair? _g2740927431_)
                     (let ((_e2741627434_ (gx#syntax-e _g2740927431_)))
                       (let ((_hd2741727438_ (##car _e2741627434_))
                             (_tl2741827441_ (##cdr _e2741627434_)))
                         (if (gx#stx-pair? _tl2741827441_)
                             (let ((_e2741927444_
                                    (gx#syntax-e _tl2741827441_)))
                               (let ((_hd2742027448_ (##car _e2741927444_))
                                     (_tl2742127451_ (##cdr _e2741927444_)))
                                 ((lambda (_L27454_ _L27456_ _L27457_)
                                    (cons (gx#datum->syntax '#f 'cond-expand)
                                          (cons (cons _L27456_
                                                      (cons (cons _L27457_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L27454_)
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
                                      (cons _L27456_ '())))
                          '()))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _tl2742127451_
                                  _hd2742027448_
                                  _hd2741727438_)))
                             (_g2740827427_ _g2740927431_))))
                     (_g2740827427_ _g2740927431_)))))
          (let ((_g2740627494_
                 (lambda (_g2740927477_)
                   (if (gx#stx-pair? _g2740927477_)
                       (let ((_e2741027480_ (gx#syntax-e _g2740927477_)))
                         (let ((_hd2741127484_ (##car _e2741027480_))
                               (_tl2741227487_ (##cdr _e2741027480_)))
                           (if (gx#stx-null? _tl2741227487_)
                               ((lambda ()
                                  (cons (gx#datum->syntax '#f 'begin) '())))
                               (_g2740727473_ _g2740927477_))))
                       (_g2740727473_ _g2740927477_)))))
            (_g2740627494_ _$stx27403_))))))
  (define |gerbil/core::<module-sugar>[:0:]#defsyntax-for-import|
    (lambda (_$stx27498_)
      (let ((_g2750327543_
             (lambda (_g2750427539_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2750427539_))))
        (let ((_g2750227644_
               (lambda (_g2750427547_)
                 (if (gx#stx-pair? _g2750427547_)
                     (let ((_e2752027550_ (gx#syntax-e _g2750427547_)))
                       (let ((_hd2752127554_ (##car _e2752027550_))
                             (_tl2752227557_ (##cdr _e2752027550_)))
                         (if (gx#stx-pair? _tl2752227557_)
                             (let ((_e2752327560_
                                    (gx#syntax-e _tl2752227557_)))
                               (let ((_hd2752427564_ (##car _e2752327560_))
                                     (_tl2752527567_ (##cdr _e2752327560_)))
                                 (if (gx#stx-pair? _hd2752427564_)
                                     (let ((_e2752627570_
                                            (gx#syntax-e _hd2752427564_)))
                                       (let ((_hd2752727574_
                                              (##car _e2752627570_))
                                             (_tl2752827577_
                                              (##cdr _e2752627570_)))
                                         (if (gx#stx-pair/null? _tl2752527567_)
                                             (if (fx>= (gx#stx-length
                                                        _tl2752527567_)
                                                       '0)
                                                 (let ((_g29631_
                                                        (gx#syntax-split-splice
                                                         _tl2752527567_
                                                         '0)))
                                                   (begin
                                                     (let ((_g29632_
                                                            (values-count
                                                             _g29631_)))
                                                       (if (not (fx= _g29632_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g29632_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2752927580_
                                                            (values-ref
                                                             _g29631_
                                                             0))
                                                           (_tl2753127583_
                                                            (values-ref
                                                             _g29631_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl2753127583_)
                                                           (letrec ((_loop2753227586_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2753027590_ _body2753627593_)
                               (if (gx#stx-pair? _hd2753027590_)
                                   (let ((_e2753327596_
                                          (gx#syntax-e _hd2753027590_)))
                                     (let ((_lp-hd2753427600_
                                            (##car _e2753327596_))
                                           (_lp-tl2753527603_
                                            (##cdr _e2753327596_)))
                                       (_loop2753227586_
                                        _lp-tl2753527603_
                                        (cons _lp-hd2753427600_
                                              _body2753627593_))))
                                   (let ((_body2753727606_
                                          (reverse _body2753627593_)))
                                     ((lambda (_L27610_
                                               _L27612_
                                               _L27613_
                                               _L27614_)
                                        (if (gx#identifier? _L27613_)
                                            (cons _L27614_
                                                  (cons _L27613_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'lambda)
                            (cons _L27612_
                                  (begin
                                    '#!void
                                    (foldr (lambda (_g2763527638_
                                                    _g2763627641_)
                                             (cons _g2763527638_
                                                   _g2763627641_))
                                           '()
                                           _L27610_))))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2750327543_ _g2750427547_)))
                                      _body2753727606_
                                      _tl2752827577_
                                      _hd2752727574_
                                      _hd2752127554_))))))
                     (_loop2753227586_ _target2752927580_ '()))
                   (_g2750327543_ _g2750427547_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2750327543_ _g2750427547_))
                                             (_g2750327543_ _g2750427547_))))
                                     (_g2750327543_ _g2750427547_))))
                             (_g2750327543_ _g2750427547_))))
                     (_g2750327543_ _g2750427547_)))))
          (let ((_g2750127698_
                 (lambda (_g2750427648_)
                   (if (gx#stx-pair? _g2750427648_)
                       (let ((_e2750727651_ (gx#syntax-e _g2750427648_)))
                         (let ((_hd2750827655_ (##car _e2750727651_))
                               (_tl2750927658_ (##cdr _e2750727651_)))
                           (if (gx#stx-pair? _tl2750927658_)
                               (let ((_e2751027661_
                                      (gx#syntax-e _tl2750927658_)))
                                 (let ((_hd2751127665_ (##car _e2751027661_))
                                       (_tl2751227668_ (##cdr _e2751027661_)))
                                   (if (gx#stx-pair? _tl2751227668_)
                                       (let ((_e2751327671_
                                              (gx#syntax-e _tl2751227668_)))
                                         (let ((_hd2751427675_
                                                (##car _e2751327671_))
                                               (_tl2751527678_
                                                (##cdr _e2751327671_)))
                                           (if (gx#stx-null? _tl2751527678_)
                                               ((lambda (_L27681_ _L27683_)
                                                  (if (gx#identifier? _L27683_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'defsyntax)
                                                            (cons _L27683_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax
                                       '#f
                                       'make-import-expander)
                                      (cons _L27681_ '()))
                                '())))
              (_g2750227644_ _g2750427648_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd2751427675_
                                                _hd2751127665_)
                                               (_g2750227644_ _g2750427648_))))
                                       (_g2750227644_ _g2750427648_))))
                               (_g2750227644_ _g2750427648_))))
                       (_g2750227644_ _g2750427648_)))))
            (_g2750127698_ _$stx27498_))))))
  (define |gerbil/core::<module-sugar>[:0:]#defsyntax-for-export|
    (lambda (_$stx27703_)
      (let ((_g2770827748_
             (lambda (_g2770927744_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2770927744_))))
        (let ((_g2770727849_
               (lambda (_g2770927752_)
                 (if (gx#stx-pair? _g2770927752_)
                     (let ((_e2772527755_ (gx#syntax-e _g2770927752_)))
                       (let ((_hd2772627759_ (##car _e2772527755_))
                             (_tl2772727762_ (##cdr _e2772527755_)))
                         (if (gx#stx-pair? _tl2772727762_)
                             (let ((_e2772827765_
                                    (gx#syntax-e _tl2772727762_)))
                               (let ((_hd2772927769_ (##car _e2772827765_))
                                     (_tl2773027772_ (##cdr _e2772827765_)))
                                 (if (gx#stx-pair? _hd2772927769_)
                                     (let ((_e2773127775_
                                            (gx#syntax-e _hd2772927769_)))
                                       (let ((_hd2773227779_
                                              (##car _e2773127775_))
                                             (_tl2773327782_
                                              (##cdr _e2773127775_)))
                                         (if (gx#stx-pair/null? _tl2773027772_)
                                             (if (fx>= (gx#stx-length
                                                        _tl2773027772_)
                                                       '0)
                                                 (let ((_g29633_
                                                        (gx#syntax-split-splice
                                                         _tl2773027772_
                                                         '0)))
                                                   (begin
                                                     (let ((_g29634_
                                                            (values-count
                                                             _g29633_)))
                                                       (if (not (fx= _g29634_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g29634_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2773427785_
                                                            (values-ref
                                                             _g29633_
                                                             0))
                                                           (_tl2773627788_
                                                            (values-ref
                                                             _g29633_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl2773627788_)
                                                           (letrec ((_loop2773727791_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2773527795_ _body2774127798_)
                               (if (gx#stx-pair? _hd2773527795_)
                                   (let ((_e2773827801_
                                          (gx#syntax-e _hd2773527795_)))
                                     (let ((_lp-hd2773927805_
                                            (##car _e2773827801_))
                                           (_lp-tl2774027808_
                                            (##cdr _e2773827801_)))
                                       (_loop2773727791_
                                        _lp-tl2774027808_
                                        (cons _lp-hd2773927805_
                                              _body2774127798_))))
                                   (let ((_body2774227811_
                                          (reverse _body2774127798_)))
                                     ((lambda (_L27815_
                                               _L27817_
                                               _L27818_
                                               _L27819_)
                                        (if (gx#identifier? _L27818_)
                                            (cons _L27819_
                                                  (cons _L27818_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'lambda)
                            (cons _L27817_
                                  (begin
                                    '#!void
                                    (foldr (lambda (_g2784027843_
                                                    _g2784127846_)
                                             (cons _g2784027843_
                                                   _g2784127846_))
                                           '()
                                           _L27815_))))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2770827748_ _g2770927752_)))
                                      _body2774227811_
                                      _tl2773327782_
                                      _hd2773227779_
                                      _hd2772627759_))))))
                     (_loop2773727791_ _target2773427785_ '()))
                   (_g2770827748_ _g2770927752_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2770827748_ _g2770927752_))
                                             (_g2770827748_ _g2770927752_))))
                                     (_g2770827748_ _g2770927752_))))
                             (_g2770827748_ _g2770927752_))))
                     (_g2770827748_ _g2770927752_)))))
          (let ((_g2770627903_
                 (lambda (_g2770927853_)
                   (if (gx#stx-pair? _g2770927853_)
                       (let ((_e2771227856_ (gx#syntax-e _g2770927853_)))
                         (let ((_hd2771327860_ (##car _e2771227856_))
                               (_tl2771427863_ (##cdr _e2771227856_)))
                           (if (gx#stx-pair? _tl2771427863_)
                               (let ((_e2771527866_
                                      (gx#syntax-e _tl2771427863_)))
                                 (let ((_hd2771627870_ (##car _e2771527866_))
                                       (_tl2771727873_ (##cdr _e2771527866_)))
                                   (if (gx#stx-pair? _tl2771727873_)
                                       (let ((_e2771827876_
                                              (gx#syntax-e _tl2771727873_)))
                                         (let ((_hd2771927880_
                                                (##car _e2771827876_))
                                               (_tl2772027883_
                                                (##cdr _e2771827876_)))
                                           (if (gx#stx-null? _tl2772027883_)
                                               ((lambda (_L27886_ _L27888_)
                                                  (if (gx#identifier? _L27888_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'defsyntax)
                                                            (cons _L27888_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax
                                       '#f
                                       'make-export-expander)
                                      (cons _L27886_ '()))
                                '())))
              (_g2770727849_ _g2770927853_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd2771927880_
                                                _hd2771627870_)
                                               (_g2770727849_ _g2770927853_))))
                                       (_g2770727849_ _g2770927853_))))
                               (_g2770727849_ _g2770927853_))))
                       (_g2770727849_ _g2770927853_)))))
            (_g2770627903_ _$stx27703_))))))
  (define |gerbil/core::<module-sugar>[:0:]#only-in|
    (gx#make-import-expander
     (lambda (_stx27908_)
       (let ((_g2791127935_
              (lambda (_g2791227931_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2791227931_))))
         (let ((_g2791028057_
                (lambda (_g2791227939_)
                  (if (gx#stx-pair? _g2791227939_)
                      (let ((_e2791527942_ (gx#syntax-e _g2791227939_)))
                        (let ((_hd2791627946_ (##car _e2791527942_))
                              (_tl2791727949_ (##cdr _e2791527942_)))
                          (if (gx#stx-pair? _tl2791727949_)
                              (let ((_e2791827952_
                                     (gx#syntax-e _tl2791727949_)))
                                (let ((_hd2791927956_ (##car _e2791827952_))
                                      (_tl2792027959_ (##cdr _e2791827952_)))
                                  (if (gx#stx-pair/null? _tl2792027959_)
                                      (if (fx>= (gx#stx-length _tl2792027959_)
                                                '0)
                                          (let ((_g29635_
                                                 (gx#syntax-split-splice
                                                  _tl2792027959_
                                                  '0)))
                                            (begin
                                              (let ((_g29636_
                                                     (values-count _g29635_)))
                                                (if (not (fx= _g29636_ 2))
                                                    (error "Context expects 2 values"
                                                           _g29636_)))
                                              (let ((_target2792127962_
                                                     (values-ref _g29635_ 0))
                                                    (_tl2792327965_
                                                     (values-ref _g29635_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2792327965_)
                                                    (letrec ((_loop2792427968_
                                                              (lambda (_hd2792227972_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _id2792827975_)
                        (if (gx#stx-pair? _hd2792227972_)
                            (let ((_e2792527978_ (gx#syntax-e _hd2792227972_)))
                              (let ((_lp-hd2792627982_ (##car _e2792527978_))
                                    (_lp-tl2792727985_ (##cdr _e2792527978_)))
                                (_loop2792427968_
                                 _lp-tl2792727985_
                                 (cons _lp-hd2792627982_ _id2792827975_))))
                            (let ((_id2792927988_ (reverse _id2792827975_)))
                              ((lambda (_L27992_ _L27994_)
                                 (if (gx#identifier-list?
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g2801128014_
                                                        _g2801228017_)
                                                 (cons _g2801128014_
                                                       _g2801228017_))
                                               '()
                                               _L27992_)))
                                     (let ((_keys28028_
                                            (gx#stx-map
                                             gx#core-identifier-key
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g2801928022_
                                                               _g2802028025_)
                                                        (cons _g2801928022_
                                                              _g2802028025_))
                                                      '()
                                                      _L27992_)))))
                                       (let ((_keytab28039_
                                              (let ((_ht28031_
                                                     (make-hash-table)))
                                                (begin
                                                  (for-each
                                                   (lambda (_g2803328035_)
                                                     (hash-put!
                                                      _ht28031_
                                                      _g2803328035_
                                                      '#t))
                                                   _keys28028_)
                                                  _ht28031_))))
                                         (let ((_imports28042_
                                                (gx#core-expand-import-source
                                                 _L27994_)))
                                           (let ((_fold-e28052_
                                                  (letrec ((_fold-e28045_
                                                            (lambda (_in28048_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _r28050_)
                      (if (gx#module-import? _in28048_)
                          (if (hash-get
                               _keytab28039_
                               (gx#module-import-name _in28048_))
                              (cons _in28048_ _r28050_)
                              _r28050_)
                          (if (gx#import-set? _in28048_)
                              (foldl _fold-e28045_
                                     _r28050_
                                     (gx#import-set-imports _in28048_))
                              _r28050_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _fold-e28045_)))
                                             (let ()
                                               (cons 'begin:
                                                     (foldl _fold-e28052_
                                                            '()
                                                            _imports28042_)))))))
                                     (_g2791127935_ _g2791227939_)))
                               _id2792927988_
                               _hd2791927956_))))))
              (_loop2792427968_ _target2792127962_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2791127935_
                                                     _g2791227939_)))))
                                          (_g2791127935_ _g2791227939_))
                                      (_g2791127935_ _g2791227939_))))
                              (_g2791127935_ _g2791227939_))))
                      (_g2791127935_ _g2791227939_)))))
           (_g2791028057_ _stx27908_))))))
  (define |gerbil/core::<module-sugar>[:0:]#except-in|
    (gx#make-import-expander
     (lambda (_stx28062_)
       (let ((_g2806528089_
              (lambda (_g2806628085_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2806628085_))))
         (let ((_g2806428211_
                (lambda (_g2806628093_)
                  (if (gx#stx-pair? _g2806628093_)
                      (let ((_e2806928096_ (gx#syntax-e _g2806628093_)))
                        (let ((_hd2807028100_ (##car _e2806928096_))
                              (_tl2807128103_ (##cdr _e2806928096_)))
                          (if (gx#stx-pair? _tl2807128103_)
                              (let ((_e2807228106_
                                     (gx#syntax-e _tl2807128103_)))
                                (let ((_hd2807328110_ (##car _e2807228106_))
                                      (_tl2807428113_ (##cdr _e2807228106_)))
                                  (if (gx#stx-pair/null? _tl2807428113_)
                                      (if (fx>= (gx#stx-length _tl2807428113_)
                                                '0)
                                          (let ((_g29637_
                                                 (gx#syntax-split-splice
                                                  _tl2807428113_
                                                  '0)))
                                            (begin
                                              (let ((_g29638_
                                                     (values-count _g29637_)))
                                                (if (not (fx= _g29638_ 2))
                                                    (error "Context expects 2 values"
                                                           _g29638_)))
                                              (let ((_target2807528116_
                                                     (values-ref _g29637_ 0))
                                                    (_tl2807728119_
                                                     (values-ref _g29637_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2807728119_)
                                                    (letrec ((_loop2807828122_
                                                              (lambda (_hd2807628126_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _id2808228129_)
                        (if (gx#stx-pair? _hd2807628126_)
                            (let ((_e2807928132_ (gx#syntax-e _hd2807628126_)))
                              (let ((_lp-hd2808028136_ (##car _e2807928132_))
                                    (_lp-tl2808128139_ (##cdr _e2807928132_)))
                                (_loop2807828122_
                                 _lp-tl2808128139_
                                 (cons _lp-hd2808028136_ _id2808228129_))))
                            (let ((_id2808328142_ (reverse _id2808228129_)))
                              ((lambda (_L28146_ _L28148_)
                                 (if (gx#identifier-list?
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g2816528168_
                                                        _g2816628171_)
                                                 (cons _g2816528168_
                                                       _g2816628171_))
                                               '()
                                               _L28146_)))
                                     (let ((_keys28182_
                                            (gx#stx-map
                                             gx#core-identifier-key
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g2817328176_
                                                               _g2817428179_)
                                                        (cons _g2817328176_
                                                              _g2817428179_))
                                                      '()
                                                      _L28146_)))))
                                       (let ((_keytab28193_
                                              (let ((_ht28185_
                                                     (make-hash-table)))
                                                (begin
                                                  (for-each
                                                   (lambda (_g2818728189_)
                                                     (hash-put!
                                                      _ht28185_
                                                      _g2818728189_
                                                      '#t))
                                                   _keys28182_)
                                                  _ht28185_))))
                                         (let ((_imports28196_
                                                (gx#core-expand-import-source
                                                 _L28148_)))
                                           (let ((_fold-e28206_
                                                  (letrec ((_fold-e28199_
                                                            (lambda (_in28202_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _r28204_)
                      (if (gx#module-import? _in28202_)
                          (if (hash-get
                               _keytab28193_
                               (gx#module-import-name _in28202_))
                              _r28204_
                              (cons _in28202_ _r28204_))
                          (if (gx#import-set? _in28202_)
                              (foldl _fold-e28199_
                                     _r28204_
                                     (gx#import-set-imports _in28202_))
                              (cons _in28202_ _r28204_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _fold-e28199_)))
                                             (let ()
                                               (cons 'begin:
                                                     (foldl _fold-e28206_
                                                            '()
                                                            _imports28196_)))))))
                                     (_g2806528089_ _g2806628093_)))
                               _id2808328142_
                               _hd2807328110_))))))
              (_loop2807828122_ _target2807528116_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2806528089_
                                                     _g2806628093_)))))
                                          (_g2806528089_ _g2806628093_))
                                      (_g2806528089_ _g2806628093_))))
                              (_g2806528089_ _g2806628093_))))
                      (_g2806528089_ _g2806628093_)))))
           (_g2806428211_ _stx28062_))))))
  (define |gerbil/core::<module-sugar>[1]#module-import-rename|
    (lambda (_in28263_ _rename28265_)
      (gx#make-module-import
       (gx#module-import-source _in28263_)
       _rename28265_
       (gx#module-import-phi _in28263_)
       (gx#module-import-weak? _in28263_))))
  (define |gerbil/core::<module-sugar>[1]#prefix-identifier-key|
    (lambda (_name28216_ _pre28218_)
      (let ((_name2821928227_ _name28216_))
        (let ((_E2822228233_
               (lambda () (error '"No clause matching" _name2821928227_))))
          (let ((_else2822128239_
                 (lambda () (make-symbol _pre28218_ _name28216_))))
            (let ((_K2822328247_
                   (lambda (_mark28243_ _id28245_)
                     (cons (make-symbol _pre28218_ _id28245_) _mark28243_))))
              (if (##pair? _name2821928227_)
                  (let ((_hd2822428251_ (##car _name2821928227_))
                        (_tl2822528254_ (##cdr _name2821928227_)))
                    (let ((_id28257_ _hd2822428251_))
                      (let ((_mark28260_ _tl2822528254_))
                        (_K2822328247_ _mark28260_ _id28257_))))
                  (_else2822128239_))))))))
  (define |gerbil/core::<module-sugar>[:0:]#rename-in|
    (gx#make-import-expander
     (lambda (_stx28267_)
       (let ((_g2827028303_
              (lambda (_g2827128299_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2827128299_))))
         (let ((_g2826928489_
                (lambda (_g2827128307_)
                  (if (gx#stx-pair? _g2827128307_)
                      (let ((_e2827528310_ (gx#syntax-e _g2827128307_)))
                        (let ((_hd2827628314_ (##car _e2827528310_))
                              (_tl2827728317_ (##cdr _e2827528310_)))
                          (if (gx#stx-pair? _tl2827728317_)
                              (let ((_e2827828320_
                                     (gx#syntax-e _tl2827728317_)))
                                (let ((_hd2827928324_ (##car _e2827828320_))
                                      (_tl2828028327_ (##cdr _e2827828320_)))
                                  (if (gx#stx-pair/null? _tl2828028327_)
                                      (if (fx>= (gx#stx-length _tl2828028327_)
                                                '0)
                                          (let ((_g29639_
                                                 (gx#syntax-split-splice
                                                  _tl2828028327_
                                                  '0)))
                                            (begin
                                              (let ((_g29640_
                                                     (values-count _g29639_)))
                                                (if (not (fx= _g29640_ 2))
                                                    (error "Context expects 2 values"
                                                           _g29640_)))
                                              (let ((_target2828128330_
                                                     (values-ref _g29639_ 0))
                                                    (_tl2828328333_
                                                     (values-ref _g29639_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2828328333_)
                                                    (letrec ((_loop2828428336_
                                                              (lambda (_hd2828228340_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _new-id2828828343_
                               _id2828928345_)
                        (if (gx#stx-pair? _hd2828228340_)
                            (let ((_e2828528348_ (gx#syntax-e _hd2828228340_)))
                              (let ((_lp-hd2828628352_ (##car _e2828528348_))
                                    (_lp-tl2828728355_ (##cdr _e2828528348_)))
                                (if (gx#stx-pair? _lp-hd2828628352_)
                                    (let ((_e2829228358_
                                           (gx#syntax-e _lp-hd2828628352_)))
                                      (let ((_hd2829328362_
                                             (##car _e2829228358_))
                                            (_tl2829428365_
                                             (##cdr _e2829228358_)))
                                        (if (gx#stx-pair? _tl2829428365_)
                                            (let ((_e2829528368_
                                                   (gx#syntax-e
                                                    _tl2829428365_)))
                                              (let ((_hd2829628372_
                                                     (##car _e2829528368_))
                                                    (_tl2829728375_
                                                     (##cdr _e2829528368_)))
                                                (if (gx#stx-null?
                                                     _tl2829728375_)
                                                    (_loop2828428336_
                                                     _lp-tl2828728355_
                                                     (cons _hd2829628372_
                                                           _new-id2828828343_)
                                                     (cons _hd2829328362_
                                                           _id2828928345_))
                                                    (_g2827028303_
                                                     _g2827128307_))))
                                            (_g2827028303_ _g2827128307_))))
                                    (_g2827028303_ _g2827128307_))))
                            (let ((_new-id2829028378_
                                   (reverse _new-id2828828343_))
                                  (_id2829128381_ (reverse _id2828928345_)))
                              ((lambda (_L28384_ _L28386_ _L28387_)
                                 (if (if (gx#identifier-list?
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g2840528408_
                                                            _g2840628411_)
                                                     (cons _g2840528408_
                                                           _g2840628411_))
                                                   '()
                                                   _L28386_)))
                                         (gx#identifier-list?
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g2841328416_
                                                            _g2841428419_)
                                                     (cons _g2841328416_
                                                           _g2841428419_))
                                                   '()
                                                   _L28384_)))
                                         '#f)
                                     (let ((_keytab28422_ (make-hash-table)))
                                       (let ((_found28425_ (make-hash-table)))
                                         (let ((_g29641_
                                                (for-each
                                                 (lambda (_id28428_
                                                          _new-id28430_)
                                                   (hash-put!
                                                    _keytab28422_
                                                    (gx#core-identifier-key
                                                     _id28428_)
                                                    (gx#core-identifier-key
                                                     _new-id28430_)))
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g2843128434_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2843228437_)
                    (cons _g2843128434_ _g2843228437_))
                  '()
                  _L28386_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g2843928442_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2844028445_)
                    (cons _g2843928442_ _g2844028445_))
                  '()
                  _L28384_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ((_imports28450_
                                                  (gx#core-expand-import-source
                                                   _L28387_)))
                                             (let ((_fold-e28470_
                                                    (letrec ((_fold-e28453_
                                                              (lambda (_in28456_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _r28458_)
                        (if (gx#module-import? _in28456_)
                            (let ((_name28460_
                                   (gx#module-import-name _in28456_)))
                              (let ((_$e28463_
                                     (hash-get _keytab28422_ _name28460_)))
                                (if _$e28463_
                                    ((lambda (_rename28467_)
                                       (begin
                                         (hash-put!
                                          _found28425_
                                          _name28460_
                                          '#t)
                                         (cons (|gerbil/core::<module-sugar>[1]#module-import-rename|
                                                _in28456_
                                                _rename28467_)
                                               _r28458_)))
                                     _$e28463_)
                                    (cons _in28456_ _r28458_))))
                            (if (gx#import-set? _in28456_)
                                (foldl _fold-e28453_
                                       _r28458_
                                       (gx#import-set-imports _in28456_))
                                (cons _in28456_ _r28458_))))))
              _fold-e28453_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_new-imports28473_
                                                      (foldl _fold-e28470_
                                                             '()
                                                             _imports28450_)))
                                                 (let ()
                                                   (begin
                                                     (for-each
                                                      (lambda (_id28478_)
                                                        (if (hash-get
                                                             _found28425_
                                                             (gx#core-identifier-key
                                                              _id28478_))
                                                            '#!void
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; identifier is not in the import set"
                                                             _stx28267_
                                                             _id28478_)))
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g2848028483_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g2848128486_)
                         (cons _g2848028483_ _g2848128486_))
                       '()
                       _L28386_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons 'begin:
                                                           _new-imports28473_)))))))))
                                     (_g2827028303_ _g2827128307_)))
                               _new-id2829028378_
                               _id2829128381_
                               _hd2827928324_))))))
              (_loop2828428336_ _target2828128330_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2827028303_
                                                     _g2827128307_)))))
                                          (_g2827028303_ _g2827128307_))
                                      (_g2827028303_ _g2827128307_))))
                              (_g2827028303_ _g2827128307_))))
                      (_g2827028303_ _g2827128307_)))))
           (_g2826928489_ _stx28267_))))))
  (define |gerbil/core::<module-sugar>[:0:]#prefix-in|
    (gx#make-import-expander
     (lambda (_stx28495_)
       (let ((_g2849828516_
              (lambda (_g2849928512_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2849928512_))))
         (let ((_g2849728595_
                (lambda (_g2849928520_)
                  (if (gx#stx-pair? _g2849928520_)
                      (let ((_e2850228523_ (gx#syntax-e _g2849928520_)))
                        (let ((_hd2850328527_ (##car _e2850228523_))
                              (_tl2850428530_ (##cdr _e2850228523_)))
                          (if (gx#stx-pair? _tl2850428530_)
                              (let ((_e2850528533_
                                     (gx#syntax-e _tl2850428530_)))
                                (let ((_hd2850628537_ (##car _e2850528533_))
                                      (_tl2850728540_ (##cdr _e2850528533_)))
                                  (if (gx#stx-pair? _tl2850728540_)
                                      (let ((_e2850828543_
                                             (gx#syntax-e _tl2850728540_)))
                                        (let ((_hd2850928547_
                                               (##car _e2850828543_))
                                              (_tl2851028550_
                                               (##cdr _e2850828543_)))
                                          (if (gx#stx-null? _tl2851028550_)
                                              ((lambda (_L28553_ _L28555_)
                                                 (if (gx#identifier? _L28553_)
                                                     (let ((_pre28571_
                                                            (gx#stx-e
                                                             _L28553_)))
                                                       (let ((_imports28574_
                                                              (gx#core-expand-import-source
                                                               _L28555_)))
                                                         (let ((_rename-e28580_
                                                                (lambda (_name28577_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (|gerbil/core::<module-sugar>[1]#prefix-identifier-key|
                           _name28577_
                           _pre28571_))))
                   (let ((_fold-e28590_
                          (letrec ((_fold-e28583_
                                    (lambda (_in28586_ _r28588_)
                                      (if (gx#module-import? _in28586_)
                                          (cons (|gerbil/core::<module-sugar>[1]#module-import-rename|
                                                 _in28586_
                                                 (_rename-e28580_
                                                  (gx#module-import-name
                                                   _in28586_)))
                                                _r28588_)
                                          (if (gx#import-set? _in28586_)
                                              (foldl _fold-e28583_
                                                     _r28588_
                                                     (gx#import-set-imports
                                                      _in28586_))
                                              (cons _in28586_ _r28588_))))))
                            _fold-e28583_)))
                     (let ()
                       (cons 'begin:
                             (foldl _fold-e28590_ '() _imports28574_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2849828516_
                                                      _g2849928520_)))
                                               _hd2850928547_
                                               _hd2850628537_)
                                              (_g2849828516_ _g2849928520_))))
                                      (_g2849828516_ _g2849928520_))))
                              (_g2849828516_ _g2849928520_))))
                      (_g2849828516_ _g2849928520_)))))
           (_g2849728595_ _stx28495_))))))
  (define |gerbil/core::<module-sugar>[:0:]#except-out|
    (gx#make-export-expander
     (lambda (_stx28599_)
       (let ((_g2860228626_
              (lambda (_g2860328622_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2860328622_))))
         (let ((_g2860128748_
                (lambda (_g2860328630_)
                  (if (gx#stx-pair? _g2860328630_)
                      (let ((_e2860628633_ (gx#syntax-e _g2860328630_)))
                        (let ((_hd2860728637_ (##car _e2860628633_))
                              (_tl2860828640_ (##cdr _e2860628633_)))
                          (if (gx#stx-pair? _tl2860828640_)
                              (let ((_e2860928643_
                                     (gx#syntax-e _tl2860828640_)))
                                (let ((_hd2861028647_ (##car _e2860928643_))
                                      (_tl2861128650_ (##cdr _e2860928643_)))
                                  (if (gx#stx-pair/null? _tl2861128650_)
                                      (if (fx>= (gx#stx-length _tl2861128650_)
                                                '0)
                                          (let ((_g29642_
                                                 (gx#syntax-split-splice
                                                  _tl2861128650_
                                                  '0)))
                                            (begin
                                              (let ((_g29643_
                                                     (values-count _g29642_)))
                                                (if (not (fx= _g29643_ 2))
                                                    (error "Context expects 2 values"
                                                           _g29643_)))
                                              (let ((_target2861228653_
                                                     (values-ref _g29642_ 0))
                                                    (_tl2861428656_
                                                     (values-ref _g29642_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2861428656_)
                                                    (letrec ((_loop2861528659_
                                                              (lambda (_hd2861328663_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _id2861928666_)
                        (if (gx#stx-pair? _hd2861328663_)
                            (let ((_e2861628669_ (gx#syntax-e _hd2861328663_)))
                              (let ((_lp-hd2861728673_ (##car _e2861628669_))
                                    (_lp-tl2861828676_ (##cdr _e2861628669_)))
                                (_loop2861528659_
                                 _lp-tl2861828676_
                                 (cons _lp-hd2861728673_ _id2861928666_))))
                            (let ((_id2862028679_ (reverse _id2861928666_)))
                              ((lambda (_L28683_ _L28685_)
                                 (if (gx#identifier-list?
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g2870228705_
                                                        _g2870328708_)
                                                 (cons _g2870228705_
                                                       _g2870328708_))
                                               '()
                                               _L28683_)))
                                     (let ((_keys28719_
                                            (gx#stx-map
                                             gx#core-identifier-key
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g2871028713_
                                                               _g2871128716_)
                                                        (cons _g2871028713_
                                                              _g2871128716_))
                                                      '()
                                                      _L28683_)))))
                                       (let ((_keytab28730_
                                              (let ((_ht28722_
                                                     (make-hash-table)))
                                                (begin
                                                  (for-each
                                                   (lambda (_g2872428726_)
                                                     (hash-put!
                                                      _ht28722_
                                                      _g2872428726_
                                                      '#t))
                                                   _keys28719_)
                                                  _ht28722_))))
                                         (let ((_exports28733_
                                                (gx#core-expand-export-source
                                                 _L28685_)))
                                           (let ((_fold-e28743_
                                                  (letrec ((_fold-e28736_
                                                            (lambda (_out28739_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _r28741_)
                      (if (gx#module-export? _out28739_)
                          (if (hash-get
                               _keytab28730_
                               (gx#module-export-name _out28739_))
                              _r28741_
                              (cons _out28739_ _r28741_))
                          (if (gx#export-set? _out28739_)
                              (foldl _fold-e28736_
                                     _r28741_
                                     (gx#export-set-exports _out28739_))
                              _r28741_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _fold-e28736_)))
                                             (let ()
                                               (cons 'begin:
                                                     (foldl _fold-e28743_
                                                            '()
                                                            _exports28733_)))))))
                                     (_g2860228626_ _g2860328630_)))
                               _id2862028679_
                               _hd2861028647_))))))
              (_loop2861528659_ _target2861228653_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2860228626_
                                                     _g2860328630_)))))
                                          (_g2860228626_ _g2860328630_))
                                      (_g2860228626_ _g2860328630_))))
                              (_g2860228626_ _g2860328630_))))
                      (_g2860228626_ _g2860328630_)))))
           (_g2860128748_ _stx28599_))))))
  (define |gerbil/core::<module-sugar>[1]#module-export-rename|
    (lambda (_out28753_ _rename28755_)
      (gx#make-module-export
       (gx#module-export-context _out28753_)
       (gx#module-export-key _out28753_)
       (gx#module-export-phi _out28753_)
       _rename28755_
       (gx#module-export-weak? _out28753_))))
  (define |gerbil/core::<module-sugar>[:0:]#rename-out|
    (gx#make-export-expander
     (lambda (_stx28757_)
       (let ((_g2876028793_
              (lambda (_g2876128789_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2876128789_))))
         (let ((_g2875928979_
                (lambda (_g2876128797_)
                  (if (gx#stx-pair? _g2876128797_)
                      (let ((_e2876528800_ (gx#syntax-e _g2876128797_)))
                        (let ((_hd2876628804_ (##car _e2876528800_))
                              (_tl2876728807_ (##cdr _e2876528800_)))
                          (if (gx#stx-pair? _tl2876728807_)
                              (let ((_e2876828810_
                                     (gx#syntax-e _tl2876728807_)))
                                (let ((_hd2876928814_ (##car _e2876828810_))
                                      (_tl2877028817_ (##cdr _e2876828810_)))
                                  (if (gx#stx-pair/null? _tl2877028817_)
                                      (if (fx>= (gx#stx-length _tl2877028817_)
                                                '0)
                                          (let ((_g29644_
                                                 (gx#syntax-split-splice
                                                  _tl2877028817_
                                                  '0)))
                                            (begin
                                              (let ((_g29645_
                                                     (values-count _g29644_)))
                                                (if (not (fx= _g29645_ 2))
                                                    (error "Context expects 2 values"
                                                           _g29645_)))
                                              (let ((_target2877128820_
                                                     (values-ref _g29644_ 0))
                                                    (_tl2877328823_
                                                     (values-ref _g29644_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2877328823_)
                                                    (letrec ((_loop2877428826_
                                                              (lambda (_hd2877228830_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _new-id2877828833_
                               _id2877928835_)
                        (if (gx#stx-pair? _hd2877228830_)
                            (let ((_e2877528838_ (gx#syntax-e _hd2877228830_)))
                              (let ((_lp-hd2877628842_ (##car _e2877528838_))
                                    (_lp-tl2877728845_ (##cdr _e2877528838_)))
                                (if (gx#stx-pair? _lp-hd2877628842_)
                                    (let ((_e2878228848_
                                           (gx#syntax-e _lp-hd2877628842_)))
                                      (let ((_hd2878328852_
                                             (##car _e2878228848_))
                                            (_tl2878428855_
                                             (##cdr _e2878228848_)))
                                        (if (gx#stx-pair? _tl2878428855_)
                                            (let ((_e2878528858_
                                                   (gx#syntax-e
                                                    _tl2878428855_)))
                                              (let ((_hd2878628862_
                                                     (##car _e2878528858_))
                                                    (_tl2878728865_
                                                     (##cdr _e2878528858_)))
                                                (if (gx#stx-null?
                                                     _tl2878728865_)
                                                    (_loop2877428826_
                                                     _lp-tl2877728845_
                                                     (cons _hd2878628862_
                                                           _new-id2877828833_)
                                                     (cons _hd2878328852_
                                                           _id2877928835_))
                                                    (_g2876028793_
                                                     _g2876128797_))))
                                            (_g2876028793_ _g2876128797_))))
                                    (_g2876028793_ _g2876128797_))))
                            (let ((_new-id2878028868_
                                   (reverse _new-id2877828833_))
                                  (_id2878128871_ (reverse _id2877928835_)))
                              ((lambda (_L28874_ _L28876_ _L28877_)
                                 (if (if (gx#identifier-list?
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g2889528898_
                                                            _g2889628901_)
                                                     (cons _g2889528898_
                                                           _g2889628901_))
                                                   '()
                                                   _L28876_)))
                                         (gx#identifier-list?
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g2890328906_
                                                            _g2890428909_)
                                                     (cons _g2890328906_
                                                           _g2890428909_))
                                                   '()
                                                   _L28874_)))
                                         '#f)
                                     (let ((_keytab28912_ (make-hash-table)))
                                       (let ((_found28915_ (make-hash-table)))
                                         (let ((_g29646_
                                                (for-each
                                                 (lambda (_id28918_
                                                          _new-id28920_)
                                                   (hash-put!
                                                    _keytab28912_
                                                    (gx#core-identifier-key
                                                     _id28918_)
                                                    (gx#core-identifier-key
                                                     _new-id28920_)))
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g2892128924_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2892228927_)
                    (cons _g2892128924_ _g2892228927_))
                  '()
                  _L28876_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g2892928932_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2893028935_)
                    (cons _g2892928932_ _g2893028935_))
                  '()
                  _L28874_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ((_exports28940_
                                                  (gx#core-expand-export-source
                                                   _L28877_)))
                                             (let ((_fold-e28960_
                                                    (letrec ((_fold-e28943_
                                                              (lambda (_out28946_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _r28948_)
                        (if (gx#module-export? _out28946_)
                            (let ((_name28950_
                                   (gx#module-export-name _out28946_)))
                              (let ((_$e28953_
                                     (hash-get _keytab28912_ _name28950_)))
                                (if _$e28953_
                                    ((lambda (_rename28957_)
                                       (begin
                                         (hash-put!
                                          _found28915_
                                          _name28950_
                                          '#t)
                                         (cons (|gerbil/core::<module-sugar>[1]#module-export-rename|
                                                _out28946_
                                                _rename28957_)
                                               _r28948_)))
                                     _$e28953_)
                                    (cons _out28946_ _r28948_))))
                            (if (gx#export-set? _out28946_)
                                (foldl _fold-e28943_
                                       _r28948_
                                       (gx#export-set-exports _out28946_))
                                (cons _out28946_ _r28948_))))))
              _fold-e28943_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_new-exports28963_
                                                      (foldl _fold-e28960_
                                                             '()
                                                             _exports28940_)))
                                                 (let ()
                                                   (begin
                                                     (for-each
                                                      (lambda (_id28968_)
                                                        (if (hash-get
                                                             _found28915_
                                                             (gx#core-identifier-key
                                                              _id28968_))
                                                            '#!void
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; identifier is not in the export set"
                                                             _stx28757_
                                                             _id28968_)))
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g2897028973_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g2897128976_)
                         (cons _g2897028973_ _g2897128976_))
                       '()
                       _L28876_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons 'begin:
                                                           _new-exports28963_)))))))))
                                     (_g2876028793_ _g2876128797_)))
                               _new-id2878028868_
                               _id2878128871_
                               _hd2876928814_))))))
              (_loop2877428826_ _target2877128820_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2876028793_
                                                     _g2876128797_)))))
                                          (_g2876028793_ _g2876128797_))
                                      (_g2876028793_ _g2876128797_))))
                              (_g2876028793_ _g2876128797_))))
                      (_g2876028793_ _g2876128797_)))))
           (_g2875928979_ _stx28757_))))))
  (define |gerbil/core::<module-sugar>[:0:]#prefix-out|
    (gx#make-export-expander
     (lambda (_stx28985_)
       (let ((_g2898829006_
              (lambda (_g2898929002_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2898929002_))))
         (let ((_g2898729085_
                (lambda (_g2898929010_)
                  (if (gx#stx-pair? _g2898929010_)
                      (let ((_e2899229013_ (gx#syntax-e _g2898929010_)))
                        (let ((_hd2899329017_ (##car _e2899229013_))
                              (_tl2899429020_ (##cdr _e2899229013_)))
                          (if (gx#stx-pair? _tl2899429020_)
                              (let ((_e2899529023_
                                     (gx#syntax-e _tl2899429020_)))
                                (let ((_hd2899629027_ (##car _e2899529023_))
                                      (_tl2899729030_ (##cdr _e2899529023_)))
                                  (if (gx#stx-pair? _tl2899729030_)
                                      (let ((_e2899829033_
                                             (gx#syntax-e _tl2899729030_)))
                                        (let ((_hd2899929037_
                                               (##car _e2899829033_))
                                              (_tl2900029040_
                                               (##cdr _e2899829033_)))
                                          (if (gx#stx-null? _tl2900029040_)
                                              ((lambda (_L29043_ _L29045_)
                                                 (if (gx#identifier? _L29043_)
                                                     (let ((_pre29061_
                                                            (gx#stx-e
                                                             _L29043_)))
                                                       (let ((_exports29064_
                                                              (gx#core-expand-export-source
                                                               _L29045_)))
                                                         (let ((_rename-e29070_
                                                                (lambda (_name29067_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (|gerbil/core::<module-sugar>[1]#prefix-identifier-key|
                           _name29067_
                           _pre29061_))))
                   (let ((_fold-e29080_
                          (letrec ((_fold-e29073_
                                    (lambda (_out29076_ _r29078_)
                                      (if (gx#module-export? _out29076_)
                                          (cons (|gerbil/core::<module-sugar>[1]#module-export-rename|
                                                 _out29076_
                                                 (_rename-e29070_
                                                  (gx#module-export-name
                                                   _out29076_)))
                                                _r29078_)
                                          (if (gx#export-set? _out29076_)
                                              (foldl _fold-e29073_
                                                     _r29078_
                                                     (gx#export-set-exports
                                                      _out29076_))
                                              (cons _out29076_ _r29078_))))))
                            _fold-e29073_)))
                     (let ()
                       (cons 'begin:
                             (foldl _fold-e29080_ '() _exports29064_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2898829006_
                                                      _g2898929010_)))
                                               _hd2899929037_
                                               _hd2899629027_)
                                              (_g2898829006_ _g2898929010_))))
                                      (_g2898829006_ _g2898929010_))))
                              (_g2898829006_ _g2898929010_))))
                      (_g2898829006_ _g2898929010_)))))
           (_g2898729085_ _stx28985_))))))
  (define |gerbil/core::<module-sugar>[:0:]#struct-out|
    (gx#make-export-expander
     (lambda (_stx29089_)
       (let ((_g2909229112_
              (lambda (_g2909329108_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2909329108_))))
         (let ((_g2909129347_
                (lambda (_g2909329116_)
                  (if (gx#stx-pair? _g2909329116_)
                      (let ((_e2909529119_ (gx#syntax-e _g2909329116_)))
                        (let ((_hd2909629123_ (##car _e2909529119_))
                              (_tl2909729126_ (##cdr _e2909529119_)))
                          (if (gx#stx-pair/null? _tl2909729126_)
                              (if (fx>= (gx#stx-length _tl2909729126_) '0)
                                  (let ((_g29647_
                                         (gx#syntax-split-splice
                                          _tl2909729126_
                                          '0)))
                                    (begin
                                      (let ((_g29648_ (values-count _g29647_)))
                                        (if (not (fx= _g29648_ 2))
                                            (error "Context expects 2 values"
                                                   _g29648_)))
                                      (let ((_target2909829129_
                                             (values-ref _g29647_ 0))
                                            (_tl2910029132_
                                             (values-ref _g29647_ 1)))
                                        (if (gx#stx-null? _tl2910029132_)
                                            (letrec ((_loop2910129135_
                                                      (lambda (_hd2909929139_
                                                               _id2910529142_)
                                                        (if (gx#stx-pair?
                                                             _hd2909929139_)
                                                            (let ((_e2910229145_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _hd2909929139_)))
                      (let ((_lp-hd2910329149_ (##car _e2910229145_))
                            (_lp-tl2910429152_ (##cdr _e2910229145_)))
                        (_loop2910129135_
                         _lp-tl2910429152_
                         (cons _lp-hd2910329149_ _id2910529142_))))
                    (let ((_id2910629155_ (reverse _id2910529142_)))
                      ((lambda (_L29159_)
                         ((letrec ((_lp29175_
                                    (lambda (_rest29178_ _ids29180_)
                                      (let ((_g2918329195_
                                             (lambda (_g2918429191_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2918429191_))))
                                        (let ((_g2918229206_
                                               (lambda (_g2918429199_)
                                                 ((lambda ()
                                                    (cons 'begin:
                                                          _ids29180_))))))
                                          (let ((_g2918129335_
                                                 (lambda (_g2918429210_)
                                                   (if (gx#stx-pair?
                                                        _g2918429210_)
                                                       (let ((_e2918729213_
                                                              (gx#syntax-e
                                                               _g2918429210_)))
                                                         (let ((_hd2918829217_
                                                                (##car _e2918729213_))
                                                               (_tl2918929220_
                                                                (##cdr _e2918729213_)))
                                                           ((lambda (_L29223_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L29225_)
                      (let ((_info29240_
                             (gx#syntax-local-value _L29225_ false)))
                        (if (|gerbil/core::<MOP>::<MOP:2>[1]#expander-type-info?|
                             _info29240_)
                            (let ((_g2924229259_
                                   (slot-ref
                                    _info29240_
                                    'expander-identifiers)))
                              (let ((_E2924429265_
                                     (lambda ()
                                       (error '"No clause matching"
                                              _g2924229259_))))
                                (let ((_K2924529277_
                                       (lambda (_setf29269_
                                                _getf29271_
                                                _type?29272_
                                                _make-type29273_
                                                _type::t29274_
                                                _super29275_)
                                         (_lp29175_
                                          _L29223_
                                          (cons _L29225_
                                                (cons _type::t29274_
                                                      (cons _make-type29273_
                                                            (cons _type?29272_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (foldr cons
                                 (foldr cons _ids29180_ _setf29269_)
                                 _getf29271_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (##pair? _g2924229259_)
                                      (let ((_hd2924629281_
                                             (##car _g2924229259_))
                                            (_tl2924729284_
                                             (##cdr _g2924229259_)))
                                        (let ((_super29287_ _hd2924629281_))
                                          (if (##pair? _tl2924729284_)
                                              (let ((_hd2924829290_
                                                     (##car _tl2924729284_))
                                                    (_tl2924929293_
                                                     (##cdr _tl2924729284_)))
                                                (let ((_type::t29296_
                                                       _hd2924829290_))
                                                  (if (##pair? _tl2924929293_)
                                                      (let ((_hd2925029299_
                                                             (##car _tl2924929293_))
                                                            (_tl2925129302_
                                                             (##cdr _tl2924929293_)))
                                                        (let ((_make-type29305_
                                                               _hd2925029299_))
                                                          (if (##pair? _tl2925129302_)
                                                              (let ((_hd2925229308_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##car _tl2925129302_))
                            (_tl2925329311_ (##cdr _tl2925129302_)))
                        (let ((_type?29314_ _hd2925229308_))
                          (if (##pair? _tl2925329311_)
                              (let ((_hd2925429317_ (##car _tl2925329311_))
                                    (_tl2925529320_ (##cdr _tl2925329311_)))
                                (let ((_getf29323_ _hd2925429317_))
                                  (if (##pair? _tl2925529320_)
                                      (let ((_hd2925629326_
                                             (##car _tl2925529320_))
                                            (_tl2925729329_
                                             (##cdr _tl2925529320_)))
                                        (let ((_setf29332_ _hd2925629326_))
                                          (if (##null? _tl2925729329_)
                                              (_K2924529277_
                                               _setf29332_
                                               _getf29323_
                                               _type?29314_
                                               _make-type29305_
                                               _type::t29296_
                                               _super29287_)
                                              (_E2924429265_))))
                                      (_E2924429265_))))
                              (_E2924429265_))))
                      (_E2924429265_))))
              (_E2924429265_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E2924429265_))))
                                      (_E2924429265_)))))
                            (gx#raise-syntax-error
                             '#f
                             '"Incomplete type info"
                             _stx29089_
                             _L29225_))))
                    _tl2918929220_
                    _hd2918829217_)))
               (_g2918229206_ _g2918429210_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2918129335_ _rest29178_)))))))
                            _lp29175_)
                          (begin
                            '#!void
                            (foldr (lambda (_g2933829341_ _g2933929344_)
                                     (cons _g2933829341_ _g2933929344_))
                                   '()
                                   _L29159_))
                          '()))
                       _id2910629155_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop2910129135_
                                               _target2909829129_
                                               '()))
                                            (_g2909229112_ _g2909329116_)))))
                                  (_g2909229112_ _g2909329116_))
                              (_g2909229112_ _g2909329116_))))
                      (_g2909229112_ _g2909329116_)))))
           (_g2909129347_ _stx29089_)))))))
