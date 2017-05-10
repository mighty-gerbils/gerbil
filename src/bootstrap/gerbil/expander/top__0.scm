(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#core-expand-begin%
    (lambda (_stx7690_)
      (let ((_expand-special7692_
             (lambda (_hd7694_ _K7695_ _rest7696_ _r7697_)
               (_K7695_ _rest7696_
                        (cons (gx#core-expand-top _hd7694_) _r7697_)))))
        (gx#core-expand-block__0 _stx7690_ _expand-special7692_))))
  (define gx#core-expand-begin-syntax%
    (lambda (_stx7443_)
      (let ((_expand-special7445_
             (lambda (_hd7565_ _K7566_ _rest7567_ _r7568_)
               (let ((_K7572_ (lambda (_e7570_)
                                (_K7566_ _rest7567_ (cons _e7570_ _r7568_)))))
                 (let ((_e75737602_ _hd7565_))
                   (let ((_E75977606_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e75737602_))))
                     (let ((_E75937618_
                            (lambda ()
                              (if (gx#stx-pair? _e75737602_)
                                  (let ((_e75987610_
                                         (gx#syntax-e _e75737602_)))
                                    (let ((_hd75997613_ (##car _e75987610_))
                                          (_tl76007615_ (##cdr _e75987610_)))
                                      (if (if (gx#identifier? _hd75997613_)
                                              (gx#core-identifier=?
                                               _hd75997613_
                                               '%#define-runtime)
                                              '#f)
                                          (if '#t
                                              (_K7572_ (gx#core-expand-define-runtime%
                                                        _hd7565_))
                                              (_E75977606_))
                                          (_E75977606_))))
                                  (_E75977606_)))))
                       (let ((_E75897630_
                              (lambda ()
                                (if (gx#stx-pair? _e75737602_)
                                    (let ((_e75947622_
                                           (gx#syntax-e _e75737602_)))
                                      (let ((_hd75957625_ (##car _e75947622_))
                                            (_tl75967627_ (##cdr _e75947622_)))
                                        (if (if (gx#identifier? _hd75957625_)
                                                (gx#core-identifier=?
                                                 _hd75957625_
                                                 '%#define-alias)
                                                '#f)
                                            (if '#t
                                                (_K7572_ (gx#core-expand-define-alias%
                                                          _hd7565_))
                                                (_E75937618_))
                                            (_E75937618_))))
                                    (_E75937618_)))))
                         (let ((_E75797642_
                                (lambda ()
                                  (if (gx#stx-pair? _e75737602_)
                                      (let ((_e75907634_
                                             (gx#syntax-e _e75737602_)))
                                        (let ((_hd75917637_
                                               (##car _e75907634_))
                                              (_tl75927639_
                                               (##cdr _e75907634_)))
                                          (if (if (gx#identifier? _hd75917637_)
                                                  (gx#core-identifier=?
                                                   _hd75917637_
                                                   '%#define-syntax)
                                                  '#f)
                                              (if '#t
                                                  (_K7572_ (gx#core-expand-define-syntax%
                                                            _hd7565_))
                                                  (_E75897630_))
                                              (_E75897630_))))
                                      (_E75897630_)))))
                           (let ((_E75757674_
                                  (lambda ()
                                    (if (gx#stx-pair? _e75737602_)
                                        (let ((_e75807646_
                                               (gx#syntax-e _e75737602_)))
                                          (let ((_hd75817649_
                                                 (##car _e75807646_))
                                                (_tl75827651_
                                                 (##cdr _e75807646_)))
                                            (if (if (gx#identifier?
                                                     _hd75817649_)
                                                    (gx#core-identifier=?
                                                     _hd75817649_
                                                     '%#define-values)
                                                    '#f)
                                                (if (gx#stx-pair? _tl75827651_)
                                                    (let ((_e75837654_
                                                           (gx#syntax-e
                                                            _tl75827651_)))
                                                      (let ((_hd75847657_
                                                             (##car _e75837654_))
                                                            (_tl75857659_
                                                             (##cdr _e75837654_)))
                                                        (let ((_hd-bind7662_
                                                               _hd75847657_))
                                                          (if (gx#stx-pair?
                                                               _tl75857659_)
                                                              (let ((_e75867664_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl75857659_)))
                        (let ((_hd75877667_ (##car _e75867664_))
                              (_tl75887669_ (##cdr _e75867664_)))
                          (let ((_expr7672_ _hd75877667_))
                            (if (gx#stx-null? _tl75887669_)
                                (if (gx#core-bind-values? _hd-bind7662_)
                                    (begin
                                      (gx#core-bind-values!__0 _hd-bind7662_)
                                      (_K7572_ _hd7565_))
                                    (_E75797642_))
                                (_E75797642_)))))
                      (_E75797642_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E75797642_))
                                                (_E75797642_))))
                                        (_E75797642_)))))
                             (let ((_E75747686_
                                    (lambda ()
                                      (if (gx#stx-pair? _e75737602_)
                                          (let ((_e75767678_
                                                 (gx#syntax-e _e75737602_)))
                                            (let ((_hd75777681_
                                                   (##car _e75767678_))
                                                  (_tl75787683_
                                                   (##cdr _e75767678_)))
                                              (if (if (gx#identifier?
                                                       _hd75777681_)
                                                      (gx#core-identifier=?
                                                       _hd75777681_
                                                       '%#begin-syntax)
                                                      '#f)
                                                  (if '#t
                                                      (_K7572_ (gx#core-expand-begin-syntax%
                                                                _hd7565_))
                                                      (_E75757674_))
                                                  (_E75757674_))))
                                          (_E75757674_)))))
                               (let () (_E75747686_)))))))))))))
        (let ((_eval-body7446_
               (lambda (_rbody7454_)
                 ((letrec ((_lp7456_
                            (lambda (_rest7458_ _body7459_ _ebody7460_)
                              (let ((_rest74617469_ _rest7458_))
                                (let ((_E74647473_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _rest74617469_))))
                                  (let ((_else74637477_
                                         (lambda ()
                                           (values _body7459_
                                                   (gx#eval-syntax*
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#begin
                                                      _ebody7460_)
                                                     (gx#stx-source
                                                      _stx7443_)))))))
                                    (let ((_K74657553_
                                           (lambda (_rest7480_ _hd7481_)
                                             (let ((_e74827499_ _hd7481_))
                                               (let ((_E74947503_
                                                      (lambda ()
                                                        (_lp7456_
                                                         _rest7480_
                                                         (cons _hd7481_
                                                               _body7459_)
                                                         (cons _hd7481_
                                                               _ebody7460_)))))
                                                 (let ((_E74847515_
                                                        (lambda ()
                                                          (if (gx#stx-pair?
                                                               _e74827499_)
                                                              (let ((_e74957507_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _e74827499_)))
                        (let ((_hd74967510_ (##car _e74957507_))
                              (_tl74977512_ (##cdr _e74957507_)))
                          (if (if (gx#identifier? _hd74967510_)
                                  (gx#core-identifier=?
                                   _hd74967510_
                                   '%#begin-syntax)
                                  '#f)
                              (if '#t
                                  (_lp7456_
                                   _rest7480_
                                   (cons _hd7481_ _body7459_)
                                   _ebody7460_)
                                  (_E74947503_))
                              (_E74947503_))))
                      (_E74947503_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_E74837549_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e74827499_)
                        (let ((_e74857519_ (gx#syntax-e _e74827499_)))
                          (let ((_hd74867522_ (##car _e74857519_))
                                (_tl74877524_ (##cdr _e74857519_)))
                            (if (if (gx#identifier? _hd74867522_)
                                    (gx#core-identifier=?
                                     _hd74867522_
                                     '%#define-values)
                                    '#f)
                                (if (gx#stx-pair? _tl74877524_)
                                    (let ((_e74887527_
                                           (gx#syntax-e _tl74877524_)))
                                      (let ((_hd74897530_ (##car _e74887527_))
                                            (_tl74907532_ (##cdr _e74887527_)))
                                        (let ((_hd-bind7535_ _hd74897530_))
                                          (if (gx#stx-pair? _tl74907532_)
                                              (let ((_e74917537_
                                                     (gx#syntax-e
                                                      _tl74907532_)))
                                                (let ((_hd74927540_
                                                       (##car _e74917537_))
                                                      (_tl74937542_
                                                       (##cdr _e74917537_)))
                                                  (let ((_expr7545_
                                                         _hd74927540_))
                                                    (if (gx#stx-null?
                                                         _tl74937542_)
                                                        (if '#t
                                                            (let ((_ehd7547_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#core-quote-syntax__1
                            (cons (gx#core-quote-syntax__0 '%#define-values)
                                  (cons (gx#core-quote-bind-values
                                         _hd-bind7535_)
                                        (cons (gx#core-expand-expression
                                               _expr7545_)
                                              '())))
                            (gx#stx-source _hd7481_))))
                      (_lp7456_
                       _rest7480_
                       (cons _ehd7547_ _body7459_)
                       (cons _ehd7547_ _ebody7460_)))
                    (_E74847515_))
                (_E74847515_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E74847515_)))))
                                    (_E74847515_))
                                (_E74847515_))))
                        (_E74847515_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (_E74837549_)))))))))
                                      (if (##pair? _rest74617469_)
                                          (let ((_hd74667556_
                                                 (##car _rest74617469_))
                                                (_tl74677558_
                                                 (##cdr _rest74617469_)))
                                            (let ((_hd7561_ _hd74667556_))
                                              (let ((_rest7563_ _tl74677558_))
                                                (_K74657553_
                                                 _rest7563_
                                                 _hd7561_))))
                                          (_else74637477_)))))))))
                    _lp7456_)
                  _rbody7454_
                  '()
                  '()))))
          (call-with-parameters
           (lambda ()
             (let ((_rbody7449_
                    (gx#core-expand-block__1
                     _stx7443_
                     _expand-special7445_
                     '#f)))
               (let ((_g7704_ (_eval-body7446_ _rbody7449_)))
                 (begin
                   (let ((_g7705_ (values-count _g7704_)))
                     (if (not (fx= _g7705_ 2))
                         (error "Context expects 2 values" _g7705_)))
                   (let ((_expanded-body7451_ (values-ref _g7704_ 0))
                         (_value7452_ (values-ref _g7704_ 1)))
                     (gx#core-quote-syntax__1
                      (if (##structure-instance-of?
                           (gx#current-expander-context)
                           'gx#module-context::t)
                          (gx#core-cons '%#begin-syntax _expanded-body7451_)
                          (cons (gx#core-quote-syntax__0 '%#quote)
                                (cons _value7452_ '())))
                      (gx#stx-source _stx7443_)))))))
           gx#current-expander-phi
           (fx1+ (gx#current-expander-phi)))))))
  (define gx#core-expand-begin-foreign%
    (lambda (_stx7413_)
      (let ((_e74147421_ _stx7413_))
        (let ((_E74167425_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e74147421_))))
          (let ((_E74157439_
                 (lambda ()
                   (if (gx#stx-pair? _e74147421_)
                       (let ((_e74177429_ (gx#syntax-e _e74147421_)))
                         (let ((_hd74187432_ (##car _e74177429_))
                               (_tl74197434_ (##cdr _e74177429_)))
                           (let ((_body7437_ _tl74197434_))
                             (if (gx#stx-list? _body7437_)
                                 (gx#core-quote-syntax__1
                                  (gx#core-cons '%#begin-foreign _body7437_)
                                  (gx#stx-source _stx7413_))
                                 (_E74167425_)))))
                       (_E74167425_)))))
            (let () (_E74157439_)))))))
  (define gx#core-expand-begin-annotation%
    (lambda (_stx7401_)
      (let ((_e74027405_ _stx7401_))
        (let ((_E74037409_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e74027405_))))
          (let () (_E74037409_))))))
  (define gx#core-expand-local-block
    (lambda (_stx7125_ _body7126_)
      (let ((_expand-internal-special7130_
             (lambda (_hd7287_ _K7288_ _rest7289_ _r7290_)
               (let ((_e72917316_ _hd7287_))
                 (let ((_E73117320_
                        (lambda ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _e72917316_))))
                   (let ((_E73077332_
                          (lambda ()
                            (if (gx#stx-pair? _e72917316_)
                                (let ((_e73127324_ (gx#syntax-e _e72917316_)))
                                  (let ((_hd73137327_ (##car _e73127324_))
                                        (_tl73147329_ (##cdr _e73127324_)))
                                    (if (if (gx#identifier? _hd73137327_)
                                            (gx#core-identifier=?
                                             _hd73137327_
                                             '%#declare)
                                            '#f)
                                        (if '#t
                                            (_K7288_ _rest7289_
                                                     (cons (gx#core-expand-declare%
                                                            _hd7287_)
                                                           _r7290_))
                                            (_E73117320_))
                                        (_E73117320_))))
                                (_E73117320_)))))
                     (let ((_E73037344_
                            (lambda ()
                              (if (gx#stx-pair? _e72917316_)
                                  (let ((_e73087336_
                                         (gx#syntax-e _e72917316_)))
                                    (let ((_hd73097339_ (##car _e73087336_))
                                          (_tl73107341_ (##cdr _e73087336_)))
                                      (if (if (gx#identifier? _hd73097339_)
                                              (gx#core-identifier=?
                                               _hd73097339_
                                               '%#define-alias)
                                              '#f)
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _hd7287_)
                                                (_K7288_ _rest7289_ _r7290_))
                                              (_E73077332_))
                                          (_E73077332_))))
                                  (_E73077332_)))))
                       (let ((_E72937356_
                              (lambda ()
                                (if (gx#stx-pair? _e72917316_)
                                    (let ((_e73047348_
                                           (gx#syntax-e _e72917316_)))
                                      (let ((_hd73057351_ (##car _e73047348_))
                                            (_tl73067353_ (##cdr _e73047348_)))
                                        (if (if (gx#identifier? _hd73057351_)
                                                (gx#core-identifier=?
                                                 _hd73057351_
                                                 '%#define-syntax)
                                                '#f)
                                            (if '#t
                                                (begin
                                                  (gx#core-expand-define-syntax%
                                                   _hd7287_)
                                                  (_K7288_ _rest7289_ _r7290_))
                                                (_E73037344_))
                                            (_E73037344_))))
                                    (_E73037344_)))))
                         (let ((_E72927388_
                                (lambda ()
                                  (if (gx#stx-pair? _e72917316_)
                                      (let ((_e72947360_
                                             (gx#syntax-e _e72917316_)))
                                        (let ((_hd72957363_
                                               (##car _e72947360_))
                                              (_tl72967365_
                                               (##cdr _e72947360_)))
                                          (if (if (gx#identifier? _hd72957363_)
                                                  (gx#core-identifier=?
                                                   _hd72957363_
                                                   '%#define-values)
                                                  '#f)
                                              (if (gx#stx-pair? _tl72967365_)
                                                  (let ((_e72977368_
                                                         (gx#syntax-e
                                                          _tl72967365_)))
                                                    (let ((_hd72987371_
                                                           (##car _e72977368_))
                                                          (_tl72997373_
                                                           (##cdr _e72977368_)))
                                                      (let ((_hd-bind7376_
                                                             _hd72987371_))
                                                        (if (gx#stx-pair?
                                                             _tl72997373_)
                                                            (let ((_e73007378_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl72997373_)))
                      (let ((_hd73017381_ (##car _e73007378_))
                            (_tl73027383_ (##cdr _e73007378_)))
                        (let ((_expr7386_ _hd73017381_))
                          (if (gx#stx-null? _tl73027383_)
                              (if (gx#core-bind-values? _hd-bind7376_)
                                  (begin
                                    (gx#core-bind-values!__0 _hd-bind7376_)
                                    (_K7288_ _rest7289_
                                             (cons _hd7287_ _r7290_)))
                                  (_E72937356_))
                              (_E72937356_)))))
                    (_E72937356_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E72937356_))
                                              (_E72937356_))))
                                      (_E72937356_)))))
                           (let () (_E72927388_)))))))))))
        (let ((_wrap-internal7131_
               (lambda (_rbody7133_)
                 ((letrec ((_lp7135_
                            (lambda (_rest7137_
                                     _decls7138_
                                     _bind7139_
                                     _body7140_)
                              (let ((_e71417148_ _rest7137_))
                                (let ((_E71437197_
                                       (lambda ()
                                         (let ((_body7192_
                                                (let ((_body71517161_
                                                       _body7140_))
                                                  (let ((_E71557165_
                                                         (lambda ()
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _body71517161_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_else71547169_
                                                           (lambda ()
                                                             (gx#core-quote-syntax__1
                                                              (gx#core-cons
                                                               '%#begin
                                                               _body7140_)
                                                              (gx#stx-source
                                                               _stx7125_)))))
                                                      (let ((_try-match71537185_
                                                             (lambda ()
                                                               (let ((_K71567175_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_expr7173_) _expr7173_)))
                         (if (##pair? _body71517161_)
                             (let ((_hd71577178_ (##car _body71517161_))
                                   (_tl71587180_ (##cdr _body71517161_)))
                               (let ((_expr7183_ _hd71577178_))
                                 (if (##null? _tl71587180_)
                                     (_K71567175_ _expr7183_)
                                     (_else71547169_))))
                             (_else71547169_))))))
                (let ((_K71597189_
                       (lambda ()
                         (gx#raise-syntax-error '#f '"Bad syntax" _stx7125_))))
                  (if (##null? _body71517161_)
                      (_K71597189_)
                      (_try-match71537185_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ((_body7194_
                                                  (if (null? _bind7139_)
                                                      _body7192_
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#letrec*-values)
                                                             (cons _bind7139_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _body7192_ '())))
               (gx#stx-source _stx7125_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ()
                                               (if (null? _decls7138_)
                                                   _body7194_
                                                   (gx#core-quote-syntax__1
                                                    (cons (gx#core-quote-syntax__0
                                                           '%#begin-annotation)
                                                          (cons _decls7138_
                                                                (cons _body7194_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gx#stx-source
                                                     _stx7125_)))))))))
                                  (let ((_E71427283_
                                         (lambda ()
                                           (if (gx#stx-pair? _e71417148_)
                                               (let ((_e71447201_
                                                      (gx#syntax-e
                                                       _e71417148_)))
                                                 (let ((_hd71457204_
                                                        (##car _e71447201_))
                                                       (_tl71467206_
                                                        (##cdr _e71447201_)))
                                                   (let ((_hd7209_
                                                          _hd71457204_))
                                                     (let ((_rest7211_
                                                            _tl71467206_))
                                                       (if '#t
                                                           (let ((_e72127229_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd7209_))
                     (let ((_E72247233_
                            (lambda ()
                              (if (null? _bind7139_)
                                  (_lp7135_
                                   _rest7211_
                                   _decls7138_
                                   _bind7139_
                                   (cons _hd7209_ _body7140_))
                                  (_lp7135_
                                   _rest7211_
                                   _decls7138_
                                   (cons (cons '#f (cons _hd7209_ '()))
                                         _bind7139_)
                                   _body7140_)))))
                       (let ((_E72147247_
                              (lambda ()
                                (if (gx#stx-pair? _e72127229_)
                                    (let ((_e72257237_
                                           (gx#syntax-e _e72127229_)))
                                      (let ((_hd72267240_ (##car _e72257237_))
                                            (_tl72277242_ (##cdr _e72257237_)))
                                        (if (if (gx#identifier? _hd72267240_)
                                                (gx#core-identifier=?
                                                 _hd72267240_
                                                 '%#declare)
                                                '#f)
                                            (let ((_xdecls7245_ _tl72277242_))
                                              (if '#t
                                                  (_lp7135_
                                                   _rest7211_
                                                   (gx#stx-foldr
                                                    cons
                                                    _decls7138_
                                                    _xdecls7245_)
                                                   _bind7139_
                                                   _body7140_)
                                                  (_E72247233_)))
                                            (_E72247233_))))
                                    (_E72247233_)))))
                         (let ((_E72137279_
                                (lambda ()
                                  (if (gx#stx-pair? _e72127229_)
                                      (let ((_e72157251_
                                             (gx#syntax-e _e72127229_)))
                                        (let ((_hd72167254_
                                               (##car _e72157251_))
                                              (_tl72177256_
                                               (##cdr _e72157251_)))
                                          (if (if (gx#identifier? _hd72167254_)
                                                  (gx#core-identifier=?
                                                   _hd72167254_
                                                   '%#define-values)
                                                  '#f)
                                              (if (gx#stx-pair? _tl72177256_)
                                                  (let ((_e72187259_
                                                         (gx#syntax-e
                                                          _tl72177256_)))
                                                    (let ((_hd72197262_
                                                           (##car _e72187259_))
                                                          (_tl72207264_
                                                           (##cdr _e72187259_)))
                                                      (let ((_hd-bind7267_
                                                             _hd72197262_))
                                                        (if (gx#stx-pair?
                                                             _tl72207264_)
                                                            (let ((_e72217269_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl72207264_)))
                      (let ((_hd72227272_ (##car _e72217269_))
                            (_tl72237274_ (##cdr _e72217269_)))
                        (let ((_expr7277_ _hd72227272_))
                          (if (gx#stx-null? _tl72237274_)
                              (if '#t
                                  (_lp7135_
                                   _rest7211_
                                   _decls7138_
                                   (cons (cons (gx#core-quote-bind-values
                                                _hd-bind7267_)
                                               (cons (gx#core-expand-expression
                                                      _expr7277_)
                                                     '()))
                                         _bind7139_)
                                   _body7140_)
                                  (_E72147247_))
                              (_E72147247_)))))
                    (_E72147247_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E72147247_))
                                              (_E72147247_))))
                                      (_E72147247_)))))
                           (let () (_E72137279_))))))
                   (_E71437197_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E71437197_)))))
                                    (let () (_E71427283_))))))))
                    _lp7135_)
                  _rbody7133_
                  '()
                  '()
                  '()))))
          (let ((_expand-internal7129_
                 (lambda (_hd7392_ _rest7393_)
                   (call-with-parameters
                    (lambda ()
                      (_wrap-internal7131_
                       (gx#core-expand-block__1
                        (gx#stx-wrap-source
                         (cons* '%#begin _hd7392_ _rest7393_)
                         (gx#stx-source _stx7125_))
                        _expand-internal-special7130_
                        '#f)))
                    gx#current-expander-context
                    (let ((__obj7698 (make-object gx#local-context::t '5)))
                      (begin
                        (gx#local-context:::init!__0 __obj7698)
                        __obj7698))))))
            (let ((_expand-special7128_
                   (lambda (_hd7396_ _K7397_ _rest7398_ _r7399_)
                     (_K7397_ '()
                              (cons (_expand-internal7129_ _hd7396_ _rest7398_)
                                    _r7399_)))))
              (gx#core-expand-block*
               (gx#stx-wrap-source
                (cons '%#begin _body7126_)
                (gx#stx-source _stx7125_))
               _expand-special7128_)))))))
  (define gx#core-expand-declare%
    (lambda (_stx7063_)
      (let ((_e70647071_ _stx7063_))
        (let ((_E70667075_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e70647071_))))
          (let ((_E70657121_
                 (lambda ()
                   (if (gx#stx-pair? _e70647071_)
                       (let ((_e70677079_ (gx#syntax-e _e70647071_)))
                         (let ((_hd70687082_ (##car _e70677079_))
                               (_tl70697084_ (##cdr _e70677079_)))
                           (let ((_body7087_ _tl70697084_))
                             (if (gx#stx-list? _body7087_)
                                 (gx#core-quote-syntax__1
                                  (gx#core-cons
                                   '%#declare
                                   (gx#stx-map1
                                    (lambda (_decl7089_)
                                      (let ((_e70907097_ _decl7089_))
                                        (let ((_E70927101_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _e70907097_))))
                                          (let ((_E70917117_
                                                 (lambda ()
                                                   (if (gx#stx-pair?
                                                        _e70907097_)
                                                       (let ((_e70937105_
                                                              (gx#syntax-e
                                                               _e70907097_)))
                                                         (let ((_hd70947108_
                                                                (##car _e70937105_))
                                                               (_tl70957110_
                                                                (##cdr _e70937105_)))
                                                           (let ((_head7113_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd70947108_))
                     (let ((_args7115_ _tl70957110_))
                       (if (gx#stx-list? _args7115_)
                           (gx#stx-map1 gx#core-quote-syntax _decl7089_)
                           (_E70927101_))))))
               (_E70927101_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let () (_E70917117_))))))
                                    _body7087_))
                                  (gx#stx-source _stx7063_))
                                 (_E70667075_)))))
                       (_E70667075_)))))
            (let () (_E70657121_)))))))
  (define gx#core-expand-extern%
    (lambda (_stx6947_)
      (let ((_e69486955_ _stx6947_))
        (let ((_E69506959_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e69486955_))))
          (let ((_E69497059_
                 (lambda ()
                   (if (gx#stx-pair? _e69486955_)
                       (let ((_e69516963_ (gx#syntax-e _e69486955_)))
                         (let ((_hd69526966_ (##car _e69516963_))
                               (_tl69536968_ (##cdr _e69516963_)))
                           (let ((_body6971_ _tl69536968_))
                             (if (gx#stx-list? _body6971_)
                                 (begin
                                   (gx#stx-for-each1
                                    (lambda (_bind6973_)
                                      (let ((_e69746984_ _bind6973_))
                                        (let ((_E69766988_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _e69746984_))))
                                          (let ((_E69757012_
                                                 (lambda ()
                                                   (if (gx#stx-pair?
                                                        _e69746984_)
                                                       (let ((_e69776992_
                                                              (gx#syntax-e
                                                               _e69746984_)))
                                                         (let ((_hd69786995_
                                                                (##car _e69776992_))
                                                               (_tl69796997_
                                                                (##cdr _e69776992_)))
                                                           (let ((_id7000_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd69786995_))
                     (if (gx#stx-pair? _tl69796997_)
                         (let ((_e69807002_ (gx#syntax-e _tl69796997_)))
                           (let ((_hd69817005_ (##car _e69807002_))
                                 (_tl69827007_ (##cdr _e69807002_)))
                             (let ((_eid7010_ _hd69817005_))
                               (if (gx#stx-null? _tl69827007_)
                                   (if (if (gx#identifier? _id7000_)
                                           (gx#identifier? _eid7010_)
                                           '#f)
                                       (gx#core-bind-extern!__0
                                        _id7000_
                                        (gx#stx-e _eid7010_))
                                       (_E69766988_))
                                   (_E69766988_)))))
                         (_E69766988_)))))
               (_E69766988_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let () (_E69757012_))))))
                                    _body6971_)
                                   (gx#core-quote-syntax__1
                                    (gx#core-cons
                                     '%#extern
                                     (gx#stx-map1
                                      (lambda (_bind7016_)
                                        (let ((_e70177027_ _bind7016_))
                                          (let ((_E70197031_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _e70177027_))))
                                            (let ((_E70187055_
                                                   (lambda ()
                                                     (if (gx#stx-pair?
                                                          _e70177027_)
                                                         (let ((_e70207035_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e70177027_)))
                   (let ((_hd70217038_ (##car _e70207035_))
                         (_tl70227040_ (##cdr _e70207035_)))
                     (let ((_id7043_ _hd70217038_))
                       (if (gx#stx-pair? _tl70227040_)
                           (let ((_e70237045_ (gx#syntax-e _tl70227040_)))
                             (let ((_hd70247048_ (##car _e70237045_))
                                   (_tl70257050_ (##cdr _e70237045_)))
                               (let ((_eid7053_ _hd70247048_))
                                 (if (gx#stx-null? _tl70257050_)
                                     (if '#t
                                         (cons (gx#core-quote-syntax__0
                                                _id7043_)
                                               (cons (gx#stx-e _eid7053_) '()))
                                         (_E70197031_))
                                     (_E70197031_)))))
                           (_E70197031_)))))
                 (_E70197031_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let () (_E70187055_))))))
                                      _body6971_))
                                    (gx#stx-source _stx6947_)))
                                 (_E69506959_)))))
                       (_E69506959_)))))
            (let () (_E69497059_)))))))
  (define gx#core-expand-define-values%
    (lambda (_stx6893_)
      (let ((_e68946907_ _stx6893_))
        (let ((_E68966911_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e68946907_))))
          (let ((_E68956943_
                 (lambda ()
                   (if (gx#stx-pair? _e68946907_)
                       (let ((_e68976915_ (gx#syntax-e _e68946907_)))
                         (let ((_hd68986918_ (##car _e68976915_))
                               (_tl68996920_ (##cdr _e68976915_)))
                           (if (gx#stx-pair? _tl68996920_)
                               (let ((_e69006923_ (gx#syntax-e _tl68996920_)))
                                 (let ((_hd69016926_ (##car _e69006923_))
                                       (_tl69026928_ (##cdr _e69006923_)))
                                   (let ((_hd6931_ _hd69016926_))
                                     (if (gx#stx-pair? _tl69026928_)
                                         (let ((_e69036933_
                                                (gx#syntax-e _tl69026928_)))
                                           (let ((_hd69046936_
                                                  (##car _e69036933_))
                                                 (_tl69056938_
                                                  (##cdr _e69036933_)))
                                             (let ((_expr6941_ _hd69046936_))
                                               (if (gx#stx-null? _tl69056938_)
                                                   (if (gx#core-bind-values?
                                                        _hd6931_)
                                                       (begin
                                                         (gx#core-bind-values!__0
                                                          _hd6931_)
                                                         (gx#core-quote-syntax__1
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#define-values)
                        (cons (gx#core-quote-bind-values _hd6931_)
                              (cons (gx#core-expand-expression _expr6941_)
                                    '())))
                  (gx#stx-source _stx6893_)))
               (_E68966911_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E68966911_)))))
                                         (_E68966911_)))))
                               (_E68966911_))))
                       (_E68966911_)))))
            (let () (_E68956943_)))))))
  (define gx#core-expand-define-runtime%
    (lambda (_stx6839_)
      (let ((_e68406853_ _stx6839_))
        (let ((_E68426857_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e68406853_))))
          (let ((_E68416889_
                 (lambda ()
                   (if (gx#stx-pair? _e68406853_)
                       (let ((_e68436861_ (gx#syntax-e _e68406853_)))
                         (let ((_hd68446864_ (##car _e68436861_))
                               (_tl68456866_ (##cdr _e68436861_)))
                           (if (gx#stx-pair? _tl68456866_)
                               (let ((_e68466869_ (gx#syntax-e _tl68456866_)))
                                 (let ((_hd68476872_ (##car _e68466869_))
                                       (_tl68486874_ (##cdr _e68466869_)))
                                   (let ((_id6877_ _hd68476872_))
                                     (if (gx#stx-pair? _tl68486874_)
                                         (let ((_e68496879_
                                                (gx#syntax-e _tl68486874_)))
                                           (let ((_hd68506882_
                                                  (##car _e68496879_))
                                                 (_tl68516884_
                                                  (##cdr _e68496879_)))
                                             (let ((_binding-id6887_
                                                    _hd68506882_))
                                               (if (gx#stx-null? _tl68516884_)
                                                   (if (if (gx#identifier?
                                                            _id6877_)
                                                           (gx#identifier?
                                                            _binding-id6887_)
                                                           '#f)
                                                       (begin
                                                         (gx#core-bind-runtime-reference!__0
                                                          _id6877_
                                                          (gx#stx-e
                                                           _binding-id6887_))
                                                         (gx#core-quote-syntax__0
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#define-runtime)
                        (cons (gx#core-quote-syntax__0 _id6877_)
                              (cons (gx#core-quote-syntax__0 _binding-id6887_)
                                    '())))))
               (_E68426857_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E68426857_)))))
                                         (_E68426857_)))))
                               (_E68426857_))))
                       (_E68426857_)))))
            (let () (_E68416889_)))))))
  (define gx#core-expand-define-syntax%
    (lambda (_stx6782_)
      (let ((_e67836796_ _stx6782_))
        (let ((_E67856800_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e67836796_))))
          (let ((_E67846835_
                 (lambda ()
                   (if (gx#stx-pair? _e67836796_)
                       (let ((_e67866804_ (gx#syntax-e _e67836796_)))
                         (let ((_hd67876807_ (##car _e67866804_))
                               (_tl67886809_ (##cdr _e67866804_)))
                           (if (gx#stx-pair? _tl67886809_)
                               (let ((_e67896812_ (gx#syntax-e _tl67886809_)))
                                 (let ((_hd67906815_ (##car _e67896812_))
                                       (_tl67916817_ (##cdr _e67896812_)))
                                   (let ((_id6820_ _hd67906815_))
                                     (if (gx#stx-pair? _tl67916817_)
                                         (let ((_e67926822_
                                                (gx#syntax-e _tl67916817_)))
                                           (let ((_hd67936825_
                                                  (##car _e67926822_))
                                                 (_tl67946827_
                                                  (##cdr _e67926822_)))
                                             (let ((_expr6830_ _hd67936825_))
                                               (if (gx#stx-null? _tl67946827_)
                                                   (if (gx#identifier?
                                                        _id6820_)
                                                       (let ((_g7706_ (gx#core-expand-expression+1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _expr6830_)))
                 (begin
                   (let ((_g7707_ (values-count _g7706_)))
                     (if (not (fx= _g7707_ 2))
                         (error "Context expects 2 values" _g7707_)))
                   (let ((_e-stx6832_ (values-ref _g7706_ 0))
                         (_e6833_ (values-ref _g7706_ 1)))
                     (begin
                       (gx#core-bind-syntax!__0 _id6820_ _e6833_)
                       (gx#core-quote-syntax__1
                        (cons (gx#core-quote-syntax__0 '%#define-syntax)
                              (cons (gx#core-quote-syntax__0 _id6820_)
                                    (cons _e-stx6832_ '())))
                        (gx#stx-source _stx6782_))))))
               (_E67856800_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E67856800_)))))
                                         (_E67856800_)))))
                               (_E67856800_))))
                       (_E67856800_)))))
            (let () (_E67846835_)))))))
  (define gx#core-expand-define-alias%
    (lambda (_stx6726_)
      (let ((_e67276740_ _stx6726_))
        (let ((_E67296744_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e67276740_))))
          (let ((_E67286778_
                 (lambda ()
                   (if (gx#stx-pair? _e67276740_)
                       (let ((_e67306748_ (gx#syntax-e _e67276740_)))
                         (let ((_hd67316751_ (##car _e67306748_))
                               (_tl67326753_ (##cdr _e67306748_)))
                           (if (gx#stx-pair? _tl67326753_)
                               (let ((_e67336756_ (gx#syntax-e _tl67326753_)))
                                 (let ((_hd67346759_ (##car _e67336756_))
                                       (_tl67356761_ (##cdr _e67336756_)))
                                   (let ((_id6764_ _hd67346759_))
                                     (if (gx#stx-pair? _tl67356761_)
                                         (let ((_e67366766_
                                                (gx#syntax-e _tl67356761_)))
                                           (let ((_hd67376769_
                                                  (##car _e67366766_))
                                                 (_tl67386771_
                                                  (##cdr _e67366766_)))
                                             (let ((_alias-id6774_
                                                    _hd67376769_))
                                               (if (gx#stx-null? _tl67386771_)
                                                   (if (if (gx#identifier?
                                                            _id6764_)
                                                           (gx#identifier?
                                                            _alias-id6774_)
                                                           '#f)
                                                       (let ((_alias-id6776_
                                                              (gx#core-quote-syntax__0
                                                               _alias-id6774_)))
                                                         (begin
                                                           (gx#core-bind-alias!__0
                                                            _id6764_
                                                            _alias-id6776_)
                                                           (gx#core-quote-syntax__0
                                                            (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#define-alias)
                          (cons (gx#core-quote-syntax__0 _id6764_)
                                (cons _alias-id6776_ '()))))))
               (_E67296744_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E67296744_)))))
                                         (_E67296744_)))))
                               (_E67296744_))))
                       (_E67296744_)))))
            (let () (_E67286778_)))))))
  (begin
    (define gx#core-expand-lambda%__opt-lambda6667
      (lambda (_stx6669_ _wrap?6670_)
        (let ((_e66716681_ _stx6669_))
          (let ((_E66736685_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e66716681_))))
            (let ((_E66726712_
                   (lambda ()
                     (if (gx#stx-pair? _e66716681_)
                         (let ((_e66746689_ (gx#syntax-e _e66716681_)))
                           (let ((_hd66756692_ (##car _e66746689_))
                                 (_tl66766694_ (##cdr _e66746689_)))
                             (if (gx#stx-pair? _tl66766694_)
                                 (let ((_e66776697_
                                        (gx#syntax-e _tl66766694_)))
                                   (let ((_hd66786700_ (##car _e66776697_))
                                         (_tl66796702_ (##cdr _e66776697_)))
                                     (let ((_hd6705_ _hd66786700_))
                                       (let ((_body6707_ _tl66796702_))
                                         (if (gx#core-bind-values? _hd6705_)
                                             (call-with-parameters
                                              (lambda ()
                                                (begin
                                                  (gx#core-bind-values!__0
                                                   _hd6705_)
                                                  (let ((_body6710_
                                                         (cons (gx#core-quote-bind-values
                                                                _hd6705_)
                                                               (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _stx6669_
                              _body6707_)
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if _wrap?6670_
                                                        (gx#core-quote-syntax__1
                                                         (gx#core-cons
                                                          '%#lambda
                                                          _body6710_)
                                                         (gx#stx-source
                                                          _stx6669_))
                                                        _body6710_))))
                                              gx#current-expander-context
                                              (let ((__obj7699
                                                     (make-object
                                                      gx#local-context::t
                                                      '5)))
                                                (begin
                                                  (gx#local-context:::init!__0
                                                   __obj7699)
                                                  __obj7699)))
                                             (_E66736685_))))))
                                 (_E66736685_))))
                         (_E66736685_)))))
              (let () (_E66726712_)))))))
    (begin
      (define gx#core-expand-lambda%__0
        (lambda (_stx6719_)
          (let ((_wrap?6721_ '#t))
            (gx#core-expand-lambda%__opt-lambda6667 _stx6719_ _wrap?6721_))))
      (define gx#core-expand-lambda%
        (lambda _g7709_
          (let ((_g7708_ (length _g7709_)))
            (cond ((fx= _g7708_ 1)
                   (apply (lambda (_stx6719_)
                            (gx#core-expand-lambda%__0 _stx6719_))
                          _g7709_))
                  ((fx= _g7708_ 2)
                   (apply (lambda (_stx6723_ _wrap?6724_)
                            (gx#core-expand-lambda%__opt-lambda6667
                             _stx6723_
                             _wrap?6724_))
                          _g7709_))
                  (else (error "No clause matching arguments" _g7709_))))))))
  (define gx#core-expand-case-lambda%
    (lambda (_stx6633_)
      (let ((_e66346641_ _stx6633_))
        (let ((_E66366645_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e66346641_))))
          (let ((_E66356664_
                 (lambda ()
                   (if (gx#stx-pair? _e66346641_)
                       (let ((_e66376649_ (gx#syntax-e _e66346641_)))
                         (let ((_hd66386652_ (##car _e66376649_))
                               (_tl66396654_ (##cdr _e66376649_)))
                           (let ((_clauses6657_ _tl66396654_))
                             (if (gx#stx-list? _clauses6657_)
                                 (gx#core-quote-syntax__1
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    (lambda (_clause6659_)
                                      (gx#core-expand-lambda%__opt-lambda6667
                                       (gx#stx-wrap-source
                                        (cons '%#case-lambda-clause
                                              _clause6659_)
                                        (let ((_$e6661_
                                               (gx#stx-source _clause6659_)))
                                          (if _$e6661_
                                              _$e6661_
                                              (gx#stx-source _stx6633_))))
                                       '#f))
                                    _clauses6657_))
                                  (gx#stx-source _stx6633_))
                                 (_E66366645_)))))
                       (_E66366645_)))))
            (let () (_E66356664_)))))))
  (define gx#core-expand-let-values%
    (lambda (_stx6587_)
      (let ((_e65886598_ _stx6587_))
        (let ((_E65906602_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e65886598_))))
          (let ((_E65896629_
                 (lambda ()
                   (if (gx#stx-pair? _e65886598_)
                       (let ((_e65916606_ (gx#syntax-e _e65886598_)))
                         (let ((_hd65926609_ (##car _e65916606_))
                               (_tl65936611_ (##cdr _e65916606_)))
                           (if (gx#stx-pair? _tl65936611_)
                               (let ((_e65946614_ (gx#syntax-e _tl65936611_)))
                                 (let ((_hd65956617_ (##car _e65946614_))
                                       (_tl65966619_ (##cdr _e65946614_)))
                                   (let ((_hd6622_ _hd65956617_))
                                     (let ((_body6624_ _tl65966619_))
                                       (if (gx#core-expand-let-bind? _hd6622_)
                                           (let ((_expressions6626_
                                                  (gx#stx-map1
                                                   gx#core-expand-let-bind-expression
                                                   _hd6622_)))
                                             (call-with-parameters
                                              (lambda ()
                                                (begin
                                                  (gx#stx-for-each1
                                                   gx#core-expand-let-bind-values!
                                                   _hd6622_)
                                                  (gx#core-quote-syntax__1
                                                   (cons (gx#core-quote-syntax__0
                                                          '%#let-values)
                                                         (cons (gx#stx-map2
                                                                gx#core-expand-let-bind-quote
                                                                _hd6622_
                                                                _expressions6626_)
                                                               (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _stx6587_
                              _body6624_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source _stx6587_))))
                                              gx#current-expander-context
                                              (let ((__obj7700
                                                     (make-object
                                                      gx#local-context::t
                                                      '5)))
                                                (begin
                                                  (gx#local-context:::init!__0
                                                   __obj7700)
                                                  __obj7700))))
                                           (_E65906602_))))))
                               (_E65906602_))))
                       (_E65906602_)))))
            (let () (_E65896629_)))))))
  (begin
    (define gx#core-expand-letrec-values%__opt-lambda6530
      (lambda (_stx6532_ _form6533_)
        (let ((_e65346544_ _stx6532_))
          (let ((_E65366548_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e65346544_))))
            (let ((_E65356573_
                   (lambda ()
                     (if (gx#stx-pair? _e65346544_)
                         (let ((_e65376552_ (gx#syntax-e _e65346544_)))
                           (let ((_hd65386555_ (##car _e65376552_))
                                 (_tl65396557_ (##cdr _e65376552_)))
                             (if (gx#stx-pair? _tl65396557_)
                                 (let ((_e65406560_
                                        (gx#syntax-e _tl65396557_)))
                                   (let ((_hd65416563_ (##car _e65406560_))
                                         (_tl65426565_ (##cdr _e65406560_)))
                                     (let ((_hd6568_ _hd65416563_))
                                       (let ((_body6570_ _tl65426565_))
                                         (if (gx#core-expand-let-bind?
                                              _hd6568_)
                                             (call-with-parameters
                                              (lambda ()
                                                (begin
                                                  (gx#stx-for-each1
                                                   gx#core-expand-let-bind-values!
                                                   _hd6568_)
                                                  (gx#core-quote-syntax__1
                                                   (cons (gx#core-quote-syntax__0
                                                          _form6533_)
                                                         (cons (gx#stx-map2
                                                                gx#core-expand-let-bind-quote
                                                                _hd6568_
                                                                (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#core-expand-let-bind-expression
                         _hd6568_))
                       (cons (gx#core-expand-local-block _stx6532_ _body6570_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source _stx6532_))))
                                              gx#current-expander-context
                                              (let ((__obj7701
                                                     (make-object
                                                      gx#local-context::t
                                                      '5)))
                                                (begin
                                                  (gx#local-context:::init!__0
                                                   __obj7701)
                                                  __obj7701)))
                                             (_E65366548_))))))
                                 (_E65366548_))))
                         (_E65366548_)))))
              (let () (_E65356573_)))))))
    (begin
      (define gx#core-expand-letrec-values%__0
        (lambda (_stx6580_)
          (let ((_form6582_ '%#letrec-values))
            (gx#core-expand-letrec-values%__opt-lambda6530
             _stx6580_
             _form6582_))))
      (define gx#core-expand-letrec-values%
        (lambda _g7711_
          (let ((_g7710_ (length _g7711_)))
            (cond ((fx= _g7710_ 1)
                   (apply (lambda (_stx6580_)
                            (gx#core-expand-letrec-values%__0 _stx6580_))
                          _g7711_))
                  ((fx= _g7710_ 2)
                   (apply (lambda (_stx6584_ _form6585_)
                            (gx#core-expand-letrec-values%__opt-lambda6530
                             _stx6584_
                             _form6585_))
                          _g7711_))
                  (else (error "No clause matching arguments" _g7711_))))))))
  (define gx#core-expand-letrec*-values%
    (lambda (_stx6529_)
      (gx#core-expand-letrec-values%__opt-lambda6530
       _stx6529_
       '%#letrec*-values)))
  (define gx#core-expand-let-bind?
    (lambda (_stx6486_)
      (if (gx#stx-list? _stx6486_)
          (gx#stx-andmap
           (lambda (_bind6488_)
             (let ((_e64896499_ _bind6488_))
               (let ((_E64916503_ (lambda () '#f)))
                 (let ((_E64906525_
                        (lambda ()
                          (if (gx#stx-pair? _e64896499_)
                              (let ((_e64926507_ (gx#syntax-e _e64896499_)))
                                (let ((_hd64936510_ (##car _e64926507_))
                                      (_tl64946512_ (##cdr _e64926507_)))
                                  (let ((_hd6515_ _hd64936510_))
                                    (if (gx#stx-pair? _tl64946512_)
                                        (let ((_e64956517_
                                               (gx#syntax-e _tl64946512_)))
                                          (let ((_hd64966520_
                                                 (##car _e64956517_))
                                                (_tl64976522_
                                                 (##cdr _e64956517_)))
                                            (if (gx#stx-null? _tl64976522_)
                                                (if '#t
                                                    (gx#core-bind-values?
                                                     _hd6515_)
                                                    (_E64916503_))
                                                (_E64916503_))))
                                        (_E64916503_)))))
                              (_E64916503_)))))
                   (let () (_E64906525_))))))
           _stx6486_)
          '#f)))
  (define gx#core-expand-let-bind-expression
    (lambda (_bind6445_)
      (let ((_e64466456_ _bind6445_))
        (let ((_E64486460_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e64466456_))))
          (let ((_E64476482_
                 (lambda ()
                   (if (gx#stx-pair? _e64466456_)
                       (let ((_e64496464_ (gx#syntax-e _e64466456_)))
                         (let ((_hd64506467_ (##car _e64496464_))
                               (_tl64516469_ (##cdr _e64496464_)))
                           (if (gx#stx-pair? _tl64516469_)
                               (let ((_e64526472_ (gx#syntax-e _tl64516469_)))
                                 (let ((_hd64536475_ (##car _e64526472_))
                                       (_tl64546477_ (##cdr _e64526472_)))
                                   (let ((_expr6480_ _hd64536475_))
                                     (if (gx#stx-null? _tl64546477_)
                                         (if '#t
                                             (gx#core-expand-expression
                                              _expr6480_)
                                             (_E64486460_))
                                         (_E64486460_)))))
                               (_E64486460_))))
                       (_E64486460_)))))
            (let () (_E64476482_)))))))
  (define gx#core-expand-let-bind-values!
    (lambda (_bind6404_)
      (let ((_e64056415_ _bind6404_))
        (let ((_E64076419_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e64056415_))))
          (let ((_E64066441_
                 (lambda ()
                   (if (gx#stx-pair? _e64056415_)
                       (let ((_e64086423_ (gx#syntax-e _e64056415_)))
                         (let ((_hd64096426_ (##car _e64086423_))
                               (_tl64106428_ (##cdr _e64086423_)))
                           (let ((_hd6431_ _hd64096426_))
                             (if (gx#stx-pair? _tl64106428_)
                                 (let ((_e64116433_
                                        (gx#syntax-e _tl64106428_)))
                                   (let ((_hd64126436_ (##car _e64116433_))
                                         (_tl64136438_ (##cdr _e64116433_)))
                                     (if (gx#stx-null? _tl64136438_)
                                         (if '#t
                                             (gx#core-bind-values!__0 _hd6431_)
                                             (_E64076419_))
                                         (_E64076419_))))
                                 (_E64076419_)))))
                       (_E64076419_)))))
            (let () (_E64066441_)))))))
  (define gx#core-expand-let-bind-quote
    (lambda (_bind6362_ _expr6363_)
      (let ((_e63646374_ _bind6362_))
        (let ((_E63666378_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e63646374_))))
          (let ((_E63656400_
                 (lambda ()
                   (if (gx#stx-pair? _e63646374_)
                       (let ((_e63676382_ (gx#syntax-e _e63646374_)))
                         (let ((_hd63686385_ (##car _e63676382_))
                               (_tl63696387_ (##cdr _e63676382_)))
                           (let ((_hd6390_ _hd63686385_))
                             (if (gx#stx-pair? _tl63696387_)
                                 (let ((_e63706392_
                                        (gx#syntax-e _tl63696387_)))
                                   (let ((_hd63716395_ (##car _e63706392_))
                                         (_tl63726397_ (##cdr _e63706392_)))
                                     (if (gx#stx-null? _tl63726397_)
                                         (if '#t
                                             (cons (gx#core-quote-bind-values
                                                    _hd6390_)
                                                   (cons _expr6363_ '()))
                                             (_E63666378_))
                                         (_E63666378_))))
                                 (_E63666378_)))))
                       (_E63666378_)))))
            (let () (_E63656400_)))))))
  (define gx#core-expand-let-syntax%
    (lambda (_stx6316_)
      (let ((_e63176327_ _stx6316_))
        (let ((_E63196331_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e63176327_))))
          (let ((_E63186358_
                 (lambda ()
                   (if (gx#stx-pair? _e63176327_)
                       (let ((_e63206335_ (gx#syntax-e _e63176327_)))
                         (let ((_hd63216338_ (##car _e63206335_))
                               (_tl63226340_ (##cdr _e63206335_)))
                           (if (gx#stx-pair? _tl63226340_)
                               (let ((_e63236343_ (gx#syntax-e _tl63226340_)))
                                 (let ((_hd63246346_ (##car _e63236343_))
                                       (_tl63256348_ (##cdr _e63236343_)))
                                   (let ((_hd6351_ _hd63246346_))
                                     (let ((_body6353_ _tl63256348_))
                                       (if (gx#core-expand-let-bind-syntax?
                                            _hd6351_)
                                           (let ((_expanders6355_
                                                  (gx#stx-map1
                                                   gx#core-expand-let-bind-syntax-expression
                                                   _hd6351_)))
                                             (call-with-parameters
                                              (lambda ()
                                                (begin
                                                  (gx#stx-for-each2
                                                   gx#core-expand-let-bind-syntax!
                                                   _hd6351_
                                                   _expanders6355_)
                                                  (gx#core-expand-local-block
                                                   _stx6316_
                                                   _body6353_)))
                                              gx#current-expander-context
                                              (let ((__obj7702
                                                     (make-object
                                                      gx#local-context::t
                                                      '5)))
                                                (begin
                                                  (gx#local-context:::init!__0
                                                   __obj7702)
                                                  __obj7702))))
                                           (_E63196331_))))))
                               (_E63196331_))))
                       (_E63196331_)))))
            (let () (_E63186358_)))))))
  (define gx#core-expand-letrec-syntax%
    (lambda (_stx6265_)
      (let ((_e62666276_ _stx6265_))
        (let ((_E62686280_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e62666276_))))
          (let ((_E62676312_
                 (lambda ()
                   (if (gx#stx-pair? _e62666276_)
                       (let ((_e62696284_ (gx#syntax-e _e62666276_)))
                         (let ((_hd62706287_ (##car _e62696284_))
                               (_tl62716289_ (##cdr _e62696284_)))
                           (if (gx#stx-pair? _tl62716289_)
                               (let ((_e62726292_ (gx#syntax-e _tl62716289_)))
                                 (let ((_hd62736295_ (##car _e62726292_))
                                       (_tl62746297_ (##cdr _e62726292_)))
                                   (let ((_hd6300_ _hd62736295_))
                                     (let ((_body6302_ _tl62746297_))
                                       (if (gx#core-expand-let-bind-syntax?
                                            _hd6300_)
                                           (call-with-parameters
                                            (lambda ()
                                              (begin
                                                (gx#stx-for-each2
                                                 gx#core-expand-let-bind-syntax!
                                                 _hd6300_
                                                 (make-list
                                                  (gx#stx-length _hd6300_)
                                                  '#!void))
                                                (gx#stx-for-each2
                                                 (lambda (_g63046307_
                                                          _g63056309_)
                                                   (gx#core-expand-let-bind-syntax!__opt-lambda6122
                                                    _g63046307_
                                                    _g63056309_
                                                    '#t))
                                                 _hd6300_
                                                 (gx#stx-map1
                                                  gx#core-expand-let-bind-syntax-expression
                                                  _hd6300_))
                                                (gx#core-expand-local-block
                                                 _stx6265_
                                                 _body6302_)))
                                            gx#current-expander-context
                                            (let ((__obj7703
                                                   (make-object
                                                    gx#local-context::t
                                                    '5)))
                                              (begin
                                                (gx#local-context:::init!__0
                                                 __obj7703)
                                                __obj7703)))
                                           (_E62686280_))))))
                               (_E62686280_))))
                       (_E62686280_)))))
            (let () (_E62676312_)))))))
  (define gx#core-expand-let-bind-syntax?
    (lambda (_stx6222_)
      (if (gx#stx-list? _stx6222_)
          (gx#stx-andmap
           (lambda (_bind6224_)
             (let ((_e62256235_ _bind6224_))
               (let ((_E62276239_ (lambda () '#f)))
                 (let ((_E62266261_
                        (lambda ()
                          (if (gx#stx-pair? _e62256235_)
                              (let ((_e62286243_ (gx#syntax-e _e62256235_)))
                                (let ((_hd62296246_ (##car _e62286243_))
                                      (_tl62306248_ (##cdr _e62286243_)))
                                  (let ((_hd6251_ _hd62296246_))
                                    (if (gx#stx-pair? _tl62306248_)
                                        (let ((_e62316253_
                                               (gx#syntax-e _tl62306248_)))
                                          (let ((_hd62326256_
                                                 (##car _e62316253_))
                                                (_tl62336258_
                                                 (##cdr _e62316253_)))
                                            (if (gx#stx-null? _tl62336258_)
                                                (if '#t
                                                    (gx#identifier? _hd6251_)
                                                    (_E62276239_))
                                                (_E62276239_))))
                                        (_E62276239_)))))
                              (_E62276239_)))))
                   (let () (_E62266261_))))))
           _stx6222_)
          '#f)))
  (define gx#core-expand-let-bind-syntax-expression
    (lambda (_bind6179_)
      (let ((_e61806190_ _bind6179_))
        (let ((_E61826194_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e61806190_))))
          (let ((_E61816218_
                 (lambda ()
                   (if (gx#stx-pair? _e61806190_)
                       (let ((_e61836198_ (gx#syntax-e _e61806190_)))
                         (let ((_hd61846201_ (##car _e61836198_))
                               (_tl61856203_ (##cdr _e61836198_)))
                           (if (gx#stx-pair? _tl61856203_)
                               (let ((_e61866206_ (gx#syntax-e _tl61856203_)))
                                 (let ((_hd61876209_ (##car _e61866206_))
                                       (_tl61886211_ (##cdr _e61866206_)))
                                   (let ((_expr6214_ _hd61876209_))
                                     (if (gx#stx-null? _tl61886211_)
                                         (if '#t
                                             (let ((_g7712_ (gx#core-expand-expression+1
                                                             _expr6214_)))
                                               (begin
                                                 (let ((_g7713_ (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g7712_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (not (fx= _g7713_ 2))
                                                       (error "Context expects 2 values"
                                                              _g7713_)))
                                                 (let ((_e6216_ (values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g7712_
                         1)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _e6216_)))
                                             (_E61826194_))
                                         (_E61826194_)))))
                               (_E61826194_))))
                       (_E61826194_)))))
            (let () (_E61816218_)))))))
  (begin
    (define gx#core-expand-let-bind-syntax!__opt-lambda6122
      (lambda (_bind6124_ _e6125_ _rebind?6126_)
        (let ((_e61276137_ _bind6124_))
          (let ((_E61296141_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e61276137_))))
            (let ((_E61286163_
                   (lambda ()
                     (if (gx#stx-pair? _e61276137_)
                         (let ((_e61306145_ (gx#syntax-e _e61276137_)))
                           (let ((_hd61316148_ (##car _e61306145_))
                                 (_tl61326150_ (##cdr _e61306145_)))
                             (let ((_id6153_ _hd61316148_))
                               (if (gx#stx-pair? _tl61326150_)
                                   (let ((_e61336155_
                                          (gx#syntax-e _tl61326150_)))
                                     (let ((_hd61346158_ (##car _e61336155_))
                                           (_tl61356160_ (##cdr _e61336155_)))
                                       (if (gx#stx-null? _tl61356160_)
                                           (if '#t
                                               (gx#core-bind-syntax!__1
                                                _id6153_
                                                _e6125_
                                                _rebind?6126_)
                                               (_E61296141_))
                                           (_E61296141_))))
                                   (_E61296141_)))))
                         (_E61296141_)))))
              (let () (_E61286163_)))))))
    (begin
      (define gx#core-expand-let-bind-syntax!__0
        (lambda (_bind6170_ _e6171_)
          (let ((_rebind?6173_ '#f))
            (gx#core-expand-let-bind-syntax!__opt-lambda6122
             _bind6170_
             _e6171_
             _rebind?6173_))))
      (define gx#core-expand-let-bind-syntax!
        (lambda _g7715_
          (let ((_g7714_ (length _g7715_)))
            (cond ((fx= _g7714_ 2)
                   (apply (lambda (_bind6170_ _e6171_)
                            (gx#core-expand-let-bind-syntax!__0
                             _bind6170_
                             _e6171_))
                          _g7715_))
                  ((fx= _g7714_ 3)
                   (apply (lambda (_bind6175_ _e6176_ _rebind?6177_)
                            (gx#core-expand-let-bind-syntax!__opt-lambda6122
                             _bind6175_
                             _e6176_
                             _rebind?6177_))
                          _g7715_))
                  (else (error "No clause matching arguments" _g7715_))))))))
  (define gx#core-expand-expression%
    (lambda (_stx6082_)
      (let ((_e60836093_ _stx6082_))
        (let ((_E60856097_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e60836093_))))
          (let ((_E60846119_
                 (lambda ()
                   (if (gx#stx-pair? _e60836093_)
                       (let ((_e60866101_ (gx#syntax-e _e60836093_)))
                         (let ((_hd60876104_ (##car _e60866101_))
                               (_tl60886106_ (##cdr _e60866101_)))
                           (if (gx#stx-pair? _tl60886106_)
                               (let ((_e60896109_ (gx#syntax-e _tl60886106_)))
                                 (let ((_hd60906112_ (##car _e60896109_))
                                       (_tl60916114_ (##cdr _e60896109_)))
                                   (let ((_expr6117_ _hd60906112_))
                                     (if (gx#stx-null? _tl60916114_)
                                         (if '#t
                                             (gx#core-expand-expression
                                              _expr6117_)
                                             (_E60856097_))
                                         (_E60856097_)))))
                               (_E60856097_))))
                       (_E60856097_)))))
            (let () (_E60846119_)))))))
  (define gx#core-expand-quote%
    (lambda (_stx6041_)
      (let ((_e60426052_ _stx6041_))
        (let ((_E60446056_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e60426052_))))
          (let ((_E60436078_
                 (lambda ()
                   (if (gx#stx-pair? _e60426052_)
                       (let ((_e60456060_ (gx#syntax-e _e60426052_)))
                         (let ((_hd60466063_ (##car _e60456060_))
                               (_tl60476065_ (##cdr _e60456060_)))
                           (if (gx#stx-pair? _tl60476065_)
                               (let ((_e60486068_ (gx#syntax-e _tl60476065_)))
                                 (let ((_hd60496071_ (##car _e60486068_))
                                       (_tl60506073_ (##cdr _e60486068_)))
                                   (let ((_e6076_ _hd60496071_))
                                     (if (gx#stx-null? _tl60506073_)
                                         (if '#t
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#quote)
                                                    (cons (gx#syntax->datum
                                                           _e6076_)
                                                          '()))
                                              (gx#stx-source _stx6041_))
                                             (_E60446056_))
                                         (_E60446056_)))))
                               (_E60446056_))))
                       (_E60446056_)))))
            (let () (_E60436078_)))))))
  (define gx#core-expand-quote-syntax%
    (lambda (_stx6000_)
      (let ((_e60016011_ _stx6000_))
        (let ((_E60036015_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e60016011_))))
          (let ((_E60026037_
                 (lambda ()
                   (if (gx#stx-pair? _e60016011_)
                       (let ((_e60046019_ (gx#syntax-e _e60016011_)))
                         (let ((_hd60056022_ (##car _e60046019_))
                               (_tl60066024_ (##cdr _e60046019_)))
                           (if (gx#stx-pair? _tl60066024_)
                               (let ((_e60076027_ (gx#syntax-e _tl60066024_)))
                                 (let ((_hd60086030_ (##car _e60076027_))
                                       (_tl60096032_ (##cdr _e60076027_)))
                                   (let ((_e6035_ _hd60086030_))
                                     (if (gx#stx-null? _tl60096032_)
                                         (if '#t
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#quote-syntax)
                                                    (cons (gx#core-quote-syntax__0
                                                           _e6035_)
                                                          '()))
                                              (gx#stx-source _stx6000_))
                                             (_E60036015_))
                                         (_E60036015_)))))
                               (_E60036015_))))
                       (_E60036015_)))))
            (let () (_E60026037_)))))))
  (define gx#core-expand-call%
    (lambda (_stx5957_)
      (let ((_e59585968_ _stx5957_))
        (let ((_E59605972_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e59585968_))))
          (let ((_E59595996_
                 (lambda ()
                   (if (gx#stx-pair? _e59585968_)
                       (let ((_e59615976_ (gx#syntax-e _e59585968_)))
                         (let ((_hd59625979_ (##car _e59615976_))
                               (_tl59635981_ (##cdr _e59615976_)))
                           (if (gx#stx-pair? _tl59635981_)
                               (let ((_e59645984_ (gx#syntax-e _tl59635981_)))
                                 (let ((_hd59655987_ (##car _e59645984_))
                                       (_tl59665989_ (##cdr _e59645984_)))
                                   (let ((_rator5992_ _hd59655987_))
                                     (let ((_args5994_ _tl59665989_))
                                       (if (gx#stx-list? _args5994_)
                                           (gx#core-quote-syntax__1
                                            (gx#core-cons*
                                             '%#call
                                             (gx#core-expand-expression
                                              _rator5992_)
                                             (gx#stx-map1
                                              gx#core-expand-expression
                                              _args5994_))
                                            (gx#stx-source _stx5957_))
                                           (_E59605972_))))))
                               (_E59605972_))))
                       (_E59605972_)))))
            (let () (_E59595996_)))))))
  (define gx#core-expand-if%
    (lambda (_stx5890_)
      (let ((_e58915907_ _stx5890_))
        (let ((_E58935911_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e58915907_))))
          (let ((_E58925953_
                 (lambda ()
                   (if (gx#stx-pair? _e58915907_)
                       (let ((_e58945915_ (gx#syntax-e _e58915907_)))
                         (let ((_hd58955918_ (##car _e58945915_))
                               (_tl58965920_ (##cdr _e58945915_)))
                           (if (gx#stx-pair? _tl58965920_)
                               (let ((_e58975923_ (gx#syntax-e _tl58965920_)))
                                 (let ((_hd58985926_ (##car _e58975923_))
                                       (_tl58995928_ (##cdr _e58975923_)))
                                   (let ((_test5931_ _hd58985926_))
                                     (if (gx#stx-pair? _tl58995928_)
                                         (let ((_e59005933_
                                                (gx#syntax-e _tl58995928_)))
                                           (let ((_hd59015936_
                                                  (##car _e59005933_))
                                                 (_tl59025938_
                                                  (##cdr _e59005933_)))
                                             (let ((_K5941_ _hd59015936_))
                                               (if (gx#stx-pair? _tl59025938_)
                                                   (let ((_e59035943_
                                                          (gx#syntax-e
                                                           _tl59025938_)))
                                                     (let ((_hd59045946_
                                                            (##car _e59035943_))
                                                           (_tl59055948_
                                                            (##cdr _e59035943_)))
                                                       (let ((_E5951_ _hd59045946_))
                                                         (if (gx#stx-null?
                                                              _tl59055948_)
                                                             (if '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-quote-syntax__1
                          (cons (gx#core-quote-syntax__0 '%#if)
                                (cons (gx#core-expand-expression _test5931_)
                                      (cons (gx#core-expand-expression _K5941_)
                                            (cons (gx#core-expand-expression
                                                   _E5951_)
                                                  '()))))
                          (gx#stx-source _stx5890_))
                         (_E58935911_))
                     (_E58935911_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E58935911_)))))
                                         (_E58935911_)))))
                               (_E58935911_))))
                       (_E58935911_)))))
            (let () (_E58925953_)))))))
  (define gx#core-expand-ref%
    (lambda (_stx5849_)
      (let ((_e58505860_ _stx5849_))
        (let ((_E58525864_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e58505860_))))
          (let ((_E58515886_
                 (lambda ()
                   (if (gx#stx-pair? _e58505860_)
                       (let ((_e58535868_ (gx#syntax-e _e58505860_)))
                         (let ((_hd58545871_ (##car _e58535868_))
                               (_tl58555873_ (##cdr _e58535868_)))
                           (if (gx#stx-pair? _tl58555873_)
                               (let ((_e58565876_ (gx#syntax-e _tl58555873_)))
                                 (let ((_hd58575879_ (##car _e58565876_))
                                       (_tl58585881_ (##cdr _e58565876_)))
                                   (let ((_id5884_ _hd58575879_))
                                     (if (gx#stx-null? _tl58585881_)
                                         (if (gx#core-runtime-ref? _id5884_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#ref)
                                                    (cons (gx#core-quote-runtime-ref
                                                           _id5884_
                                                           _stx5849_)
                                                          '()))
                                              (gx#stx-source _stx5849_))
                                             (_E58525864_))
                                         (_E58525864_)))))
                               (_E58525864_))))
                       (_E58525864_)))))
            (let () (_E58515886_)))))))
  (define gx#core-expand-setq%
    (lambda (_stx5795_)
      (let ((_e57965809_ _stx5795_))
        (let ((_E57985813_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e57965809_))))
          (let ((_E57975845_
                 (lambda ()
                   (if (gx#stx-pair? _e57965809_)
                       (let ((_e57995817_ (gx#syntax-e _e57965809_)))
                         (let ((_hd58005820_ (##car _e57995817_))
                               (_tl58015822_ (##cdr _e57995817_)))
                           (if (gx#stx-pair? _tl58015822_)
                               (let ((_e58025825_ (gx#syntax-e _tl58015822_)))
                                 (let ((_hd58035828_ (##car _e58025825_))
                                       (_tl58045830_ (##cdr _e58025825_)))
                                   (let ((_id5833_ _hd58035828_))
                                     (if (gx#stx-pair? _tl58045830_)
                                         (let ((_e58055835_
                                                (gx#syntax-e _tl58045830_)))
                                           (let ((_hd58065838_
                                                  (##car _e58055835_))
                                                 (_tl58075840_
                                                  (##cdr _e58055835_)))
                                             (let ((_expr5843_ _hd58065838_))
                                               (if (gx#stx-null? _tl58075840_)
                                                   (if (gx#core-runtime-ref?
                                                        _id5833_)
                                                       (gx#core-quote-syntax__1
                                                        (cons (gx#core-quote-syntax__0
                                                               '%#set!)
                                                              (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _id5833_
                             _stx5795_)
                            (cons (gx#core-expand-expression _expr5843_) '())))
                (gx#stx-source _stx5795_))
               (_E57985813_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E57985813_)))))
                                         (_E57985813_)))))
                               (_E57985813_))))
                       (_E57985813_)))))
            (let () (_E57975845_)))))))
  (define gx#macro-expand-extern
    (lambda (_stx5643_)
      (let ((_generate5645_
             (lambda (_body5675_)
               ((letrec ((_lp5677_
                          (lambda (_rest5679_ _ns5680_ _r5681_)
                            (let ((_e56825697_ _rest5679_))
                              (let ((_E56955701_
                                     (lambda ()
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _e56825697_))))
                                (let ((_E56915705_
                                       (lambda ()
                                         (if (gx#stx-null? _e56825697_)
                                             (if '#t
                                                 (reverse _r5681_)
                                                 (_E56955701_))
                                             (_E56955701_)))))
                                  (let ((_E56845762_
                                         (lambda ()
                                           (if (gx#stx-pair? _e56825697_)
                                               (let ((_e56925709_
                                                      (gx#syntax-e
                                                       _e56825697_)))
                                                 (let ((_hd56935712_
                                                        (##car _e56925709_))
                                                       (_tl56945714_
                                                        (##cdr _e56925709_)))
                                                   (let ((_hd5717_
                                                          _hd56935712_))
                                                     (let ((_rest5719_
                                                            _tl56945714_))
                                                       (if '#t
                                                           (if (gx#identifier?
                                                                _hd5717_)
                                                               (_lp5677_
                                                                _rest5719_
                                                                _ns5680_
                                                                (cons (cons _hd5717_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (if _ns5680_
                                              (gx#stx-identifier
                                               _hd5717_
                                               _ns5680_
                                               '"#"
                                               _hd5717_)
                                              _hd5717_)
                                          '()))
                              _r5681_))
                       (let ((_e57205730_ _hd5717_))
                         (let ((_E57225734_
                                (lambda ()
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _e57205730_))))
                           (let ((_E57215758_
                                  (lambda ()
                                    (if (gx#stx-pair? _e57205730_)
                                        (let ((_e57235738_
                                               (gx#syntax-e _e57205730_)))
                                          (let ((_hd57245741_
                                                 (##car _e57235738_))
                                                (_tl57255743_
                                                 (##cdr _e57235738_)))
                                            (let ((_id5746_ _hd57245741_))
                                              (if (gx#stx-pair? _tl57255743_)
                                                  (let ((_e57265748_
                                                         (gx#syntax-e
                                                          _tl57255743_)))
                                                    (let ((_hd57275751_
                                                           (##car _e57265748_))
                                                          (_tl57285753_
                                                           (##cdr _e57265748_)))
                                                      (let ((_eid5756_
                                                             _hd57275751_))
                                                        (if (gx#stx-null?
                                                             _tl57285753_)
                                                            (if (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _id5746_)
                            (gx#identifier? _eid5756_)
                            '#f)
                        (_lp5677_
                         _rest5719_
                         _ns5680_
                         (cons (cons _id5746_ (cons _eid5756_ '())) _r5681_))
                        (_E57225734_))
                    (_E57225734_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E57225734_)))))
                                        (_E57225734_)))))
                             (let () (_E57215758_))))))
                   (_E56915705_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E56915705_)))))
                                    (let ((_E56835791_
                                           (lambda ()
                                             (if (gx#stx-pair? _e56825697_)
                                                 (let ((_e56855766_
                                                        (gx#syntax-e
                                                         _e56825697_)))
                                                   (let ((_hd56865769_
                                                          (##car _e56855766_))
                                                         (_tl56875771_
                                                          (##cdr _e56855766_)))
                                                     (if (eq? (gx#stx-e
                                                               _hd56865769_)
                                                              'namespace:)
                                                         (if (gx#stx-pair?
                                                              _tl56875771_)
                                                             (let ((_e56885774_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl56875771_)))
                       (let ((_hd56895777_ (##car _e56885774_))
                             (_tl56905779_ (##cdr _e56885774_)))
                         (let ((_ns5782_ _hd56895777_))
                           (let ((_rest5784_ _tl56905779_))
                             (if '#t
                                 (let ((_ns5789_
                                        (if (gx#identifier? _ns5782_)
                                            (symbol->string
                                             (gx#stx-e _ns5782_))
                                            (if (let ((_$e5786_
                                                       (gx#stx-string?
                                                        _ns5782_)))
                                                  (if _$e5786_
                                                      _$e5786_
                                                      (gx#stx-false?
                                                       _ns5782_)))
                                                (gx#stx-e _ns5782_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax"
                                                 _stx5643_
                                                 _ns5782_)))))
                                   (_lp5677_ _rest5784_ _ns5789_ _r5681_))
                                 (_E56845762_))))))
                     (_E56845762_))
                 (_E56845762_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E56845762_)))))
                                      (let () (_E56835791_))))))))))
                  _lp5677_)
                _body5675_
                (gx#core-context-namespace__0)
                '()))))
        (let ((_e56465653_ _stx5643_))
          (let ((_E56485657_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e56465653_))))
            (let ((_E56475671_
                   (lambda ()
                     (if (gx#stx-pair? _e56465653_)
                         (let ((_e56495661_ (gx#syntax-e _e56465653_)))
                           (let ((_hd56505664_ (##car _e56495661_))
                                 (_tl56515666_ (##cdr _e56495661_)))
                             (let ((_body5669_ _tl56515666_))
                               (if (gx#stx-list? _body5669_)
                                   (gx#core-cons
                                    '%#extern
                                    (_generate5645_ _body5669_))
                                   (_E56485657_)))))
                         (_E56485657_)))))
              (let () (_E56475671_))))))))
  (define gx#macro-expand-define-values
    (lambda (_stx5589_)
      (let ((_e55905603_ _stx5589_))
        (let ((_E55925607_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e55905603_))))
          (let ((_E55915639_
                 (lambda ()
                   (if (gx#stx-pair? _e55905603_)
                       (let ((_e55935611_ (gx#syntax-e _e55905603_)))
                         (let ((_hd55945614_ (##car _e55935611_))
                               (_tl55955616_ (##cdr _e55935611_)))
                           (if (gx#stx-pair? _tl55955616_)
                               (let ((_e55965619_ (gx#syntax-e _tl55955616_)))
                                 (let ((_hd55975622_ (##car _e55965619_))
                                       (_tl55985624_ (##cdr _e55965619_)))
                                   (let ((_hd5627_ _hd55975622_))
                                     (if (gx#stx-pair? _tl55985624_)
                                         (let ((_e55995629_
                                                (gx#syntax-e _tl55985624_)))
                                           (let ((_hd56005632_
                                                  (##car _e55995629_))
                                                 (_tl56015634_
                                                  (##cdr _e55995629_)))
                                             (let ((_expr5637_ _hd56005632_))
                                               (if (gx#stx-null? _tl56015634_)
                                                   (if (gx#stx-andmap
                                                        gx#identifier?
                                                        _hd5627_)
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#define-values)
                                                             (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            gx#user-binding-identifier
                            _hd5627_)
                           (cons _expr5637_ '())))
               (_E55925607_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E55925607_)))))
                                         (_E55925607_)))))
                               (_E55925607_))))
                       (_E55925607_)))))
            (let () (_E55915639_)))))))
  (define gx#macro-expand-define-syntax
    (lambda (_stx5535_)
      (let ((_e55365549_ _stx5535_))
        (let ((_E55385553_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e55365549_))))
          (let ((_E55375585_
                 (lambda ()
                   (if (gx#stx-pair? _e55365549_)
                       (let ((_e55395557_ (gx#syntax-e _e55365549_)))
                         (let ((_hd55405560_ (##car _e55395557_))
                               (_tl55415562_ (##cdr _e55395557_)))
                           (if (gx#stx-pair? _tl55415562_)
                               (let ((_e55425565_ (gx#syntax-e _tl55415562_)))
                                 (let ((_hd55435568_ (##car _e55425565_))
                                       (_tl55445570_ (##cdr _e55425565_)))
                                   (let ((_hd5573_ _hd55435568_))
                                     (if (gx#stx-pair? _tl55445570_)
                                         (let ((_e55455575_
                                                (gx#syntax-e _tl55445570_)))
                                           (let ((_hd55465578_
                                                  (##car _e55455575_))
                                                 (_tl55475580_
                                                  (##cdr _e55455575_)))
                                             (let ((_expr5583_ _hd55465578_))
                                               (if (gx#stx-null? _tl55475580_)
                                                   (if (gx#identifier?
                                                        _hd5573_)
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#define-syntax)
                                                             (cons _hd5573_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _expr5583_ '())))
               (_E55385553_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E55385553_)))))
                                         (_E55385553_)))))
                               (_E55385553_))))
                       (_E55385553_)))))
            (let () (_E55375585_)))))))
  (define gx#macro-expand-define-alias
    (lambda (_stx5481_)
      (let ((_e54825495_ _stx5481_))
        (let ((_E54845499_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e54825495_))))
          (let ((_E54835531_
                 (lambda ()
                   (if (gx#stx-pair? _e54825495_)
                       (let ((_e54855503_ (gx#syntax-e _e54825495_)))
                         (let ((_hd54865506_ (##car _e54855503_))
                               (_tl54875508_ (##cdr _e54855503_)))
                           (if (gx#stx-pair? _tl54875508_)
                               (let ((_e54885511_ (gx#syntax-e _tl54875508_)))
                                 (let ((_hd54895514_ (##car _e54885511_))
                                       (_tl54905516_ (##cdr _e54885511_)))
                                   (let ((_id5519_ _hd54895514_))
                                     (if (gx#stx-pair? _tl54905516_)
                                         (let ((_e54915521_
                                                (gx#syntax-e _tl54905516_)))
                                           (let ((_hd54925524_
                                                  (##car _e54915521_))
                                                 (_tl54935526_
                                                  (##cdr _e54915521_)))
                                             (let ((_alias-id5529_
                                                    _hd54925524_))
                                               (if (gx#stx-null? _tl54935526_)
                                                   (if (if (gx#identifier?
                                                            _id5519_)
                                                           (gx#identifier?
                                                            _alias-id5529_)
                                                           '#f)
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#define-alias)
                                                             (cons _id5519_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _alias-id5529_ '())))
               (_E54845499_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E54845499_)))))
                                         (_E54845499_)))))
                               (_E54845499_))))
                       (_E54845499_)))))
            (let () (_E54835531_)))))))
  (define gx#macro-expand-lambda%
    (lambda (_stx5438_)
      (let ((_e54395449_ _stx5438_))
        (let ((_E54415453_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e54395449_))))
          (let ((_E54405477_
                 (lambda ()
                   (if (gx#stx-pair? _e54395449_)
                       (let ((_e54425457_ (gx#syntax-e _e54395449_)))
                         (let ((_hd54435460_ (##car _e54425457_))
                               (_tl54445462_ (##cdr _e54425457_)))
                           (if (gx#stx-pair? _tl54445462_)
                               (let ((_e54455465_ (gx#syntax-e _tl54445462_)))
                                 (let ((_hd54465468_ (##car _e54455465_))
                                       (_tl54475470_ (##cdr _e54455465_)))
                                   (let ((_hd5473_ _hd54465468_))
                                     (let ((_body5475_ _tl54475470_))
                                       (if (if (gx#stx-andmap
                                                gx#identifier?
                                                _hd5473_)
                                               (if (gx#stx-list? _body5475_)
                                                   (not (gx#stx-null?
                                                         _body5475_))
                                                   '#f)
                                               '#f)
                                           (gx#core-cons*
                                            '%#lambda
                                            (gx#stx-map1
                                             gx#user-binding-identifier
                                             _hd5473_)
                                            _body5475_)
                                           (_E54415453_))))))
                               (_E54415453_))))
                       (_E54415453_)))))
            (let () (_E54405477_)))))))
  (define gx#macro-expand-case-lambda
    (lambda (_stx5374_)
      (let ((_generate5376_
             (lambda (_clause5406_)
               (let ((_e54075414_ _clause5406_))
                 (let ((_E54095418_
                        (lambda ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; malformed clause"
                           _stx5374_
                           _clause5406_))))
                   (let ((_E54085434_
                          (lambda ()
                            (if (gx#stx-pair? _e54075414_)
                                (let ((_e54105422_ (gx#syntax-e _e54075414_)))
                                  (let ((_hd54115425_ (##car _e54105422_))
                                        (_tl54125427_ (##cdr _e54105422_)))
                                    (let ((_hd5430_ _hd54115425_))
                                      (let ((_body5432_ _tl54125427_))
                                        (if (if (gx#stx-andmap
                                                 gx#identifier?
                                                 _hd5430_)
                                                (if (gx#stx-list? _body5432_)
                                                    (not (gx#stx-null?
                                                          _body5432_))
                                                    '#f)
                                                '#f)
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    gx#user-binding-identifier
                                                    _hd5430_)
                                                   _body5432_)
                                             (gx#stx-source _clause5406_))
                                            (_E54095418_))))))
                                (_E54095418_)))))
                     (let () (_E54085434_))))))))
        (let ((_e53775384_ _stx5374_))
          (let ((_E53795388_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e53775384_))))
            (let ((_E53785402_
                   (lambda ()
                     (if (gx#stx-pair? _e53775384_)
                         (let ((_e53805392_ (gx#syntax-e _e53775384_)))
                           (let ((_hd53815395_ (##car _e53805392_))
                                 (_tl53825397_ (##cdr _e53805392_)))
                             (let ((_clauses5400_ _tl53825397_))
                               (if (gx#stx-list? _clauses5400_)
                                   (gx#core-cons
                                    '%#case-lambda
                                    (gx#stx-map1 _generate5376_ _clauses5400_))
                                   (_E53795388_)))))
                         (_E53795388_)))))
              (let () (_E53785402_))))))))
  (begin
    (define gx#macro-expand-let-values__opt-lambda5273
      (lambda (_stx5275_ _form5276_)
        (let ((_generate5278_
               (lambda (_bind5321_)
                 (let ((_e53225332_ _bind5321_))
                   (let ((_E53245336_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; malformed binding"
                             _stx5275_
                             _bind5321_))))
                     (let ((_E53235360_
                            (lambda ()
                              (if (gx#stx-pair? _e53225332_)
                                  (let ((_e53255340_
                                         (gx#syntax-e _e53225332_)))
                                    (let ((_hd53265343_ (##car _e53255340_))
                                          (_tl53275345_ (##cdr _e53255340_)))
                                      (let ((_ids5348_ _hd53265343_))
                                        (if (gx#stx-pair? _tl53275345_)
                                            (let ((_e53285350_
                                                   (gx#syntax-e _tl53275345_)))
                                              (let ((_hd53295353_
                                                     (##car _e53285350_))
                                                    (_tl53305355_
                                                     (##cdr _e53285350_)))
                                                (let ((_expr5358_
                                                       _hd53295353_))
                                                  (if (gx#stx-null?
                                                       _tl53305355_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids5348_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids5348_)
                        (cons _expr5358_ '()))
                  (_E53245336_))
              (_E53245336_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E53245336_)))))
                                  (_E53245336_)))))
                       (let () (_E53235360_))))))))
          (let ((_e52795289_ _stx5275_))
            (let ((_E52815293_
                   (lambda ()
                     (gx#raise-syntax-error '#f '"Bad syntax" _e52795289_))))
              (let ((_E52805317_
                     (lambda ()
                       (if (gx#stx-pair? _e52795289_)
                           (let ((_e52825297_ (gx#syntax-e _e52795289_)))
                             (let ((_hd52835300_ (##car _e52825297_))
                                   (_tl52845302_ (##cdr _e52825297_)))
                               (if (gx#stx-pair? _tl52845302_)
                                   (let ((_e52855305_
                                          (gx#syntax-e _tl52845302_)))
                                     (let ((_hd52865308_ (##car _e52855305_))
                                           (_tl52875310_ (##cdr _e52855305_)))
                                       (let ((_hd5313_ _hd52865308_))
                                         (let ((_body5315_ _tl52875310_))
                                           (if (if (gx#stx-list? _hd5313_)
                                                   (if (gx#stx-list?
                                                        _body5315_)
                                                       (not (gx#stx-null?
                                                             _body5315_))
                                                       '#f)
                                                   '#f)
                                               (gx#core-cons*
                                                _form5276_
                                                (gx#stx-map1
                                                 _generate5278_
                                                 _hd5313_)
                                                _body5315_)
                                               (_E52815293_))))))
                                   (_E52815293_))))
                           (_E52815293_)))))
                (let () (_E52805317_))))))))
    (begin
      (define gx#macro-expand-let-values__0
        (lambda (_stx5367_)
          (let ((_form5369_ '%#let-values))
            (gx#macro-expand-let-values__opt-lambda5273
             _stx5367_
             _form5369_))))
      (define gx#macro-expand-let-values
        (lambda _g7717_
          (let ((_g7716_ (length _g7717_)))
            (cond ((fx= _g7716_ 1)
                   (apply (lambda (_stx5367_)
                            (gx#macro-expand-let-values__0 _stx5367_))
                          _g7717_))
                  ((fx= _g7716_ 2)
                   (apply (lambda (_stx5371_ _form5372_)
                            (gx#macro-expand-let-values__opt-lambda5273
                             _stx5371_
                             _form5372_))
                          _g7717_))
                  (else (error "No clause matching arguments" _g7717_))))))))
  (define gx#macro-expand-letrec-values
    (lambda (_stx5272_)
      (gx#macro-expand-let-values__opt-lambda5273 _stx5272_ '%#letrec-values)))
  (define gx#macro-expand-letrec*-values
    (lambda (_stx5270_)
      (gx#macro-expand-let-values__opt-lambda5273
       _stx5270_
       '%#letrec*-values)))
  (define gx#macro-expand-if
    (lambda (_stx5161_)
      (let ((_e51625188_ _stx5161_))
        (let ((_E51745192_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e51625188_))))
          (let ((_E51645234_
                 (lambda ()
                   (if (gx#stx-pair? _e51625188_)
                       (let ((_e51755196_ (gx#syntax-e _e51625188_)))
                         (let ((_hd51765199_ (##car _e51755196_))
                               (_tl51775201_ (##cdr _e51755196_)))
                           (if (gx#stx-pair? _tl51775201_)
                               (let ((_e51785204_ (gx#syntax-e _tl51775201_)))
                                 (let ((_hd51795207_ (##car _e51785204_))
                                       (_tl51805209_ (##cdr _e51785204_)))
                                   (let ((_test5212_ _hd51795207_))
                                     (if (gx#stx-pair? _tl51805209_)
                                         (let ((_e51815214_
                                                (gx#syntax-e _tl51805209_)))
                                           (let ((_hd51825217_
                                                  (##car _e51815214_))
                                                 (_tl51835219_
                                                  (##cdr _e51815214_)))
                                             (let ((_K5222_ _hd51825217_))
                                               (if (gx#stx-pair? _tl51835219_)
                                                   (let ((_e51845224_
                                                          (gx#syntax-e
                                                           _tl51835219_)))
                                                     (let ((_hd51855227_
                                                            (##car _e51845224_))
                                                           (_tl51865229_
                                                            (##cdr _e51845224_)))
                                                       (let ((_E5232_ _hd51855227_))
                                                         (if (gx#stx-null?
                                                              _tl51865229_)
                                                             (if '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-list '%#if _test5212_ _K5222_ _E5232_)
                         (_E51745192_))
                     (_E51745192_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E51745192_)))))
                                         (_E51745192_)))))
                               (_E51745192_))))
                       (_E51745192_)))))
            (let ((_E51635266_
                   (lambda ()
                     (if (gx#stx-pair? _e51625188_)
                         (let ((_e51655238_ (gx#syntax-e _e51625188_)))
                           (let ((_hd51665241_ (##car _e51655238_))
                                 (_tl51675243_ (##cdr _e51655238_)))
                             (if (gx#stx-pair? _tl51675243_)
                                 (let ((_e51685246_
                                        (gx#syntax-e _tl51675243_)))
                                   (let ((_hd51695249_ (##car _e51685246_))
                                         (_tl51705251_ (##cdr _e51685246_)))
                                     (let ((_test5254_ _hd51695249_))
                                       (if (gx#stx-pair? _tl51705251_)
                                           (let ((_e51715256_
                                                  (gx#syntax-e _tl51705251_)))
                                             (let ((_hd51725259_
                                                    (##car _e51715256_))
                                                   (_tl51735261_
                                                    (##cdr _e51715256_)))
                                               (let ((_K5264_ _hd51725259_))
                                                 (if (gx#stx-null?
                                                      _tl51735261_)
                                                     (if '#t
                                                         (gx#core-list
                                                          '%#if
                                                          _test5254_
                                                          _K5264_
                                                          '#!void)
                                                         (_E51645234_))
                                                     (_E51645234_)))))
                                           (_E51645234_)))))
                                 (_E51645234_))))
                         (_E51645234_)))))
              (let () (_E51635266_))))))))
  (define gx#free-identifier=?
    (lambda (_xid5149_ _yid5150_)
      (let ((_xe5152_ (gx#resolve-identifier__0 _xid5149_))
            (_ye5153_ (gx#resolve-identifier__0 _yid5150_)))
        (if (if _xe5152_ _ye5153_ '#f)
            (let ((_$e5155_ (eq? _xe5152_ _ye5153_)))
              (if _$e5155_
                  _$e5155_
                  (if (##structure-instance-of? _xe5152_ 'gx#binding::t)
                      (if (##structure-instance-of? _ye5153_ 'gx#binding::t)
                          (eq? (##structure-ref _xe5152_ '1 gx#binding::t '#f)
                               (##structure-ref _ye5153_ '1 gx#binding::t '#f))
                          '#f)
                      '#f)))
            (if (let ((_$e5158_ _xe5152_)) (if _$e5158_ _$e5158_ _ye5153_))
                '#f
                (gx#stx-eq? _xid5149_ _yid5150_))))))
  (define gx#bound-identifier=?
    (lambda (_xid5133_ _yid5134_)
      (let ((_context5136_
             (lambda (_e5147_)
               (if (##structure-direct-instance-of?
                    _e5147_
                    'gx#syntax-quote::t)
                   (##structure-ref _e5147_ '3 gx#syntax-quote::t '#f)
                   (gx#current-expander-context)))))
        (let ((_marks5137_
               (lambda (_e5145_)
                 (if (symbol? _e5145_)
                     '()
                     (if (##structure-direct-instance-of?
                          _e5145_
                          'gx#identifier-wrap::t)
                         (##structure-ref _e5145_ '3 gx#identifier-wrap::t '#f)
                         (##structure-ref
                          _e5145_
                          '4
                          gx#syntax-quote::t
                          '#f))))))
          (let ((_unwrap5138_
                 (lambda (_e5143_)
                   (if (symbol? _e5143_)
                       _e5143_
                       (gx#syntax-local-unwrap _e5143_)))))
            (let ((_x5140_ (_unwrap5138_ _xid5133_))
                  (_y5141_ (_unwrap5138_ _yid5134_)))
              (if (gx#stx-eq? _x5140_ _y5141_)
                  (if (eq? (_context5136_ _x5140_) (_context5136_ _y5141_))
                      (andmap eq? (_marks5137_ _x5140_) (_marks5137_ _y5141_))
                      '#f)
                  '#f)))))))
  (define gx#underscore?
    (lambda (_stx5131_)
      (if (gx#identifier? _stx5131_) (gx#core-identifier=? _stx5131_ '_) '#f)))
  (define gx#ellipsis?
    (lambda (_stx5129_)
      (if (gx#identifier? _stx5129_)
          (gx#core-identifier=? _stx5129_ '...)
          '#f)))
  (define gx#user-binding-identifier
    (lambda (_x5127_)
      (if (gx#identifier? _x5127_)
          (if (not (gx#underscore? _x5127_)) _x5127_ '#f)
          '#f)))
  (begin
    (define gx#check-duplicate-identifiers__opt-lambda5071
      (lambda (_stx5073_ _where5074_)
        ((letrec ((_lp5076_
                   (lambda (_rest5078_)
                     (let ((_rest50795087_ _rest5078_))
                       (let ((_E50825091_
                              (lambda ()
                                (error '"No clause matching" _rest50795087_))))
                         (let ((_else50815095_ (lambda () '#t)))
                           (let ((_K50835105_
                                  (lambda (_rest5098_ _hd5099_)
                                    (if (not (gx#identifier? _hd5099_))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad identifier"
                                         _where5074_
                                         _hd5099_)
                                        (if (find (lambda (_g51005102_)
                                                    (gx#bound-identifier=?
                                                     _g51005102_
                                                     _hd5099_))
                                                  _rest5098_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate identifier"
                                             _where5074_
                                             _hd5099_)
                                            (_lp5076_ _rest5098_))))))
                             (if (##pair? _rest50795087_)
                                 (let ((_hd50845108_ (##car _rest50795087_))
                                       (_tl50855110_ (##cdr _rest50795087_)))
                                   (let ((_hd5113_ _hd50845108_))
                                     (let ((_rest5115_ _tl50855110_))
                                       (_K50835105_ _rest5115_ _hd5113_))))
                                 (_else50815095_)))))))))
           _lp5076_)
         (gx#syntax->list _stx5073_))))
    (begin
      (define gx#check-duplicate-identifiers__0
        (lambda (_stx5120_)
          (let ((_where5122_ _stx5120_))
            (gx#check-duplicate-identifiers__opt-lambda5071
             _stx5120_
             _where5122_))))
      (define gx#check-duplicate-identifiers
        (lambda _g7719_
          (let ((_g7718_ (length _g7719_)))
            (cond ((fx= _g7718_ 1)
                   (apply (lambda (_stx5120_)
                            (gx#check-duplicate-identifiers__0 _stx5120_))
                          _g7719_))
                  ((fx= _g7718_ 2)
                   (apply (lambda (_stx5124_ _where5125_)
                            (gx#check-duplicate-identifiers__opt-lambda5071
                             _stx5124_
                             _where5125_))
                          _g7719_))
                  (else (error "No clause matching arguments" _g7719_))))))))
  (define gx#core-bind-values?
    (lambda (_stx5065_)
      (gx#stx-andmap
       (lambda (_x5067_)
         (let ((_$e5069_ (gx#identifier? _x5067_)))
           (if _$e5069_ _$e5069_ (gx#stx-false? _x5067_))))
       _stx5065_)))
  (begin
    (define gx#core-bind-values!__opt-lambda5027
      (lambda (_stx5029_ _rebind?5030_ _phi5031_ _ctx5032_)
        (gx#stx-for-each1
         (lambda (_id5034_)
           (if (gx#identifier? _id5034_)
               (gx#core-bind-runtime!__opt-lambda4963
                _id5034_
                _rebind?5030_
                _phi5031_
                _ctx5032_)
               '#!void))
         _stx5029_)))
    (begin
      (define gx#core-bind-values!__0
        (lambda (_stx5039_)
          (let ((_rebind?5041_ '#f))
            (let ((_phi5043_ (gx#current-expander-phi)))
              (let ((_ctx5045_ (gx#current-expander-context)))
                (gx#core-bind-values!__opt-lambda5027
                 _stx5039_
                 _rebind?5041_
                 _phi5043_
                 _ctx5045_))))))
      (define gx#core-bind-values!__1
        (lambda (_stx5047_ _rebind?5048_)
          (let ((_phi5050_ (gx#current-expander-phi)))
            (let ((_ctx5052_ (gx#current-expander-context)))
              (gx#core-bind-values!__opt-lambda5027
               _stx5047_
               _rebind?5048_
               _phi5050_
               _ctx5052_)))))
      (define gx#core-bind-values!__2
        (lambda (_stx5054_ _rebind?5055_ _phi5056_)
          (let ((_ctx5058_ (gx#current-expander-context)))
            (gx#core-bind-values!__opt-lambda5027
             _stx5054_
             _rebind?5055_
             _phi5056_
             _ctx5058_))))
      (define gx#core-bind-values!
        (lambda _g7721_
          (let ((_g7720_ (length _g7721_)))
            (cond ((fx= _g7720_ 1)
                   (apply (lambda (_stx5039_)
                            (gx#core-bind-values!__0 _stx5039_))
                          _g7721_))
                  ((fx= _g7720_ 2)
                   (apply (lambda (_stx5047_ _rebind?5048_)
                            (gx#core-bind-values!__1 _stx5047_ _rebind?5048_))
                          _g7721_))
                  ((fx= _g7720_ 3)
                   (apply (lambda (_stx5054_ _rebind?5055_ _phi5056_)
                            (gx#core-bind-values!__2
                             _stx5054_
                             _rebind?5055_
                             _phi5056_))
                          _g7721_))
                  ((fx= _g7720_ 4)
                   (apply (lambda (_stx5060_ _rebind?5061_ _phi5062_ _ctx5063_)
                            (gx#core-bind-values!__opt-lambda5027
                             _stx5060_
                             _rebind?5061_
                             _phi5062_
                             _ctx5063_))
                          _g7721_))
                  (else (error "No clause matching arguments" _g7721_))))))))
  (define gx#core-quote-bind-values
    (lambda (_stx5024_)
      (gx#stx-map1
       (lambda (_x5026_)
         (if (gx#identifier? _x5026_) (gx#core-quote-syntax__0 _x5026_) '#f))
       _stx5024_)))
  (define gx#core-runtime-ref?
    (lambda (_stx5017_)
      (if (gx#identifier? _stx5017_)
          (let ((_bind5019_ (gx#resolve-identifier__0 _stx5017_)))
            (let ((_$e5021_ (not _bind5019_)))
              (if _$e5021_
                  _$e5021_
                  (##structure-instance-of?
                   _bind5019_
                   'gx#runtime-binding::t))))
          '#f)))
  (define gx#core-quote-runtime-ref
    (lambda (_id5006_ _form5007_)
      (let ((_bind5009_ (gx#resolve-identifier__0 _id5006_)))
        (if (##structure-instance-of? _bind5009_ 'gx#runtime-binding::t)
            (gx#core-quote-syntax__0 _id5006_)
            (if (not _bind5009_)
                (if (let ((_$e5011_ (fxpositive? (gx#current-expander-phi))))
                      (if _$e5011_
                          _$e5011_
                          (let ((_$e5014_
                                 (gx#core-context-rebind?__opt-lambda2875
                                  (gx#core-context-top__0))))
                            (if _$e5014_
                                _$e5014_
                                (gx#core-extern-symbol?
                                 (gx#stx-e _id5006_))))))
                    (gx#core-quote-syntax__0 _id5006_)
                    (gx#raise-syntax-error
                     '#f
                     '"Reference to unbound identifier"
                     _form5007_
                     _id5006_))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; not a runtime binding"
                 _form5007_
                 _id5006_))))))
  (begin
    (define gx#core-bind-runtime!__opt-lambda4963
      (lambda (_id4965_ _rebind?4966_ _phi4967_ _ctx4968_)
        (let ((_key4970_ (gx#core-identifier-key _id4965_)))
          (let ((_eid4972_
                 (gx#make-binding-id__opt-lambda4730
                  _key4970_
                  '#f
                  _phi4967_
                  _ctx4968_)))
            (let ((_bind4974_
                   (if (##structure-instance-of?
                        _ctx4968_
                        'gx#module-context::t)
                       (##structure
                        gx#module-binding::t
                        _eid4972_
                        _key4970_
                        _phi4967_
                        _ctx4968_)
                       (if (##structure-instance-of?
                            _ctx4968_
                            'gx#top-context::t)
                           (##structure
                            gx#top-binding::t
                            _eid4972_
                            _key4970_
                            _phi4967_)
                           (if (##structure-instance-of?
                                _ctx4968_
                                'gx#local-context::t)
                               (##structure
                                gx#local-binding::t
                                _eid4972_
                                _key4970_
                                _phi4967_)
                               (##structure
                                gx#runtime-binding::t
                                _eid4972_
                                _key4970_
                                _phi4967_))))))
              (let ()
                (gx#bind-identifier!__opt-lambda3321
                 _id4965_
                 _bind4974_
                 _rebind?4966_
                 _phi4967_
                 _ctx4968_)))))))
    (begin
      (define gx#core-bind-runtime!__0
        (lambda (_id4980_)
          (let ((_rebind?4982_ '#f))
            (let ((_phi4984_ (gx#current-expander-phi)))
              (let ((_ctx4986_ (gx#current-expander-context)))
                (gx#core-bind-runtime!__opt-lambda4963
                 _id4980_
                 _rebind?4982_
                 _phi4984_
                 _ctx4986_))))))
      (define gx#core-bind-runtime!__1
        (lambda (_id4988_ _rebind?4989_)
          (let ((_phi4991_ (gx#current-expander-phi)))
            (let ((_ctx4993_ (gx#current-expander-context)))
              (gx#core-bind-runtime!__opt-lambda4963
               _id4988_
               _rebind?4989_
               _phi4991_
               _ctx4993_)))))
      (define gx#core-bind-runtime!__2
        (lambda (_id4995_ _rebind?4996_ _phi4997_)
          (let ((_ctx4999_ (gx#current-expander-context)))
            (gx#core-bind-runtime!__opt-lambda4963
             _id4995_
             _rebind?4996_
             _phi4997_
             _ctx4999_))))
      (define gx#core-bind-runtime!
        (lambda _g7723_
          (let ((_g7722_ (length _g7723_)))
            (cond ((fx= _g7722_ 1)
                   (apply (lambda (_id4980_)
                            (gx#core-bind-runtime!__0 _id4980_))
                          _g7723_))
                  ((fx= _g7722_ 2)
                   (apply (lambda (_id4988_ _rebind?4989_)
                            (gx#core-bind-runtime!__1 _id4988_ _rebind?4989_))
                          _g7723_))
                  ((fx= _g7722_ 3)
                   (apply (lambda (_id4995_ _rebind?4996_ _phi4997_)
                            (gx#core-bind-runtime!__2
                             _id4995_
                             _rebind?4996_
                             _phi4997_))
                          _g7723_))
                  ((fx= _g7722_ 4)
                   (apply (lambda (_id5001_ _rebind?5002_ _phi5003_ _ctx5004_)
                            (gx#core-bind-runtime!__opt-lambda4963
                             _id5001_
                             _rebind?5002_
                             _phi5003_
                             _ctx5004_))
                          _g7723_))
                  (else (error "No clause matching arguments" _g7723_))))))))
  (begin
    (define gx#core-bind-runtime-reference!__opt-lambda4918
      (lambda (_id4920_ _eid4921_ _rebind?4922_ _phi4923_ _ctx4924_)
        (let ((_key4926_ (gx#core-identifier-key _id4920_)))
          (let ((_bind4928_
                 (if (##structure-instance-of? _ctx4924_ 'gx#module-context::t)
                     (##structure
                      gx#module-binding::t
                      _eid4921_
                      _key4926_
                      _phi4923_
                      _ctx4924_)
                     (if (##structure-instance-of?
                          _ctx4924_
                          'gx#top-context::t)
                         (##structure
                          gx#top-binding::t
                          _eid4921_
                          _key4926_
                          _phi4923_)
                         (##structure
                          gx#runtime-binding::t
                          _eid4921_
                          _key4926_
                          _phi4923_)))))
            (let ()
              (gx#bind-identifier!__opt-lambda3321
               _id4920_
               _bind4928_
               _rebind?4922_
               _phi4923_
               _ctx4924_))))))
    (begin
      (define gx#core-bind-runtime-reference!__0
        (lambda (_id4934_ _eid4935_)
          (let ((_rebind?4937_ '#f))
            (let ((_phi4939_ (gx#current-expander-phi)))
              (let ((_ctx4941_ (gx#current-expander-context)))
                (gx#core-bind-runtime-reference!__opt-lambda4918
                 _id4934_
                 _eid4935_
                 _rebind?4937_
                 _phi4939_
                 _ctx4941_))))))
      (define gx#core-bind-runtime-reference!__1
        (lambda (_id4943_ _eid4944_ _rebind?4945_)
          (let ((_phi4947_ (gx#current-expander-phi)))
            (let ((_ctx4949_ (gx#current-expander-context)))
              (gx#core-bind-runtime-reference!__opt-lambda4918
               _id4943_
               _eid4944_
               _rebind?4945_
               _phi4947_
               _ctx4949_)))))
      (define gx#core-bind-runtime-reference!__2
        (lambda (_id4951_ _eid4952_ _rebind?4953_ _phi4954_)
          (let ((_ctx4956_ (gx#current-expander-context)))
            (gx#core-bind-runtime-reference!__opt-lambda4918
             _id4951_
             _eid4952_
             _rebind?4953_
             _phi4954_
             _ctx4956_))))
      (define gx#core-bind-runtime-reference!
        (lambda _g7725_
          (let ((_g7724_ (length _g7725_)))
            (cond ((fx= _g7724_ 2)
                   (apply (lambda (_id4934_ _eid4935_)
                            (gx#core-bind-runtime-reference!__0
                             _id4934_
                             _eid4935_))
                          _g7725_))
                  ((fx= _g7724_ 3)
                   (apply (lambda (_id4943_ _eid4944_ _rebind?4945_)
                            (gx#core-bind-runtime-reference!__1
                             _id4943_
                             _eid4944_
                             _rebind?4945_))
                          _g7725_))
                  ((fx= _g7724_ 4)
                   (apply (lambda (_id4951_ _eid4952_ _rebind?4953_ _phi4954_)
                            (gx#core-bind-runtime-reference!__2
                             _id4951_
                             _eid4952_
                             _rebind?4953_
                             _phi4954_))
                          _g7725_))
                  ((fx= _g7724_ 5)
                   (apply (lambda (_id4958_
                                   _eid4959_
                                   _rebind?4960_
                                   _phi4961_
                                   _ctx4962_)
                            (gx#core-bind-runtime-reference!__opt-lambda4918
                             _id4958_
                             _eid4959_
                             _rebind?4960_
                             _phi4961_
                             _ctx4962_))
                          _g7725_))
                  (else (error "No clause matching arguments" _g7725_))))))))
  (begin
    (define gx#core-bind-extern!__opt-lambda4878
      (lambda (_id4880_ _eid4881_ _rebind?4882_ _phi4883_ _ctx4884_)
        (gx#bind-identifier!__opt-lambda3321
         _id4880_
         (##structure
          gx#extern-binding::t
          _eid4881_
          (gx#core-identifier-key _id4880_)
          _phi4883_)
         _rebind?4882_
         _phi4883_
         _ctx4884_)))
    (begin
      (define gx#core-bind-extern!__0
        (lambda (_id4889_ _eid4890_)
          (let ((_rebind?4892_ '#f))
            (let ((_phi4894_ (gx#current-expander-phi)))
              (let ((_ctx4896_ (gx#current-expander-context)))
                (gx#core-bind-extern!__opt-lambda4878
                 _id4889_
                 _eid4890_
                 _rebind?4892_
                 _phi4894_
                 _ctx4896_))))))
      (define gx#core-bind-extern!__1
        (lambda (_id4898_ _eid4899_ _rebind?4900_)
          (let ((_phi4902_ (gx#current-expander-phi)))
            (let ((_ctx4904_ (gx#current-expander-context)))
              (gx#core-bind-extern!__opt-lambda4878
               _id4898_
               _eid4899_
               _rebind?4900_
               _phi4902_
               _ctx4904_)))))
      (define gx#core-bind-extern!__2
        (lambda (_id4906_ _eid4907_ _rebind?4908_ _phi4909_)
          (let ((_ctx4911_ (gx#current-expander-context)))
            (gx#core-bind-extern!__opt-lambda4878
             _id4906_
             _eid4907_
             _rebind?4908_
             _phi4909_
             _ctx4911_))))
      (define gx#core-bind-extern!
        (lambda _g7727_
          (let ((_g7726_ (length _g7727_)))
            (cond ((fx= _g7726_ 2)
                   (apply (lambda (_id4889_ _eid4890_)
                            (gx#core-bind-extern!__0 _id4889_ _eid4890_))
                          _g7727_))
                  ((fx= _g7726_ 3)
                   (apply (lambda (_id4898_ _eid4899_ _rebind?4900_)
                            (gx#core-bind-extern!__1
                             _id4898_
                             _eid4899_
                             _rebind?4900_))
                          _g7727_))
                  ((fx= _g7726_ 4)
                   (apply (lambda (_id4906_ _eid4907_ _rebind?4908_ _phi4909_)
                            (gx#core-bind-extern!__2
                             _id4906_
                             _eid4907_
                             _rebind?4908_
                             _phi4909_))
                          _g7727_))
                  ((fx= _g7726_ 5)
                   (apply (lambda (_id4913_
                                   _eid4914_
                                   _rebind?4915_
                                   _phi4916_
                                   _ctx4917_)
                            (gx#core-bind-extern!__opt-lambda4878
                             _id4913_
                             _eid4914_
                             _rebind?4915_
                             _phi4916_
                             _ctx4917_))
                          _g7727_))
                  (else (error "No clause matching arguments" _g7727_))))))))
  (begin
    (define gx#core-bind-syntax!__opt-lambda4832
      (lambda (_id4834_ _e4835_ _rebind?4836_ _phi4837_ _ctx4838_)
        (gx#bind-identifier!__opt-lambda3321
         _id4834_
         (let ((_key4843_ (gx#core-identifier-key _id4834_))
               (_e4844_ (if (let ((_$e4840_
                                   (##structure-instance-of?
                                    _e4835_
                                    'gx#expander::t)))
                              (if _$e4840_
                                  _$e4840_
                                  (##structure-instance-of?
                                   _e4835_
                                   'gx#expander-context::t)))
                            _e4835_
                            (##structure
                             gx#user-expander::t
                             _e4835_
                             _ctx4838_
                             _phi4837_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__opt-lambda4730
             _key4843_
             '#t
             _phi4837_
             _ctx4838_)
            _key4843_
            _phi4837_
            _e4844_))
         _rebind?4836_
         _phi4837_
         _ctx4838_)))
    (begin
      (define gx#core-bind-syntax!__0
        (lambda (_id4849_ _e4850_)
          (let ((_rebind?4852_ '#f))
            (let ((_phi4854_ (gx#current-expander-phi)))
              (let ((_ctx4856_ (gx#current-expander-context)))
                (gx#core-bind-syntax!__opt-lambda4832
                 _id4849_
                 _e4850_
                 _rebind?4852_
                 _phi4854_
                 _ctx4856_))))))
      (define gx#core-bind-syntax!__1
        (lambda (_id4858_ _e4859_ _rebind?4860_)
          (let ((_phi4862_ (gx#current-expander-phi)))
            (let ((_ctx4864_ (gx#current-expander-context)))
              (gx#core-bind-syntax!__opt-lambda4832
               _id4858_
               _e4859_
               _rebind?4860_
               _phi4862_
               _ctx4864_)))))
      (define gx#core-bind-syntax!__2
        (lambda (_id4866_ _e4867_ _rebind?4868_ _phi4869_)
          (let ((_ctx4871_ (gx#current-expander-context)))
            (gx#core-bind-syntax!__opt-lambda4832
             _id4866_
             _e4867_
             _rebind?4868_
             _phi4869_
             _ctx4871_))))
      (define gx#core-bind-syntax!
        (lambda _g7729_
          (let ((_g7728_ (length _g7729_)))
            (cond ((fx= _g7728_ 2)
                   (apply (lambda (_id4849_ _e4850_)
                            (gx#core-bind-syntax!__0 _id4849_ _e4850_))
                          _g7729_))
                  ((fx= _g7728_ 3)
                   (apply (lambda (_id4858_ _e4859_ _rebind?4860_)
                            (gx#core-bind-syntax!__1
                             _id4858_
                             _e4859_
                             _rebind?4860_))
                          _g7729_))
                  ((fx= _g7728_ 4)
                   (apply (lambda (_id4866_ _e4867_ _rebind?4868_ _phi4869_)
                            (gx#core-bind-syntax!__2
                             _id4866_
                             _e4867_
                             _rebind?4868_
                             _phi4869_))
                          _g7729_))
                  ((fx= _g7728_ 5)
                   (apply (lambda (_id4873_
                                   _e4874_
                                   _rebind?4875_
                                   _phi4876_
                                   _ctx4877_)
                            (gx#core-bind-syntax!__opt-lambda4832
                             _id4873_
                             _e4874_
                             _rebind?4875_
                             _phi4876_
                             _ctx4877_))
                          _g7729_))
                  (else (error "No clause matching arguments" _g7729_))))))))
  (begin
    (define gx#core-bind-root-syntax!__opt-lambda4815
      (lambda (_id4817_ _e4818_ _rebind?4819_)
        (gx#core-bind-syntax!__opt-lambda4832
         _id4817_
         _e4818_
         _rebind?4819_
         '0
         (gx#core-context-root__0))))
    (begin
      (define gx#core-bind-root-syntax!__0
        (lambda (_id4824_ _e4825_)
          (let ((_rebind?4827_ '#f))
            (gx#core-bind-root-syntax!__opt-lambda4815
             _id4824_
             _e4825_
             _rebind?4827_))))
      (define gx#core-bind-root-syntax!
        (lambda _g7731_
          (let ((_g7730_ (length _g7731_)))
            (cond ((fx= _g7730_ 2)
                   (apply (lambda (_id4824_ _e4825_)
                            (gx#core-bind-root-syntax!__0 _id4824_ _e4825_))
                          _g7731_))
                  ((fx= _g7730_ 3)
                   (apply (lambda (_id4829_ _e4830_ _rebind?4831_)
                            (gx#core-bind-root-syntax!__opt-lambda4815
                             _id4829_
                             _e4830_
                             _rebind?4831_))
                          _g7731_))
                  (else (error "No clause matching arguments" _g7731_))))))))
  (begin
    (define gx#core-bind-alias!__opt-lambda4773
      (lambda (_id4775_ _alias-id4776_ _rebind?4777_ _phi4778_ _ctx4779_)
        (gx#bind-identifier!__opt-lambda3321
         _id4775_
         (let ((_key4781_ (gx#core-identifier-key _id4775_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__opt-lambda4730
             _key4781_
             '#t
             _phi4778_
             _ctx4779_)
            _key4781_
            _phi4778_
            _alias-id4776_))
         _rebind?4777_
         _phi4778_
         _ctx4779_)))
    (begin
      (define gx#core-bind-alias!__0
        (lambda (_id4786_ _alias-id4787_)
          (let ((_rebind?4789_ '#f))
            (let ((_phi4791_ (gx#current-expander-phi)))
              (let ((_ctx4793_ (gx#current-expander-context)))
                (gx#core-bind-alias!__opt-lambda4773
                 _id4786_
                 _alias-id4787_
                 _rebind?4789_
                 _phi4791_
                 _ctx4793_))))))
      (define gx#core-bind-alias!__1
        (lambda (_id4795_ _alias-id4796_ _rebind?4797_)
          (let ((_phi4799_ (gx#current-expander-phi)))
            (let ((_ctx4801_ (gx#current-expander-context)))
              (gx#core-bind-alias!__opt-lambda4773
               _id4795_
               _alias-id4796_
               _rebind?4797_
               _phi4799_
               _ctx4801_)))))
      (define gx#core-bind-alias!__2
        (lambda (_id4803_ _alias-id4804_ _rebind?4805_ _phi4806_)
          (let ((_ctx4808_ (gx#current-expander-context)))
            (gx#core-bind-alias!__opt-lambda4773
             _id4803_
             _alias-id4804_
             _rebind?4805_
             _phi4806_
             _ctx4808_))))
      (define gx#core-bind-alias!
        (lambda _g7733_
          (let ((_g7732_ (length _g7733_)))
            (cond ((fx= _g7732_ 2)
                   (apply (lambda (_id4786_ _alias-id4787_)
                            (gx#core-bind-alias!__0 _id4786_ _alias-id4787_))
                          _g7733_))
                  ((fx= _g7732_ 3)
                   (apply (lambda (_id4795_ _alias-id4796_ _rebind?4797_)
                            (gx#core-bind-alias!__1
                             _id4795_
                             _alias-id4796_
                             _rebind?4797_))
                          _g7733_))
                  ((fx= _g7732_ 4)
                   (apply (lambda (_id4803_
                                   _alias-id4804_
                                   _rebind?4805_
                                   _phi4806_)
                            (gx#core-bind-alias!__2
                             _id4803_
                             _alias-id4804_
                             _rebind?4805_
                             _phi4806_))
                          _g7733_))
                  ((fx= _g7732_ 5)
                   (apply (lambda (_id4810_
                                   _alias-id4811_
                                   _rebind?4812_
                                   _phi4813_
                                   _ctx4814_)
                            (gx#core-bind-alias!__opt-lambda4773
                             _id4810_
                             _alias-id4811_
                             _rebind?4812_
                             _phi4813_
                             _ctx4814_))
                          _g7733_))
                  (else (error "No clause matching arguments" _g7733_))))))))
  (begin
    (define gx#make-binding-id__opt-lambda4730
      (lambda (_key4732_ _syntax?4733_ _phi4734_ _ctx4735_)
        (if (uninterned-symbol? _key4732_)
            (gensym 'L)
            (if (pair? _key4732_)
                (gensym (car _key4732_))
                (if (##structure-instance-of? _ctx4735_ 'gx#top-context::t)
                    (let ((_ns4737_
                           (gx#core-context-namespace__opt-lambda2858
                            _ctx4735_)))
                      (if (if (fxzero? _phi4734_) (not _syntax?4733_) '#f)
                          (if _ns4737_
                              (make-symbol _ns4737_ '"#" _key4732_)
                              _key4732_)
                          (if _syntax?4733_
                              (make-symbol
                               (let ((_$e4739_ _ns4737_))
                                 (if _$e4739_ _$e4739_ '""))
                               '"[:"
                               (number->string _phi4734_)
                               '":]#"
                               _key4732_)
                              (make-symbol
                               (let ((_$e4742_ _ns4737_))
                                 (if _$e4742_ _$e4742_ '""))
                               '"["
                               (number->string _phi4734_)
                               '"]#"
                               _key4732_))))
                    (gensym _key4732_))))))
    (begin
      (define gx#make-binding-id__0
        (lambda (_key4748_)
          (let ((_syntax?4750_ '#f))
            (let ((_phi4752_ (gx#current-expander-phi)))
              (let ((_ctx4754_ (gx#current-expander-context)))
                (gx#make-binding-id__opt-lambda4730
                 _key4748_
                 _syntax?4750_
                 _phi4752_
                 _ctx4754_))))))
      (define gx#make-binding-id__1
        (lambda (_key4756_ _syntax?4757_)
          (let ((_phi4759_ (gx#current-expander-phi)))
            (let ((_ctx4761_ (gx#current-expander-context)))
              (gx#make-binding-id__opt-lambda4730
               _key4756_
               _syntax?4757_
               _phi4759_
               _ctx4761_)))))
      (define gx#make-binding-id__2
        (lambda (_key4763_ _syntax?4764_ _phi4765_)
          (let ((_ctx4767_ (gx#current-expander-context)))
            (gx#make-binding-id__opt-lambda4730
             _key4763_
             _syntax?4764_
             _phi4765_
             _ctx4767_))))
      (define gx#make-binding-id
        (lambda _g7735_
          (let ((_g7734_ (length _g7735_)))
            (cond ((fx= _g7734_ 1)
                   (apply (lambda (_key4748_)
                            (gx#make-binding-id__0 _key4748_))
                          _g7735_))
                  ((fx= _g7734_ 2)
                   (apply (lambda (_key4756_ _syntax?4757_)
                            (gx#make-binding-id__1 _key4756_ _syntax?4757_))
                          _g7735_))
                  ((fx= _g7734_ 3)
                   (apply (lambda (_key4763_ _syntax?4764_ _phi4765_)
                            (gx#make-binding-id__2
                             _key4763_
                             _syntax?4764_
                             _phi4765_))
                          _g7735_))
                  ((fx= _g7734_ 4)
                   (apply (lambda (_key4769_ _syntax?4770_ _phi4771_ _ctx4772_)
                            (gx#make-binding-id__opt-lambda4730
                             _key4769_
                             _syntax?4770_
                             _phi4771_
                             _ctx4772_))
                          _g7735_))
                  (else (error "No clause matching arguments" _g7735_)))))))))
