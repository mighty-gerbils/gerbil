(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<module-sugar>[:0:]#require|
    (lambda (_$stx27407_)
      (let ((_g2741227431_
             (lambda (_g2741327427_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2741327427_))))
        (let ((_g2741127477_
               (lambda (_g2741327435_)
                 (if (gx#stx-pair? _g2741327435_)
                     (let ((_e2742027438_ (gx#syntax-e _g2741327435_)))
                       (let ((_hd2742127442_ (##car _e2742027438_))
                             (_tl2742227445_ (##cdr _e2742027438_)))
                         (if (gx#stx-pair? _tl2742227445_)
                             (let ((_e2742327448_
                                    (gx#syntax-e _tl2742227445_)))
                               (let ((_hd2742427452_ (##car _e2742327448_))
                                     (_tl2742527455_ (##cdr _e2742327448_)))
                                 ((lambda (_L27458_ _L27460_ _L27461_)
                                    (cons (gx#datum->syntax '#f 'cond-expand)
                                          (cons (cons _L27460_
                                                      (cons (cons _L27461_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L27458_)
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
                                      (cons _L27460_ '())))
                          '()))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _tl2742527455_
                                  _hd2742427452_
                                  _hd2742127442_)))
                             (_g2741227431_ _g2741327435_))))
                     (_g2741227431_ _g2741327435_)))))
          (let ((_g2741027498_
                 (lambda (_g2741327481_)
                   (if (gx#stx-pair? _g2741327481_)
                       (let ((_e2741427484_ (gx#syntax-e _g2741327481_)))
                         (let ((_hd2741527488_ (##car _e2741427484_))
                               (_tl2741627491_ (##cdr _e2741427484_)))
                           (if (gx#stx-null? _tl2741627491_)
                               ((lambda ()
                                  (cons (gx#datum->syntax '#f 'begin) '())))
                               (_g2741127477_ _g2741327481_))))
                       (_g2741127477_ _g2741327481_)))))
            (_g2741027498_ _$stx27407_))))))
  (define |gerbil/core::<module-sugar>[:0:]#defsyntax-for-import|
    (lambda (_$stx27502_)
      (let ((_g2750727547_
             (lambda (_g2750827543_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2750827543_))))
        (let ((_g2750627648_
               (lambda (_g2750827551_)
                 (if (gx#stx-pair? _g2750827551_)
                     (let ((_e2752427554_ (gx#syntax-e _g2750827551_)))
                       (let ((_hd2752527558_ (##car _e2752427554_))
                             (_tl2752627561_ (##cdr _e2752427554_)))
                         (if (gx#stx-pair? _tl2752627561_)
                             (let ((_e2752727564_
                                    (gx#syntax-e _tl2752627561_)))
                               (let ((_hd2752827568_ (##car _e2752727564_))
                                     (_tl2752927571_ (##cdr _e2752727564_)))
                                 (if (gx#stx-pair? _hd2752827568_)
                                     (let ((_e2753027574_
                                            (gx#syntax-e _hd2752827568_)))
                                       (let ((_hd2753127578_
                                              (##car _e2753027574_))
                                             (_tl2753227581_
                                              (##cdr _e2753027574_)))
                                         (if (gx#stx-pair/null? _tl2752927571_)
                                             (if (fx>= (gx#stx-length
                                                        _tl2752927571_)
                                                       '0)
                                                 (let ((_g29635_
                                                        (gx#syntax-split-splice
                                                         _tl2752927571_
                                                         '0)))
                                                   (begin
                                                     (let ((_g29636_
                                                            (values-count
                                                             _g29635_)))
                                                       (if (not (fx= _g29636_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g29636_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2753327584_
                                                            (values-ref
                                                             _g29635_
                                                             0))
                                                           (_tl2753527587_
                                                            (values-ref
                                                             _g29635_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl2753527587_)
                                                           (letrec ((_loop2753627590_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2753427594_ _body2754027597_)
                               (if (gx#stx-pair? _hd2753427594_)
                                   (let ((_e2753727600_
                                          (gx#syntax-e _hd2753427594_)))
                                     (let ((_lp-hd2753827604_
                                            (##car _e2753727600_))
                                           (_lp-tl2753927607_
                                            (##cdr _e2753727600_)))
                                       (_loop2753627590_
                                        _lp-tl2753927607_
                                        (cons _lp-hd2753827604_
                                              _body2754027597_))))
                                   (let ((_body2754127610_
                                          (reverse _body2754027597_)))
                                     ((lambda (_L27614_
                                               _L27616_
                                               _L27617_
                                               _L27618_)
                                        (if (gx#identifier? _L27617_)
                                            (cons _L27618_
                                                  (cons _L27617_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'lambda)
                            (cons _L27616_
                                  (begin
                                    '#!void
                                    (foldr (lambda (_g2763927642_
                                                    _g2764027645_)
                                             (cons _g2763927642_
                                                   _g2764027645_))
                                           '()
                                           _L27614_))))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2750727547_ _g2750827551_)))
                                      _body2754127610_
                                      _tl2753227581_
                                      _hd2753127578_
                                      _hd2752527558_))))))
                     (_loop2753627590_ _target2753327584_ '()))
                   (_g2750727547_ _g2750827551_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2750727547_ _g2750827551_))
                                             (_g2750727547_ _g2750827551_))))
                                     (_g2750727547_ _g2750827551_))))
                             (_g2750727547_ _g2750827551_))))
                     (_g2750727547_ _g2750827551_)))))
          (let ((_g2750527702_
                 (lambda (_g2750827652_)
                   (if (gx#stx-pair? _g2750827652_)
                       (let ((_e2751127655_ (gx#syntax-e _g2750827652_)))
                         (let ((_hd2751227659_ (##car _e2751127655_))
                               (_tl2751327662_ (##cdr _e2751127655_)))
                           (if (gx#stx-pair? _tl2751327662_)
                               (let ((_e2751427665_
                                      (gx#syntax-e _tl2751327662_)))
                                 (let ((_hd2751527669_ (##car _e2751427665_))
                                       (_tl2751627672_ (##cdr _e2751427665_)))
                                   (if (gx#stx-pair? _tl2751627672_)
                                       (let ((_e2751727675_
                                              (gx#syntax-e _tl2751627672_)))
                                         (let ((_hd2751827679_
                                                (##car _e2751727675_))
                                               (_tl2751927682_
                                                (##cdr _e2751727675_)))
                                           (if (gx#stx-null? _tl2751927682_)
                                               ((lambda (_L27685_ _L27687_)
                                                  (if (gx#identifier? _L27687_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'defsyntax)
                                                            (cons _L27687_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax
                                       '#f
                                       'make-import-expander)
                                      (cons _L27685_ '()))
                                '())))
              (_g2750627648_ _g2750827652_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd2751827679_
                                                _hd2751527669_)
                                               (_g2750627648_ _g2750827652_))))
                                       (_g2750627648_ _g2750827652_))))
                               (_g2750627648_ _g2750827652_))))
                       (_g2750627648_ _g2750827652_)))))
            (_g2750527702_ _$stx27502_))))))
  (define |gerbil/core::<module-sugar>[:0:]#defsyntax-for-export|
    (lambda (_$stx27707_)
      (let ((_g2771227752_
             (lambda (_g2771327748_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g2771327748_))))
        (let ((_g2771127853_
               (lambda (_g2771327756_)
                 (if (gx#stx-pair? _g2771327756_)
                     (let ((_e2772927759_ (gx#syntax-e _g2771327756_)))
                       (let ((_hd2773027763_ (##car _e2772927759_))
                             (_tl2773127766_ (##cdr _e2772927759_)))
                         (if (gx#stx-pair? _tl2773127766_)
                             (let ((_e2773227769_
                                    (gx#syntax-e _tl2773127766_)))
                               (let ((_hd2773327773_ (##car _e2773227769_))
                                     (_tl2773427776_ (##cdr _e2773227769_)))
                                 (if (gx#stx-pair? _hd2773327773_)
                                     (let ((_e2773527779_
                                            (gx#syntax-e _hd2773327773_)))
                                       (let ((_hd2773627783_
                                              (##car _e2773527779_))
                                             (_tl2773727786_
                                              (##cdr _e2773527779_)))
                                         (if (gx#stx-pair/null? _tl2773427776_)
                                             (if (fx>= (gx#stx-length
                                                        _tl2773427776_)
                                                       '0)
                                                 (let ((_g29637_
                                                        (gx#syntax-split-splice
                                                         _tl2773427776_
                                                         '0)))
                                                   (begin
                                                     (let ((_g29638_
                                                            (values-count
                                                             _g29637_)))
                                                       (if (not (fx= _g29638_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g29638_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target2773827789_
                                                            (values-ref
                                                             _g29637_
                                                             0))
                                                           (_tl2774027792_
                                                            (values-ref
                                                             _g29637_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl2774027792_)
                                                           (letrec ((_loop2774127795_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd2773927799_ _body2774527802_)
                               (if (gx#stx-pair? _hd2773927799_)
                                   (let ((_e2774227805_
                                          (gx#syntax-e _hd2773927799_)))
                                     (let ((_lp-hd2774327809_
                                            (##car _e2774227805_))
                                           (_lp-tl2774427812_
                                            (##cdr _e2774227805_)))
                                       (_loop2774127795_
                                        _lp-tl2774427812_
                                        (cons _lp-hd2774327809_
                                              _body2774527802_))))
                                   (let ((_body2774627815_
                                          (reverse _body2774527802_)))
                                     ((lambda (_L27819_
                                               _L27821_
                                               _L27822_
                                               _L27823_)
                                        (if (gx#identifier? _L27822_)
                                            (cons _L27823_
                                                  (cons _L27822_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'lambda)
                            (cons _L27821_
                                  (begin
                                    '#!void
                                    (foldr (lambda (_g2784427847_
                                                    _g2784527850_)
                                             (cons _g2784427847_
                                                   _g2784527850_))
                                           '()
                                           _L27819_))))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2771227752_ _g2771327756_)))
                                      _body2774627815_
                                      _tl2773727786_
                                      _hd2773627783_
                                      _hd2773027763_))))))
                     (_loop2774127795_ _target2773827789_ '()))
                   (_g2771227752_ _g2771327756_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g2771227752_ _g2771327756_))
                                             (_g2771227752_ _g2771327756_))))
                                     (_g2771227752_ _g2771327756_))))
                             (_g2771227752_ _g2771327756_))))
                     (_g2771227752_ _g2771327756_)))))
          (let ((_g2771027907_
                 (lambda (_g2771327857_)
                   (if (gx#stx-pair? _g2771327857_)
                       (let ((_e2771627860_ (gx#syntax-e _g2771327857_)))
                         (let ((_hd2771727864_ (##car _e2771627860_))
                               (_tl2771827867_ (##cdr _e2771627860_)))
                           (if (gx#stx-pair? _tl2771827867_)
                               (let ((_e2771927870_
                                      (gx#syntax-e _tl2771827867_)))
                                 (let ((_hd2772027874_ (##car _e2771927870_))
                                       (_tl2772127877_ (##cdr _e2771927870_)))
                                   (if (gx#stx-pair? _tl2772127877_)
                                       (let ((_e2772227880_
                                              (gx#syntax-e _tl2772127877_)))
                                         (let ((_hd2772327884_
                                                (##car _e2772227880_))
                                               (_tl2772427887_
                                                (##cdr _e2772227880_)))
                                           (if (gx#stx-null? _tl2772427887_)
                                               ((lambda (_L27890_ _L27892_)
                                                  (if (gx#identifier? _L27892_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'defsyntax)
                                                            (cons _L27892_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax
                                       '#f
                                       'make-export-expander)
                                      (cons _L27890_ '()))
                                '())))
              (_g2771127853_ _g2771327857_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd2772327884_
                                                _hd2772027874_)
                                               (_g2771127853_ _g2771327857_))))
                                       (_g2771127853_ _g2771327857_))))
                               (_g2771127853_ _g2771327857_))))
                       (_g2771127853_ _g2771327857_)))))
            (_g2771027907_ _$stx27707_))))))
  (define |gerbil/core::<module-sugar>[:0:]#only-in|
    (gx#make-import-expander
     (lambda (_stx27912_)
       (let ((_g2791527939_
              (lambda (_g2791627935_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2791627935_))))
         (let ((_g2791428061_
                (lambda (_g2791627943_)
                  (if (gx#stx-pair? _g2791627943_)
                      (let ((_e2791927946_ (gx#syntax-e _g2791627943_)))
                        (let ((_hd2792027950_ (##car _e2791927946_))
                              (_tl2792127953_ (##cdr _e2791927946_)))
                          (if (gx#stx-pair? _tl2792127953_)
                              (let ((_e2792227956_
                                     (gx#syntax-e _tl2792127953_)))
                                (let ((_hd2792327960_ (##car _e2792227956_))
                                      (_tl2792427963_ (##cdr _e2792227956_)))
                                  (if (gx#stx-pair/null? _tl2792427963_)
                                      (if (fx>= (gx#stx-length _tl2792427963_)
                                                '0)
                                          (let ((_g29639_
                                                 (gx#syntax-split-splice
                                                  _tl2792427963_
                                                  '0)))
                                            (begin
                                              (let ((_g29640_
                                                     (values-count _g29639_)))
                                                (if (not (fx= _g29640_ 2))
                                                    (error "Context expects 2 values"
                                                           _g29640_)))
                                              (let ((_target2792527966_
                                                     (values-ref _g29639_ 0))
                                                    (_tl2792727969_
                                                     (values-ref _g29639_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2792727969_)
                                                    (letrec ((_loop2792827972_
                                                              (lambda (_hd2792627976_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _id2793227979_)
                        (if (gx#stx-pair? _hd2792627976_)
                            (let ((_e2792927982_ (gx#syntax-e _hd2792627976_)))
                              (let ((_lp-hd2793027986_ (##car _e2792927982_))
                                    (_lp-tl2793127989_ (##cdr _e2792927982_)))
                                (_loop2792827972_
                                 _lp-tl2793127989_
                                 (cons _lp-hd2793027986_ _id2793227979_))))
                            (let ((_id2793327992_ (reverse _id2793227979_)))
                              ((lambda (_L27996_ _L27998_)
                                 (if (gx#identifier-list?
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g2801528018_
                                                        _g2801628021_)
                                                 (cons _g2801528018_
                                                       _g2801628021_))
                                               '()
                                               _L27996_)))
                                     (let ((_keys28032_
                                            (gx#stx-map
                                             gx#core-identifier-key
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g2802328026_
                                                               _g2802428029_)
                                                        (cons _g2802328026_
                                                              _g2802428029_))
                                                      '()
                                                      _L27996_)))))
                                       (let ((_keytab28043_
                                              (let ((_ht28035_
                                                     (make-hash-table)))
                                                (begin
                                                  (for-each
                                                   (lambda (_g2803728039_)
                                                     (hash-put!
                                                      _ht28035_
                                                      _g2803728039_
                                                      '#t))
                                                   _keys28032_)
                                                  _ht28035_))))
                                         (let ((_imports28046_
                                                (gx#core-expand-import-source
                                                 _L27998_)))
                                           (let ((_fold-e28056_
                                                  (letrec ((_fold-e28049_
                                                            (lambda (_in28052_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _r28054_)
                      (if (gx#module-import? _in28052_)
                          (if (hash-get
                               _keytab28043_
                               (gx#module-import-name _in28052_))
                              (cons _in28052_ _r28054_)
                              _r28054_)
                          (if (gx#import-set? _in28052_)
                              (foldl _fold-e28049_
                                     _r28054_
                                     (gx#import-set-imports _in28052_))
                              _r28054_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _fold-e28049_)))
                                             (let ()
                                               (cons 'begin:
                                                     (foldl _fold-e28056_
                                                            '()
                                                            _imports28046_)))))))
                                     (_g2791527939_ _g2791627943_)))
                               _id2793327992_
                               _hd2792327960_))))))
              (_loop2792827972_ _target2792527966_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2791527939_
                                                     _g2791627943_)))))
                                          (_g2791527939_ _g2791627943_))
                                      (_g2791527939_ _g2791627943_))))
                              (_g2791527939_ _g2791627943_))))
                      (_g2791527939_ _g2791627943_)))))
           (_g2791428061_ _stx27912_))))))
  (define |gerbil/core::<module-sugar>[:0:]#except-in|
    (gx#make-import-expander
     (lambda (_stx28066_)
       (let ((_g2806928093_
              (lambda (_g2807028089_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2807028089_))))
         (let ((_g2806828215_
                (lambda (_g2807028097_)
                  (if (gx#stx-pair? _g2807028097_)
                      (let ((_e2807328100_ (gx#syntax-e _g2807028097_)))
                        (let ((_hd2807428104_ (##car _e2807328100_))
                              (_tl2807528107_ (##cdr _e2807328100_)))
                          (if (gx#stx-pair? _tl2807528107_)
                              (let ((_e2807628110_
                                     (gx#syntax-e _tl2807528107_)))
                                (let ((_hd2807728114_ (##car _e2807628110_))
                                      (_tl2807828117_ (##cdr _e2807628110_)))
                                  (if (gx#stx-pair/null? _tl2807828117_)
                                      (if (fx>= (gx#stx-length _tl2807828117_)
                                                '0)
                                          (let ((_g29641_
                                                 (gx#syntax-split-splice
                                                  _tl2807828117_
                                                  '0)))
                                            (begin
                                              (let ((_g29642_
                                                     (values-count _g29641_)))
                                                (if (not (fx= _g29642_ 2))
                                                    (error "Context expects 2 values"
                                                           _g29642_)))
                                              (let ((_target2807928120_
                                                     (values-ref _g29641_ 0))
                                                    (_tl2808128123_
                                                     (values-ref _g29641_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2808128123_)
                                                    (letrec ((_loop2808228126_
                                                              (lambda (_hd2808028130_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _id2808628133_)
                        (if (gx#stx-pair? _hd2808028130_)
                            (let ((_e2808328136_ (gx#syntax-e _hd2808028130_)))
                              (let ((_lp-hd2808428140_ (##car _e2808328136_))
                                    (_lp-tl2808528143_ (##cdr _e2808328136_)))
                                (_loop2808228126_
                                 _lp-tl2808528143_
                                 (cons _lp-hd2808428140_ _id2808628133_))))
                            (let ((_id2808728146_ (reverse _id2808628133_)))
                              ((lambda (_L28150_ _L28152_)
                                 (if (gx#identifier-list?
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g2816928172_
                                                        _g2817028175_)
                                                 (cons _g2816928172_
                                                       _g2817028175_))
                                               '()
                                               _L28150_)))
                                     (let ((_keys28186_
                                            (gx#stx-map
                                             gx#core-identifier-key
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g2817728180_
                                                               _g2817828183_)
                                                        (cons _g2817728180_
                                                              _g2817828183_))
                                                      '()
                                                      _L28150_)))))
                                       (let ((_keytab28197_
                                              (let ((_ht28189_
                                                     (make-hash-table)))
                                                (begin
                                                  (for-each
                                                   (lambda (_g2819128193_)
                                                     (hash-put!
                                                      _ht28189_
                                                      _g2819128193_
                                                      '#t))
                                                   _keys28186_)
                                                  _ht28189_))))
                                         (let ((_imports28200_
                                                (gx#core-expand-import-source
                                                 _L28152_)))
                                           (let ((_fold-e28210_
                                                  (letrec ((_fold-e28203_
                                                            (lambda (_in28206_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _r28208_)
                      (if (gx#module-import? _in28206_)
                          (if (hash-get
                               _keytab28197_
                               (gx#module-import-name _in28206_))
                              _r28208_
                              (cons _in28206_ _r28208_))
                          (if (gx#import-set? _in28206_)
                              (foldl _fold-e28203_
                                     _r28208_
                                     (gx#import-set-imports _in28206_))
                              (cons _in28206_ _r28208_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _fold-e28203_)))
                                             (let ()
                                               (cons 'begin:
                                                     (foldl _fold-e28210_
                                                            '()
                                                            _imports28200_)))))))
                                     (_g2806928093_ _g2807028097_)))
                               _id2808728146_
                               _hd2807728114_))))))
              (_loop2808228126_ _target2807928120_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2806928093_
                                                     _g2807028097_)))))
                                          (_g2806928093_ _g2807028097_))
                                      (_g2806928093_ _g2807028097_))))
                              (_g2806928093_ _g2807028097_))))
                      (_g2806928093_ _g2807028097_)))))
           (_g2806828215_ _stx28066_))))))
  (define |gerbil/core::<module-sugar>[1]#module-import-rename|
    (lambda (_in28267_ _rename28269_)
      (gx#make-module-import
       (gx#module-import-source _in28267_)
       _rename28269_
       (gx#module-import-phi _in28267_)
       (gx#module-import-weak? _in28267_))))
  (define |gerbil/core::<module-sugar>[1]#prefix-identifier-key|
    (lambda (_name28220_ _pre28222_)
      (let ((_name2822328231_ _name28220_))
        (let ((_E2822628237_
               (lambda () (error '"No clause matching" _name2822328231_))))
          (let ((_else2822528243_
                 (lambda () (make-symbol _pre28222_ _name28220_))))
            (let ((_K2822728251_
                   (lambda (_mark28247_ _id28249_)
                     (cons (make-symbol _pre28222_ _id28249_) _mark28247_))))
              (if (##pair? _name2822328231_)
                  (let ((_hd2822828255_ (##car _name2822328231_))
                        (_tl2822928258_ (##cdr _name2822328231_)))
                    (let ((_id28261_ _hd2822828255_))
                      (let ((_mark28264_ _tl2822928258_))
                        (_K2822728251_ _mark28264_ _id28261_))))
                  (_else2822528243_))))))))
  (define |gerbil/core::<module-sugar>[:0:]#rename-in|
    (gx#make-import-expander
     (lambda (_stx28271_)
       (let ((_g2827428307_
              (lambda (_g2827528303_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2827528303_))))
         (let ((_g2827328493_
                (lambda (_g2827528311_)
                  (if (gx#stx-pair? _g2827528311_)
                      (let ((_e2827928314_ (gx#syntax-e _g2827528311_)))
                        (let ((_hd2828028318_ (##car _e2827928314_))
                              (_tl2828128321_ (##cdr _e2827928314_)))
                          (if (gx#stx-pair? _tl2828128321_)
                              (let ((_e2828228324_
                                     (gx#syntax-e _tl2828128321_)))
                                (let ((_hd2828328328_ (##car _e2828228324_))
                                      (_tl2828428331_ (##cdr _e2828228324_)))
                                  (if (gx#stx-pair/null? _tl2828428331_)
                                      (if (fx>= (gx#stx-length _tl2828428331_)
                                                '0)
                                          (let ((_g29643_
                                                 (gx#syntax-split-splice
                                                  _tl2828428331_
                                                  '0)))
                                            (begin
                                              (let ((_g29644_
                                                     (values-count _g29643_)))
                                                (if (not (fx= _g29644_ 2))
                                                    (error "Context expects 2 values"
                                                           _g29644_)))
                                              (let ((_target2828528334_
                                                     (values-ref _g29643_ 0))
                                                    (_tl2828728337_
                                                     (values-ref _g29643_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2828728337_)
                                                    (letrec ((_loop2828828340_
                                                              (lambda (_hd2828628344_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _new-id2829228347_
                               _id2829328349_)
                        (if (gx#stx-pair? _hd2828628344_)
                            (let ((_e2828928352_ (gx#syntax-e _hd2828628344_)))
                              (let ((_lp-hd2829028356_ (##car _e2828928352_))
                                    (_lp-tl2829128359_ (##cdr _e2828928352_)))
                                (if (gx#stx-pair? _lp-hd2829028356_)
                                    (let ((_e2829628362_
                                           (gx#syntax-e _lp-hd2829028356_)))
                                      (let ((_hd2829728366_
                                             (##car _e2829628362_))
                                            (_tl2829828369_
                                             (##cdr _e2829628362_)))
                                        (if (gx#stx-pair? _tl2829828369_)
                                            (let ((_e2829928372_
                                                   (gx#syntax-e
                                                    _tl2829828369_)))
                                              (let ((_hd2830028376_
                                                     (##car _e2829928372_))
                                                    (_tl2830128379_
                                                     (##cdr _e2829928372_)))
                                                (if (gx#stx-null?
                                                     _tl2830128379_)
                                                    (_loop2828828340_
                                                     _lp-tl2829128359_
                                                     (cons _hd2830028376_
                                                           _new-id2829228347_)
                                                     (cons _hd2829728366_
                                                           _id2829328349_))
                                                    (_g2827428307_
                                                     _g2827528311_))))
                                            (_g2827428307_ _g2827528311_))))
                                    (_g2827428307_ _g2827528311_))))
                            (let ((_new-id2829428382_
                                   (reverse _new-id2829228347_))
                                  (_id2829528385_ (reverse _id2829328349_)))
                              ((lambda (_L28388_ _L28390_ _L28391_)
                                 (if (if (gx#identifier-list?
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g2840928412_
                                                            _g2841028415_)
                                                     (cons _g2840928412_
                                                           _g2841028415_))
                                                   '()
                                                   _L28390_)))
                                         (gx#identifier-list?
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g2841728420_
                                                            _g2841828423_)
                                                     (cons _g2841728420_
                                                           _g2841828423_))
                                                   '()
                                                   _L28388_)))
                                         '#f)
                                     (let ((_keytab28426_ (make-hash-table)))
                                       (let ((_found28429_ (make-hash-table)))
                                         (let ((_g29645_
                                                (for-each
                                                 (lambda (_id28432_
                                                          _new-id28434_)
                                                   (hash-put!
                                                    _keytab28426_
                                                    (gx#core-identifier-key
                                                     _id28432_)
                                                    (gx#core-identifier-key
                                                     _new-id28434_)))
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g2843528438_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2843628441_)
                    (cons _g2843528438_ _g2843628441_))
                  '()
                  _L28390_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g2844328446_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2844428449_)
                    (cons _g2844328446_ _g2844428449_))
                  '()
                  _L28388_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ((_imports28454_
                                                  (gx#core-expand-import-source
                                                   _L28391_)))
                                             (let ((_fold-e28474_
                                                    (letrec ((_fold-e28457_
                                                              (lambda (_in28460_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _r28462_)
                        (if (gx#module-import? _in28460_)
                            (let ((_name28464_
                                   (gx#module-import-name _in28460_)))
                              (let ((_$e28467_
                                     (hash-get _keytab28426_ _name28464_)))
                                (if _$e28467_
                                    ((lambda (_rename28471_)
                                       (begin
                                         (hash-put!
                                          _found28429_
                                          _name28464_
                                          '#t)
                                         (cons (|gerbil/core::<module-sugar>[1]#module-import-rename|
                                                _in28460_
                                                _rename28471_)
                                               _r28462_)))
                                     _$e28467_)
                                    (cons _in28460_ _r28462_))))
                            (if (gx#import-set? _in28460_)
                                (foldl _fold-e28457_
                                       _r28462_
                                       (gx#import-set-imports _in28460_))
                                (cons _in28460_ _r28462_))))))
              _fold-e28457_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_new-imports28477_
                                                      (foldl _fold-e28474_
                                                             '()
                                                             _imports28454_)))
                                                 (let ()
                                                   (begin
                                                     (for-each
                                                      (lambda (_id28482_)
                                                        (if (hash-get
                                                             _found28429_
                                                             (gx#core-identifier-key
                                                              _id28482_))
                                                            '#!void
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; identifier is not in the import set"
                                                             _stx28271_
                                                             _id28482_)))
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g2848428487_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g2848528490_)
                         (cons _g2848428487_ _g2848528490_))
                       '()
                       _L28390_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons 'begin:
                                                           _new-imports28477_)))))))))
                                     (_g2827428307_ _g2827528311_)))
                               _new-id2829428382_
                               _id2829528385_
                               _hd2828328328_))))))
              (_loop2828828340_ _target2828528334_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2827428307_
                                                     _g2827528311_)))))
                                          (_g2827428307_ _g2827528311_))
                                      (_g2827428307_ _g2827528311_))))
                              (_g2827428307_ _g2827528311_))))
                      (_g2827428307_ _g2827528311_)))))
           (_g2827328493_ _stx28271_))))))
  (define |gerbil/core::<module-sugar>[:0:]#prefix-in|
    (gx#make-import-expander
     (lambda (_stx28499_)
       (let ((_g2850228520_
              (lambda (_g2850328516_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2850328516_))))
         (let ((_g2850128599_
                (lambda (_g2850328524_)
                  (if (gx#stx-pair? _g2850328524_)
                      (let ((_e2850628527_ (gx#syntax-e _g2850328524_)))
                        (let ((_hd2850728531_ (##car _e2850628527_))
                              (_tl2850828534_ (##cdr _e2850628527_)))
                          (if (gx#stx-pair? _tl2850828534_)
                              (let ((_e2850928537_
                                     (gx#syntax-e _tl2850828534_)))
                                (let ((_hd2851028541_ (##car _e2850928537_))
                                      (_tl2851128544_ (##cdr _e2850928537_)))
                                  (if (gx#stx-pair? _tl2851128544_)
                                      (let ((_e2851228547_
                                             (gx#syntax-e _tl2851128544_)))
                                        (let ((_hd2851328551_
                                               (##car _e2851228547_))
                                              (_tl2851428554_
                                               (##cdr _e2851228547_)))
                                          (if (gx#stx-null? _tl2851428554_)
                                              ((lambda (_L28557_ _L28559_)
                                                 (if (gx#identifier? _L28557_)
                                                     (let ((_pre28575_
                                                            (gx#stx-e
                                                             _L28557_)))
                                                       (let ((_imports28578_
                                                              (gx#core-expand-import-source
                                                               _L28559_)))
                                                         (let ((_rename-e28584_
                                                                (lambda (_name28581_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (|gerbil/core::<module-sugar>[1]#prefix-identifier-key|
                           _name28581_
                           _pre28575_))))
                   (let ((_fold-e28594_
                          (letrec ((_fold-e28587_
                                    (lambda (_in28590_ _r28592_)
                                      (if (gx#module-import? _in28590_)
                                          (cons (|gerbil/core::<module-sugar>[1]#module-import-rename|
                                                 _in28590_
                                                 (_rename-e28584_
                                                  (gx#module-import-name
                                                   _in28590_)))
                                                _r28592_)
                                          (if (gx#import-set? _in28590_)
                                              (foldl _fold-e28587_
                                                     _r28592_
                                                     (gx#import-set-imports
                                                      _in28590_))
                                              (cons _in28590_ _r28592_))))))
                            _fold-e28587_)))
                     (let ()
                       (cons 'begin:
                             (foldl _fold-e28594_ '() _imports28578_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2850228520_
                                                      _g2850328524_)))
                                               _hd2851328551_
                                               _hd2851028541_)
                                              (_g2850228520_ _g2850328524_))))
                                      (_g2850228520_ _g2850328524_))))
                              (_g2850228520_ _g2850328524_))))
                      (_g2850228520_ _g2850328524_)))))
           (_g2850128599_ _stx28499_))))))
  (define |gerbil/core::<module-sugar>[:0:]#except-out|
    (gx#make-export-expander
     (lambda (_stx28603_)
       (let ((_g2860628630_
              (lambda (_g2860728626_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2860728626_))))
         (let ((_g2860528752_
                (lambda (_g2860728634_)
                  (if (gx#stx-pair? _g2860728634_)
                      (let ((_e2861028637_ (gx#syntax-e _g2860728634_)))
                        (let ((_hd2861128641_ (##car _e2861028637_))
                              (_tl2861228644_ (##cdr _e2861028637_)))
                          (if (gx#stx-pair? _tl2861228644_)
                              (let ((_e2861328647_
                                     (gx#syntax-e _tl2861228644_)))
                                (let ((_hd2861428651_ (##car _e2861328647_))
                                      (_tl2861528654_ (##cdr _e2861328647_)))
                                  (if (gx#stx-pair/null? _tl2861528654_)
                                      (if (fx>= (gx#stx-length _tl2861528654_)
                                                '0)
                                          (let ((_g29646_
                                                 (gx#syntax-split-splice
                                                  _tl2861528654_
                                                  '0)))
                                            (begin
                                              (let ((_g29647_
                                                     (values-count _g29646_)))
                                                (if (not (fx= _g29647_ 2))
                                                    (error "Context expects 2 values"
                                                           _g29647_)))
                                              (let ((_target2861628657_
                                                     (values-ref _g29646_ 0))
                                                    (_tl2861828660_
                                                     (values-ref _g29646_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2861828660_)
                                                    (letrec ((_loop2861928663_
                                                              (lambda (_hd2861728667_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _id2862328670_)
                        (if (gx#stx-pair? _hd2861728667_)
                            (let ((_e2862028673_ (gx#syntax-e _hd2861728667_)))
                              (let ((_lp-hd2862128677_ (##car _e2862028673_))
                                    (_lp-tl2862228680_ (##cdr _e2862028673_)))
                                (_loop2861928663_
                                 _lp-tl2862228680_
                                 (cons _lp-hd2862128677_ _id2862328670_))))
                            (let ((_id2862428683_ (reverse _id2862328670_)))
                              ((lambda (_L28687_ _L28689_)
                                 (if (gx#identifier-list?
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g2870628709_
                                                        _g2870728712_)
                                                 (cons _g2870628709_
                                                       _g2870728712_))
                                               '()
                                               _L28687_)))
                                     (let ((_keys28723_
                                            (gx#stx-map
                                             gx#core-identifier-key
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g2871428717_
                                                               _g2871528720_)
                                                        (cons _g2871428717_
                                                              _g2871528720_))
                                                      '()
                                                      _L28687_)))))
                                       (let ((_keytab28734_
                                              (let ((_ht28726_
                                                     (make-hash-table)))
                                                (begin
                                                  (for-each
                                                   (lambda (_g2872828730_)
                                                     (hash-put!
                                                      _ht28726_
                                                      _g2872828730_
                                                      '#t))
                                                   _keys28723_)
                                                  _ht28726_))))
                                         (let ((_exports28737_
                                                (gx#core-expand-export-source
                                                 _L28689_)))
                                           (let ((_fold-e28747_
                                                  (letrec ((_fold-e28740_
                                                            (lambda (_out28743_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _r28745_)
                      (if (gx#module-export? _out28743_)
                          (if (hash-get
                               _keytab28734_
                               (gx#module-export-name _out28743_))
                              _r28745_
                              (cons _out28743_ _r28745_))
                          (if (gx#export-set? _out28743_)
                              (foldl _fold-e28740_
                                     _r28745_
                                     (gx#export-set-exports _out28743_))
                              _r28745_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _fold-e28740_)))
                                             (let ()
                                               (cons 'begin:
                                                     (foldl _fold-e28747_
                                                            '()
                                                            _exports28737_)))))))
                                     (_g2860628630_ _g2860728634_)))
                               _id2862428683_
                               _hd2861428651_))))))
              (_loop2861928663_ _target2861628657_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2860628630_
                                                     _g2860728634_)))))
                                          (_g2860628630_ _g2860728634_))
                                      (_g2860628630_ _g2860728634_))))
                              (_g2860628630_ _g2860728634_))))
                      (_g2860628630_ _g2860728634_)))))
           (_g2860528752_ _stx28603_))))))
  (define |gerbil/core::<module-sugar>[1]#module-export-rename|
    (lambda (_out28757_ _rename28759_)
      (gx#make-module-export
       (gx#module-export-context _out28757_)
       (gx#module-export-key _out28757_)
       (gx#module-export-phi _out28757_)
       _rename28759_
       (gx#module-export-weak? _out28757_))))
  (define |gerbil/core::<module-sugar>[:0:]#rename-out|
    (gx#make-export-expander
     (lambda (_stx28761_)
       (let ((_g2876428797_
              (lambda (_g2876528793_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2876528793_))))
         (let ((_g2876328983_
                (lambda (_g2876528801_)
                  (if (gx#stx-pair? _g2876528801_)
                      (let ((_e2876928804_ (gx#syntax-e _g2876528801_)))
                        (let ((_hd2877028808_ (##car _e2876928804_))
                              (_tl2877128811_ (##cdr _e2876928804_)))
                          (if (gx#stx-pair? _tl2877128811_)
                              (let ((_e2877228814_
                                     (gx#syntax-e _tl2877128811_)))
                                (let ((_hd2877328818_ (##car _e2877228814_))
                                      (_tl2877428821_ (##cdr _e2877228814_)))
                                  (if (gx#stx-pair/null? _tl2877428821_)
                                      (if (fx>= (gx#stx-length _tl2877428821_)
                                                '0)
                                          (let ((_g29648_
                                                 (gx#syntax-split-splice
                                                  _tl2877428821_
                                                  '0)))
                                            (begin
                                              (let ((_g29649_
                                                     (values-count _g29648_)))
                                                (if (not (fx= _g29649_ 2))
                                                    (error "Context expects 2 values"
                                                           _g29649_)))
                                              (let ((_target2877528824_
                                                     (values-ref _g29648_ 0))
                                                    (_tl2877728827_
                                                     (values-ref _g29648_ 1)))
                                                (if (gx#stx-null?
                                                     _tl2877728827_)
                                                    (letrec ((_loop2877828830_
                                                              (lambda (_hd2877628834_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _new-id2878228837_
                               _id2878328839_)
                        (if (gx#stx-pair? _hd2877628834_)
                            (let ((_e2877928842_ (gx#syntax-e _hd2877628834_)))
                              (let ((_lp-hd2878028846_ (##car _e2877928842_))
                                    (_lp-tl2878128849_ (##cdr _e2877928842_)))
                                (if (gx#stx-pair? _lp-hd2878028846_)
                                    (let ((_e2878628852_
                                           (gx#syntax-e _lp-hd2878028846_)))
                                      (let ((_hd2878728856_
                                             (##car _e2878628852_))
                                            (_tl2878828859_
                                             (##cdr _e2878628852_)))
                                        (if (gx#stx-pair? _tl2878828859_)
                                            (let ((_e2878928862_
                                                   (gx#syntax-e
                                                    _tl2878828859_)))
                                              (let ((_hd2879028866_
                                                     (##car _e2878928862_))
                                                    (_tl2879128869_
                                                     (##cdr _e2878928862_)))
                                                (if (gx#stx-null?
                                                     _tl2879128869_)
                                                    (_loop2877828830_
                                                     _lp-tl2878128849_
                                                     (cons _hd2879028866_
                                                           _new-id2878228837_)
                                                     (cons _hd2878728856_
                                                           _id2878328839_))
                                                    (_g2876428797_
                                                     _g2876528801_))))
                                            (_g2876428797_ _g2876528801_))))
                                    (_g2876428797_ _g2876528801_))))
                            (let ((_new-id2878428872_
                                   (reverse _new-id2878228837_))
                                  (_id2878528875_ (reverse _id2878328839_)))
                              ((lambda (_L28878_ _L28880_ _L28881_)
                                 (if (if (gx#identifier-list?
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g2889928902_
                                                            _g2890028905_)
                                                     (cons _g2889928902_
                                                           _g2890028905_))
                                                   '()
                                                   _L28880_)))
                                         (gx#identifier-list?
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g2890728910_
                                                            _g2890828913_)
                                                     (cons _g2890728910_
                                                           _g2890828913_))
                                                   '()
                                                   _L28878_)))
                                         '#f)
                                     (let ((_keytab28916_ (make-hash-table)))
                                       (let ((_found28919_ (make-hash-table)))
                                         (let ((_g29650_
                                                (for-each
                                                 (lambda (_id28922_
                                                          _new-id28924_)
                                                   (hash-put!
                                                    _keytab28916_
                                                    (gx#core-identifier-key
                                                     _id28922_)
                                                    (gx#core-identifier-key
                                                     _new-id28924_)))
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g2892528928_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2892628931_)
                    (cons _g2892528928_ _g2892628931_))
                  '()
                  _L28880_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g2893328936_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g2893428939_)
                    (cons _g2893328936_ _g2893428939_))
                  '()
                  _L28878_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ((_exports28944_
                                                  (gx#core-expand-export-source
                                                   _L28881_)))
                                             (let ((_fold-e28964_
                                                    (letrec ((_fold-e28947_
                                                              (lambda (_out28950_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _r28952_)
                        (if (gx#module-export? _out28950_)
                            (let ((_name28954_
                                   (gx#module-export-name _out28950_)))
                              (let ((_$e28957_
                                     (hash-get _keytab28916_ _name28954_)))
                                (if _$e28957_
                                    ((lambda (_rename28961_)
                                       (begin
                                         (hash-put!
                                          _found28919_
                                          _name28954_
                                          '#t)
                                         (cons (|gerbil/core::<module-sugar>[1]#module-export-rename|
                                                _out28950_
                                                _rename28961_)
                                               _r28952_)))
                                     _$e28957_)
                                    (cons _out28950_ _r28952_))))
                            (if (gx#export-set? _out28950_)
                                (foldl _fold-e28947_
                                       _r28952_
                                       (gx#export-set-exports _out28950_))
                                (cons _out28950_ _r28952_))))))
              _fold-e28947_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (let ((_new-exports28967_
                                                      (foldl _fold-e28964_
                                                             '()
                                                             _exports28944_)))
                                                 (let ()
                                                   (begin
                                                     (for-each
                                                      (lambda (_id28972_)
                                                        (if (hash-get
                                                             _found28919_
                                                             (gx#core-identifier-key
                                                              _id28972_))
                                                            '#!void
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax; identifier is not in the export set"
                                                             _stx28761_
                                                             _id28972_)))
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g2897428977_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g2897528980_)
                         (cons _g2897428977_ _g2897528980_))
                       '()
                       _L28880_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons 'begin:
                                                           _new-exports28967_)))))))))
                                     (_g2876428797_ _g2876528801_)))
                               _new-id2878428872_
                               _id2878528875_
                               _hd2877328818_))))))
              (_loop2877828830_ _target2877528824_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g2876428797_
                                                     _g2876528801_)))))
                                          (_g2876428797_ _g2876528801_))
                                      (_g2876428797_ _g2876528801_))))
                              (_g2876428797_ _g2876528801_))))
                      (_g2876428797_ _g2876528801_)))))
           (_g2876328983_ _stx28761_))))))
  (define |gerbil/core::<module-sugar>[:0:]#prefix-out|
    (gx#make-export-expander
     (lambda (_stx28989_)
       (let ((_g2899229010_
              (lambda (_g2899329006_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2899329006_))))
         (let ((_g2899129089_
                (lambda (_g2899329014_)
                  (if (gx#stx-pair? _g2899329014_)
                      (let ((_e2899629017_ (gx#syntax-e _g2899329014_)))
                        (let ((_hd2899729021_ (##car _e2899629017_))
                              (_tl2899829024_ (##cdr _e2899629017_)))
                          (if (gx#stx-pair? _tl2899829024_)
                              (let ((_e2899929027_
                                     (gx#syntax-e _tl2899829024_)))
                                (let ((_hd2900029031_ (##car _e2899929027_))
                                      (_tl2900129034_ (##cdr _e2899929027_)))
                                  (if (gx#stx-pair? _tl2900129034_)
                                      (let ((_e2900229037_
                                             (gx#syntax-e _tl2900129034_)))
                                        (let ((_hd2900329041_
                                               (##car _e2900229037_))
                                              (_tl2900429044_
                                               (##cdr _e2900229037_)))
                                          (if (gx#stx-null? _tl2900429044_)
                                              ((lambda (_L29047_ _L29049_)
                                                 (if (gx#identifier? _L29047_)
                                                     (let ((_pre29065_
                                                            (gx#stx-e
                                                             _L29047_)))
                                                       (let ((_exports29068_
                                                              (gx#core-expand-export-source
                                                               _L29049_)))
                                                         (let ((_rename-e29074_
                                                                (lambda (_name29071_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (|gerbil/core::<module-sugar>[1]#prefix-identifier-key|
                           _name29071_
                           _pre29065_))))
                   (let ((_fold-e29084_
                          (letrec ((_fold-e29077_
                                    (lambda (_out29080_ _r29082_)
                                      (if (gx#module-export? _out29080_)
                                          (cons (|gerbil/core::<module-sugar>[1]#module-export-rename|
                                                 _out29080_
                                                 (_rename-e29074_
                                                  (gx#module-export-name
                                                   _out29080_)))
                                                _r29082_)
                                          (if (gx#export-set? _out29080_)
                                              (foldl _fold-e29077_
                                                     _r29082_
                                                     (gx#export-set-exports
                                                      _out29080_))
                                              (cons _out29080_ _r29082_))))))
                            _fold-e29077_)))
                     (let ()
                       (cons 'begin:
                             (foldl _fold-e29084_ '() _exports29068_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g2899229010_
                                                      _g2899329014_)))
                                               _hd2900329041_
                                               _hd2900029031_)
                                              (_g2899229010_ _g2899329014_))))
                                      (_g2899229010_ _g2899329014_))))
                              (_g2899229010_ _g2899329014_))))
                      (_g2899229010_ _g2899329014_)))))
           (_g2899129089_ _stx28989_))))))
  (define |gerbil/core::<module-sugar>[:0:]#struct-out|
    (gx#make-export-expander
     (lambda (_stx29093_)
       (let ((_g2909629116_
              (lambda (_g2909729112_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g2909729112_))))
         (let ((_g2909529351_
                (lambda (_g2909729120_)
                  (if (gx#stx-pair? _g2909729120_)
                      (let ((_e2909929123_ (gx#syntax-e _g2909729120_)))
                        (let ((_hd2910029127_ (##car _e2909929123_))
                              (_tl2910129130_ (##cdr _e2909929123_)))
                          (if (gx#stx-pair/null? _tl2910129130_)
                              (if (fx>= (gx#stx-length _tl2910129130_) '0)
                                  (let ((_g29651_
                                         (gx#syntax-split-splice
                                          _tl2910129130_
                                          '0)))
                                    (begin
                                      (let ((_g29652_ (values-count _g29651_)))
                                        (if (not (fx= _g29652_ 2))
                                            (error "Context expects 2 values"
                                                   _g29652_)))
                                      (let ((_target2910229133_
                                             (values-ref _g29651_ 0))
                                            (_tl2910429136_
                                             (values-ref _g29651_ 1)))
                                        (if (gx#stx-null? _tl2910429136_)
                                            (letrec ((_loop2910529139_
                                                      (lambda (_hd2910329143_
                                                               _id2910929146_)
                                                        (if (gx#stx-pair?
                                                             _hd2910329143_)
                                                            (let ((_e2910629149_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _hd2910329143_)))
                      (let ((_lp-hd2910729153_ (##car _e2910629149_))
                            (_lp-tl2910829156_ (##cdr _e2910629149_)))
                        (_loop2910529139_
                         _lp-tl2910829156_
                         (cons _lp-hd2910729153_ _id2910929146_))))
                    (let ((_id2911029159_ (reverse _id2910929146_)))
                      ((lambda (_L29163_)
                         ((letrec ((_lp29179_
                                    (lambda (_rest29182_ _ids29184_)
                                      (let ((_g2918729199_
                                             (lambda (_g2918829195_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g2918829195_))))
                                        (let ((_g2918629210_
                                               (lambda (_g2918829203_)
                                                 ((lambda ()
                                                    (cons 'begin:
                                                          _ids29184_))))))
                                          (let ((_g2918529339_
                                                 (lambda (_g2918829214_)
                                                   (if (gx#stx-pair?
                                                        _g2918829214_)
                                                       (let ((_e2919129217_
                                                              (gx#syntax-e
                                                               _g2918829214_)))
                                                         (let ((_hd2919229221_
                                                                (##car _e2919129217_))
                                                               (_tl2919329224_
                                                                (##cdr _e2919129217_)))
                                                           ((lambda (_L29227_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _L29229_)
                      (let ((_info29244_
                             (gx#syntax-local-value _L29229_ false)))
                        (if (|gerbil/core::<MOP>::<MOP:2>[1]#expander-type-info?|
                             _info29244_)
                            (let ((_g2924629263_
                                   (slot-ref
                                    _info29244_
                                    'expander-identifiers)))
                              (let ((_E2924829269_
                                     (lambda ()
                                       (error '"No clause matching"
                                              _g2924629263_))))
                                (let ((_K2924929281_
                                       (lambda (_setf29273_
                                                _getf29275_
                                                _type?29276_
                                                _make-type29277_
                                                _type::t29278_
                                                _super29279_)
                                         (_lp29179_
                                          _L29227_
                                          (cons _L29229_
                                                (cons _type::t29278_
                                                      (cons _make-type29277_
                                                            (cons _type?29276_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (foldr cons
                                 (foldr cons _ids29184_ _setf29273_)
                                 _getf29275_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (##pair? _g2924629263_)
                                      (let ((_hd2925029285_
                                             (##car _g2924629263_))
                                            (_tl2925129288_
                                             (##cdr _g2924629263_)))
                                        (let ((_super29291_ _hd2925029285_))
                                          (if (##pair? _tl2925129288_)
                                              (let ((_hd2925229294_
                                                     (##car _tl2925129288_))
                                                    (_tl2925329297_
                                                     (##cdr _tl2925129288_)))
                                                (let ((_type::t29300_
                                                       _hd2925229294_))
                                                  (if (##pair? _tl2925329297_)
                                                      (let ((_hd2925429303_
                                                             (##car _tl2925329297_))
                                                            (_tl2925529306_
                                                             (##cdr _tl2925329297_)))
                                                        (let ((_make-type29309_
                                                               _hd2925429303_))
                                                          (if (##pair? _tl2925529306_)
                                                              (let ((_hd2925629312_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (##car _tl2925529306_))
                            (_tl2925729315_ (##cdr _tl2925529306_)))
                        (let ((_type?29318_ _hd2925629312_))
                          (if (##pair? _tl2925729315_)
                              (let ((_hd2925829321_ (##car _tl2925729315_))
                                    (_tl2925929324_ (##cdr _tl2925729315_)))
                                (let ((_getf29327_ _hd2925829321_))
                                  (if (##pair? _tl2925929324_)
                                      (let ((_hd2926029330_
                                             (##car _tl2925929324_))
                                            (_tl2926129333_
                                             (##cdr _tl2925929324_)))
                                        (let ((_setf29336_ _hd2926029330_))
                                          (if (##null? _tl2926129333_)
                                              (_K2924929281_
                                               _setf29336_
                                               _getf29327_
                                               _type?29318_
                                               _make-type29309_
                                               _type::t29300_
                                               _super29291_)
                                              (_E2924829269_))))
                                      (_E2924829269_))))
                              (_E2924829269_))))
                      (_E2924829269_))))
              (_E2924829269_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E2924829269_))))
                                      (_E2924829269_)))))
                            (gx#raise-syntax-error
                             '#f
                             '"Incomplete type info"
                             _stx29093_
                             _L29229_))))
                    _tl2919329224_
                    _hd2919229221_)))
               (_g2918629210_ _g2918829214_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g2918529339_ _rest29182_)))))))
                            _lp29179_)
                          (begin
                            '#!void
                            (foldr (lambda (_g2934229345_ _g2934329348_)
                                     (cons _g2934229345_ _g2934329348_))
                                   '()
                                   _L29163_))
                          '()))
                       _id2911029159_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop2910529139_
                                               _target2910229133_
                                               '()))
                                            (_g2909629116_ _g2909729120_)))))
                                  (_g2909629116_ _g2909729120_))
                              (_g2909629116_ _g2909729120_))))
                      (_g2909629116_ _g2909729120_)))))
           (_g2909529351_ _stx29093_)))))))
