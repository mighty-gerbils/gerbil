(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#core-expand-begin%
    (lambda (_stx7692_)
      (let ((_expand-special7694_
             (lambda (_hd7696_ _K7697_ _rest7698_ _r7699_)
               (_K7697_ _rest7698_
                        (cons (gx#core-expand-top _hd7696_) _r7699_)))))
        (gx#core-expand-block__0 _stx7692_ _expand-special7694_))))
  (define gx#core-expand-begin-syntax%
    (lambda (_stx7445_)
      (let ((_expand-special7447_
             (lambda (_hd7567_ _K7568_ _rest7569_ _r7570_)
               (let ((_K7574_ (lambda (_e7572_)
                                (_K7568_ _rest7569_ (cons _e7572_ _r7570_)))))
                 (let ((_e75757604_ _hd7567_))
                   (let ((_E75997608_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _e75757604_))))
                     (let ((_E75957620_
                            (lambda ()
                              (if (gx#stx-pair? _e75757604_)
                                  (let ((_e76007612_
                                         (gx#syntax-e _e75757604_)))
                                    (let ((_hd76017615_ (##car _e76007612_))
                                          (_tl76027617_ (##cdr _e76007612_)))
                                      (if (if (gx#identifier? _hd76017615_)
                                              (gx#core-identifier=?
                                               _hd76017615_
                                               '%#define-runtime)
                                              '#f)
                                          (if '#t
                                              (_K7574_ (gx#core-expand-define-runtime%
                                                        _hd7567_))
                                              (_E75997608_))
                                          (_E75997608_))))
                                  (_E75997608_)))))
                       (let ((_E75917632_
                              (lambda ()
                                (if (gx#stx-pair? _e75757604_)
                                    (let ((_e75967624_
                                           (gx#syntax-e _e75757604_)))
                                      (let ((_hd75977627_ (##car _e75967624_))
                                            (_tl75987629_ (##cdr _e75967624_)))
                                        (if (if (gx#identifier? _hd75977627_)
                                                (gx#core-identifier=?
                                                 _hd75977627_
                                                 '%#define-alias)
                                                '#f)
                                            (if '#t
                                                (_K7574_ (gx#core-expand-define-alias%
                                                          _hd7567_))
                                                (_E75957620_))
                                            (_E75957620_))))
                                    (_E75957620_)))))
                         (let ((_E75817644_
                                (lambda ()
                                  (if (gx#stx-pair? _e75757604_)
                                      (let ((_e75927636_
                                             (gx#syntax-e _e75757604_)))
                                        (let ((_hd75937639_
                                               (##car _e75927636_))
                                              (_tl75947641_
                                               (##cdr _e75927636_)))
                                          (if (if (gx#identifier? _hd75937639_)
                                                  (gx#core-identifier=?
                                                   _hd75937639_
                                                   '%#define-syntax)
                                                  '#f)
                                              (if '#t
                                                  (_K7574_ (gx#core-expand-define-syntax%
                                                            _hd7567_))
                                                  (_E75917632_))
                                              (_E75917632_))))
                                      (_E75917632_)))))
                           (let ((_E75777676_
                                  (lambda ()
                                    (if (gx#stx-pair? _e75757604_)
                                        (let ((_e75827648_
                                               (gx#syntax-e _e75757604_)))
                                          (let ((_hd75837651_
                                                 (##car _e75827648_))
                                                (_tl75847653_
                                                 (##cdr _e75827648_)))
                                            (if (if (gx#identifier?
                                                     _hd75837651_)
                                                    (gx#core-identifier=?
                                                     _hd75837651_
                                                     '%#define-values)
                                                    '#f)
                                                (if (gx#stx-pair? _tl75847653_)
                                                    (let ((_e75857656_
                                                           (gx#syntax-e
                                                            _tl75847653_)))
                                                      (let ((_hd75867659_
                                                             (##car _e75857656_))
                                                            (_tl75877661_
                                                             (##cdr _e75857656_)))
                                                        (let ((_hd-bind7664_
                                                               _hd75867659_))
                                                          (if (gx#stx-pair?
                                                               _tl75877661_)
                                                              (let ((_e75887666_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl75877661_)))
                        (let ((_hd75897669_ (##car _e75887666_))
                              (_tl75907671_ (##cdr _e75887666_)))
                          (let ((_expr7674_ _hd75897669_))
                            (if (gx#stx-null? _tl75907671_)
                                (if (gx#core-bind-values? _hd-bind7664_)
                                    (begin
                                      (gx#core-bind-values!__0 _hd-bind7664_)
                                      (_K7574_ _hd7567_))
                                    (_E75817644_))
                                (_E75817644_)))))
                      (_E75817644_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E75817644_))
                                                (_E75817644_))))
                                        (_E75817644_)))))
                             (let ((_E75767688_
                                    (lambda ()
                                      (if (gx#stx-pair? _e75757604_)
                                          (let ((_e75787680_
                                                 (gx#syntax-e _e75757604_)))
                                            (let ((_hd75797683_
                                                   (##car _e75787680_))
                                                  (_tl75807685_
                                                   (##cdr _e75787680_)))
                                              (if (if (gx#identifier?
                                                       _hd75797683_)
                                                      (gx#core-identifier=?
                                                       _hd75797683_
                                                       '%#begin-syntax)
                                                      '#f)
                                                  (if '#t
                                                      (_K7574_ (gx#core-expand-begin-syntax%
                                                                _hd7567_))
                                                      (_E75777676_))
                                                  (_E75777676_))))
                                          (_E75777676_)))))
                               (let () (_E75767688_)))))))))))))
        (let ((_eval-body7448_
               (lambda (_rbody7456_)
                 ((letrec ((_lp7458_
                            (lambda (_rest7460_ _body7461_ _ebody7462_)
                              (let ((_rest74637471_ _rest7460_))
                                (let ((_E74667475_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _rest74637471_))))
                                  (let ((_else74657479_
                                         (lambda ()
                                           (values _body7461_
                                                   (gx#eval-syntax*
                                                    (gx#core-quote-syntax__1
                                                     (gx#core-cons
                                                      '%#begin
                                                      _ebody7462_)
                                                     (gx#stx-source
                                                      _stx7445_)))))))
                                    (let ((_K74677555_
                                           (lambda (_rest7482_ _hd7483_)
                                             (let ((_e74847501_ _hd7483_))
                                               (let ((_E74967505_
                                                      (lambda ()
                                                        (_lp7458_
                                                         _rest7482_
                                                         (cons _hd7483_
                                                               _body7461_)
                                                         (cons _hd7483_
                                                               _ebody7462_)))))
                                                 (let ((_E74867517_
                                                        (lambda ()
                                                          (if (gx#stx-pair?
                                                               _e74847501_)
                                                              (let ((_e74977509_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _e74847501_)))
                        (let ((_hd74987512_ (##car _e74977509_))
                              (_tl74997514_ (##cdr _e74977509_)))
                          (if (if (gx#identifier? _hd74987512_)
                                  (gx#core-identifier=?
                                   _hd74987512_
                                   '%#begin-syntax)
                                  '#f)
                              (if '#t
                                  (_lp7458_
                                   _rest7482_
                                   (cons _hd7483_ _body7461_)
                                   _ebody7462_)
                                  (_E74967505_))
                              (_E74967505_))))
                      (_E74967505_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (let ((_E74857551_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e74847501_)
                        (let ((_e74877521_ (gx#syntax-e _e74847501_)))
                          (let ((_hd74887524_ (##car _e74877521_))
                                (_tl74897526_ (##cdr _e74877521_)))
                            (if (if (gx#identifier? _hd74887524_)
                                    (gx#core-identifier=?
                                     _hd74887524_
                                     '%#define-values)
                                    '#f)
                                (if (gx#stx-pair? _tl74897526_)
                                    (let ((_e74907529_
                                           (gx#syntax-e _tl74897526_)))
                                      (let ((_hd74917532_ (##car _e74907529_))
                                            (_tl74927534_ (##cdr _e74907529_)))
                                        (let ((_hd-bind7537_ _hd74917532_))
                                          (if (gx#stx-pair? _tl74927534_)
                                              (let ((_e74937539_
                                                     (gx#syntax-e
                                                      _tl74927534_)))
                                                (let ((_hd74947542_
                                                       (##car _e74937539_))
                                                      (_tl74957544_
                                                       (##cdr _e74937539_)))
                                                  (let ((_expr7547_
                                                         _hd74947542_))
                                                    (if (gx#stx-null?
                                                         _tl74957544_)
                                                        (if '#t
                                                            (let ((_ehd7549_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#core-quote-syntax__1
                            (cons (gx#core-quote-syntax__0 '%#define-values)
                                  (cons (gx#core-quote-bind-values
                                         _hd-bind7537_)
                                        (cons (gx#core-expand-expression
                                               _expr7547_)
                                              '())))
                            (gx#stx-source _hd7483_))))
                      (_lp7458_
                       _rest7482_
                       (cons _ehd7549_ _body7461_)
                       (cons _ehd7549_ _ebody7462_)))
                    (_E74867517_))
                (_E74867517_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_E74867517_)))))
                                    (_E74867517_))
                                (_E74867517_))))
                        (_E74867517_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (_E74857551_)))))))))
                                      (if (##pair? _rest74637471_)
                                          (let ((_hd74687558_
                                                 (##car _rest74637471_))
                                                (_tl74697560_
                                                 (##cdr _rest74637471_)))
                                            (let ((_hd7563_ _hd74687558_))
                                              (let ((_rest7565_ _tl74697560_))
                                                (_K74677555_
                                                 _rest7565_
                                                 _hd7563_))))
                                          (_else74657479_)))))))))
                    _lp7458_)
                  _rbody7456_
                  '()
                  '()))))
          (call-with-parameters
           (lambda ()
             (let ((_rbody7451_
                    (gx#core-expand-block__1
                     _stx7445_
                     _expand-special7447_
                     '#f)))
               (let ((_g7706_ (_eval-body7448_ _rbody7451_)))
                 (begin
                   (let ((_g7707_ (values-count _g7706_)))
                     (if (not (fx= _g7707_ 2))
                         (error "Context expects 2 values" _g7707_)))
                   (let ((_expanded-body7453_ (values-ref _g7706_ 0))
                         (_value7454_ (values-ref _g7706_ 1)))
                     (gx#core-quote-syntax__1
                      (if (##structure-instance-of?
                           (gx#current-expander-context)
                           'gx#module-context::t)
                          (gx#core-cons '%#begin-syntax _expanded-body7453_)
                          (cons (gx#core-quote-syntax__0 '%#quote)
                                (cons _value7454_ '())))
                      (gx#stx-source _stx7445_)))))))
           gx#current-expander-phi
           (fx1+ (gx#current-expander-phi)))))))
  (define gx#core-expand-begin-foreign%
    (lambda (_stx7415_)
      (let ((_e74167423_ _stx7415_))
        (let ((_E74187427_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e74167423_))))
          (let ((_E74177441_
                 (lambda ()
                   (if (gx#stx-pair? _e74167423_)
                       (let ((_e74197431_ (gx#syntax-e _e74167423_)))
                         (let ((_hd74207434_ (##car _e74197431_))
                               (_tl74217436_ (##cdr _e74197431_)))
                           (let ((_body7439_ _tl74217436_))
                             (if (gx#stx-list? _body7439_)
                                 (gx#core-quote-syntax__1
                                  (gx#core-cons '%#begin-foreign _body7439_)
                                  (gx#stx-source _stx7415_))
                                 (_E74187427_)))))
                       (_E74187427_)))))
            (let () (_E74177441_)))))))
  (define gx#core-expand-begin-annotation%
    (lambda (_stx7403_)
      (let ((_e74047407_ _stx7403_))
        (let ((_E74057411_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e74047407_))))
          (let () (_E74057411_))))))
  (define gx#core-expand-local-block
    (lambda (_stx7127_ _body7128_)
      (let ((_expand-internal-special7132_
             (lambda (_hd7289_ _K7290_ _rest7291_ _r7292_)
               (let ((_e72937318_ _hd7289_))
                 (let ((_E73137322_
                        (lambda ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax"
                           _e72937318_))))
                   (let ((_E73097334_
                          (lambda ()
                            (if (gx#stx-pair? _e72937318_)
                                (let ((_e73147326_ (gx#syntax-e _e72937318_)))
                                  (let ((_hd73157329_ (##car _e73147326_))
                                        (_tl73167331_ (##cdr _e73147326_)))
                                    (if (if (gx#identifier? _hd73157329_)
                                            (gx#core-identifier=?
                                             _hd73157329_
                                             '%#declare)
                                            '#f)
                                        (if '#t
                                            (_K7290_ _rest7291_
                                                     (cons (gx#core-expand-declare%
                                                            _hd7289_)
                                                           _r7292_))
                                            (_E73137322_))
                                        (_E73137322_))))
                                (_E73137322_)))))
                     (let ((_E73057346_
                            (lambda ()
                              (if (gx#stx-pair? _e72937318_)
                                  (let ((_e73107338_
                                         (gx#syntax-e _e72937318_)))
                                    (let ((_hd73117341_ (##car _e73107338_))
                                          (_tl73127343_ (##cdr _e73107338_)))
                                      (if (if (gx#identifier? _hd73117341_)
                                              (gx#core-identifier=?
                                               _hd73117341_
                                               '%#define-alias)
                                              '#f)
                                          (if '#t
                                              (begin
                                                (gx#core-expand-define-alias%
                                                 _hd7289_)
                                                (_K7290_ _rest7291_ _r7292_))
                                              (_E73097334_))
                                          (_E73097334_))))
                                  (_E73097334_)))))
                       (let ((_E72957358_
                              (lambda ()
                                (if (gx#stx-pair? _e72937318_)
                                    (let ((_e73067350_
                                           (gx#syntax-e _e72937318_)))
                                      (let ((_hd73077353_ (##car _e73067350_))
                                            (_tl73087355_ (##cdr _e73067350_)))
                                        (if (if (gx#identifier? _hd73077353_)
                                                (gx#core-identifier=?
                                                 _hd73077353_
                                                 '%#define-syntax)
                                                '#f)
                                            (if '#t
                                                (begin
                                                  (gx#core-expand-define-syntax%
                                                   _hd7289_)
                                                  (_K7290_ _rest7291_ _r7292_))
                                                (_E73057346_))
                                            (_E73057346_))))
                                    (_E73057346_)))))
                         (let ((_E72947390_
                                (lambda ()
                                  (if (gx#stx-pair? _e72937318_)
                                      (let ((_e72967362_
                                             (gx#syntax-e _e72937318_)))
                                        (let ((_hd72977365_
                                               (##car _e72967362_))
                                              (_tl72987367_
                                               (##cdr _e72967362_)))
                                          (if (if (gx#identifier? _hd72977365_)
                                                  (gx#core-identifier=?
                                                   _hd72977365_
                                                   '%#define-values)
                                                  '#f)
                                              (if (gx#stx-pair? _tl72987367_)
                                                  (let ((_e72997370_
                                                         (gx#syntax-e
                                                          _tl72987367_)))
                                                    (let ((_hd73007373_
                                                           (##car _e72997370_))
                                                          (_tl73017375_
                                                           (##cdr _e72997370_)))
                                                      (let ((_hd-bind7378_
                                                             _hd73007373_))
                                                        (if (gx#stx-pair?
                                                             _tl73017375_)
                                                            (let ((_e73027380_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl73017375_)))
                      (let ((_hd73037383_ (##car _e73027380_))
                            (_tl73047385_ (##cdr _e73027380_)))
                        (let ((_expr7388_ _hd73037383_))
                          (if (gx#stx-null? _tl73047385_)
                              (if (gx#core-bind-values? _hd-bind7378_)
                                  (begin
                                    (gx#core-bind-values!__0 _hd-bind7378_)
                                    (_K7290_ _rest7291_
                                             (cons _hd7289_ _r7292_)))
                                  (_E72957358_))
                              (_E72957358_)))))
                    (_E72957358_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E72957358_))
                                              (_E72957358_))))
                                      (_E72957358_)))))
                           (let () (_E72947390_)))))))))))
        (let ((_wrap-internal7133_
               (lambda (_rbody7135_)
                 ((letrec ((_lp7137_
                            (lambda (_rest7139_
                                     _decls7140_
                                     _bind7141_
                                     _body7142_)
                              (let ((_e71437150_ _rest7139_))
                                (let ((_E71457199_
                                       (lambda ()
                                         (let ((_body7194_
                                                (let ((_body71537163_
                                                       _body7142_))
                                                  (let ((_E71577167_
                                                         (lambda ()
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _body71537163_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_else71567171_
                                                           (lambda ()
                                                             (gx#core-quote-syntax__1
                                                              (gx#core-cons
                                                               '%#begin
                                                               _body7142_)
                                                              (gx#stx-source
                                                               _stx7127_)))))
                                                      (let ((_try-match71557187_
                                                             (lambda ()
                                                               (let ((_K71587177_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (lambda (_expr7175_) _expr7175_)))
                         (if (##pair? _body71537163_)
                             (let ((_hd71597180_ (##car _body71537163_))
                                   (_tl71607182_ (##cdr _body71537163_)))
                               (let ((_expr7185_ _hd71597180_))
                                 (if (##null? _tl71607182_)
                                     (_K71587177_ _expr7185_)
                                     (_else71567171_))))
                             (_else71567171_))))))
                (let ((_K71617191_
                       (lambda ()
                         (gx#raise-syntax-error '#f '"Bad syntax" _stx7127_))))
                  (if (##null? _body71537163_)
                      (_K71617191_)
                      (_try-match71557187_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (let ((_body7196_
                                                  (if (null? _bind7141_)
                                                      _body7194_
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#letrec*-values)
                                                             (cons _bind7141_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _body7194_ '())))
               (gx#stx-source _stx7127_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (let ()
                                               (if (null? _decls7140_)
                                                   _body7196_
                                                   (gx#core-quote-syntax__1
                                                    (cons (gx#core-quote-syntax__0
                                                           '%#begin-annotation)
                                                          (cons _decls7140_
                                                                (cons _body7196_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (gx#stx-source
                                                     _stx7127_)))))))))
                                  (let ((_E71447285_
                                         (lambda ()
                                           (if (gx#stx-pair? _e71437150_)
                                               (let ((_e71467203_
                                                      (gx#syntax-e
                                                       _e71437150_)))
                                                 (let ((_hd71477206_
                                                        (##car _e71467203_))
                                                       (_tl71487208_
                                                        (##cdr _e71467203_)))
                                                   (let ((_hd7211_
                                                          _hd71477206_))
                                                     (let ((_rest7213_
                                                            _tl71487208_))
                                                       (if '#t
                                                           (let ((_e72147231_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd7211_))
                     (let ((_E72267235_
                            (lambda ()
                              (if (null? _bind7141_)
                                  (_lp7137_
                                   _rest7213_
                                   _decls7140_
                                   _bind7141_
                                   (cons _hd7211_ _body7142_))
                                  (_lp7137_
                                   _rest7213_
                                   _decls7140_
                                   (cons (cons '#f (cons _hd7211_ '()))
                                         _bind7141_)
                                   _body7142_)))))
                       (let ((_E72167249_
                              (lambda ()
                                (if (gx#stx-pair? _e72147231_)
                                    (let ((_e72277239_
                                           (gx#syntax-e _e72147231_)))
                                      (let ((_hd72287242_ (##car _e72277239_))
                                            (_tl72297244_ (##cdr _e72277239_)))
                                        (if (if (gx#identifier? _hd72287242_)
                                                (gx#core-identifier=?
                                                 _hd72287242_
                                                 '%#declare)
                                                '#f)
                                            (let ((_xdecls7247_ _tl72297244_))
                                              (if '#t
                                                  (_lp7137_
                                                   _rest7213_
                                                   (gx#stx-foldr
                                                    cons
                                                    _decls7140_
                                                    _xdecls7247_)
                                                   _bind7141_
                                                   _body7142_)
                                                  (_E72267235_)))
                                            (_E72267235_))))
                                    (_E72267235_)))))
                         (let ((_E72157281_
                                (lambda ()
                                  (if (gx#stx-pair? _e72147231_)
                                      (let ((_e72177253_
                                             (gx#syntax-e _e72147231_)))
                                        (let ((_hd72187256_
                                               (##car _e72177253_))
                                              (_tl72197258_
                                               (##cdr _e72177253_)))
                                          (if (if (gx#identifier? _hd72187256_)
                                                  (gx#core-identifier=?
                                                   _hd72187256_
                                                   '%#define-values)
                                                  '#f)
                                              (if (gx#stx-pair? _tl72197258_)
                                                  (let ((_e72207261_
                                                         (gx#syntax-e
                                                          _tl72197258_)))
                                                    (let ((_hd72217264_
                                                           (##car _e72207261_))
                                                          (_tl72227266_
                                                           (##cdr _e72207261_)))
                                                      (let ((_hd-bind7269_
                                                             _hd72217264_))
                                                        (if (gx#stx-pair?
                                                             _tl72227266_)
                                                            (let ((_e72237271_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _tl72227266_)))
                      (let ((_hd72247274_ (##car _e72237271_))
                            (_tl72257276_ (##cdr _e72237271_)))
                        (let ((_expr7279_ _hd72247274_))
                          (if (gx#stx-null? _tl72257276_)
                              (if '#t
                                  (_lp7137_
                                   _rest7213_
                                   _decls7140_
                                   (cons (cons (gx#core-quote-bind-values
                                                _hd-bind7269_)
                                               (cons (gx#core-expand-expression
                                                      _expr7279_)
                                                     '()))
                                         _bind7141_)
                                   _body7142_)
                                  (_E72167249_))
                              (_E72167249_)))))
                    (_E72167249_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E72167249_))
                                              (_E72167249_))))
                                      (_E72167249_)))))
                           (let () (_E72157281_))))))
                   (_E71457199_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E71457199_)))))
                                    (let () (_E71447285_))))))))
                    _lp7137_)
                  _rbody7135_
                  '()
                  '()
                  '()))))
          (let ((_expand-internal7131_
                 (lambda (_hd7394_ _rest7395_)
                   (call-with-parameters
                    (lambda ()
                      (_wrap-internal7133_
                       (gx#core-expand-block__1
                        (gx#stx-wrap-source
                         (cons* '%#begin _hd7394_ _rest7395_)
                         (gx#stx-source _stx7127_))
                        _expand-internal-special7132_
                        '#f)))
                    gx#current-expander-context
                    (let ((__obj7700 (make-object gx#local-context::t '5)))
                      (begin
                        (gx#local-context:::init!__0 __obj7700)
                        __obj7700))))))
            (let ((_expand-special7130_
                   (lambda (_hd7398_ _K7399_ _rest7400_ _r7401_)
                     (_K7399_ '()
                              (cons (_expand-internal7131_ _hd7398_ _rest7400_)
                                    _r7401_)))))
              (gx#core-expand-block*
               (gx#stx-wrap-source
                (cons '%#begin _body7128_)
                (gx#stx-source _stx7127_))
               _expand-special7130_)))))))
  (define gx#core-expand-declare%
    (lambda (_stx7065_)
      (let ((_e70667073_ _stx7065_))
        (let ((_E70687077_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e70667073_))))
          (let ((_E70677123_
                 (lambda ()
                   (if (gx#stx-pair? _e70667073_)
                       (let ((_e70697081_ (gx#syntax-e _e70667073_)))
                         (let ((_hd70707084_ (##car _e70697081_))
                               (_tl70717086_ (##cdr _e70697081_)))
                           (let ((_body7089_ _tl70717086_))
                             (if (gx#stx-list? _body7089_)
                                 (gx#core-quote-syntax__1
                                  (gx#core-cons
                                   '%#declare
                                   (gx#stx-map1
                                    (lambda (_decl7091_)
                                      (let ((_e70927099_ _decl7091_))
                                        (let ((_E70947103_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _e70927099_))))
                                          (let ((_E70937119_
                                                 (lambda ()
                                                   (if (gx#stx-pair?
                                                        _e70927099_)
                                                       (let ((_e70957107_
                                                              (gx#syntax-e
                                                               _e70927099_)))
                                                         (let ((_hd70967110_
                                                                (##car _e70957107_))
                                                               (_tl70977112_
                                                                (##cdr _e70957107_)))
                                                           (let ((_head7115_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd70967110_))
                     (let ((_args7117_ _tl70977112_))
                       (if (gx#stx-list? _args7117_)
                           (gx#stx-map1 gx#core-quote-syntax _decl7091_)
                           (_E70947103_))))))
               (_E70947103_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let () (_E70937119_))))))
                                    _body7089_))
                                  (gx#stx-source _stx7065_))
                                 (_E70687077_)))))
                       (_E70687077_)))))
            (let () (_E70677123_)))))))
  (define gx#core-expand-extern%
    (lambda (_stx6949_)
      (let ((_e69506957_ _stx6949_))
        (let ((_E69526961_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e69506957_))))
          (let ((_E69517061_
                 (lambda ()
                   (if (gx#stx-pair? _e69506957_)
                       (let ((_e69536965_ (gx#syntax-e _e69506957_)))
                         (let ((_hd69546968_ (##car _e69536965_))
                               (_tl69556970_ (##cdr _e69536965_)))
                           (let ((_body6973_ _tl69556970_))
                             (if (gx#stx-list? _body6973_)
                                 (begin
                                   (gx#stx-for-each1
                                    (lambda (_bind6975_)
                                      (let ((_e69766986_ _bind6975_))
                                        (let ((_E69786990_
                                               (lambda ()
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _e69766986_))))
                                          (let ((_E69777014_
                                                 (lambda ()
                                                   (if (gx#stx-pair?
                                                        _e69766986_)
                                                       (let ((_e69796994_
                                                              (gx#syntax-e
                                                               _e69766986_)))
                                                         (let ((_hd69806997_
                                                                (##car _e69796994_))
                                                               (_tl69816999_
                                                                (##cdr _e69796994_)))
                                                           (let ((_id7002_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd69806997_))
                     (if (gx#stx-pair? _tl69816999_)
                         (let ((_e69827004_ (gx#syntax-e _tl69816999_)))
                           (let ((_hd69837007_ (##car _e69827004_))
                                 (_tl69847009_ (##cdr _e69827004_)))
                             (let ((_eid7012_ _hd69837007_))
                               (if (gx#stx-null? _tl69847009_)
                                   (if (if (gx#identifier? _id7002_)
                                           (gx#identifier? _eid7012_)
                                           '#f)
                                       (gx#core-bind-extern!__0
                                        _id7002_
                                        (gx#stx-e _eid7012_))
                                       (_E69786990_))
                                   (_E69786990_)))))
                         (_E69786990_)))))
               (_E69786990_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let () (_E69777014_))))))
                                    _body6973_)
                                   (gx#core-quote-syntax__1
                                    (gx#core-cons
                                     '%#extern
                                     (gx#stx-map1
                                      (lambda (_bind7018_)
                                        (let ((_e70197029_ _bind7018_))
                                          (let ((_E70217033_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax"
                                                    _e70197029_))))
                                            (let ((_E70207057_
                                                   (lambda ()
                                                     (if (gx#stx-pair?
                                                          _e70197029_)
                                                         (let ((_e70227037_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e70197029_)))
                   (let ((_hd70237040_ (##car _e70227037_))
                         (_tl70247042_ (##cdr _e70227037_)))
                     (let ((_id7045_ _hd70237040_))
                       (if (gx#stx-pair? _tl70247042_)
                           (let ((_e70257047_ (gx#syntax-e _tl70247042_)))
                             (let ((_hd70267050_ (##car _e70257047_))
                                   (_tl70277052_ (##cdr _e70257047_)))
                               (let ((_eid7055_ _hd70267050_))
                                 (if (gx#stx-null? _tl70277052_)
                                     (if '#t
                                         (cons (gx#core-quote-syntax__0
                                                _id7045_)
                                               (cons (gx#stx-e _eid7055_) '()))
                                         (_E70217033_))
                                     (_E70217033_)))))
                           (_E70217033_)))))
                 (_E70217033_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let () (_E70207057_))))))
                                      _body6973_))
                                    (gx#stx-source _stx6949_)))
                                 (_E69526961_)))))
                       (_E69526961_)))))
            (let () (_E69517061_)))))))
  (define gx#core-expand-define-values%
    (lambda (_stx6895_)
      (let ((_e68966909_ _stx6895_))
        (let ((_E68986913_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e68966909_))))
          (let ((_E68976945_
                 (lambda ()
                   (if (gx#stx-pair? _e68966909_)
                       (let ((_e68996917_ (gx#syntax-e _e68966909_)))
                         (let ((_hd69006920_ (##car _e68996917_))
                               (_tl69016922_ (##cdr _e68996917_)))
                           (if (gx#stx-pair? _tl69016922_)
                               (let ((_e69026925_ (gx#syntax-e _tl69016922_)))
                                 (let ((_hd69036928_ (##car _e69026925_))
                                       (_tl69046930_ (##cdr _e69026925_)))
                                   (let ((_hd6933_ _hd69036928_))
                                     (if (gx#stx-pair? _tl69046930_)
                                         (let ((_e69056935_
                                                (gx#syntax-e _tl69046930_)))
                                           (let ((_hd69066938_
                                                  (##car _e69056935_))
                                                 (_tl69076940_
                                                  (##cdr _e69056935_)))
                                             (let ((_expr6943_ _hd69066938_))
                                               (if (gx#stx-null? _tl69076940_)
                                                   (if (gx#core-bind-values?
                                                        _hd6933_)
                                                       (begin
                                                         (gx#core-bind-values!__0
                                                          _hd6933_)
                                                         (gx#core-quote-syntax__1
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#define-values)
                        (cons (gx#core-quote-bind-values _hd6933_)
                              (cons (gx#core-expand-expression _expr6943_)
                                    '())))
                  (gx#stx-source _stx6895_)))
               (_E68986913_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E68986913_)))))
                                         (_E68986913_)))))
                               (_E68986913_))))
                       (_E68986913_)))))
            (let () (_E68976945_)))))))
  (define gx#core-expand-define-runtime%
    (lambda (_stx6841_)
      (let ((_e68426855_ _stx6841_))
        (let ((_E68446859_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e68426855_))))
          (let ((_E68436891_
                 (lambda ()
                   (if (gx#stx-pair? _e68426855_)
                       (let ((_e68456863_ (gx#syntax-e _e68426855_)))
                         (let ((_hd68466866_ (##car _e68456863_))
                               (_tl68476868_ (##cdr _e68456863_)))
                           (if (gx#stx-pair? _tl68476868_)
                               (let ((_e68486871_ (gx#syntax-e _tl68476868_)))
                                 (let ((_hd68496874_ (##car _e68486871_))
                                       (_tl68506876_ (##cdr _e68486871_)))
                                   (let ((_id6879_ _hd68496874_))
                                     (if (gx#stx-pair? _tl68506876_)
                                         (let ((_e68516881_
                                                (gx#syntax-e _tl68506876_)))
                                           (let ((_hd68526884_
                                                  (##car _e68516881_))
                                                 (_tl68536886_
                                                  (##cdr _e68516881_)))
                                             (let ((_binding-id6889_
                                                    _hd68526884_))
                                               (if (gx#stx-null? _tl68536886_)
                                                   (if (if (gx#identifier?
                                                            _id6879_)
                                                           (gx#identifier?
                                                            _binding-id6889_)
                                                           '#f)
                                                       (begin
                                                         (gx#core-bind-runtime-reference!__0
                                                          _id6879_
                                                          (gx#stx-e
                                                           _binding-id6889_))
                                                         (gx#core-quote-syntax__0
                                                          (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '%#define-runtime)
                        (cons (gx#core-quote-syntax__0 _id6879_)
                              (cons (gx#core-quote-syntax__0 _binding-id6889_)
                                    '())))))
               (_E68446859_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E68446859_)))))
                                         (_E68446859_)))))
                               (_E68446859_))))
                       (_E68446859_)))))
            (let () (_E68436891_)))))))
  (define gx#core-expand-define-syntax%
    (lambda (_stx6784_)
      (let ((_e67856798_ _stx6784_))
        (let ((_E67876802_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e67856798_))))
          (let ((_E67866837_
                 (lambda ()
                   (if (gx#stx-pair? _e67856798_)
                       (let ((_e67886806_ (gx#syntax-e _e67856798_)))
                         (let ((_hd67896809_ (##car _e67886806_))
                               (_tl67906811_ (##cdr _e67886806_)))
                           (if (gx#stx-pair? _tl67906811_)
                               (let ((_e67916814_ (gx#syntax-e _tl67906811_)))
                                 (let ((_hd67926817_ (##car _e67916814_))
                                       (_tl67936819_ (##cdr _e67916814_)))
                                   (let ((_id6822_ _hd67926817_))
                                     (if (gx#stx-pair? _tl67936819_)
                                         (let ((_e67946824_
                                                (gx#syntax-e _tl67936819_)))
                                           (let ((_hd67956827_
                                                  (##car _e67946824_))
                                                 (_tl67966829_
                                                  (##cdr _e67946824_)))
                                             (let ((_expr6832_ _hd67956827_))
                                               (if (gx#stx-null? _tl67966829_)
                                                   (if (gx#identifier?
                                                        _id6822_)
                                                       (let ((_g7708_ (gx#core-expand-expression+1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _expr6832_)))
                 (begin
                   (let ((_g7709_ (values-count _g7708_)))
                     (if (not (fx= _g7709_ 2))
                         (error "Context expects 2 values" _g7709_)))
                   (let ((_e-stx6834_ (values-ref _g7708_ 0))
                         (_e6835_ (values-ref _g7708_ 1)))
                     (begin
                       (gx#core-bind-syntax!__0 _id6822_ _e6835_)
                       (gx#core-quote-syntax__1
                        (cons (gx#core-quote-syntax__0 '%#define-syntax)
                              (cons (gx#core-quote-syntax__0 _id6822_)
                                    (cons _e-stx6834_ '())))
                        (gx#stx-source _stx6784_))))))
               (_E67876802_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E67876802_)))))
                                         (_E67876802_)))))
                               (_E67876802_))))
                       (_E67876802_)))))
            (let () (_E67866837_)))))))
  (define gx#core-expand-define-alias%
    (lambda (_stx6728_)
      (let ((_e67296742_ _stx6728_))
        (let ((_E67316746_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e67296742_))))
          (let ((_E67306780_
                 (lambda ()
                   (if (gx#stx-pair? _e67296742_)
                       (let ((_e67326750_ (gx#syntax-e _e67296742_)))
                         (let ((_hd67336753_ (##car _e67326750_))
                               (_tl67346755_ (##cdr _e67326750_)))
                           (if (gx#stx-pair? _tl67346755_)
                               (let ((_e67356758_ (gx#syntax-e _tl67346755_)))
                                 (let ((_hd67366761_ (##car _e67356758_))
                                       (_tl67376763_ (##cdr _e67356758_)))
                                   (let ((_id6766_ _hd67366761_))
                                     (if (gx#stx-pair? _tl67376763_)
                                         (let ((_e67386768_
                                                (gx#syntax-e _tl67376763_)))
                                           (let ((_hd67396771_
                                                  (##car _e67386768_))
                                                 (_tl67406773_
                                                  (##cdr _e67386768_)))
                                             (let ((_alias-id6776_
                                                    _hd67396771_))
                                               (if (gx#stx-null? _tl67406773_)
                                                   (if (if (gx#identifier?
                                                            _id6766_)
                                                           (gx#identifier?
                                                            _alias-id6776_)
                                                           '#f)
                                                       (let ((_alias-id6778_
                                                              (gx#core-quote-syntax__0
                                                               _alias-id6776_)))
                                                         (begin
                                                           (gx#core-bind-alias!__0
                                                            _id6766_
                                                            _alias-id6778_)
                                                           (gx#core-quote-syntax__0
                                                            (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '%#define-alias)
                          (cons (gx#core-quote-syntax__0 _id6766_)
                                (cons _alias-id6778_ '()))))))
               (_E67316746_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E67316746_)))))
                                         (_E67316746_)))))
                               (_E67316746_))))
                       (_E67316746_)))))
            (let () (_E67306780_)))))))
  (begin
    (define gx#core-expand-lambda%__opt-lambda6669
      (lambda (_stx6671_ _wrap?6672_)
        (let ((_e66736683_ _stx6671_))
          (let ((_E66756687_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e66736683_))))
            (let ((_E66746714_
                   (lambda ()
                     (if (gx#stx-pair? _e66736683_)
                         (let ((_e66766691_ (gx#syntax-e _e66736683_)))
                           (let ((_hd66776694_ (##car _e66766691_))
                                 (_tl66786696_ (##cdr _e66766691_)))
                             (if (gx#stx-pair? _tl66786696_)
                                 (let ((_e66796699_
                                        (gx#syntax-e _tl66786696_)))
                                   (let ((_hd66806702_ (##car _e66796699_))
                                         (_tl66816704_ (##cdr _e66796699_)))
                                     (let ((_hd6707_ _hd66806702_))
                                       (let ((_body6709_ _tl66816704_))
                                         (if (gx#core-bind-values? _hd6707_)
                                             (call-with-parameters
                                              (lambda ()
                                                (begin
                                                  (gx#core-bind-values!__0
                                                   _hd6707_)
                                                  (let ((_body6712_
                                                         (cons (gx#core-quote-bind-values
                                                                _hd6707_)
                                                               (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _stx6671_
                              _body6709_)
                             '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if _wrap?6672_
                                                        (gx#core-quote-syntax__1
                                                         (gx#core-cons
                                                          '%#lambda
                                                          _body6712_)
                                                         (gx#stx-source
                                                          _stx6671_))
                                                        _body6712_))))
                                              gx#current-expander-context
                                              (let ((__obj7701
                                                     (make-object
                                                      gx#local-context::t
                                                      '5)))
                                                (begin
                                                  (gx#local-context:::init!__0
                                                   __obj7701)
                                                  __obj7701)))
                                             (_E66756687_))))))
                                 (_E66756687_))))
                         (_E66756687_)))))
              (let () (_E66746714_)))))))
    (begin
      (define gx#core-expand-lambda%__0
        (lambda (_stx6721_)
          (let ((_wrap?6723_ '#t))
            (gx#core-expand-lambda%__opt-lambda6669 _stx6721_ _wrap?6723_))))
      (define gx#core-expand-lambda%
        (lambda _g7711_
          (let ((_g7710_ (length _g7711_)))
            (cond ((fx= _g7710_ 1) (apply gx#core-expand-lambda%__0 _g7711_))
                  ((fx= _g7710_ 2)
                   (apply gx#core-expand-lambda%__opt-lambda6669 _g7711_))
                  (else (error "No clause matching arguments" _g7711_))))))))
  (define gx#core-expand-case-lambda%
    (lambda (_stx6635_)
      (let ((_e66366643_ _stx6635_))
        (let ((_E66386647_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e66366643_))))
          (let ((_E66376666_
                 (lambda ()
                   (if (gx#stx-pair? _e66366643_)
                       (let ((_e66396651_ (gx#syntax-e _e66366643_)))
                         (let ((_hd66406654_ (##car _e66396651_))
                               (_tl66416656_ (##cdr _e66396651_)))
                           (let ((_clauses6659_ _tl66416656_))
                             (if (gx#stx-list? _clauses6659_)
                                 (gx#core-quote-syntax__1
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    (lambda (_clause6661_)
                                      (gx#core-expand-lambda%__opt-lambda6669
                                       (gx#stx-wrap-source
                                        (cons '%#case-lambda-clause
                                              _clause6661_)
                                        (let ((_$e6663_
                                               (gx#stx-source _clause6661_)))
                                          (if _$e6663_
                                              _$e6663_
                                              (gx#stx-source _stx6635_))))
                                       '#f))
                                    _clauses6659_))
                                  (gx#stx-source _stx6635_))
                                 (_E66386647_)))))
                       (_E66386647_)))))
            (let () (_E66376666_)))))))
  (define gx#core-expand-let-values%
    (lambda (_stx6589_)
      (let ((_e65906600_ _stx6589_))
        (let ((_E65926604_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e65906600_))))
          (let ((_E65916631_
                 (lambda ()
                   (if (gx#stx-pair? _e65906600_)
                       (let ((_e65936608_ (gx#syntax-e _e65906600_)))
                         (let ((_hd65946611_ (##car _e65936608_))
                               (_tl65956613_ (##cdr _e65936608_)))
                           (if (gx#stx-pair? _tl65956613_)
                               (let ((_e65966616_ (gx#syntax-e _tl65956613_)))
                                 (let ((_hd65976619_ (##car _e65966616_))
                                       (_tl65986621_ (##cdr _e65966616_)))
                                   (let ((_hd6624_ _hd65976619_))
                                     (let ((_body6626_ _tl65986621_))
                                       (if (gx#core-expand-let-bind? _hd6624_)
                                           (let ((_expressions6628_
                                                  (gx#stx-map1
                                                   gx#core-expand-let-bind-expression
                                                   _hd6624_)))
                                             (call-with-parameters
                                              (lambda ()
                                                (begin
                                                  (gx#stx-for-each1
                                                   gx#core-expand-let-bind-values!
                                                   _hd6624_)
                                                  (gx#core-quote-syntax__1
                                                   (cons (gx#core-quote-syntax__0
                                                          '%#let-values)
                                                         (cons (gx#stx-map2
                                                                gx#core-expand-let-bind-quote
                                                                _hd6624_
                                                                _expressions6628_)
                                                               (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _stx6589_
                              _body6626_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source _stx6589_))))
                                              gx#current-expander-context
                                              (let ((__obj7702
                                                     (make-object
                                                      gx#local-context::t
                                                      '5)))
                                                (begin
                                                  (gx#local-context:::init!__0
                                                   __obj7702)
                                                  __obj7702))))
                                           (_E65926604_))))))
                               (_E65926604_))))
                       (_E65926604_)))))
            (let () (_E65916631_)))))))
  (begin
    (define gx#core-expand-letrec-values%__opt-lambda6532
      (lambda (_stx6534_ _form6535_)
        (let ((_e65366546_ _stx6534_))
          (let ((_E65386550_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e65366546_))))
            (let ((_E65376575_
                   (lambda ()
                     (if (gx#stx-pair? _e65366546_)
                         (let ((_e65396554_ (gx#syntax-e _e65366546_)))
                           (let ((_hd65406557_ (##car _e65396554_))
                                 (_tl65416559_ (##cdr _e65396554_)))
                             (if (gx#stx-pair? _tl65416559_)
                                 (let ((_e65426562_
                                        (gx#syntax-e _tl65416559_)))
                                   (let ((_hd65436565_ (##car _e65426562_))
                                         (_tl65446567_ (##cdr _e65426562_)))
                                     (let ((_hd6570_ _hd65436565_))
                                       (let ((_body6572_ _tl65446567_))
                                         (if (gx#core-expand-let-bind?
                                              _hd6570_)
                                             (call-with-parameters
                                              (lambda ()
                                                (begin
                                                  (gx#stx-for-each1
                                                   gx#core-expand-let-bind-values!
                                                   _hd6570_)
                                                  (gx#core-quote-syntax__1
                                                   (cons (gx#core-quote-syntax__0
                                                          _form6535_)
                                                         (cons (gx#stx-map2
                                                                gx#core-expand-let-bind-quote
                                                                _hd6570_
                                                                (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#core-expand-let-bind-expression
                         _hd6570_))
                       (cons (gx#core-expand-local-block _stx6534_ _body6572_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source _stx6534_))))
                                              gx#current-expander-context
                                              (let ((__obj7703
                                                     (make-object
                                                      gx#local-context::t
                                                      '5)))
                                                (begin
                                                  (gx#local-context:::init!__0
                                                   __obj7703)
                                                  __obj7703)))
                                             (_E65386550_))))))
                                 (_E65386550_))))
                         (_E65386550_)))))
              (let () (_E65376575_)))))))
    (begin
      (define gx#core-expand-letrec-values%__0
        (lambda (_stx6582_)
          (let ((_form6584_ '%#letrec-values))
            (gx#core-expand-letrec-values%__opt-lambda6532
             _stx6582_
             _form6584_))))
      (define gx#core-expand-letrec-values%
        (lambda _g7713_
          (let ((_g7712_ (length _g7713_)))
            (cond ((fx= _g7712_ 1)
                   (apply gx#core-expand-letrec-values%__0 _g7713_))
                  ((fx= _g7712_ 2)
                   (apply gx#core-expand-letrec-values%__opt-lambda6532
                          _g7713_))
                  (else (error "No clause matching arguments" _g7713_))))))))
  (define gx#core-expand-letrec*-values%
    (lambda (_stx6531_)
      (gx#core-expand-letrec-values%__opt-lambda6532
       _stx6531_
       '%#letrec*-values)))
  (define gx#core-expand-let-bind?
    (lambda (_stx6488_)
      (if (gx#stx-list? _stx6488_)
          (gx#stx-andmap
           (lambda (_bind6490_)
             (let ((_e64916501_ _bind6490_))
               (let ((_E64936505_ (lambda () '#f)))
                 (let ((_E64926527_
                        (lambda ()
                          (if (gx#stx-pair? _e64916501_)
                              (let ((_e64946509_ (gx#syntax-e _e64916501_)))
                                (let ((_hd64956512_ (##car _e64946509_))
                                      (_tl64966514_ (##cdr _e64946509_)))
                                  (let ((_hd6517_ _hd64956512_))
                                    (if (gx#stx-pair? _tl64966514_)
                                        (let ((_e64976519_
                                               (gx#syntax-e _tl64966514_)))
                                          (let ((_hd64986522_
                                                 (##car _e64976519_))
                                                (_tl64996524_
                                                 (##cdr _e64976519_)))
                                            (if (gx#stx-null? _tl64996524_)
                                                (if '#t
                                                    (gx#core-bind-values?
                                                     _hd6517_)
                                                    (_E64936505_))
                                                (_E64936505_))))
                                        (_E64936505_)))))
                              (_E64936505_)))))
                   (let () (_E64926527_))))))
           _stx6488_)
          '#f)))
  (define gx#core-expand-let-bind-expression
    (lambda (_bind6447_)
      (let ((_e64486458_ _bind6447_))
        (let ((_E64506462_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e64486458_))))
          (let ((_E64496484_
                 (lambda ()
                   (if (gx#stx-pair? _e64486458_)
                       (let ((_e64516466_ (gx#syntax-e _e64486458_)))
                         (let ((_hd64526469_ (##car _e64516466_))
                               (_tl64536471_ (##cdr _e64516466_)))
                           (if (gx#stx-pair? _tl64536471_)
                               (let ((_e64546474_ (gx#syntax-e _tl64536471_)))
                                 (let ((_hd64556477_ (##car _e64546474_))
                                       (_tl64566479_ (##cdr _e64546474_)))
                                   (let ((_expr6482_ _hd64556477_))
                                     (if (gx#stx-null? _tl64566479_)
                                         (if '#t
                                             (gx#core-expand-expression
                                              _expr6482_)
                                             (_E64506462_))
                                         (_E64506462_)))))
                               (_E64506462_))))
                       (_E64506462_)))))
            (let () (_E64496484_)))))))
  (define gx#core-expand-let-bind-values!
    (lambda (_bind6406_)
      (let ((_e64076417_ _bind6406_))
        (let ((_E64096421_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e64076417_))))
          (let ((_E64086443_
                 (lambda ()
                   (if (gx#stx-pair? _e64076417_)
                       (let ((_e64106425_ (gx#syntax-e _e64076417_)))
                         (let ((_hd64116428_ (##car _e64106425_))
                               (_tl64126430_ (##cdr _e64106425_)))
                           (let ((_hd6433_ _hd64116428_))
                             (if (gx#stx-pair? _tl64126430_)
                                 (let ((_e64136435_
                                        (gx#syntax-e _tl64126430_)))
                                   (let ((_hd64146438_ (##car _e64136435_))
                                         (_tl64156440_ (##cdr _e64136435_)))
                                     (if (gx#stx-null? _tl64156440_)
                                         (if '#t
                                             (gx#core-bind-values!__0 _hd6433_)
                                             (_E64096421_))
                                         (_E64096421_))))
                                 (_E64096421_)))))
                       (_E64096421_)))))
            (let () (_E64086443_)))))))
  (define gx#core-expand-let-bind-quote
    (lambda (_bind6364_ _expr6365_)
      (let ((_e63666376_ _bind6364_))
        (let ((_E63686380_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e63666376_))))
          (let ((_E63676402_
                 (lambda ()
                   (if (gx#stx-pair? _e63666376_)
                       (let ((_e63696384_ (gx#syntax-e _e63666376_)))
                         (let ((_hd63706387_ (##car _e63696384_))
                               (_tl63716389_ (##cdr _e63696384_)))
                           (let ((_hd6392_ _hd63706387_))
                             (if (gx#stx-pair? _tl63716389_)
                                 (let ((_e63726394_
                                        (gx#syntax-e _tl63716389_)))
                                   (let ((_hd63736397_ (##car _e63726394_))
                                         (_tl63746399_ (##cdr _e63726394_)))
                                     (if (gx#stx-null? _tl63746399_)
                                         (if '#t
                                             (cons (gx#core-quote-bind-values
                                                    _hd6392_)
                                                   (cons _expr6365_ '()))
                                             (_E63686380_))
                                         (_E63686380_))))
                                 (_E63686380_)))))
                       (_E63686380_)))))
            (let () (_E63676402_)))))))
  (define gx#core-expand-let-syntax%
    (lambda (_stx6318_)
      (let ((_e63196329_ _stx6318_))
        (let ((_E63216333_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e63196329_))))
          (let ((_E63206360_
                 (lambda ()
                   (if (gx#stx-pair? _e63196329_)
                       (let ((_e63226337_ (gx#syntax-e _e63196329_)))
                         (let ((_hd63236340_ (##car _e63226337_))
                               (_tl63246342_ (##cdr _e63226337_)))
                           (if (gx#stx-pair? _tl63246342_)
                               (let ((_e63256345_ (gx#syntax-e _tl63246342_)))
                                 (let ((_hd63266348_ (##car _e63256345_))
                                       (_tl63276350_ (##cdr _e63256345_)))
                                   (let ((_hd6353_ _hd63266348_))
                                     (let ((_body6355_ _tl63276350_))
                                       (if (gx#core-expand-let-bind-syntax?
                                            _hd6353_)
                                           (let ((_expanders6357_
                                                  (gx#stx-map1
                                                   gx#core-expand-let-bind-syntax-expression
                                                   _hd6353_)))
                                             (call-with-parameters
                                              (lambda ()
                                                (begin
                                                  (gx#stx-for-each2
                                                   gx#core-expand-let-bind-syntax!
                                                   _hd6353_
                                                   _expanders6357_)
                                                  (gx#core-expand-local-block
                                                   _stx6318_
                                                   _body6355_)))
                                              gx#current-expander-context
                                              (let ((__obj7704
                                                     (make-object
                                                      gx#local-context::t
                                                      '5)))
                                                (begin
                                                  (gx#local-context:::init!__0
                                                   __obj7704)
                                                  __obj7704))))
                                           (_E63216333_))))))
                               (_E63216333_))))
                       (_E63216333_)))))
            (let () (_E63206360_)))))))
  (define gx#core-expand-letrec-syntax%
    (lambda (_stx6267_)
      (let ((_e62686278_ _stx6267_))
        (let ((_E62706282_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e62686278_))))
          (let ((_E62696314_
                 (lambda ()
                   (if (gx#stx-pair? _e62686278_)
                       (let ((_e62716286_ (gx#syntax-e _e62686278_)))
                         (let ((_hd62726289_ (##car _e62716286_))
                               (_tl62736291_ (##cdr _e62716286_)))
                           (if (gx#stx-pair? _tl62736291_)
                               (let ((_e62746294_ (gx#syntax-e _tl62736291_)))
                                 (let ((_hd62756297_ (##car _e62746294_))
                                       (_tl62766299_ (##cdr _e62746294_)))
                                   (let ((_hd6302_ _hd62756297_))
                                     (let ((_body6304_ _tl62766299_))
                                       (if (gx#core-expand-let-bind-syntax?
                                            _hd6302_)
                                           (call-with-parameters
                                            (lambda ()
                                              (begin
                                                (gx#stx-for-each2
                                                 gx#core-expand-let-bind-syntax!
                                                 _hd6302_
                                                 (make-list
                                                  (gx#stx-length _hd6302_)
                                                  '#!void))
                                                (gx#stx-for-each2
                                                 (lambda (_g63066309_
                                                          _g63076311_)
                                                   (gx#core-expand-let-bind-syntax!__opt-lambda6124
                                                    _g63066309_
                                                    _g63076311_
                                                    '#t))
                                                 _hd6302_
                                                 (gx#stx-map1
                                                  gx#core-expand-let-bind-syntax-expression
                                                  _hd6302_))
                                                (gx#core-expand-local-block
                                                 _stx6267_
                                                 _body6304_)))
                                            gx#current-expander-context
                                            (let ((__obj7705
                                                   (make-object
                                                    gx#local-context::t
                                                    '5)))
                                              (begin
                                                (gx#local-context:::init!__0
                                                 __obj7705)
                                                __obj7705)))
                                           (_E62706282_))))))
                               (_E62706282_))))
                       (_E62706282_)))))
            (let () (_E62696314_)))))))
  (define gx#core-expand-let-bind-syntax?
    (lambda (_stx6224_)
      (if (gx#stx-list? _stx6224_)
          (gx#stx-andmap
           (lambda (_bind6226_)
             (let ((_e62276237_ _bind6226_))
               (let ((_E62296241_ (lambda () '#f)))
                 (let ((_E62286263_
                        (lambda ()
                          (if (gx#stx-pair? _e62276237_)
                              (let ((_e62306245_ (gx#syntax-e _e62276237_)))
                                (let ((_hd62316248_ (##car _e62306245_))
                                      (_tl62326250_ (##cdr _e62306245_)))
                                  (let ((_hd6253_ _hd62316248_))
                                    (if (gx#stx-pair? _tl62326250_)
                                        (let ((_e62336255_
                                               (gx#syntax-e _tl62326250_)))
                                          (let ((_hd62346258_
                                                 (##car _e62336255_))
                                                (_tl62356260_
                                                 (##cdr _e62336255_)))
                                            (if (gx#stx-null? _tl62356260_)
                                                (if '#t
                                                    (gx#identifier? _hd6253_)
                                                    (_E62296241_))
                                                (_E62296241_))))
                                        (_E62296241_)))))
                              (_E62296241_)))))
                   (let () (_E62286263_))))))
           _stx6224_)
          '#f)))
  (define gx#core-expand-let-bind-syntax-expression
    (lambda (_bind6181_)
      (let ((_e61826192_ _bind6181_))
        (let ((_E61846196_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e61826192_))))
          (let ((_E61836220_
                 (lambda ()
                   (if (gx#stx-pair? _e61826192_)
                       (let ((_e61856200_ (gx#syntax-e _e61826192_)))
                         (let ((_hd61866203_ (##car _e61856200_))
                               (_tl61876205_ (##cdr _e61856200_)))
                           (if (gx#stx-pair? _tl61876205_)
                               (let ((_e61886208_ (gx#syntax-e _tl61876205_)))
                                 (let ((_hd61896211_ (##car _e61886208_))
                                       (_tl61906213_ (##cdr _e61886208_)))
                                   (let ((_expr6216_ _hd61896211_))
                                     (if (gx#stx-null? _tl61906213_)
                                         (if '#t
                                             (let ((_g7714_ (gx#core-expand-expression+1
                                                             _expr6216_)))
                                               (begin
                                                 (let ((_g7715_ (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g7714_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (not (fx= _g7715_ 2))
                                                       (error "Context expects 2 values"
                                                              _g7715_)))
                                                 (let ((_e6218_ (values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g7714_
                         1)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _e6218_)))
                                             (_E61846196_))
                                         (_E61846196_)))))
                               (_E61846196_))))
                       (_E61846196_)))))
            (let () (_E61836220_)))))))
  (begin
    (define gx#core-expand-let-bind-syntax!__opt-lambda6124
      (lambda (_bind6126_ _e6127_ _rebind?6128_)
        (let ((_e61296139_ _bind6126_))
          (let ((_E61316143_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e61296139_))))
            (let ((_E61306165_
                   (lambda ()
                     (if (gx#stx-pair? _e61296139_)
                         (let ((_e61326147_ (gx#syntax-e _e61296139_)))
                           (let ((_hd61336150_ (##car _e61326147_))
                                 (_tl61346152_ (##cdr _e61326147_)))
                             (let ((_id6155_ _hd61336150_))
                               (if (gx#stx-pair? _tl61346152_)
                                   (let ((_e61356157_
                                          (gx#syntax-e _tl61346152_)))
                                     (let ((_hd61366160_ (##car _e61356157_))
                                           (_tl61376162_ (##cdr _e61356157_)))
                                       (if (gx#stx-null? _tl61376162_)
                                           (if '#t
                                               (gx#core-bind-syntax!__1
                                                _id6155_
                                                _e6127_
                                                _rebind?6128_)
                                               (_E61316143_))
                                           (_E61316143_))))
                                   (_E61316143_)))))
                         (_E61316143_)))))
              (let () (_E61306165_)))))))
    (begin
      (define gx#core-expand-let-bind-syntax!__0
        (lambda (_bind6172_ _e6173_)
          (let ((_rebind?6175_ '#f))
            (gx#core-expand-let-bind-syntax!__opt-lambda6124
             _bind6172_
             _e6173_
             _rebind?6175_))))
      (define gx#core-expand-let-bind-syntax!
        (lambda _g7717_
          (let ((_g7716_ (length _g7717_)))
            (cond ((fx= _g7716_ 2)
                   (apply gx#core-expand-let-bind-syntax!__0 _g7717_))
                  ((fx= _g7716_ 3)
                   (apply gx#core-expand-let-bind-syntax!__opt-lambda6124
                          _g7717_))
                  (else (error "No clause matching arguments" _g7717_))))))))
  (define gx#core-expand-expression%
    (lambda (_stx6084_)
      (let ((_e60856095_ _stx6084_))
        (let ((_E60876099_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e60856095_))))
          (let ((_E60866121_
                 (lambda ()
                   (if (gx#stx-pair? _e60856095_)
                       (let ((_e60886103_ (gx#syntax-e _e60856095_)))
                         (let ((_hd60896106_ (##car _e60886103_))
                               (_tl60906108_ (##cdr _e60886103_)))
                           (if (gx#stx-pair? _tl60906108_)
                               (let ((_e60916111_ (gx#syntax-e _tl60906108_)))
                                 (let ((_hd60926114_ (##car _e60916111_))
                                       (_tl60936116_ (##cdr _e60916111_)))
                                   (let ((_expr6119_ _hd60926114_))
                                     (if (gx#stx-null? _tl60936116_)
                                         (if '#t
                                             (gx#core-expand-expression
                                              _expr6119_)
                                             (_E60876099_))
                                         (_E60876099_)))))
                               (_E60876099_))))
                       (_E60876099_)))))
            (let () (_E60866121_)))))))
  (define gx#core-expand-quote%
    (lambda (_stx6043_)
      (let ((_e60446054_ _stx6043_))
        (let ((_E60466058_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e60446054_))))
          (let ((_E60456080_
                 (lambda ()
                   (if (gx#stx-pair? _e60446054_)
                       (let ((_e60476062_ (gx#syntax-e _e60446054_)))
                         (let ((_hd60486065_ (##car _e60476062_))
                               (_tl60496067_ (##cdr _e60476062_)))
                           (if (gx#stx-pair? _tl60496067_)
                               (let ((_e60506070_ (gx#syntax-e _tl60496067_)))
                                 (let ((_hd60516073_ (##car _e60506070_))
                                       (_tl60526075_ (##cdr _e60506070_)))
                                   (let ((_e6078_ _hd60516073_))
                                     (if (gx#stx-null? _tl60526075_)
                                         (if '#t
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#quote)
                                                    (cons (gx#syntax->datum
                                                           _e6078_)
                                                          '()))
                                              (gx#stx-source _stx6043_))
                                             (_E60466058_))
                                         (_E60466058_)))))
                               (_E60466058_))))
                       (_E60466058_)))))
            (let () (_E60456080_)))))))
  (define gx#core-expand-quote-syntax%
    (lambda (_stx6002_)
      (let ((_e60036013_ _stx6002_))
        (let ((_E60056017_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e60036013_))))
          (let ((_E60046039_
                 (lambda ()
                   (if (gx#stx-pair? _e60036013_)
                       (let ((_e60066021_ (gx#syntax-e _e60036013_)))
                         (let ((_hd60076024_ (##car _e60066021_))
                               (_tl60086026_ (##cdr _e60066021_)))
                           (if (gx#stx-pair? _tl60086026_)
                               (let ((_e60096029_ (gx#syntax-e _tl60086026_)))
                                 (let ((_hd60106032_ (##car _e60096029_))
                                       (_tl60116034_ (##cdr _e60096029_)))
                                   (let ((_e6037_ _hd60106032_))
                                     (if (gx#stx-null? _tl60116034_)
                                         (if '#t
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#quote-syntax)
                                                    (cons (gx#core-quote-syntax__0
                                                           _e6037_)
                                                          '()))
                                              (gx#stx-source _stx6002_))
                                             (_E60056017_))
                                         (_E60056017_)))))
                               (_E60056017_))))
                       (_E60056017_)))))
            (let () (_E60046039_)))))))
  (define gx#core-expand-call%
    (lambda (_stx5959_)
      (let ((_e59605970_ _stx5959_))
        (let ((_E59625974_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e59605970_))))
          (let ((_E59615998_
                 (lambda ()
                   (if (gx#stx-pair? _e59605970_)
                       (let ((_e59635978_ (gx#syntax-e _e59605970_)))
                         (let ((_hd59645981_ (##car _e59635978_))
                               (_tl59655983_ (##cdr _e59635978_)))
                           (if (gx#stx-pair? _tl59655983_)
                               (let ((_e59665986_ (gx#syntax-e _tl59655983_)))
                                 (let ((_hd59675989_ (##car _e59665986_))
                                       (_tl59685991_ (##cdr _e59665986_)))
                                   (let ((_rator5994_ _hd59675989_))
                                     (let ((_args5996_ _tl59685991_))
                                       (if (gx#stx-list? _args5996_)
                                           (gx#core-quote-syntax__1
                                            (gx#core-cons*
                                             '%#call
                                             (gx#core-expand-expression
                                              _rator5994_)
                                             (gx#stx-map1
                                              gx#core-expand-expression
                                              _args5996_))
                                            (gx#stx-source _stx5959_))
                                           (_E59625974_))))))
                               (_E59625974_))))
                       (_E59625974_)))))
            (let () (_E59615998_)))))))
  (define gx#core-expand-if%
    (lambda (_stx5892_)
      (let ((_e58935909_ _stx5892_))
        (let ((_E58955913_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e58935909_))))
          (let ((_E58945955_
                 (lambda ()
                   (if (gx#stx-pair? _e58935909_)
                       (let ((_e58965917_ (gx#syntax-e _e58935909_)))
                         (let ((_hd58975920_ (##car _e58965917_))
                               (_tl58985922_ (##cdr _e58965917_)))
                           (if (gx#stx-pair? _tl58985922_)
                               (let ((_e58995925_ (gx#syntax-e _tl58985922_)))
                                 (let ((_hd59005928_ (##car _e58995925_))
                                       (_tl59015930_ (##cdr _e58995925_)))
                                   (let ((_test5933_ _hd59005928_))
                                     (if (gx#stx-pair? _tl59015930_)
                                         (let ((_e59025935_
                                                (gx#syntax-e _tl59015930_)))
                                           (let ((_hd59035938_
                                                  (##car _e59025935_))
                                                 (_tl59045940_
                                                  (##cdr _e59025935_)))
                                             (let ((_K5943_ _hd59035938_))
                                               (if (gx#stx-pair? _tl59045940_)
                                                   (let ((_e59055945_
                                                          (gx#syntax-e
                                                           _tl59045940_)))
                                                     (let ((_hd59065948_
                                                            (##car _e59055945_))
                                                           (_tl59075950_
                                                            (##cdr _e59055945_)))
                                                       (let ((_E5953_ _hd59065948_))
                                                         (if (gx#stx-null?
                                                              _tl59075950_)
                                                             (if '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-quote-syntax__1
                          (cons (gx#core-quote-syntax__0 '%#if)
                                (cons (gx#core-expand-expression _test5933_)
                                      (cons (gx#core-expand-expression _K5943_)
                                            (cons (gx#core-expand-expression
                                                   _E5953_)
                                                  '()))))
                          (gx#stx-source _stx5892_))
                         (_E58955913_))
                     (_E58955913_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E58955913_)))))
                                         (_E58955913_)))))
                               (_E58955913_))))
                       (_E58955913_)))))
            (let () (_E58945955_)))))))
  (define gx#core-expand-ref%
    (lambda (_stx5851_)
      (let ((_e58525862_ _stx5851_))
        (let ((_E58545866_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e58525862_))))
          (let ((_E58535888_
                 (lambda ()
                   (if (gx#stx-pair? _e58525862_)
                       (let ((_e58555870_ (gx#syntax-e _e58525862_)))
                         (let ((_hd58565873_ (##car _e58555870_))
                               (_tl58575875_ (##cdr _e58555870_)))
                           (if (gx#stx-pair? _tl58575875_)
                               (let ((_e58585878_ (gx#syntax-e _tl58575875_)))
                                 (let ((_hd58595881_ (##car _e58585878_))
                                       (_tl58605883_ (##cdr _e58585878_)))
                                   (let ((_id5886_ _hd58595881_))
                                     (if (gx#stx-null? _tl58605883_)
                                         (if (gx#core-runtime-ref? _id5886_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#ref)
                                                    (cons (gx#core-quote-runtime-ref
                                                           _id5886_
                                                           _stx5851_)
                                                          '()))
                                              (gx#stx-source _stx5851_))
                                             (_E58545866_))
                                         (_E58545866_)))))
                               (_E58545866_))))
                       (_E58545866_)))))
            (let () (_E58535888_)))))))
  (define gx#core-expand-setq%
    (lambda (_stx5797_)
      (let ((_e57985811_ _stx5797_))
        (let ((_E58005815_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e57985811_))))
          (let ((_E57995847_
                 (lambda ()
                   (if (gx#stx-pair? _e57985811_)
                       (let ((_e58015819_ (gx#syntax-e _e57985811_)))
                         (let ((_hd58025822_ (##car _e58015819_))
                               (_tl58035824_ (##cdr _e58015819_)))
                           (if (gx#stx-pair? _tl58035824_)
                               (let ((_e58045827_ (gx#syntax-e _tl58035824_)))
                                 (let ((_hd58055830_ (##car _e58045827_))
                                       (_tl58065832_ (##cdr _e58045827_)))
                                   (let ((_id5835_ _hd58055830_))
                                     (if (gx#stx-pair? _tl58065832_)
                                         (let ((_e58075837_
                                                (gx#syntax-e _tl58065832_)))
                                           (let ((_hd58085840_
                                                  (##car _e58075837_))
                                                 (_tl58095842_
                                                  (##cdr _e58075837_)))
                                             (let ((_expr5845_ _hd58085840_))
                                               (if (gx#stx-null? _tl58095842_)
                                                   (if (gx#core-runtime-ref?
                                                        _id5835_)
                                                       (gx#core-quote-syntax__1
                                                        (cons (gx#core-quote-syntax__0
                                                               '%#set!)
                                                              (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _id5835_
                             _stx5797_)
                            (cons (gx#core-expand-expression _expr5845_) '())))
                (gx#stx-source _stx5797_))
               (_E58005815_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E58005815_)))))
                                         (_E58005815_)))))
                               (_E58005815_))))
                       (_E58005815_)))))
            (let () (_E57995847_)))))))
  (define gx#macro-expand-extern
    (lambda (_stx5645_)
      (let ((_generate5647_
             (lambda (_body5677_)
               ((letrec ((_lp5679_
                          (lambda (_rest5681_ _ns5682_ _r5683_)
                            (let ((_e56845699_ _rest5681_))
                              (let ((_E56975703_
                                     (lambda ()
                                       (gx#raise-syntax-error
                                        '#f
                                        '"Bad syntax"
                                        _e56845699_))))
                                (let ((_E56935707_
                                       (lambda ()
                                         (if (gx#stx-null? _e56845699_)
                                             (if '#t
                                                 (reverse _r5683_)
                                                 (_E56975703_))
                                             (_E56975703_)))))
                                  (let ((_E56865764_
                                         (lambda ()
                                           (if (gx#stx-pair? _e56845699_)
                                               (let ((_e56945711_
                                                      (gx#syntax-e
                                                       _e56845699_)))
                                                 (let ((_hd56955714_
                                                        (##car _e56945711_))
                                                       (_tl56965716_
                                                        (##cdr _e56945711_)))
                                                   (let ((_hd5719_
                                                          _hd56955714_))
                                                     (let ((_rest5721_
                                                            _tl56965716_))
                                                       (if '#t
                                                           (if (gx#identifier?
                                                                _hd5719_)
                                                               (_lp5679_
                                                                _rest5721_
                                                                _ns5682_
                                                                (cons (cons _hd5719_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (if _ns5682_
                                              (gx#stx-identifier
                                               _hd5719_
                                               _ns5682_
                                               '"#"
                                               _hd5719_)
                                              _hd5719_)
                                          '()))
                              _r5683_))
                       (let ((_e57225732_ _hd5719_))
                         (let ((_E57245736_
                                (lambda ()
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _e57225732_))))
                           (let ((_E57235760_
                                  (lambda ()
                                    (if (gx#stx-pair? _e57225732_)
                                        (let ((_e57255740_
                                               (gx#syntax-e _e57225732_)))
                                          (let ((_hd57265743_
                                                 (##car _e57255740_))
                                                (_tl57275745_
                                                 (##cdr _e57255740_)))
                                            (let ((_id5748_ _hd57265743_))
                                              (if (gx#stx-pair? _tl57275745_)
                                                  (let ((_e57285750_
                                                         (gx#syntax-e
                                                          _tl57275745_)))
                                                    (let ((_hd57295753_
                                                           (##car _e57285750_))
                                                          (_tl57305755_
                                                           (##cdr _e57285750_)))
                                                      (let ((_eid5758_
                                                             _hd57295753_))
                                                        (if (gx#stx-null?
                                                             _tl57305755_)
                                                            (if (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _id5748_)
                            (gx#identifier? _eid5758_)
                            '#f)
                        (_lp5679_
                         _rest5721_
                         _ns5682_
                         (cons (cons _id5748_ (cons _eid5758_ '())) _r5683_))
                        (_E57245736_))
                    (_E57245736_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E57245736_)))))
                                        (_E57245736_)))))
                             (let () (_E57235760_))))))
                   (_E56935707_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E56935707_)))))
                                    (let ((_E56855793_
                                           (lambda ()
                                             (if (gx#stx-pair? _e56845699_)
                                                 (let ((_e56875768_
                                                        (gx#syntax-e
                                                         _e56845699_)))
                                                   (let ((_hd56885771_
                                                          (##car _e56875768_))
                                                         (_tl56895773_
                                                          (##cdr _e56875768_)))
                                                     (if (eq? (gx#stx-e
                                                               _hd56885771_)
                                                              'namespace:)
                                                         (if (gx#stx-pair?
                                                              _tl56895773_)
                                                             (let ((_e56905776_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (gx#syntax-e _tl56895773_)))
                       (let ((_hd56915779_ (##car _e56905776_))
                             (_tl56925781_ (##cdr _e56905776_)))
                         (let ((_ns5784_ _hd56915779_))
                           (let ((_rest5786_ _tl56925781_))
                             (if '#t
                                 (let ((_ns5791_
                                        (if (gx#identifier? _ns5784_)
                                            (symbol->string
                                             (gx#stx-e _ns5784_))
                                            (if (let ((_$e5788_
                                                       (gx#stx-string?
                                                        _ns5784_)))
                                                  (if _$e5788_
                                                      _$e5788_
                                                      (gx#stx-false?
                                                       _ns5784_)))
                                                (gx#stx-e _ns5784_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax"
                                                 _stx5645_
                                                 _ns5784_)))))
                                   (_lp5679_ _rest5786_ _ns5791_ _r5683_))
                                 (_E56865764_))))))
                     (_E56865764_))
                 (_E56865764_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E56865764_)))))
                                      (let () (_E56855793_))))))))))
                  _lp5679_)
                _body5677_
                (gx#core-context-namespace__0)
                '()))))
        (let ((_e56485655_ _stx5645_))
          (let ((_E56505659_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e56485655_))))
            (let ((_E56495673_
                   (lambda ()
                     (if (gx#stx-pair? _e56485655_)
                         (let ((_e56515663_ (gx#syntax-e _e56485655_)))
                           (let ((_hd56525666_ (##car _e56515663_))
                                 (_tl56535668_ (##cdr _e56515663_)))
                             (let ((_body5671_ _tl56535668_))
                               (if (gx#stx-list? _body5671_)
                                   (gx#core-cons
                                    '%#extern
                                    (_generate5647_ _body5671_))
                                   (_E56505659_)))))
                         (_E56505659_)))))
              (let () (_E56495673_))))))))
  (define gx#macro-expand-define-values
    (lambda (_stx5591_)
      (let ((_e55925605_ _stx5591_))
        (let ((_E55945609_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e55925605_))))
          (let ((_E55935641_
                 (lambda ()
                   (if (gx#stx-pair? _e55925605_)
                       (let ((_e55955613_ (gx#syntax-e _e55925605_)))
                         (let ((_hd55965616_ (##car _e55955613_))
                               (_tl55975618_ (##cdr _e55955613_)))
                           (if (gx#stx-pair? _tl55975618_)
                               (let ((_e55985621_ (gx#syntax-e _tl55975618_)))
                                 (let ((_hd55995624_ (##car _e55985621_))
                                       (_tl56005626_ (##cdr _e55985621_)))
                                   (let ((_hd5629_ _hd55995624_))
                                     (if (gx#stx-pair? _tl56005626_)
                                         (let ((_e56015631_
                                                (gx#syntax-e _tl56005626_)))
                                           (let ((_hd56025634_
                                                  (##car _e56015631_))
                                                 (_tl56035636_
                                                  (##cdr _e56015631_)))
                                             (let ((_expr5639_ _hd56025634_))
                                               (if (gx#stx-null? _tl56035636_)
                                                   (if (gx#stx-andmap
                                                        gx#identifier?
                                                        _hd5629_)
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#define-values)
                                                             (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            gx#user-binding-identifier
                            _hd5629_)
                           (cons _expr5639_ '())))
               (_E55945609_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E55945609_)))))
                                         (_E55945609_)))))
                               (_E55945609_))))
                       (_E55945609_)))))
            (let () (_E55935641_)))))))
  (define gx#macro-expand-define-syntax
    (lambda (_stx5537_)
      (let ((_e55385551_ _stx5537_))
        (let ((_E55405555_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e55385551_))))
          (let ((_E55395587_
                 (lambda ()
                   (if (gx#stx-pair? _e55385551_)
                       (let ((_e55415559_ (gx#syntax-e _e55385551_)))
                         (let ((_hd55425562_ (##car _e55415559_))
                               (_tl55435564_ (##cdr _e55415559_)))
                           (if (gx#stx-pair? _tl55435564_)
                               (let ((_e55445567_ (gx#syntax-e _tl55435564_)))
                                 (let ((_hd55455570_ (##car _e55445567_))
                                       (_tl55465572_ (##cdr _e55445567_)))
                                   (let ((_hd5575_ _hd55455570_))
                                     (if (gx#stx-pair? _tl55465572_)
                                         (let ((_e55475577_
                                                (gx#syntax-e _tl55465572_)))
                                           (let ((_hd55485580_
                                                  (##car _e55475577_))
                                                 (_tl55495582_
                                                  (##cdr _e55475577_)))
                                             (let ((_expr5585_ _hd55485580_))
                                               (if (gx#stx-null? _tl55495582_)
                                                   (if (gx#identifier?
                                                        _hd5575_)
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#define-syntax)
                                                             (cons _hd5575_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _expr5585_ '())))
               (_E55405555_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E55405555_)))))
                                         (_E55405555_)))))
                               (_E55405555_))))
                       (_E55405555_)))))
            (let () (_E55395587_)))))))
  (define gx#macro-expand-define-alias
    (lambda (_stx5483_)
      (let ((_e54845497_ _stx5483_))
        (let ((_E54865501_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e54845497_))))
          (let ((_E54855533_
                 (lambda ()
                   (if (gx#stx-pair? _e54845497_)
                       (let ((_e54875505_ (gx#syntax-e _e54845497_)))
                         (let ((_hd54885508_ (##car _e54875505_))
                               (_tl54895510_ (##cdr _e54875505_)))
                           (if (gx#stx-pair? _tl54895510_)
                               (let ((_e54905513_ (gx#syntax-e _tl54895510_)))
                                 (let ((_hd54915516_ (##car _e54905513_))
                                       (_tl54925518_ (##cdr _e54905513_)))
                                   (let ((_id5521_ _hd54915516_))
                                     (if (gx#stx-pair? _tl54925518_)
                                         (let ((_e54935523_
                                                (gx#syntax-e _tl54925518_)))
                                           (let ((_hd54945526_
                                                  (##car _e54935523_))
                                                 (_tl54955528_
                                                  (##cdr _e54935523_)))
                                             (let ((_alias-id5531_
                                                    _hd54945526_))
                                               (if (gx#stx-null? _tl54955528_)
                                                   (if (if (gx#identifier?
                                                            _id5521_)
                                                           (gx#identifier?
                                                            _alias-id5531_)
                                                           '#f)
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#define-alias)
                                                             (cons _id5521_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _alias-id5531_ '())))
               (_E54865501_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E54865501_)))))
                                         (_E54865501_)))))
                               (_E54865501_))))
                       (_E54865501_)))))
            (let () (_E54855533_)))))))
  (define gx#macro-expand-lambda%
    (lambda (_stx5440_)
      (let ((_e54415451_ _stx5440_))
        (let ((_E54435455_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e54415451_))))
          (let ((_E54425479_
                 (lambda ()
                   (if (gx#stx-pair? _e54415451_)
                       (let ((_e54445459_ (gx#syntax-e _e54415451_)))
                         (let ((_hd54455462_ (##car _e54445459_))
                               (_tl54465464_ (##cdr _e54445459_)))
                           (if (gx#stx-pair? _tl54465464_)
                               (let ((_e54475467_ (gx#syntax-e _tl54465464_)))
                                 (let ((_hd54485470_ (##car _e54475467_))
                                       (_tl54495472_ (##cdr _e54475467_)))
                                   (let ((_hd5475_ _hd54485470_))
                                     (let ((_body5477_ _tl54495472_))
                                       (if (if (gx#stx-andmap
                                                gx#identifier?
                                                _hd5475_)
                                               (if (gx#stx-list? _body5477_)
                                                   (not (gx#stx-null?
                                                         _body5477_))
                                                   '#f)
                                               '#f)
                                           (gx#core-cons*
                                            '%#lambda
                                            (gx#stx-map1
                                             gx#user-binding-identifier
                                             _hd5475_)
                                            _body5477_)
                                           (_E54435455_))))))
                               (_E54435455_))))
                       (_E54435455_)))))
            (let () (_E54425479_)))))))
  (define gx#macro-expand-case-lambda
    (lambda (_stx5376_)
      (let ((_generate5378_
             (lambda (_clause5408_)
               (let ((_e54095416_ _clause5408_))
                 (let ((_E54115420_
                        (lambda ()
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; malformed clause"
                           _stx5376_
                           _clause5408_))))
                   (let ((_E54105436_
                          (lambda ()
                            (if (gx#stx-pair? _e54095416_)
                                (let ((_e54125424_ (gx#syntax-e _e54095416_)))
                                  (let ((_hd54135427_ (##car _e54125424_))
                                        (_tl54145429_ (##cdr _e54125424_)))
                                    (let ((_hd5432_ _hd54135427_))
                                      (let ((_body5434_ _tl54145429_))
                                        (if (if (gx#stx-andmap
                                                 gx#identifier?
                                                 _hd5432_)
                                                (if (gx#stx-list? _body5434_)
                                                    (not (gx#stx-null?
                                                          _body5434_))
                                                    '#f)
                                                '#f)
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    gx#user-binding-identifier
                                                    _hd5432_)
                                                   _body5434_)
                                             (gx#stx-source _clause5408_))
                                            (_E54115420_))))))
                                (_E54115420_)))))
                     (let () (_E54105436_))))))))
        (let ((_e53795386_ _stx5376_))
          (let ((_E53815390_
                 (lambda ()
                   (gx#raise-syntax-error '#f '"Bad syntax" _e53795386_))))
            (let ((_E53805404_
                   (lambda ()
                     (if (gx#stx-pair? _e53795386_)
                         (let ((_e53825394_ (gx#syntax-e _e53795386_)))
                           (let ((_hd53835397_ (##car _e53825394_))
                                 (_tl53845399_ (##cdr _e53825394_)))
                             (let ((_clauses5402_ _tl53845399_))
                               (if (gx#stx-list? _clauses5402_)
                                   (gx#core-cons
                                    '%#case-lambda
                                    (gx#stx-map1 _generate5378_ _clauses5402_))
                                   (_E53815390_)))))
                         (_E53815390_)))))
              (let () (_E53805404_))))))))
  (begin
    (define gx#macro-expand-let-values__opt-lambda5275
      (lambda (_stx5277_ _form5278_)
        (let ((_generate5280_
               (lambda (_bind5323_)
                 (let ((_e53245334_ _bind5323_))
                   (let ((_E53265338_
                          (lambda ()
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; malformed binding"
                             _stx5277_
                             _bind5323_))))
                     (let ((_E53255362_
                            (lambda ()
                              (if (gx#stx-pair? _e53245334_)
                                  (let ((_e53275342_
                                         (gx#syntax-e _e53245334_)))
                                    (let ((_hd53285345_ (##car _e53275342_))
                                          (_tl53295347_ (##cdr _e53275342_)))
                                      (let ((_ids5350_ _hd53285345_))
                                        (if (gx#stx-pair? _tl53295347_)
                                            (let ((_e53305352_
                                                   (gx#syntax-e _tl53295347_)))
                                              (let ((_hd53315355_
                                                     (##car _e53305352_))
                                                    (_tl53325357_
                                                     (##cdr _e53305352_)))
                                                (let ((_expr5360_
                                                       _hd53315355_))
                                                  (if (gx#stx-null?
                                                       _tl53325357_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _ids5350_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         gx#user-binding-identifier
                         _ids5350_)
                        (cons _expr5360_ '()))
                  (_E53265338_))
              (_E53265338_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E53265338_)))))
                                  (_E53265338_)))))
                       (let () (_E53255362_))))))))
          (let ((_e52815291_ _stx5277_))
            (let ((_E52835295_
                   (lambda ()
                     (gx#raise-syntax-error '#f '"Bad syntax" _e52815291_))))
              (let ((_E52825319_
                     (lambda ()
                       (if (gx#stx-pair? _e52815291_)
                           (let ((_e52845299_ (gx#syntax-e _e52815291_)))
                             (let ((_hd52855302_ (##car _e52845299_))
                                   (_tl52865304_ (##cdr _e52845299_)))
                               (if (gx#stx-pair? _tl52865304_)
                                   (let ((_e52875307_
                                          (gx#syntax-e _tl52865304_)))
                                     (let ((_hd52885310_ (##car _e52875307_))
                                           (_tl52895312_ (##cdr _e52875307_)))
                                       (let ((_hd5315_ _hd52885310_))
                                         (let ((_body5317_ _tl52895312_))
                                           (if (if (gx#stx-list? _hd5315_)
                                                   (if (gx#stx-list?
                                                        _body5317_)
                                                       (not (gx#stx-null?
                                                             _body5317_))
                                                       '#f)
                                                   '#f)
                                               (gx#core-cons*
                                                _form5278_
                                                (gx#stx-map1
                                                 _generate5280_
                                                 _hd5315_)
                                                _body5317_)
                                               (_E52835295_))))))
                                   (_E52835295_))))
                           (_E52835295_)))))
                (let () (_E52825319_))))))))
    (begin
      (define gx#macro-expand-let-values__0
        (lambda (_stx5369_)
          (let ((_form5371_ '%#let-values))
            (gx#macro-expand-let-values__opt-lambda5275
             _stx5369_
             _form5371_))))
      (define gx#macro-expand-let-values
        (lambda _g7719_
          (let ((_g7718_ (length _g7719_)))
            (cond ((fx= _g7718_ 1)
                   (apply gx#macro-expand-let-values__0 _g7719_))
                  ((fx= _g7718_ 2)
                   (apply gx#macro-expand-let-values__opt-lambda5275 _g7719_))
                  (else (error "No clause matching arguments" _g7719_))))))))
  (define gx#macro-expand-letrec-values
    (lambda (_stx5274_)
      (gx#macro-expand-let-values__opt-lambda5275 _stx5274_ '%#letrec-values)))
  (define gx#macro-expand-letrec*-values
    (lambda (_stx5272_)
      (gx#macro-expand-let-values__opt-lambda5275
       _stx5272_
       '%#letrec*-values)))
  (define gx#macro-expand-if
    (lambda (_stx5163_)
      (let ((_e51645190_ _stx5163_))
        (let ((_E51765194_
               (lambda ()
                 (gx#raise-syntax-error '#f '"Bad syntax" _e51645190_))))
          (let ((_E51665236_
                 (lambda ()
                   (if (gx#stx-pair? _e51645190_)
                       (let ((_e51775198_ (gx#syntax-e _e51645190_)))
                         (let ((_hd51785201_ (##car _e51775198_))
                               (_tl51795203_ (##cdr _e51775198_)))
                           (if (gx#stx-pair? _tl51795203_)
                               (let ((_e51805206_ (gx#syntax-e _tl51795203_)))
                                 (let ((_hd51815209_ (##car _e51805206_))
                                       (_tl51825211_ (##cdr _e51805206_)))
                                   (let ((_test5214_ _hd51815209_))
                                     (if (gx#stx-pair? _tl51825211_)
                                         (let ((_e51835216_
                                                (gx#syntax-e _tl51825211_)))
                                           (let ((_hd51845219_
                                                  (##car _e51835216_))
                                                 (_tl51855221_
                                                  (##cdr _e51835216_)))
                                             (let ((_K5224_ _hd51845219_))
                                               (if (gx#stx-pair? _tl51855221_)
                                                   (let ((_e51865226_
                                                          (gx#syntax-e
                                                           _tl51855221_)))
                                                     (let ((_hd51875229_
                                                            (##car _e51865226_))
                                                           (_tl51885231_
                                                            (##cdr _e51865226_)))
                                                       (let ((_E5234_ _hd51875229_))
                                                         (if (gx#stx-null?
                                                              _tl51885231_)
                                                             (if '#t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#core-list '%#if _test5214_ _K5224_ _E5234_)
                         (_E51765194_))
                     (_E51765194_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_E51765194_)))))
                                         (_E51765194_)))))
                               (_E51765194_))))
                       (_E51765194_)))))
            (let ((_E51655268_
                   (lambda ()
                     (if (gx#stx-pair? _e51645190_)
                         (let ((_e51675240_ (gx#syntax-e _e51645190_)))
                           (let ((_hd51685243_ (##car _e51675240_))
                                 (_tl51695245_ (##cdr _e51675240_)))
                             (if (gx#stx-pair? _tl51695245_)
                                 (let ((_e51705248_
                                        (gx#syntax-e _tl51695245_)))
                                   (let ((_hd51715251_ (##car _e51705248_))
                                         (_tl51725253_ (##cdr _e51705248_)))
                                     (let ((_test5256_ _hd51715251_))
                                       (if (gx#stx-pair? _tl51725253_)
                                           (let ((_e51735258_
                                                  (gx#syntax-e _tl51725253_)))
                                             (let ((_hd51745261_
                                                    (##car _e51735258_))
                                                   (_tl51755263_
                                                    (##cdr _e51735258_)))
                                               (let ((_K5266_ _hd51745261_))
                                                 (if (gx#stx-null?
                                                      _tl51755263_)
                                                     (if '#t
                                                         (gx#core-list
                                                          '%#if
                                                          _test5256_
                                                          _K5266_
                                                          '#!void)
                                                         (_E51665236_))
                                                     (_E51665236_)))))
                                           (_E51665236_)))))
                                 (_E51665236_))))
                         (_E51665236_)))))
              (let () (_E51655268_))))))))
  (define gx#free-identifier=?
    (lambda (_xid5151_ _yid5152_)
      (let ((_xe5154_ (gx#resolve-identifier__0 _xid5151_))
            (_ye5155_ (gx#resolve-identifier__0 _yid5152_)))
        (if (if _xe5154_ _ye5155_ '#f)
            (let ((_$e5157_ (eq? _xe5154_ _ye5155_)))
              (if _$e5157_
                  _$e5157_
                  (if (##structure-instance-of? _xe5154_ 'gx#binding::t)
                      (if (##structure-instance-of? _ye5155_ 'gx#binding::t)
                          (eq? (##structure-ref _xe5154_ '1 gx#binding::t '#f)
                               (##structure-ref _ye5155_ '1 gx#binding::t '#f))
                          '#f)
                      '#f)))
            (if (let ((_$e5160_ _xe5154_)) (if _$e5160_ _$e5160_ _ye5155_))
                '#f
                (gx#stx-eq? _xid5151_ _yid5152_))))))
  (define gx#bound-identifier=?
    (lambda (_xid5135_ _yid5136_)
      (let ((_context5138_
             (lambda (_e5149_)
               (if (##structure-direct-instance-of?
                    _e5149_
                    'gx#syntax-quote::t)
                   (##structure-ref _e5149_ '3 gx#syntax-quote::t '#f)
                   (gx#current-expander-context)))))
        (let ((_marks5139_
               (lambda (_e5147_)
                 (if (symbol? _e5147_)
                     '()
                     (if (##structure-direct-instance-of?
                          _e5147_
                          'gx#identifier-wrap::t)
                         (##structure-ref _e5147_ '3 gx#identifier-wrap::t '#f)
                         (##structure-ref
                          _e5147_
                          '4
                          gx#syntax-quote::t
                          '#f))))))
          (let ((_unwrap5140_
                 (lambda (_e5145_)
                   (if (symbol? _e5145_)
                       _e5145_
                       (gx#syntax-local-unwrap _e5145_)))))
            (let ((_x5142_ (_unwrap5140_ _xid5135_))
                  (_y5143_ (_unwrap5140_ _yid5136_)))
              (if (gx#stx-eq? _x5142_ _y5143_)
                  (if (eq? (_context5138_ _x5142_) (_context5138_ _y5143_))
                      (andmap eq? (_marks5139_ _x5142_) (_marks5139_ _y5143_))
                      '#f)
                  '#f)))))))
  (define gx#underscore?
    (lambda (_stx5133_)
      (if (gx#identifier? _stx5133_) (gx#core-identifier=? _stx5133_ '_) '#f)))
  (define gx#ellipsis?
    (lambda (_stx5131_)
      (if (gx#identifier? _stx5131_)
          (gx#core-identifier=? _stx5131_ '...)
          '#f)))
  (define gx#user-binding-identifier
    (lambda (_x5129_)
      (if (gx#identifier? _x5129_)
          (if (not (gx#underscore? _x5129_)) _x5129_ '#f)
          '#f)))
  (begin
    (define gx#check-duplicate-identifiers__opt-lambda5073
      (lambda (_stx5075_ _where5076_)
        ((letrec ((_lp5078_
                   (lambda (_rest5080_)
                     (let ((_rest50815089_ _rest5080_))
                       (let ((_E50845093_
                              (lambda ()
                                (error '"No clause matching" _rest50815089_))))
                         (let ((_else50835097_ (lambda () '#t)))
                           (let ((_K50855107_
                                  (lambda (_rest5100_ _hd5101_)
                                    (if (not (gx#identifier? _hd5101_))
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad identifier"
                                         _where5076_
                                         _hd5101_)
                                        (if (find (lambda (_g51025104_)
                                                    (gx#bound-identifier=?
                                                     _g51025104_
                                                     _hd5101_))
                                                  _rest5100_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Duplicate identifier"
                                             _where5076_
                                             _hd5101_)
                                            (_lp5078_ _rest5100_))))))
                             (if (##pair? _rest50815089_)
                                 (let ((_hd50865110_ (##car _rest50815089_))
                                       (_tl50875112_ (##cdr _rest50815089_)))
                                   (let ((_hd5115_ _hd50865110_))
                                     (let ((_rest5117_ _tl50875112_))
                                       (_K50855107_ _rest5117_ _hd5115_))))
                                 (_else50835097_)))))))))
           _lp5078_)
         (gx#syntax->list _stx5075_))))
    (begin
      (define gx#check-duplicate-identifiers__0
        (lambda (_stx5122_)
          (let ((_where5124_ _stx5122_))
            (gx#check-duplicate-identifiers__opt-lambda5073
             _stx5122_
             _where5124_))))
      (define gx#check-duplicate-identifiers
        (lambda _g7721_
          (let ((_g7720_ (length _g7721_)))
            (cond ((fx= _g7720_ 1)
                   (apply gx#check-duplicate-identifiers__0 _g7721_))
                  ((fx= _g7720_ 2)
                   (apply gx#check-duplicate-identifiers__opt-lambda5073
                          _g7721_))
                  (else (error "No clause matching arguments" _g7721_))))))))
  (define gx#core-bind-values?
    (lambda (_stx5067_)
      (gx#stx-andmap
       (lambda (_x5069_)
         (let ((_$e5071_ (gx#identifier? _x5069_)))
           (if _$e5071_ _$e5071_ (gx#stx-false? _x5069_))))
       _stx5067_)))
  (begin
    (define gx#core-bind-values!__opt-lambda5029
      (lambda (_stx5031_ _rebind?5032_ _phi5033_ _ctx5034_)
        (gx#stx-for-each1
         (lambda (_id5036_)
           (if (gx#identifier? _id5036_)
               (gx#core-bind-runtime!__opt-lambda4965
                _id5036_
                _rebind?5032_
                _phi5033_
                _ctx5034_)
               '#!void))
         _stx5031_)))
    (begin
      (define gx#core-bind-values!__0
        (lambda (_stx5041_)
          (let ((_rebind?5043_ '#f))
            (let ((_phi5045_ (gx#current-expander-phi)))
              (let ((_ctx5047_ (gx#current-expander-context)))
                (gx#core-bind-values!__opt-lambda5029
                 _stx5041_
                 _rebind?5043_
                 _phi5045_
                 _ctx5047_))))))
      (define gx#core-bind-values!__1
        (lambda (_stx5049_ _rebind?5050_)
          (let ((_phi5052_ (gx#current-expander-phi)))
            (let ((_ctx5054_ (gx#current-expander-context)))
              (gx#core-bind-values!__opt-lambda5029
               _stx5049_
               _rebind?5050_
               _phi5052_
               _ctx5054_)))))
      (define gx#core-bind-values!__2
        (lambda (_stx5056_ _rebind?5057_ _phi5058_)
          (let ((_ctx5060_ (gx#current-expander-context)))
            (gx#core-bind-values!__opt-lambda5029
             _stx5056_
             _rebind?5057_
             _phi5058_
             _ctx5060_))))
      (define gx#core-bind-values!
        (lambda _g7723_
          (let ((_g7722_ (length _g7723_)))
            (cond ((fx= _g7722_ 1) (apply gx#core-bind-values!__0 _g7723_))
                  ((fx= _g7722_ 2) (apply gx#core-bind-values!__1 _g7723_))
                  ((fx= _g7722_ 3) (apply gx#core-bind-values!__2 _g7723_))
                  ((fx= _g7722_ 4)
                   (apply gx#core-bind-values!__opt-lambda5029 _g7723_))
                  (else (error "No clause matching arguments" _g7723_))))))))
  (define gx#core-quote-bind-values
    (lambda (_stx5026_)
      (gx#stx-map1
       (lambda (_x5028_)
         (if (gx#identifier? _x5028_) (gx#core-quote-syntax__0 _x5028_) '#f))
       _stx5026_)))
  (define gx#core-runtime-ref?
    (lambda (_stx5019_)
      (if (gx#identifier? _stx5019_)
          (let ((_bind5021_ (gx#resolve-identifier__0 _stx5019_)))
            (let ((_$e5023_ (not _bind5021_)))
              (if _$e5023_
                  _$e5023_
                  (##structure-instance-of?
                   _bind5021_
                   'gx#runtime-binding::t))))
          '#f)))
  (define gx#core-quote-runtime-ref
    (lambda (_id5008_ _form5009_)
      (let ((_bind5011_ (gx#resolve-identifier__0 _id5008_)))
        (if (##structure-instance-of? _bind5011_ 'gx#runtime-binding::t)
            (gx#core-quote-syntax__0 _id5008_)
            (if (not _bind5011_)
                (if (let ((_$e5013_ (fxpositive? (gx#current-expander-phi))))
                      (if _$e5013_
                          _$e5013_
                          (let ((_$e5016_
                                 (gx#core-context-rebind?__opt-lambda2877
                                  (gx#core-context-top__0))))
                            (if _$e5016_
                                _$e5016_
                                (gx#core-extern-symbol?
                                 (gx#stx-e _id5008_))))))
                    (gx#core-quote-syntax__0 _id5008_)
                    (gx#raise-syntax-error
                     '#f
                     '"Reference to unbound identifier"
                     _form5009_
                     _id5008_))
                (gx#raise-syntax-error
                 '#f
                 '"Bad syntax; not a runtime binding"
                 _form5009_
                 _id5008_))))))
  (begin
    (define gx#core-bind-runtime!__opt-lambda4965
      (lambda (_id4967_ _rebind?4968_ _phi4969_ _ctx4970_)
        (let ((_key4972_ (gx#core-identifier-key _id4967_)))
          (let ((_eid4974_
                 (gx#make-binding-id__opt-lambda4732
                  _key4972_
                  '#f
                  _phi4969_
                  _ctx4970_)))
            (let ((_bind4976_
                   (if (##structure-instance-of?
                        _ctx4970_
                        'gx#module-context::t)
                       (##structure
                        gx#module-binding::t
                        _eid4974_
                        _key4972_
                        _phi4969_
                        _ctx4970_)
                       (if (##structure-instance-of?
                            _ctx4970_
                            'gx#top-context::t)
                           (##structure
                            gx#top-binding::t
                            _eid4974_
                            _key4972_
                            _phi4969_)
                           (if (##structure-instance-of?
                                _ctx4970_
                                'gx#local-context::t)
                               (##structure
                                gx#local-binding::t
                                _eid4974_
                                _key4972_
                                _phi4969_)
                               (##structure
                                gx#runtime-binding::t
                                _eid4974_
                                _key4972_
                                _phi4969_))))))
              (let ()
                (gx#bind-identifier!__opt-lambda3323
                 _id4967_
                 _bind4976_
                 _rebind?4968_
                 _phi4969_
                 _ctx4970_)))))))
    (begin
      (define gx#core-bind-runtime!__0
        (lambda (_id4982_)
          (let ((_rebind?4984_ '#f))
            (let ((_phi4986_ (gx#current-expander-phi)))
              (let ((_ctx4988_ (gx#current-expander-context)))
                (gx#core-bind-runtime!__opt-lambda4965
                 _id4982_
                 _rebind?4984_
                 _phi4986_
                 _ctx4988_))))))
      (define gx#core-bind-runtime!__1
        (lambda (_id4990_ _rebind?4991_)
          (let ((_phi4993_ (gx#current-expander-phi)))
            (let ((_ctx4995_ (gx#current-expander-context)))
              (gx#core-bind-runtime!__opt-lambda4965
               _id4990_
               _rebind?4991_
               _phi4993_
               _ctx4995_)))))
      (define gx#core-bind-runtime!__2
        (lambda (_id4997_ _rebind?4998_ _phi4999_)
          (let ((_ctx5001_ (gx#current-expander-context)))
            (gx#core-bind-runtime!__opt-lambda4965
             _id4997_
             _rebind?4998_
             _phi4999_
             _ctx5001_))))
      (define gx#core-bind-runtime!
        (lambda _g7725_
          (let ((_g7724_ (length _g7725_)))
            (cond ((fx= _g7724_ 1) (apply gx#core-bind-runtime!__0 _g7725_))
                  ((fx= _g7724_ 2) (apply gx#core-bind-runtime!__1 _g7725_))
                  ((fx= _g7724_ 3) (apply gx#core-bind-runtime!__2 _g7725_))
                  ((fx= _g7724_ 4)
                   (apply gx#core-bind-runtime!__opt-lambda4965 _g7725_))
                  (else (error "No clause matching arguments" _g7725_))))))))
  (begin
    (define gx#core-bind-runtime-reference!__opt-lambda4920
      (lambda (_id4922_ _eid4923_ _rebind?4924_ _phi4925_ _ctx4926_)
        (let ((_key4928_ (gx#core-identifier-key _id4922_)))
          (let ((_bind4930_
                 (if (##structure-instance-of? _ctx4926_ 'gx#module-context::t)
                     (##structure
                      gx#module-binding::t
                      _eid4923_
                      _key4928_
                      _phi4925_
                      _ctx4926_)
                     (if (##structure-instance-of?
                          _ctx4926_
                          'gx#top-context::t)
                         (##structure
                          gx#top-binding::t
                          _eid4923_
                          _key4928_
                          _phi4925_)
                         (##structure
                          gx#runtime-binding::t
                          _eid4923_
                          _key4928_
                          _phi4925_)))))
            (let ()
              (gx#bind-identifier!__opt-lambda3323
               _id4922_
               _bind4930_
               _rebind?4924_
               _phi4925_
               _ctx4926_))))))
    (begin
      (define gx#core-bind-runtime-reference!__0
        (lambda (_id4936_ _eid4937_)
          (let ((_rebind?4939_ '#f))
            (let ((_phi4941_ (gx#current-expander-phi)))
              (let ((_ctx4943_ (gx#current-expander-context)))
                (gx#core-bind-runtime-reference!__opt-lambda4920
                 _id4936_
                 _eid4937_
                 _rebind?4939_
                 _phi4941_
                 _ctx4943_))))))
      (define gx#core-bind-runtime-reference!__1
        (lambda (_id4945_ _eid4946_ _rebind?4947_)
          (let ((_phi4949_ (gx#current-expander-phi)))
            (let ((_ctx4951_ (gx#current-expander-context)))
              (gx#core-bind-runtime-reference!__opt-lambda4920
               _id4945_
               _eid4946_
               _rebind?4947_
               _phi4949_
               _ctx4951_)))))
      (define gx#core-bind-runtime-reference!__2
        (lambda (_id4953_ _eid4954_ _rebind?4955_ _phi4956_)
          (let ((_ctx4958_ (gx#current-expander-context)))
            (gx#core-bind-runtime-reference!__opt-lambda4920
             _id4953_
             _eid4954_
             _rebind?4955_
             _phi4956_
             _ctx4958_))))
      (define gx#core-bind-runtime-reference!
        (lambda _g7727_
          (let ((_g7726_ (length _g7727_)))
            (cond ((fx= _g7726_ 2)
                   (apply gx#core-bind-runtime-reference!__0 _g7727_))
                  ((fx= _g7726_ 3)
                   (apply gx#core-bind-runtime-reference!__1 _g7727_))
                  ((fx= _g7726_ 4)
                   (apply gx#core-bind-runtime-reference!__2 _g7727_))
                  ((fx= _g7726_ 5)
                   (apply gx#core-bind-runtime-reference!__opt-lambda4920
                          _g7727_))
                  (else (error "No clause matching arguments" _g7727_))))))))
  (begin
    (define gx#core-bind-extern!__opt-lambda4880
      (lambda (_id4882_ _eid4883_ _rebind?4884_ _phi4885_ _ctx4886_)
        (gx#bind-identifier!__opt-lambda3323
         _id4882_
         (##structure
          gx#extern-binding::t
          _eid4883_
          (gx#core-identifier-key _id4882_)
          _phi4885_)
         _rebind?4884_
         _phi4885_
         _ctx4886_)))
    (begin
      (define gx#core-bind-extern!__0
        (lambda (_id4891_ _eid4892_)
          (let ((_rebind?4894_ '#f))
            (let ((_phi4896_ (gx#current-expander-phi)))
              (let ((_ctx4898_ (gx#current-expander-context)))
                (gx#core-bind-extern!__opt-lambda4880
                 _id4891_
                 _eid4892_
                 _rebind?4894_
                 _phi4896_
                 _ctx4898_))))))
      (define gx#core-bind-extern!__1
        (lambda (_id4900_ _eid4901_ _rebind?4902_)
          (let ((_phi4904_ (gx#current-expander-phi)))
            (let ((_ctx4906_ (gx#current-expander-context)))
              (gx#core-bind-extern!__opt-lambda4880
               _id4900_
               _eid4901_
               _rebind?4902_
               _phi4904_
               _ctx4906_)))))
      (define gx#core-bind-extern!__2
        (lambda (_id4908_ _eid4909_ _rebind?4910_ _phi4911_)
          (let ((_ctx4913_ (gx#current-expander-context)))
            (gx#core-bind-extern!__opt-lambda4880
             _id4908_
             _eid4909_
             _rebind?4910_
             _phi4911_
             _ctx4913_))))
      (define gx#core-bind-extern!
        (lambda _g7729_
          (let ((_g7728_ (length _g7729_)))
            (cond ((fx= _g7728_ 2) (apply gx#core-bind-extern!__0 _g7729_))
                  ((fx= _g7728_ 3) (apply gx#core-bind-extern!__1 _g7729_))
                  ((fx= _g7728_ 4) (apply gx#core-bind-extern!__2 _g7729_))
                  ((fx= _g7728_ 5)
                   (apply gx#core-bind-extern!__opt-lambda4880 _g7729_))
                  (else (error "No clause matching arguments" _g7729_))))))))
  (begin
    (define gx#core-bind-syntax!__opt-lambda4834
      (lambda (_id4836_ _e4837_ _rebind?4838_ _phi4839_ _ctx4840_)
        (gx#bind-identifier!__opt-lambda3323
         _id4836_
         (let ((_key4845_ (gx#core-identifier-key _id4836_))
               (_e4846_ (if (let ((_$e4842_
                                   (##structure-instance-of?
                                    _e4837_
                                    'gx#expander::t)))
                              (if _$e4842_
                                  _$e4842_
                                  (##structure-instance-of?
                                   _e4837_
                                   'gx#expander-context::t)))
                            _e4837_
                            (##structure
                             gx#user-expander::t
                             _e4837_
                             _ctx4840_
                             _phi4839_))))
           (##structure
            gx#syntax-binding::t
            (gx#make-binding-id__opt-lambda4732
             _key4845_
             '#t
             _phi4839_
             _ctx4840_)
            _key4845_
            _phi4839_
            _e4846_))
         _rebind?4838_
         _phi4839_
         _ctx4840_)))
    (begin
      (define gx#core-bind-syntax!__0
        (lambda (_id4851_ _e4852_)
          (let ((_rebind?4854_ '#f))
            (let ((_phi4856_ (gx#current-expander-phi)))
              (let ((_ctx4858_ (gx#current-expander-context)))
                (gx#core-bind-syntax!__opt-lambda4834
                 _id4851_
                 _e4852_
                 _rebind?4854_
                 _phi4856_
                 _ctx4858_))))))
      (define gx#core-bind-syntax!__1
        (lambda (_id4860_ _e4861_ _rebind?4862_)
          (let ((_phi4864_ (gx#current-expander-phi)))
            (let ((_ctx4866_ (gx#current-expander-context)))
              (gx#core-bind-syntax!__opt-lambda4834
               _id4860_
               _e4861_
               _rebind?4862_
               _phi4864_
               _ctx4866_)))))
      (define gx#core-bind-syntax!__2
        (lambda (_id4868_ _e4869_ _rebind?4870_ _phi4871_)
          (let ((_ctx4873_ (gx#current-expander-context)))
            (gx#core-bind-syntax!__opt-lambda4834
             _id4868_
             _e4869_
             _rebind?4870_
             _phi4871_
             _ctx4873_))))
      (define gx#core-bind-syntax!
        (lambda _g7731_
          (let ((_g7730_ (length _g7731_)))
            (cond ((fx= _g7730_ 2) (apply gx#core-bind-syntax!__0 _g7731_))
                  ((fx= _g7730_ 3) (apply gx#core-bind-syntax!__1 _g7731_))
                  ((fx= _g7730_ 4) (apply gx#core-bind-syntax!__2 _g7731_))
                  ((fx= _g7730_ 5)
                   (apply gx#core-bind-syntax!__opt-lambda4834 _g7731_))
                  (else (error "No clause matching arguments" _g7731_))))))))
  (begin
    (define gx#core-bind-root-syntax!__opt-lambda4817
      (lambda (_id4819_ _e4820_ _rebind?4821_)
        (gx#core-bind-syntax!__opt-lambda4834
         _id4819_
         _e4820_
         _rebind?4821_
         '0
         (gx#core-context-root__0))))
    (begin
      (define gx#core-bind-root-syntax!__0
        (lambda (_id4826_ _e4827_)
          (let ((_rebind?4829_ '#f))
            (gx#core-bind-root-syntax!__opt-lambda4817
             _id4826_
             _e4827_
             _rebind?4829_))))
      (define gx#core-bind-root-syntax!
        (lambda _g7733_
          (let ((_g7732_ (length _g7733_)))
            (cond ((fx= _g7732_ 2)
                   (apply gx#core-bind-root-syntax!__0 _g7733_))
                  ((fx= _g7732_ 3)
                   (apply gx#core-bind-root-syntax!__opt-lambda4817 _g7733_))
                  (else (error "No clause matching arguments" _g7733_))))))))
  (begin
    (define gx#core-bind-alias!__opt-lambda4775
      (lambda (_id4777_ _alias-id4778_ _rebind?4779_ _phi4780_ _ctx4781_)
        (gx#bind-identifier!__opt-lambda3323
         _id4777_
         (let ((_key4783_ (gx#core-identifier-key _id4777_)))
           (##structure
            gx#alias-binding::t
            (gx#make-binding-id__opt-lambda4732
             _key4783_
             '#t
             _phi4780_
             _ctx4781_)
            _key4783_
            _phi4780_
            _alias-id4778_))
         _rebind?4779_
         _phi4780_
         _ctx4781_)))
    (begin
      (define gx#core-bind-alias!__0
        (lambda (_id4788_ _alias-id4789_)
          (let ((_rebind?4791_ '#f))
            (let ((_phi4793_ (gx#current-expander-phi)))
              (let ((_ctx4795_ (gx#current-expander-context)))
                (gx#core-bind-alias!__opt-lambda4775
                 _id4788_
                 _alias-id4789_
                 _rebind?4791_
                 _phi4793_
                 _ctx4795_))))))
      (define gx#core-bind-alias!__1
        (lambda (_id4797_ _alias-id4798_ _rebind?4799_)
          (let ((_phi4801_ (gx#current-expander-phi)))
            (let ((_ctx4803_ (gx#current-expander-context)))
              (gx#core-bind-alias!__opt-lambda4775
               _id4797_
               _alias-id4798_
               _rebind?4799_
               _phi4801_
               _ctx4803_)))))
      (define gx#core-bind-alias!__2
        (lambda (_id4805_ _alias-id4806_ _rebind?4807_ _phi4808_)
          (let ((_ctx4810_ (gx#current-expander-context)))
            (gx#core-bind-alias!__opt-lambda4775
             _id4805_
             _alias-id4806_
             _rebind?4807_
             _phi4808_
             _ctx4810_))))
      (define gx#core-bind-alias!
        (lambda _g7735_
          (let ((_g7734_ (length _g7735_)))
            (cond ((fx= _g7734_ 2) (apply gx#core-bind-alias!__0 _g7735_))
                  ((fx= _g7734_ 3) (apply gx#core-bind-alias!__1 _g7735_))
                  ((fx= _g7734_ 4) (apply gx#core-bind-alias!__2 _g7735_))
                  ((fx= _g7734_ 5)
                   (apply gx#core-bind-alias!__opt-lambda4775 _g7735_))
                  (else (error "No clause matching arguments" _g7735_))))))))
  (begin
    (define gx#make-binding-id__opt-lambda4732
      (lambda (_key4734_ _syntax?4735_ _phi4736_ _ctx4737_)
        (if (uninterned-symbol? _key4734_)
            (gensym 'L)
            (if (pair? _key4734_)
                (gensym (car _key4734_))
                (if (##structure-instance-of? _ctx4737_ 'gx#top-context::t)
                    (let ((_ns4739_
                           (gx#core-context-namespace__opt-lambda2860
                            _ctx4737_)))
                      (if (if (fxzero? _phi4736_) (not _syntax?4735_) '#f)
                          (if _ns4739_
                              (make-symbol _ns4739_ '"#" _key4734_)
                              _key4734_)
                          (if _syntax?4735_
                              (make-symbol
                               (let ((_$e4741_ _ns4739_))
                                 (if _$e4741_ _$e4741_ '""))
                               '"[:"
                               (number->string _phi4736_)
                               '":]#"
                               _key4734_)
                              (make-symbol
                               (let ((_$e4744_ _ns4739_))
                                 (if _$e4744_ _$e4744_ '""))
                               '"["
                               (number->string _phi4736_)
                               '"]#"
                               _key4734_))))
                    (gensym _key4734_))))))
    (begin
      (define gx#make-binding-id__0
        (lambda (_key4750_)
          (let ((_syntax?4752_ '#f))
            (let ((_phi4754_ (gx#current-expander-phi)))
              (let ((_ctx4756_ (gx#current-expander-context)))
                (gx#make-binding-id__opt-lambda4732
                 _key4750_
                 _syntax?4752_
                 _phi4754_
                 _ctx4756_))))))
      (define gx#make-binding-id__1
        (lambda (_key4758_ _syntax?4759_)
          (let ((_phi4761_ (gx#current-expander-phi)))
            (let ((_ctx4763_ (gx#current-expander-context)))
              (gx#make-binding-id__opt-lambda4732
               _key4758_
               _syntax?4759_
               _phi4761_
               _ctx4763_)))))
      (define gx#make-binding-id__2
        (lambda (_key4765_ _syntax?4766_ _phi4767_)
          (let ((_ctx4769_ (gx#current-expander-context)))
            (gx#make-binding-id__opt-lambda4732
             _key4765_
             _syntax?4766_
             _phi4767_
             _ctx4769_))))
      (define gx#make-binding-id
        (lambda _g7737_
          (let ((_g7736_ (length _g7737_)))
            (cond ((fx= _g7736_ 1) (apply gx#make-binding-id__0 _g7737_))
                  ((fx= _g7736_ 2) (apply gx#make-binding-id__1 _g7737_))
                  ((fx= _g7736_ 3) (apply gx#make-binding-id__2 _g7737_))
                  ((fx= _g7736_ 4)
                   (apply gx#make-binding-id__opt-lambda4732 _g7737_))
                  (else (error "No clause matching arguments" _g7737_)))))))))
