(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx6448_)
      (let ((_g64526470_
             (lambda (_g64536466_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g64536466_))))
        (let ((_g64516526_
               (lambda (_g64536474_)
                 (if (gx#stx-pair? _g64536474_)
                     (let ((_e64566477_ (gx#syntax-e _g64536474_)))
                       (let ((_hd64576481_ (##car _e64566477_))
                             (_tl64586484_ (##cdr _e64566477_)))
                         (if (gx#stx-pair? _tl64586484_)
                             (let ((_e64596487_ (gx#syntax-e _tl64586484_)))
                               (let ((_hd64606491_ (##car _e64596487_))
                                     (_tl64616494_ (##cdr _e64596487_)))
                                 (if (gx#stx-pair? _tl64616494_)
                                     (let ((_e64626497_
                                            (gx#syntax-e _tl64616494_)))
                                       (let ((_hd64636501_ (##car _e64626497_))
                                             (_tl64646504_
                                              (##cdr _e64626497_)))
                                         (if (gx#stx-null? _tl64646504_)
                                             ((lambda (_L6507_ _L6509_)
                                                (if (gx#identifier? _L6509_)
                                                    (cons (gx#datum->syntax
                                                           '#f
                                                           'optimizer-declare-type!)
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'quote)
                              (cons _L6509_ '()))
                        (cons _L6507_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g64526470_ _g64536474_)))
                                              _hd64636501_
                                              _hd64606491_)
                                             (_g64526470_ _g64536474_))))
                                     (_g64526470_ _g64536474_))))
                             (_g64526470_ _g64536474_))))
                     (_g64526470_ _g64536474_)))))
          (_g64516526_ _$stx6448_)))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx6530_)
      (let ((_g65346563_
             (lambda (_g65356559_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g65356559_))))
        (let ((_g65336663_
               (lambda (_g65356567_)
                 (if (gx#stx-pair? _g65356567_)
                     (let ((_e65386570_ (gx#syntax-e _g65356567_)))
                       (let ((_hd65396574_ (##car _e65386570_))
                             (_tl65406577_ (##cdr _e65386570_)))
                         (if (gx#stx-pair/null? _tl65406577_)
                             (if (fx>= (gx#stx-length _tl65406577_) '0)
                                 (let ((_g7282_ (gx#syntax-split-splice
                                                 _tl65406577_
                                                 '0)))
                                   (begin
                                     (let ((_g7283_ (values-count _g7282_)))
                                       (if (not (fx= _g7283_ 2))
                                           (error "Context expects 2 values"
                                                  _g7283_)))
                                     (let ((_target65416580_
                                            (values-ref _g7282_ 0))
                                           (_tl65436583_
                                            (values-ref _g7282_ 1)))
                                       (if (gx#stx-null? _tl65436583_)
                                           (letrec ((_loop65446586_
                                                     (lambda (_hd65426590_
                                                              _type65486593_
                                                              _symbol65496595_)
                                                       (if (gx#stx-pair?
                                                            _hd65426590_)
                                                           (let ((_e65456598_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _hd65426590_)))
                     (let ((_lp-hd65466602_ (##car _e65456598_))
                           (_lp-tl65476605_ (##cdr _e65456598_)))
                       (if (gx#stx-pair? _lp-hd65466602_)
                           (let ((_e65526608_ (gx#syntax-e _lp-hd65466602_)))
                             (let ((_hd65536612_ (##car _e65526608_))
                                   (_tl65546615_ (##cdr _e65526608_)))
                               (if (gx#stx-pair? _tl65546615_)
                                   (let ((_e65556618_
                                          (gx#syntax-e _tl65546615_)))
                                     (let ((_hd65566622_ (##car _e65556618_))
                                           (_tl65576625_ (##cdr _e65556618_)))
                                       (if (gx#stx-null? _tl65576625_)
                                           (_loop65446586_
                                            _lp-tl65476605_
                                            (cons _hd65566622_ _type65486593_)
                                            (cons _hd65536612_
                                                  _symbol65496595_))
                                           (_g65346563_ _g65356567_))))
                                   (_g65346563_ _g65356567_))))
                           (_g65346563_ _g65356567_))))
                   (let ((_type65506628_ (reverse _type65486593_))
                         (_symbol65516631_ (reverse _symbol65496595_)))
                     ((lambda (_L6634_ _L6636_)
                        (cons (gx#datum->syntax '#f 'begin)
                              (begin
                                (gx#syntax-check-splice-targets
                                 _L6634_
                                 _L6636_)
                                (foldr (lambda (_g66516655_
                                                _g66526658_
                                                _g66536660_)
                                         (cons (cons (gx#datum->syntax
                                                      '#f
                                                      'declare-type)
                                                     (cons _g66526658_
                                                           (cons _g66516655_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _g66536660_))
                                       '()
                                       _L6634_
                                       _L6636_))))
                      _type65506628_
                      _symbol65516631_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_loop65446586_
                                              _target65416580_
                                              '()
                                              '()))
                                           (_g65346563_ _g65356567_)))))
                                 (_g65346563_ _g65356567_))
                             (_g65346563_ _g65356567_))))
                     (_g65346563_ _g65356567_)))))
          (_g65336663_ _$stx6530_)))))
  (define |gxc[:0:]#@struct-type|
    (lambda (_$stx6668_)
      (let ((_g66746740_
             (lambda (_g66756736_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g66756736_))))
        (let ((_g66736825_
               (lambda (_g66756744_)
                 (if (gx#stx-pair? _g66756744_)
                     (let ((_e67206747_ (gx#syntax-e _g66756744_)))
                       (let ((_hd67216751_ (##car _e67206747_))
                             (_tl67226754_ (##cdr _e67206747_)))
                         (if (gx#stx-pair? _tl67226754_)
                             (let ((_e67236757_ (gx#syntax-e _tl67226754_)))
                               (let ((_hd67246761_ (##car _e67236757_))
                                     (_tl67256764_ (##cdr _e67236757_)))
                                 (if (gx#stx-pair? _tl67256764_)
                                     (let ((_e67266767_
                                            (gx#syntax-e _tl67256764_)))
                                       (let ((_hd67276771_ (##car _e67266767_))
                                             (_tl67286774_
                                              (##cdr _e67266767_)))
                                         (if (gx#stx-pair? _tl67286774_)
                                             (let ((_e67296777_
                                                    (gx#syntax-e
                                                     _tl67286774_)))
                                               (let ((_hd67306781_
                                                      (##car _e67296777_))
                                                     (_tl67316784_
                                                      (##cdr _e67296777_)))
                                                 (if (gx#stx-pair?
                                                      _tl67316784_)
                                                     (let ((_e67326787_
                                                            (gx#syntax-e
                                                             _tl67316784_)))
                                                       (let ((_hd67336791_
                                                              (##car _e67326787_))
                                                             (_tl67346794_
                                                              (##cdr _e67326787_)))
                                                         (if (gx#stx-null?
                                                              _tl67346794_)
                                                             ((lambda (_L6797_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _L6799_
                               _L6800_
                               _L6801_
                               _L6802_)
                        (cons _L6802_
                              (cons (gx#datum->syntax '#f 'type)
                                    (cons _L6800_
                                          (cons _L6799_
                                                (cons _L6797_
                                                      (cons '#f '())))))))
                      _hd67336791_
                      _hd67306781_
                      _hd67276771_
                      _hd67246761_
                      _hd67216751_)
                     (_g66746740_ _g66756744_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g66746740_
                                                      _g66756744_))))
                                             (_g66746740_ _g66756744_))))
                                     (_g66746740_ _g66756744_))))
                             (_g66746740_ _g66756744_))))
                     (_g66746740_ _g66756744_)))))
          (let ((_g66726895_
                 (lambda (_g66756829_)
                   (if (gx#stx-pair? _g66756829_)
                       (let ((_e67036832_ (gx#syntax-e _g66756829_)))
                         (let ((_hd67046836_ (##car _e67036832_))
                               (_tl67056839_ (##cdr _e67036832_)))
                           (if (gx#stx-pair? _tl67056839_)
                               (let ((_e67066842_ (gx#syntax-e _tl67056839_)))
                                 (let ((_hd67076846_ (##car _e67066842_))
                                       (_tl67086849_ (##cdr _e67066842_)))
                                   (if (gx#stx-pair? _tl67086849_)
                                       (let ((_e67096852_
                                              (gx#syntax-e _tl67086849_)))
                                         (let ((_hd67106856_
                                                (##car _e67096852_))
                                               (_tl67116859_
                                                (##cdr _e67096852_)))
                                           (if (gx#stx-pair? _tl67116859_)
                                               (let ((_e67126862_
                                                      (gx#syntax-e
                                                       _tl67116859_)))
                                                 (let ((_hd67136866_
                                                        (##car _e67126862_))
                                                       (_tl67146869_
                                                        (##cdr _e67126862_)))
                                                   (if (gx#stx-null?
                                                        _tl67146869_)
                                                       ((lambda (_L6872_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _L6874_
                         _L6875_
                         _L6876_)
                  (cons _L6876_
                        (cons _L6875_
                              (cons _L6874_
                                    (cons _L6872_
                                          (cons '#f (cons '#f '())))))))
                _hd67136866_
                _hd67106856_
                _hd67076846_
                _hd67046836_)
               (_g66736825_ _g66756829_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_g66736825_ _g66756829_))))
                                       (_g66736825_ _g66756829_))))
                               (_g66736825_ _g66756829_))))
                       (_g66736825_ _g66756829_)))))
            (let ((_g66716991_
                   (lambda (_g66756899_)
                     (if (gx#stx-pair? _g66756899_)
                         (let ((_e66816902_ (gx#syntax-e _g66756899_)))
                           (let ((_hd66826906_ (##car _e66816902_))
                                 (_tl66836909_ (##cdr _e66816902_)))
                             (if (gx#stx-pair? _tl66836909_)
                                 (let ((_e66846912_
                                        (gx#syntax-e _tl66836909_)))
                                   (let ((_hd66856916_ (##car _e66846912_))
                                         (_tl66866919_ (##cdr _e66846912_)))
                                     (if (gx#stx-pair? _tl66866919_)
                                         (let ((_e66876922_
                                                (gx#syntax-e _tl66866919_)))
                                           (let ((_hd66886926_
                                                  (##car _e66876922_))
                                                 (_tl66896929_
                                                  (##cdr _e66876922_)))
                                             (if (gx#stx-pair? _tl66896929_)
                                                 (let ((_e66906932_
                                                        (gx#syntax-e
                                                         _tl66896929_)))
                                                   (let ((_hd66916936_
                                                          (##car _e66906932_))
                                                         (_tl66926939_
                                                          (##cdr _e66906932_)))
                                                     (if (gx#stx-pair?
                                                          _tl66926939_)
                                                         (let ((_e66936942_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl66926939_)))
                   (let ((_hd66946946_ (##car _e66936942_))
                         (_tl66956949_ (##cdr _e66936942_)))
                     (if (gx#stx-pair? _tl66956949_)
                         (let ((_e66966952_ (gx#syntax-e _tl66956949_)))
                           (let ((_hd66976956_ (##car _e66966952_))
                                 (_tl66986959_ (##cdr _e66966952_)))
                             (if (gx#stx-null? _tl66986959_)
                                 ((lambda (_L6962_
                                           _L6964_
                                           _L6965_
                                           _L6966_
                                           _L6967_)
                                    (cons (gx#datum->syntax
                                           '#f
                                           'make-!struct-type)
                                          (cons (cons (gx#datum->syntax
                                                       '#f
                                                       'quote)
                                                      (cons _L6967_ '()))
                                                (cons (cons (gx#datum->syntax
                                                             '#f
                                                             'quote)
                                                            (cons _L6966_ '()))
                                                      (cons _L6965_
                                                            (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax '#f 'quote)
                                      (cons _L6964_ '()))
                                (cons (cons (gx#datum->syntax '#f 'quote)
                                            (cons _L6962_ '()))
                                      '()))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _hd66976956_
                                  _hd66946946_
                                  _hd66916936_
                                  _hd66886926_
                                  _hd66856916_)
                                 (_g66726895_ _g66756899_))))
                         (_g66726895_ _g66756899_))))
                 (_g66726895_ _g66756899_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g66726895_ _g66756899_))))
                                         (_g66726895_ _g66756899_))))
                                 (_g66726895_ _g66756899_))))
                         (_g66726895_ _g66756899_)))))
              (_g66716991_ _$stx6668_)))))))
  (define |gxc[:0:]#@struct-pred|
    (lambda (_$stx6995_)
      (let ((_g69997013_
             (lambda (_g70007009_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g70007009_))))
        (let ((_g69987054_
               (lambda (_g70007017_)
                 (if (gx#stx-pair? _g70007017_)
                     (let ((_e70027020_ (gx#syntax-e _g70007017_)))
                       (let ((_hd70037024_ (##car _e70027020_))
                             (_tl70047027_ (##cdr _e70027020_)))
                         (if (gx#stx-pair? _tl70047027_)
                             (let ((_e70057030_ (gx#syntax-e _tl70047027_)))
                               (let ((_hd70067034_ (##car _e70057030_))
                                     (_tl70077037_ (##cdr _e70057030_)))
                                 (if (gx#stx-null? _tl70077037_)
                                     ((lambda (_L7040_)
                                        (cons (gx#datum->syntax
                                               '#f
                                               'make-!struct-pred)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'quote)
                                                          (cons _L7040_ '()))
                                                    '())))
                                      _hd70067034_)
                                     (_g69997013_ _g70007017_))))
                             (_g69997013_ _g70007017_))))
                     (_g69997013_ _g70007017_)))))
          (_g69987054_ _$stx6995_)))))
  (define |gxc[:0:]#@struct-cons|
    (lambda (_$stx7058_)
      (let ((_g70627076_
             (lambda (_g70637072_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g70637072_))))
        (let ((_g70617117_
               (lambda (_g70637080_)
                 (if (gx#stx-pair? _g70637080_)
                     (let ((_e70657083_ (gx#syntax-e _g70637080_)))
                       (let ((_hd70667087_ (##car _e70657083_))
                             (_tl70677090_ (##cdr _e70657083_)))
                         (if (gx#stx-pair? _tl70677090_)
                             (let ((_e70687093_ (gx#syntax-e _tl70677090_)))
                               (let ((_hd70697097_ (##car _e70687093_))
                                     (_tl70707100_ (##cdr _e70687093_)))
                                 (if (gx#stx-null? _tl70707100_)
                                     ((lambda (_L7103_)
                                        (cons (gx#datum->syntax
                                               '#f
                                               'make-!struct-cons)
                                              (cons (cons (gx#datum->syntax
                                                           '#f
                                                           'quote)
                                                          (cons _L7103_ '()))
                                                    '())))
                                      _hd70697097_)
                                     (_g70627076_ _g70637080_))))
                             (_g70627076_ _g70637080_))))
                     (_g70627076_ _g70637080_)))))
          (_g70617117_ _$stx7058_)))))
  (define |gxc[:0:]#@struct-getf|
    (lambda (_$stx7121_)
      (let ((_g71257143_
             (lambda (_g71267139_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g71267139_))))
        (let ((_g71247198_
               (lambda (_g71267147_)
                 (if (gx#stx-pair? _g71267147_)
                     (let ((_e71297150_ (gx#syntax-e _g71267147_)))
                       (let ((_hd71307154_ (##car _e71297150_))
                             (_tl71317157_ (##cdr _e71297150_)))
                         (if (gx#stx-pair? _tl71317157_)
                             (let ((_e71327160_ (gx#syntax-e _tl71317157_)))
                               (let ((_hd71337164_ (##car _e71327160_))
                                     (_tl71347167_ (##cdr _e71327160_)))
                                 (if (gx#stx-pair? _tl71347167_)
                                     (let ((_e71357170_
                                            (gx#syntax-e _tl71347167_)))
                                       (let ((_hd71367174_ (##car _e71357170_))
                                             (_tl71377177_
                                              (##cdr _e71357170_)))
                                         (if (gx#stx-null? _tl71377177_)
                                             ((lambda (_L7180_ _L7182_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'make-!struct-getf)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons _L7182_ '()))
                    (cons _L7180_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd71367174_
                                              _hd71337164_)
                                             (_g71257143_ _g71267147_))))
                                     (_g71257143_ _g71267147_))))
                             (_g71257143_ _g71267147_))))
                     (_g71257143_ _g71267147_)))))
          (_g71247198_ _$stx7121_)))))
  (define |gxc[:0:]#@struct-setf|
    (lambda (_$stx7202_)
      (let ((_g72067224_
             (lambda (_g72077220_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g72077220_))))
        (let ((_g72057279_
               (lambda (_g72077228_)
                 (if (gx#stx-pair? _g72077228_)
                     (let ((_e72107231_ (gx#syntax-e _g72077228_)))
                       (let ((_hd72117235_ (##car _e72107231_))
                             (_tl72127238_ (##cdr _e72107231_)))
                         (if (gx#stx-pair? _tl72127238_)
                             (let ((_e72137241_ (gx#syntax-e _tl72127238_)))
                               (let ((_hd72147245_ (##car _e72137241_))
                                     (_tl72157248_ (##cdr _e72137241_)))
                                 (if (gx#stx-pair? _tl72157248_)
                                     (let ((_e72167251_
                                            (gx#syntax-e _tl72157248_)))
                                       (let ((_hd72177255_ (##car _e72167251_))
                                             (_tl72187258_
                                              (##cdr _e72167251_)))
                                         (if (gx#stx-null? _tl72187258_)
                                             ((lambda (_L7261_ _L7263_)
                                                (cons (gx#datum->syntax
                                                       '#f
                                                       'make-!struct-setf)
                                                      (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '#f
                           'quote)
                          (cons _L7263_ '()))
                    (cons _L7261_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              _hd72177255_
                                              _hd72147245_)
                                             (_g72067224_ _g72077228_))))
                                     (_g72067224_ _g72077228_))))
                             (_g72067224_ _g72077228_))))
                     (_g72067224_ _g72077228_)))))
          (_g72057279_ _$stx7202_))))))
