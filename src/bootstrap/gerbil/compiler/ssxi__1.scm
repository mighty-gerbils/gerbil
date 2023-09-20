(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx65224_)
      (let* ((_g6522865246_
              (lambda (_g6522965242_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g6522965242_)))
             (_g6522765301_
              (lambda (_g6522965250_)
                (if (gx#stx-pair? _g6522965250_)
                    (let ((_e6523265253_ (gx#syntax-e _g6522965250_)))
                      (let ((_hd6523365257_
                             (let ()
                               (declare (not safe))
                               (##car _e6523265253_)))
                            (_tl6523465260_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6523265253_))))
                        (if (gx#stx-pair? _tl6523465260_)
                            (let ((_e6523565263_ (gx#syntax-e _tl6523465260_)))
                              (let ((_hd6523665267_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6523565263_)))
                                    (_tl6523765270_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6523565263_))))
                                (if (gx#stx-pair? _tl6523765270_)
                                    (let ((_e6523865273_
                                           (gx#syntax-e _tl6523765270_)))
                                      (let ((_hd6523965277_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6523865273_)))
                                            (_tl6524065280_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6523865273_))))
                                        (if (gx#stx-null? _tl6524065280_)
                                            ((lambda (_L65283_ _L65285_)
                                               (if (gx#identifier? _L65285_)
                                                   (cons (gx#datum->syntax__0
                                                          '#f
                                                          'optimizer-declare-type!)
                                                         (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'quote)
                             (cons _L65285_ '()))
                       (cons _L65283_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g6522865246_
                                                    _g6522965250_)))
                                             _hd6523965277_
                                             _hd6523665267_)
                                            (_g6522865246_ _g6522965250_))))
                                    (_g6522865246_ _g6522965250_))))
                            (_g6522865246_ _g6522965250_))))
                    (_g6522865246_ _g6522965250_)))))
        (_g6522765301_ _$stx65224_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx65305_)
      (let* ((_g6530965338_
              (lambda (_g6531065334_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g6531065334_)))
             (_g6530865438_
              (lambda (_g6531065342_)
                (if (gx#stx-pair? _g6531065342_)
                    (let ((_e6531365345_ (gx#syntax-e _g6531065342_)))
                      (let ((_hd6531465349_
                             (let ()
                               (declare (not safe))
                               (##car _e6531365345_)))
                            (_tl6531565352_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6531365345_))))
                        (if (gx#stx-pair/null? _tl6531565352_)
                            (let ((_g69194_
                                   (gx#syntax-split-splice _tl6531565352_ '0)))
                              (begin
                                (let ((_g69195_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g69194_)
                                             (##vector-length _g69194_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g69195_ 2)))
                                      (error "Context expects 2 values"
                                             _g69195_)))
                                (let ((_target6531665355_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g69194_ 0)))
                                      (_tl6531865358_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g69194_ 1))))
                                  (if (gx#stx-null? _tl6531865358_)
                                      (letrec ((_loop6531965361_
                                                (lambda (_hd6531765365_
                                                         _type6532365368_
                                                         _symbol6532465370_)
                                                  (if (gx#stx-pair?
                                                       _hd6531765365_)
                                                      (let ((_e6532065373_
                                                             (gx#syntax-e
                                                              _hd6531765365_)))
                                                        (let ((_lp-hd6532165377_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e6532065373_)))
                      (_lp-tl6532265380_
                       (let () (declare (not safe)) (##cdr _e6532065373_))))
                  (if (gx#stx-pair? _lp-hd6532165377_)
                      (let ((_e6532765383_ (gx#syntax-e _lp-hd6532165377_)))
                        (let ((_hd6532865387_
                               (let ()
                                 (declare (not safe))
                                 (##car _e6532765383_)))
                              (_tl6532965390_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e6532765383_))))
                          (if (gx#stx-pair? _tl6532965390_)
                              (let ((_e6533065393_
                                     (gx#syntax-e _tl6532965390_)))
                                (let ((_hd6533165397_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e6533065393_)))
                                      (_tl6533265400_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e6533065393_))))
                                  (if (gx#stx-null? _tl6533265400_)
                                      (_loop6531965361_
                                       _lp-tl6532265380_
                                       (cons _hd6533165397_ _type6532365368_)
                                       (cons _hd6532865387_
                                             _symbol6532465370_))
                                      (_g6530965338_ _g6531065342_))))
                              (_g6530965338_ _g6531065342_))))
                      (_g6530965338_ _g6531065342_))))
              (let ((_type6532565403_ (reverse _type6532365368_))
                    (_symbol6532665406_ (reverse _symbol6532465370_)))
                ((lambda (_L65409_ _L65411_)
                   (cons (gx#datum->syntax__0 '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets _L65409_ _L65411_)
                           (foldr2 (lambda (_g6542665430_
                                            _g6542765433_
                                            _g6542865435_)
                                     (cons (cons (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type)
                                                 (cons _g6542765433_
                                                       (cons _g6542665430_
                                                             '())))
                                           _g6542865435_))
                                   '()
                                   _L65409_
                                   _L65411_))))
                 _type6532565403_
                 _symbol6532665406_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop6531965361_
                                         _target6531665355_
                                         '()
                                         '()))
                                      (_g6530965338_ _g6531065342_)))))
                            (_g6530965338_ _g6531065342_))))
                    (_g6530965338_ _g6531065342_)))))
        (_g6530865438_ _$stx65305_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx65443_)
      (let* ((___stx6857368574_ _$stx65443_)
             (_g6544865490_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx6857368574_))))
        (let ((___kont6857668577_
               (lambda (_L65618_ _L65620_ _L65621_ _L65622_)
                 (cons (gx#datum->syntax__0 '#f 'optimizer-declare-method!)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L65622_ '()))
                             (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                         (cons _L65621_ '()))
                                   (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                               (cons _L65620_ '()))
                                         (cons _L65618_ '())))))))
              (___kont6857868579_
               (lambda (_L65537_ _L65539_ _L65540_ _L65541_)
                 (cons _L65541_
                       (cons _L65540_
                             (cons _L65539_
                                   (cons _L65537_
                                         (cons (gx#datum->syntax__0
                                                '#f
                                                'rebind?)
                                               '()))))))))
          (let ((___match6861268613_
                 (lambda (_e6545465568_
                          _hd6545565572_
                          _tl6545665575_
                          _e6545765578_
                          _hd6545865582_
                          _tl6545965585_
                          _e6546065588_
                          _hd6546165592_
                          _tl6546265595_
                          _e6546365598_
                          _hd6546465602_
                          _tl6546565605_
                          _e6546665608_
                          _hd6546765612_
                          _tl6546865615_)
                   (let ((_L65618_ _hd6546765612_)
                         (_L65620_ _hd6546465602_)
                         (_L65621_ _hd6546165592_)
                         (_L65622_ _hd6545865582_))
                     (if (and (gx#identifier? _L65622_)
                              (gx#identifier? _L65621_)
                              (gx#identifier? _L65620_))
                         (___kont6857668577_
                          _L65618_
                          _L65620_
                          _L65621_
                          _L65622_)
                         (_g6544865490_))))))
            (if (gx#stx-pair? ___stx6857368574_)
                (let ((_e6545465568_ (gx#syntax-e ___stx6857368574_)))
                  (let ((_tl6545665575_
                         (let () (declare (not safe)) (##cdr _e6545465568_)))
                        (_hd6545565572_
                         (let () (declare (not safe)) (##car _e6545465568_))))
                    (if (gx#stx-pair? _tl6545665575_)
                        (let ((_e6545765578_ (gx#syntax-e _tl6545665575_)))
                          (let ((_tl6545965585_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e6545765578_)))
                                (_hd6545865582_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e6545765578_))))
                            (if (gx#stx-pair? _tl6545965585_)
                                (let ((_e6546065588_
                                       (gx#syntax-e _tl6545965585_)))
                                  (let ((_tl6546265595_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e6546065588_)))
                                        (_hd6546165592_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e6546065588_))))
                                    (if (gx#stx-pair? _tl6546265595_)
                                        (let ((_e6546365598_
                                               (gx#syntax-e _tl6546265595_)))
                                          (let ((_tl6546565605_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _e6546365598_)))
                                                (_hd6546465602_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _e6546365598_))))
                                            (if (gx#stx-pair? _tl6546565605_)
                                                (let ((_e6546665608_
                                                       (gx#syntax-e
                                                        _tl6546565605_)))
                                                  (let ((_tl6546865615_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e6546665608_)))
                                                        (_hd6546765612_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e6546665608_))))
                                                    (if (gx#stx-null?
                                                         _tl6546865615_)
                                                        (___match6861268613_
                                                         _e6545465568_
                                                         _hd6545565572_
                                                         _tl6545665575_
                                                         _e6545765578_
                                                         _hd6545865582_
                                                         _tl6545965585_
                                                         _e6546065588_
                                                         _hd6546165592_
                                                         _tl6546265595_
                                                         _e6546365598_
                                                         _hd6546465602_
                                                         _tl6546565605_
                                                         _e6546665608_
                                                         _hd6546765612_
                                                         _tl6546865615_)
                                                        (_g6544865490_))))
                                                (if (gx#stx-null?
                                                     _tl6546565605_)
                                                    (___kont6857868579_
                                                     _hd6546465602_
                                                     _hd6546165592_
                                                     _hd6545865582_
                                                     _hd6545565572_)
                                                    (_g6544865490_)))))
                                        (_g6544865490_))))
                                (_g6544865490_))))
                        (_g6544865490_))))
                (_g6544865490_)))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx65647_)
      (let* ((_g6565165686_
              (lambda (_g6565265682_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g6565265682_)))
             (_g6565065805_
              (lambda (_g6565265690_)
                (if (gx#stx-pair? _g6565265690_)
                    (let ((_e6565665693_ (gx#syntax-e _g6565265690_)))
                      (let ((_hd6565765697_
                             (let ()
                               (declare (not safe))
                               (##car _e6565665693_)))
                            (_tl6565865700_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6565665693_))))
                        (if (gx#stx-pair/null? _tl6565865700_)
                            (let ((_g69196_
                                   (gx#syntax-split-splice _tl6565865700_ '0)))
                              (begin
                                (let ((_g69197_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g69196_)
                                             (##vector-length _g69196_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g69197_ 2)))
                                      (error "Context expects 2 values"
                                             _g69197_)))
                                (let ((_target6565965703_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g69196_ 0)))
                                      (_tl6566165706_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g69196_ 1))))
                                  (if (gx#stx-null? _tl6566165706_)
                                      (letrec ((_loop6566265709_
                                                (lambda (_hd6566065713_
                                                         _symbol6566665716_
                                                         _method6566765718_
                                                         _type-t6566865720_)
                                                  (if (gx#stx-pair?
                                                       _hd6566065713_)
                                                      (let ((_e6566365723_
                                                             (gx#syntax-e
                                                              _hd6566065713_)))
                                                        (let ((_lp-hd6566465727_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e6566365723_)))
                      (_lp-tl6566565730_
                       (let () (declare (not safe)) (##cdr _e6566365723_))))
                  (if (gx#stx-pair? _lp-hd6566465727_)
                      (let ((_e6567265733_ (gx#syntax-e _lp-hd6566465727_)))
                        (let ((_hd6567365737_
                               (let ()
                                 (declare (not safe))
                                 (##car _e6567265733_)))
                              (_tl6567465740_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e6567265733_))))
                          (if (gx#stx-pair? _tl6567465740_)
                              (let ((_e6567565743_
                                     (gx#syntax-e _tl6567465740_)))
                                (let ((_hd6567665747_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e6567565743_)))
                                      (_tl6567765750_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e6567565743_))))
                                  (if (gx#stx-pair? _tl6567765750_)
                                      (let ((_e6567865753_
                                             (gx#syntax-e _tl6567765750_)))
                                        (let ((_hd6567965757_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e6567865753_)))
                                              (_tl6568065760_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e6567865753_))))
                                          (if (gx#stx-null? _tl6568065760_)
                                              (_loop6566265709_
                                               _lp-tl6566565730_
                                               (cons _hd6567965757_
                                                     _symbol6566665716_)
                                               (cons _hd6567665747_
                                                     _method6566765718_)
                                               (cons _hd6567365737_
                                                     _type-t6566865720_))
                                              (_g6565165686_ _g6565265690_))))
                                      (_g6565165686_ _g6565265690_))))
                              (_g6565165686_ _g6565265690_))))
                      (_g6565165686_ _g6565265690_))))
              (let ((_symbol6566965763_ (reverse _symbol6566665716_))
                    (_method6567065766_ (reverse _method6566765718_))
                    (_type-t6567165768_ (reverse _type-t6566865720_)))
                ((lambda (_L65771_ _L65773_ _L65774_)
                   (cons (gx#datum->syntax__0 '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _L65771_
                            _L65773_
                            _L65774_)
                           (foldr (lambda (_g6579065795_
                                           _g6579165798_
                                           _g6579265800_
                                           _g6579365802_)
                                    (cons (cons (gx#datum->syntax__0
                                                 '#f
                                                 'declare-method)
                                                (cons _g6579265800_
                                                      (cons _g6579165798_
                                                            (cons _g6579065795_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _g6579365802_))
                                  '()
                                  _L65771_
                                  _L65773_
                                  _L65774_))))
                 _symbol6566965763_
                 _method6567065766_
                 _type-t6567165768_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop6566265709_
                                         _target6565965703_
                                         '()
                                         '()
                                         '()))
                                      (_g6565165686_ _g6565265690_)))))
                            (_g6565165686_ _g6565265690_))))
                    (_g6565165686_ _g6565265690_)))))
        (_g6565065805_ _$stx65647_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx65810_)
      (let* ((_g6581465847_
              (lambda (_g6581565843_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g6581565843_)))
             (_g6581365961_
              (lambda (_g6581565851_)
                (if (gx#stx-pair? _g6581565851_)
                    (let ((_e6581965854_ (gx#syntax-e _g6581565851_)))
                      (let ((_hd6582065858_
                             (let ()
                               (declare (not safe))
                               (##car _e6581965854_)))
                            (_tl6582165861_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6581965854_))))
                        (if (gx#stx-pair? _tl6582165861_)
                            (let ((_e6582265864_ (gx#syntax-e _tl6582165861_)))
                              (let ((_hd6582365868_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6582265864_)))
                                    (_tl6582465871_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6582265864_))))
                                (if (gx#stx-pair/null? _tl6582465871_)
                                    (let ((_g69198_
                                           (gx#syntax-split-splice
                                            _tl6582465871_
                                            '0)))
                                      (begin
                                        (let ((_g69199_
                                               (let ()
                                                 (declare (not safe))
                                                 (if (##values? _g69198_)
                                                     (##vector-length _g69198_)
                                                     1))))
                                          (if (not (let ()
                                                     (declare (not safe))
                                                     (##fx= _g69199_ 2)))
                                              (error "Context expects 2 values"
                                                     _g69199_)))
                                        (let ((_target6582565874_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g69198_ 0)))
                                              (_tl6582765877_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref _g69198_ 1))))
                                          (if (gx#stx-null? _tl6582765877_)
                                              (letrec ((_loop6582865880_
                                                        (lambda (_hd6582665884_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol6583265887_
                         _method6583365889_)
                  (if (gx#stx-pair? _hd6582665884_)
                      (let ((_e6582965892_ (gx#syntax-e _hd6582665884_)))
                        (let ((_lp-hd6583065896_
                               (let ()
                                 (declare (not safe))
                                 (##car _e6582965892_)))
                              (_lp-tl6583165899_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e6582965892_))))
                          (if (gx#stx-pair? _lp-hd6583065896_)
                              (let ((_e6583665902_
                                     (gx#syntax-e _lp-hd6583065896_)))
                                (let ((_hd6583765906_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e6583665902_)))
                                      (_tl6583865909_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e6583665902_))))
                                  (if (gx#stx-pair? _tl6583865909_)
                                      (let ((_e6583965912_
                                             (gx#syntax-e _tl6583865909_)))
                                        (let ((_hd6584065916_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e6583965912_)))
                                              (_tl6584165919_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e6583965912_))))
                                          (if (gx#stx-null? _tl6584165919_)
                                              (_loop6582865880_
                                               _lp-tl6583165899_
                                               (cons _hd6584065916_
                                                     _symbol6583265887_)
                                               (cons _hd6583765906_
                                                     _method6583365889_))
                                              (_g6581465847_ _g6581565851_))))
                                      (_g6581465847_ _g6581565851_))))
                              (_g6581465847_ _g6581565851_))))
                      (let ((_symbol6583465922_ (reverse _symbol6583265887_))
                            (_method6583565925_ (reverse _method6583365889_)))
                        ((lambda (_L65928_ _L65930_ _L65931_)
                           (cons (gx#datum->syntax__0 '#f 'begin)
                                 (begin
                                   (gx#syntax-check-splice-targets
                                    _L65928_
                                    _L65930_)
                                   (foldr2 (lambda (_g6594965953_
                                                    _g6595065956_
                                                    _g6595165958_)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          'declare-method)
                                                         (cons _L65931_
                                                               (cons _g6595065956_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _g6594965953_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g6595165958_))
                                           '()
                                           _L65928_
                                           _L65930_))))
                         _symbol6583465922_
                         _method6583565925_
                         _hd6582365868_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop6582865880_
                                                 _target6582565874_
                                                 '()
                                                 '()))
                                              (_g6581465847_ _g6581565851_)))))
                                    (_g6581465847_ _g6581565851_))))
                            (_g6581465847_ _g6581565851_))))
                    (_g6581465847_ _g6581565851_)))))
        (_g6581365961_ _$stx65810_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx65966_)
      (let* ((_g6597065984_
              (lambda (_g6597165980_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g6597165980_)))
             (_g6596966025_
              (lambda (_g6597165988_)
                (if (gx#stx-pair? _g6597165988_)
                    (let ((_e6597365991_ (gx#syntax-e _g6597165988_)))
                      (let ((_hd6597465995_
                             (let ()
                               (declare (not safe))
                               (##car _e6597365991_)))
                            (_tl6597565998_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6597365991_))))
                        (if (gx#stx-pair? _tl6597565998_)
                            (let ((_e6597666001_ (gx#syntax-e _tl6597565998_)))
                              (let ((_hd6597766005_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6597666001_)))
                                    (_tl6597866008_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6597666001_))))
                                (if (gx#stx-null? _tl6597866008_)
                                    ((lambda (_L66011_)
                                       (cons (gx#datum->syntax__0
                                              '#f
                                              'make-!alias)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          'quote)
                                                         (cons _L66011_ '()))
                                                   '())))
                                     _hd6597766005_)
                                    (_g6597065984_ _g6597165988_))))
                            (_g6597065984_ _g6597165988_))))
                    (_g6597065984_ _g6597165988_)))))
        (_g6596966025_ _$stx65966_))))
  (define |gxc[:0:]#@struct-type|
    (lambda (_$stx66029_)
      (let* ((___stx6864168642_ _$stx66029_)
             (_g6603566101_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx6864168642_))))
        (let ((___kont6864468645_
               (lambda (_L66323_ _L66325_ _L66326_ _L66327_ _L66328_)
                 (cons (gx#datum->syntax__0 '#f '@make-struct-type)
                       (cons _L66328_
                             (cons _L66327_
                                   (cons _L66326_
                                         (cons _L66325_
                                               (cons _L66323_ '()))))))))
              (___kont6864668647_
               (lambda (_L66233_ _L66235_ _L66236_ _L66237_)
                 (cons _L66237_
                       (cons _L66236_
                             (cons _L66235_
                                   (cons _L66233_
                                         (cons '#f (cons '#f '()))))))))
              (___kont6864868649_
               (lambda (_L66158_ _L66160_ _L66161_ _L66162_ _L66163_)
                 (cons _L66163_
                       (cons (gx#datum->syntax__0 '#f 'type)
                             (cons _L66161_
                                   (cons _L66160_
                                         (cons _L66158_ (cons '#f '())))))))))
          (if (gx#stx-pair? ___stx6864168642_)
              (let ((_e6604266263_ (gx#syntax-e ___stx6864168642_)))
                (let ((_tl6604466270_
                       (let () (declare (not safe)) (##cdr _e6604266263_)))
                      (_hd6604366267_
                       (let () (declare (not safe)) (##car _e6604266263_))))
                  (if (gx#stx-pair? _tl6604466270_)
                      (let ((_e6604566273_ (gx#syntax-e _tl6604466270_)))
                        (let ((_tl6604766280_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e6604566273_)))
                              (_hd6604666277_
                               (let ()
                                 (declare (not safe))
                                 (##car _e6604566273_))))
                          (if (gx#stx-pair? _tl6604766280_)
                              (let ((_e6604866283_
                                     (gx#syntax-e _tl6604766280_)))
                                (let ((_tl6605066290_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e6604866283_)))
                                      (_hd6604966287_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e6604866283_))))
                                  (if (gx#stx-pair? _tl6605066290_)
                                      (let ((_e6605166293_
                                             (gx#syntax-e _tl6605066290_)))
                                        (let ((_tl6605366300_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e6605166293_)))
                                              (_hd6605266297_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e6605166293_))))
                                          (if (gx#stx-pair? _tl6605366300_)
                                              (let ((_e6605466303_
                                                     (gx#syntax-e
                                                      _tl6605366300_)))
                                                (let ((_tl6605666310_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _e6605466303_)))
                                                      (_hd6605566307_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _e6605466303_))))
                                                  (if (gx#stx-pair?
                                                       _tl6605666310_)
                                                      (let ((_e6605766313_
                                                             (gx#syntax-e
                                                              _tl6605666310_)))
                                                        (let ((_tl6605966320_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _e6605766313_)))
                      (_hd6605866317_
                       (let () (declare (not safe)) (##car _e6605766313_))))
                  (if (gx#stx-null? _tl6605966320_)
                      (___kont6864468645_
                       _hd6605866317_
                       _hd6605566307_
                       _hd6605266297_
                       _hd6604966287_
                       _hd6604666277_)
                      (_g6603566101_))))
              (if (gx#stx-null? _tl6605666310_)
                  (___kont6864868649_
                   _hd6605566307_
                   _hd6605266297_
                   _hd6604966287_
                   _hd6604666277_
                   _hd6604366267_)
                  (_g6603566101_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (gx#stx-null? _tl6605366300_)
                                                  (___kont6864668647_
                                                   _hd6605266297_
                                                   _hd6604966287_
                                                   _hd6604666277_
                                                   _hd6604366267_)
                                                  (_g6603566101_)))))
                                      (_g6603566101_))))
                              (_g6603566101_))))
                      (_g6603566101_))))
              (_g6603566101_))))))
  (define |gxc[:0:]#@make-struct-type|
    (lambda (_$stx66356_)
      (let* ((___stx6874968750_ _$stx66356_)
             (_g6636166414_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx6874968750_))))
        (let ((___kont6875268753_
               (lambda (_L66582_ _L66584_ _L66585_ _L66586_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-type)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L66586_ '()))
                             (cons '#f
                                   (cons _L66585_
                                         (cons '0
                                               (cons (cons (gx#datum->syntax__0
                                                            '#f
                                                            'quote)
                                                           (cons _L66584_ '()))
                                                     (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _L66582_ '()))
                   '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              (___kont6875468755_
               (lambda (_L66481_ _L66483_ _L66484_ _L66485_ _L66486_)
                 (cons (gx#datum->syntax__0 '#f 'let*)
                       (cons (cons (cons (gx#datum->syntax__0 '#f 'super-type)
                                         (cons (cons (gx#datum->syntax__0
                                                      '#f
                                                      'optimizer-resolve-type)
                                                     (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _L66485_ '()))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '()))
                                   (cons (cons (gx#datum->syntax__0
                                                '#f
                                                'xfields)
                                               (cons (cons (gx#datum->syntax__0
                                                            '#f
                                                            'and)
                                                           (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'super-type)
                         (cons (cons (gx#datum->syntax__0 '#f 'alet)
                                     (cons (cons (gx#datum->syntax__0
                                                  '#f
                                                  'xfields)
                                                 (cons (cons (gx#datum->syntax__0
                                                              '#f
                                                              '!struct-type-xfields)
                                                             (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'super-type)
                           '()))
               '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (cons (cons (gx#datum->syntax__0
                                                        '#f
                                                        'fx+)
                                                       (cons (gx#datum->syntax__0
                                                              '#f
                                                              'xfields)
                                                             (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  '!struct-type-fields)
                                 (cons (gx#datum->syntax__0 '#f 'super-type)
                                       '()))
                           '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))
                               '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))
                                         (cons (cons (gx#datum->syntax__0
                                                      '#f
                                                      'xtor)
                                                     (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'or)
                         (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                     (cons _L66483_ '()))
                               (cons (cons (gx#datum->syntax__0 '#f 'if)
                                           (cons (gx#datum->syntax__0
                                                  '#f
                                                  'super-type)
                                                 (cons (cons (gx#datum->syntax__0
                                                              '#f
                                                              '!struct-type-ctor)
                                                             (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'super-type)
                           '()))
               (cons '#!void '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                     '())))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())))
                             (cons (cons (gx#datum->syntax__0
                                          '#f
                                          'make-!struct-type)
                                         (cons (cons (gx#datum->syntax__0
                                                      '#f
                                                      'quote)
                                                     (cons _L66486_ '()))
                                               (cons (cons (gx#datum->syntax__0
                                                            '#f
                                                            'quote)
                                                           (cons _L66485_ '()))
                                                     (cons _L66484_
                                                           (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'xfields)
                         (cons (gx#datum->syntax__0 '#f 'xtor)
                               (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                           (cons _L66481_ '()))
                                     '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   '()))))))
          (if (gx#stx-pair? ___stx6874968750_)
              (let ((_e6636766518_ (gx#syntax-e ___stx6874968750_)))
                (let ((_tl6636966525_
                       (let () (declare (not safe)) (##cdr _e6636766518_)))
                      (_hd6636866522_
                       (let () (declare (not safe)) (##car _e6636766518_))))
                  (if (gx#stx-pair? _tl6636966525_)
                      (let ((_e6637066528_ (gx#syntax-e _tl6636966525_)))
                        (let ((_tl6637266535_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e6637066528_)))
                              (_hd6637166532_
                               (let ()
                                 (declare (not safe))
                                 (##car _e6637066528_))))
                          (if (gx#stx-pair? _tl6637266535_)
                              (let ((_e6637366538_
                                     (gx#syntax-e _tl6637266535_)))
                                (let ((_tl6637566545_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e6637366538_)))
                                      (_hd6637466542_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e6637366538_))))
                                  (if (gx#stx-datum? _hd6637466542_)
                                      (let ((_e6637666548_
                                             (gx#stx-e _hd6637466542_)))
                                        (if (equal? _e6637666548_ '#f)
                                            (if (gx#stx-pair? _tl6637566545_)
                                                (let ((_e6637766552_
                                                       (gx#syntax-e
                                                        _tl6637566545_)))
                                                  (let ((_tl6637966559_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e6637766552_)))
                                                        (_hd6637866556_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e6637766552_))))
                                                    (if (gx#stx-pair?
                                                         _tl6637966559_)
                                                        (let ((_e6638066562_
                                                               (gx#syntax-e
                                                                _tl6637966559_)))
                                                          (let ((_tl6638266569_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e6638066562_)))
                        (_hd6638166566_
                         (let () (declare (not safe)) (##car _e6638066562_))))
                    (if (gx#stx-pair? _tl6638266569_)
                        (let ((_e6638366572_ (gx#syntax-e _tl6638266569_)))
                          (let ((_tl6638566579_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e6638366572_)))
                                (_hd6638466576_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e6638366572_))))
                            (if (gx#stx-null? _tl6638566579_)
                                (___kont6875268753_
                                 _hd6638466576_
                                 _hd6638166566_
                                 _hd6637866556_
                                 _hd6637166532_)
                                (_g6636166414_))))
                        (_g6636166414_))))
                (_g6636166414_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g6636166414_))
                                            (if (gx#stx-pair? _tl6637566545_)
                                                (let ((_e6640066451_
                                                       (gx#syntax-e
                                                        _tl6637566545_)))
                                                  (let ((_tl6640266458_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e6640066451_)))
                                                        (_hd6640166455_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e6640066451_))))
                                                    (if (gx#stx-pair?
                                                         _tl6640266458_)
                                                        (let ((_e6640366461_
                                                               (gx#syntax-e
                                                                _tl6640266458_)))
                                                          (let ((_tl6640566468_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##cdr _e6640366461_)))
                        (_hd6640466465_
                         (let () (declare (not safe)) (##car _e6640366461_))))
                    (if (gx#stx-pair? _tl6640566468_)
                        (let ((_e6640666471_ (gx#syntax-e _tl6640566468_)))
                          (let ((_tl6640866478_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e6640666471_)))
                                (_hd6640766475_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e6640666471_))))
                            (if (gx#stx-null? _tl6640866478_)
                                (___kont6875468755_
                                 _hd6640766475_
                                 _hd6640466465_
                                 _hd6640166455_
                                 _hd6637466542_
                                 _hd6637166532_)
                                (_g6636166414_))))
                        (_g6636166414_))))
                (_g6636166414_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g6636166414_))))
                                      (if (gx#stx-pair? _tl6637566545_)
                                          (let ((_e6640066451_
                                                 (gx#syntax-e _tl6637566545_)))
                                            (let ((_tl6640266458_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _e6640066451_)))
                                                  (_hd6640166455_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _e6640066451_))))
                                              (if (gx#stx-pair? _tl6640266458_)
                                                  (let ((_e6640366461_
                                                         (gx#syntax-e
                                                          _tl6640266458_)))
                                                    (let ((_tl6640566468_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _e6640366461_)))
                                                          (_hd6640466465_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _e6640366461_))))
                                                      (if (gx#stx-pair?
                                                           _tl6640566468_)
                                                          (let ((_e6640666471_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl6640566468_)))
                    (let ((_tl6640866478_
                           (let () (declare (not safe)) (##cdr _e6640666471_)))
                          (_hd6640766475_
                           (let ()
                             (declare (not safe))
                             (##car _e6640666471_))))
                      (if (gx#stx-null? _tl6640866478_)
                          (___kont6875468755_
                           _hd6640766475_
                           _hd6640466465_
                           _hd6640166455_
                           _hd6637466542_
                           _hd6637166532_)
                          (_g6636166414_))))
                  (_g6636166414_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g6636166414_))))
                                          (_g6636166414_)))))
                              (_g6636166414_))))
                      (_g6636166414_))))
              (_g6636166414_))))))
  (define |gxc[:0:]#@struct-pred|
    (lambda (_$stx66614_)
      (let* ((_g6661866632_
              (lambda (_g6661966628_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g6661966628_)))
             (_g6661766673_
              (lambda (_g6661966636_)
                (if (gx#stx-pair? _g6661966636_)
                    (let ((_e6662166639_ (gx#syntax-e _g6661966636_)))
                      (let ((_hd6662266643_
                             (let ()
                               (declare (not safe))
                               (##car _e6662166639_)))
                            (_tl6662366646_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6662166639_))))
                        (if (gx#stx-pair? _tl6662366646_)
                            (let ((_e6662466649_ (gx#syntax-e _tl6662366646_)))
                              (let ((_hd6662566653_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6662466649_)))
                                    (_tl6662666656_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6662466649_))))
                                (if (gx#stx-null? _tl6662666656_)
                                    ((lambda (_L66659_)
                                       (cons (gx#datum->syntax__0
                                              '#f
                                              'make-!struct-pred)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          'quote)
                                                         (cons _L66659_ '()))
                                                   '())))
                                     _hd6662566653_)
                                    (_g6661866632_ _g6661966636_))))
                            (_g6661866632_ _g6661966636_))))
                    (_g6661866632_ _g6661966636_)))))
        (_g6661766673_ _$stx66614_))))
  (define |gxc[:0:]#@struct-cons|
    (lambda (_$stx66677_)
      (let* ((_g6668166695_
              (lambda (_g6668266691_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g6668266691_)))
             (_g6668066736_
              (lambda (_g6668266699_)
                (if (gx#stx-pair? _g6668266699_)
                    (let ((_e6668466702_ (gx#syntax-e _g6668266699_)))
                      (let ((_hd6668566706_
                             (let ()
                               (declare (not safe))
                               (##car _e6668466702_)))
                            (_tl6668666709_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6668466702_))))
                        (if (gx#stx-pair? _tl6668666709_)
                            (let ((_e6668766712_ (gx#syntax-e _tl6668666709_)))
                              (let ((_hd6668866716_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6668766712_)))
                                    (_tl6668966719_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6668766712_))))
                                (if (gx#stx-null? _tl6668966719_)
                                    ((lambda (_L66722_)
                                       (cons (gx#datum->syntax__0
                                              '#f
                                              'make-!struct-cons)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          'quote)
                                                         (cons _L66722_ '()))
                                                   '())))
                                     _hd6668866716_)
                                    (_g6668166695_ _g6668266699_))))
                            (_g6668166695_ _g6668266699_))))
                    (_g6668166695_ _g6668266699_)))))
        (_g6668066736_ _$stx66677_))))
  (define |gxc[:0:]#@struct-getf|
    (lambda (_$stx66740_)
      (let* ((___stx6884168842_ _$stx66740_)
             (_g6674566778_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx6884168842_))))
        (let ((___kont6884468845_
               (lambda (_L66880_ _L66882_ _L66883_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-getf)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L66883_ '()))
                             (cons _L66882_ (cons _L66880_ '()))))))
              (___kont6884668847_
               (lambda (_L66815_ _L66817_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-getf)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L66817_ '()))
                             (cons _L66815_ (cons '#f '())))))))
          (if (gx#stx-pair? ___stx6884168842_)
              (let ((_e6675066840_ (gx#syntax-e ___stx6884168842_)))
                (let ((_tl6675266847_
                       (let () (declare (not safe)) (##cdr _e6675066840_)))
                      (_hd6675166844_
                       (let () (declare (not safe)) (##car _e6675066840_))))
                  (if (gx#stx-pair? _tl6675266847_)
                      (let ((_e6675366850_ (gx#syntax-e _tl6675266847_)))
                        (let ((_tl6675566857_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e6675366850_)))
                              (_hd6675466854_
                               (let ()
                                 (declare (not safe))
                                 (##car _e6675366850_))))
                          (if (gx#stx-pair? _tl6675566857_)
                              (let ((_e6675666860_
                                     (gx#syntax-e _tl6675566857_)))
                                (let ((_tl6675866867_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e6675666860_)))
                                      (_hd6675766864_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e6675666860_))))
                                  (if (gx#stx-pair? _tl6675866867_)
                                      (let ((_e6675966870_
                                             (gx#syntax-e _tl6675866867_)))
                                        (let ((_tl6676166877_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e6675966870_)))
                                              (_hd6676066874_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e6675966870_))))
                                          (if (gx#stx-null? _tl6676166877_)
                                              (___kont6884468845_
                                               _hd6676066874_
                                               _hd6675766864_
                                               _hd6675466854_)
                                              (_g6674566778_))))
                                      (if (gx#stx-null? _tl6675866867_)
                                          (___kont6884668847_
                                           _hd6675766864_
                                           _hd6675466854_)
                                          (_g6674566778_)))))
                              (_g6674566778_))))
                      (_g6674566778_))))
              (_g6674566778_))))))
  (define |gxc[:0:]#@struct-setf|
    (lambda (_$stx66905_)
      (let* ((___stx6889768898_ _$stx66905_)
             (_g6691066943_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx6889768898_))))
        (let ((___kont6890068901_
               (lambda (_L67045_ _L67047_ _L67048_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-setf)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L67048_ '()))
                             (cons _L67047_ (cons _L67045_ '()))))))
              (___kont6890268903_
               (lambda (_L66980_ _L66982_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-setf)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L66982_ '()))
                             (cons _L66980_ (cons '#f '())))))))
          (if (gx#stx-pair? ___stx6889768898_)
              (let ((_e6691567005_ (gx#syntax-e ___stx6889768898_)))
                (let ((_tl6691767012_
                       (let () (declare (not safe)) (##cdr _e6691567005_)))
                      (_hd6691667009_
                       (let () (declare (not safe)) (##car _e6691567005_))))
                  (if (gx#stx-pair? _tl6691767012_)
                      (let ((_e6691867015_ (gx#syntax-e _tl6691767012_)))
                        (let ((_tl6692067022_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e6691867015_)))
                              (_hd6691967019_
                               (let ()
                                 (declare (not safe))
                                 (##car _e6691867015_))))
                          (if (gx#stx-pair? _tl6692067022_)
                              (let ((_e6692167025_
                                     (gx#syntax-e _tl6692067022_)))
                                (let ((_tl6692367032_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e6692167025_)))
                                      (_hd6692267029_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e6692167025_))))
                                  (if (gx#stx-pair? _tl6692367032_)
                                      (let ((_e6692467035_
                                             (gx#syntax-e _tl6692367032_)))
                                        (let ((_tl6692667042_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e6692467035_)))
                                              (_hd6692567039_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e6692467035_))))
                                          (if (gx#stx-null? _tl6692667042_)
                                              (___kont6890068901_
                                               _hd6692567039_
                                               _hd6692267029_
                                               _hd6691967019_)
                                              (_g6691066943_))))
                                      (if (gx#stx-null? _tl6692367032_)
                                          (___kont6890268903_
                                           _hd6692267029_
                                           _hd6691967019_)
                                          (_g6691066943_)))))
                              (_g6691066943_))))
                      (_g6691066943_))))
              (_g6691066943_))))))
  (define |gxc[:0:]#@class-type|
    (lambda (_$stx67070_)
      (let* ((_g6707467112_
              (lambda (_g6707567108_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g6707567108_)))
             (_g6707367237_
              (lambda (_g6707567116_)
                (if (gx#stx-pair? _g6707567116_)
                    (let ((_e6708367119_ (gx#syntax-e _g6707567116_)))
                      (let ((_hd6708467123_
                             (let ()
                               (declare (not safe))
                               (##car _e6708367119_)))
                            (_tl6708567126_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6708367119_))))
                        (if (gx#stx-pair? _tl6708567126_)
                            (let ((_e6708667129_ (gx#syntax-e _tl6708567126_)))
                              (let ((_hd6708767133_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6708667129_)))
                                    (_tl6708867136_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6708667129_))))
                                (if (gx#stx-pair? _tl6708867136_)
                                    (let ((_e6708967139_
                                           (gx#syntax-e _tl6708867136_)))
                                      (let ((_hd6709067143_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6708967139_)))
                                            (_tl6709167146_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6708967139_))))
                                        (if (gx#stx-pair? _tl6709167146_)
                                            (let ((_e6709267149_
                                                   (gx#syntax-e
                                                    _tl6709167146_)))
                                              (let ((_hd6709367153_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _e6709267149_)))
                                                    (_tl6709467156_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _e6709267149_))))
                                                (if (gx#stx-pair?
                                                     _tl6709467156_)
                                                    (let ((_e6709567159_
                                                           (gx#syntax-e
                                                            _tl6709467156_)))
                                                      (let ((_hd6709667163_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##car _e6709567159_)))
                    (_tl6709767166_
                     (let () (declare (not safe)) (##cdr _e6709567159_))))
                (if (gx#stx-pair? _tl6709767166_)
                    (let ((_e6709867169_ (gx#syntax-e _tl6709767166_)))
                      (let ((_hd6709967173_
                             (let ()
                               (declare (not safe))
                               (##car _e6709867169_)))
                            (_tl6710067176_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6709867169_))))
                        (if (gx#stx-pair? _tl6710067176_)
                            (let ((_e6710167179_ (gx#syntax-e _tl6710067176_)))
                              (let ((_hd6710267183_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6710167179_)))
                                    (_tl6710367186_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6710167179_))))
                                (if (gx#stx-pair? _tl6710367186_)
                                    (let ((_e6710467189_
                                           (gx#syntax-e _tl6710367186_)))
                                      (let ((_hd6710567193_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6710467189_)))
                                            (_tl6710667196_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6710467189_))))
                                        (if (gx#stx-null? _tl6710667196_)
                                            ((lambda (_L67199_
                                                      _L67201_
                                                      _L67202_
                                                      _L67203_
                                                      _L67204_
                                                      _L67205_
                                                      _L67206_)
                                               (cons (gx#datum->syntax__0
                                                      '#f
                                                      'make-!class-type)
                                                     (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _L67206_ '()))
                   (cons (cons (gx#datum->syntax__0 '#f 'quote)
                               (cons _L67205_ '()))
                         (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                     (cons _L67204_ '()))
                               (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                           (cons _L67203_ '()))
                                     (cons (cons (gx#datum->syntax__0
                                                  '#f
                                                  'quote)
                                                 (cons _L67202_ '()))
                                           (cons (cons (gx#datum->syntax__0
                                                        '#f
                                                        'quote)
                                                       (cons _L67201_ '()))
                                                 (cons (cons (gx#datum->syntax__0
                                                              '#f
                                                              'quote)
                                                             (cons _L67199_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd6710567193_
                                             _hd6710267183_
                                             _hd6709967173_
                                             _hd6709667163_
                                             _hd6709367153_
                                             _hd6709067143_
                                             _hd6708767133_)
                                            (_g6707467112_ _g6707567116_))))
                                    (_g6707467112_ _g6707567116_))))
                            (_g6707467112_ _g6707567116_))))
                    (_g6707467112_ _g6707567116_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g6707467112_
                                                     _g6707567116_))))
                                            (_g6707467112_ _g6707567116_))))
                                    (_g6707467112_ _g6707567116_))))
                            (_g6707467112_ _g6707567116_))))
                    (_g6707467112_ _g6707567116_)))))
        (_g6707367237_ _$stx67070_))))
  (define |gxc[:0:]#@class-pred|
    (lambda (_$stx67241_)
      (let* ((_g6724567259_
              (lambda (_g6724667255_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g6724667255_)))
             (_g6724467300_
              (lambda (_g6724667263_)
                (if (gx#stx-pair? _g6724667263_)
                    (let ((_e6724867266_ (gx#syntax-e _g6724667263_)))
                      (let ((_hd6724967270_
                             (let ()
                               (declare (not safe))
                               (##car _e6724867266_)))
                            (_tl6725067273_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6724867266_))))
                        (if (gx#stx-pair? _tl6725067273_)
                            (let ((_e6725167276_ (gx#syntax-e _tl6725067273_)))
                              (let ((_hd6725267280_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6725167276_)))
                                    (_tl6725367283_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6725167276_))))
                                (if (gx#stx-null? _tl6725367283_)
                                    ((lambda (_L67286_)
                                       (cons (gx#datum->syntax__0
                                              '#f
                                              'make-!class-pred)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          'quote)
                                                         (cons _L67286_ '()))
                                                   '())))
                                     _hd6725267280_)
                                    (_g6724567259_ _g6724667263_))))
                            (_g6724567259_ _g6724667263_))))
                    (_g6724567259_ _g6724667263_)))))
        (_g6724467300_ _$stx67241_))))
  (define |gxc[:0:]#@class-cons|
    (lambda (_$stx67304_)
      (let* ((_g6730867322_
              (lambda (_g6730967318_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g6730967318_)))
             (_g6730767363_
              (lambda (_g6730967326_)
                (if (gx#stx-pair? _g6730967326_)
                    (let ((_e6731167329_ (gx#syntax-e _g6730967326_)))
                      (let ((_hd6731267333_
                             (let ()
                               (declare (not safe))
                               (##car _e6731167329_)))
                            (_tl6731367336_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6731167329_))))
                        (if (gx#stx-pair? _tl6731367336_)
                            (let ((_e6731467339_ (gx#syntax-e _tl6731367336_)))
                              (let ((_hd6731567343_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6731467339_)))
                                    (_tl6731667346_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6731467339_))))
                                (if (gx#stx-null? _tl6731667346_)
                                    ((lambda (_L67349_)
                                       (cons (gx#datum->syntax__0
                                              '#f
                                              'make-!class-cons)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          'quote)
                                                         (cons _L67349_ '()))
                                                   '())))
                                     _hd6731567343_)
                                    (_g6730867322_ _g6730967326_))))
                            (_g6730867322_ _g6730967326_))))
                    (_g6730867322_ _g6730967326_)))))
        (_g6730767363_ _$stx67304_))))
  (define |gxc[:0:]#@class-getf|
    (lambda (_$stx67367_)
      (let* ((___stx6895368954_ _$stx67367_)
             (_g6737267405_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx6895368954_))))
        (let ((___kont6895668957_
               (lambda (_L67507_ _L67509_ _L67510_)
                 (cons (gx#datum->syntax__0 '#f 'make-!class-getf)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L67510_ '()))
                             (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                         (cons _L67509_ '()))
                                   (cons _L67507_ '()))))))
              (___kont6895868959_
               (lambda (_L67442_ _L67444_)
                 (cons (gx#datum->syntax__0 '#f 'make-!class-getf)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L67444_ '()))
                             (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                         (cons _L67442_ '()))
                                   (cons '#f '())))))))
          (if (gx#stx-pair? ___stx6895368954_)
              (let ((_e6737767467_ (gx#syntax-e ___stx6895368954_)))
                (let ((_tl6737967474_
                       (let () (declare (not safe)) (##cdr _e6737767467_)))
                      (_hd6737867471_
                       (let () (declare (not safe)) (##car _e6737767467_))))
                  (if (gx#stx-pair? _tl6737967474_)
                      (let ((_e6738067477_ (gx#syntax-e _tl6737967474_)))
                        (let ((_tl6738267484_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e6738067477_)))
                              (_hd6738167481_
                               (let ()
                                 (declare (not safe))
                                 (##car _e6738067477_))))
                          (if (gx#stx-pair? _tl6738267484_)
                              (let ((_e6738367487_
                                     (gx#syntax-e _tl6738267484_)))
                                (let ((_tl6738567494_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e6738367487_)))
                                      (_hd6738467491_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e6738367487_))))
                                  (if (gx#stx-pair? _tl6738567494_)
                                      (let ((_e6738667497_
                                             (gx#syntax-e _tl6738567494_)))
                                        (let ((_tl6738867504_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e6738667497_)))
                                              (_hd6738767501_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e6738667497_))))
                                          (if (gx#stx-null? _tl6738867504_)
                                              (___kont6895668957_
                                               _hd6738767501_
                                               _hd6738467491_
                                               _hd6738167481_)
                                              (_g6737267405_))))
                                      (if (gx#stx-null? _tl6738567494_)
                                          (___kont6895868959_
                                           _hd6738467491_
                                           _hd6738167481_)
                                          (_g6737267405_)))))
                              (_g6737267405_))))
                      (_g6737267405_))))
              (_g6737267405_))))))
  (define |gxc[:0:]#@class-setf|
    (lambda (_$stx67532_)
      (let* ((___stx6900969010_ _$stx67532_)
             (_g6753767570_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx6900969010_))))
        (let ((___kont6901269013_
               (lambda (_L67672_ _L67674_ _L67675_)
                 (cons (gx#datum->syntax__0 '#f 'make-!class-setf)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L67675_ '()))
                             (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                         (cons _L67674_ '()))
                                   (cons _L67672_ '()))))))
              (___kont6901469015_
               (lambda (_L67607_ _L67609_)
                 (cons (gx#datum->syntax__0 '#f 'make-!class-setf)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L67609_ '()))
                             (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                         (cons _L67607_ '()))
                                   (cons '#f '())))))))
          (if (gx#stx-pair? ___stx6900969010_)
              (let ((_e6754267632_ (gx#syntax-e ___stx6900969010_)))
                (let ((_tl6754467639_
                       (let () (declare (not safe)) (##cdr _e6754267632_)))
                      (_hd6754367636_
                       (let () (declare (not safe)) (##car _e6754267632_))))
                  (if (gx#stx-pair? _tl6754467639_)
                      (let ((_e6754567642_ (gx#syntax-e _tl6754467639_)))
                        (let ((_tl6754767649_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e6754567642_)))
                              (_hd6754667646_
                               (let ()
                                 (declare (not safe))
                                 (##car _e6754567642_))))
                          (if (gx#stx-pair? _tl6754767649_)
                              (let ((_e6754867652_
                                     (gx#syntax-e _tl6754767649_)))
                                (let ((_tl6755067659_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e6754867652_)))
                                      (_hd6754967656_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e6754867652_))))
                                  (if (gx#stx-pair? _tl6755067659_)
                                      (let ((_e6755167662_
                                             (gx#syntax-e _tl6755067659_)))
                                        (let ((_tl6755367669_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _e6755167662_)))
                                              (_hd6755267666_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _e6755167662_))))
                                          (if (gx#stx-null? _tl6755367669_)
                                              (___kont6901269013_
                                               _hd6755267666_
                                               _hd6754967656_
                                               _hd6754667646_)
                                              (_g6753767570_))))
                                      (if (gx#stx-null? _tl6755067659_)
                                          (___kont6901469015_
                                           _hd6754967656_
                                           _hd6754667646_)
                                          (_g6753767570_)))))
                              (_g6753767570_))))
                      (_g6753767570_))))
              (_g6753767570_))))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx67697_)
      (let* ((___stx6906569066_ _$stx67697_)
             (_g6770367744_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx6906569066_))))
        (let ((___kont6906869069_
               (lambda (_L67892_ _L67894_)
                 (cons (gx#datum->syntax__0 '#f 'make-!lambda)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons (gx#datum->syntax__0 '#f 'lambda)
                                         '()))
                             (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                         (cons _L67894_ '()))
                                   (cons '#f
                                         (cons _L67892_
                                               (cons (cons (gx#datum->syntax__0
                                                            '#f
                                                            'quote)
                                                           (cons _L67892_ '()))
                                                     '()))))))))
              (___kont6907069071_
               (lambda (_L67824_ _L67826_)
                 (cons (gx#datum->syntax__0 '#f 'make-!lambda)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons (gx#datum->syntax__0 '#f 'lambda)
                                         '()))
                             (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                         (cons _L67826_ '()))
                                   (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                               (cons _L67824_ '()))
                                         '()))))))
              (___kont6907269073_
               (lambda (_L67771_ _L67773_)
                 (cons _L67773_ (cons _L67771_ (cons '#f '()))))))
          (if (gx#stx-pair? ___stx6906569066_)
              (let ((_e6770767848_ (gx#syntax-e ___stx6906569066_)))
                (let ((_tl6770967855_
                       (let () (declare (not safe)) (##cdr _e6770767848_)))
                      (_hd6770867852_
                       (let () (declare (not safe)) (##car _e6770767848_))))
                  (if (gx#stx-pair? _tl6770967855_)
                      (let ((_e6771067858_ (gx#syntax-e _tl6770967855_)))
                        (let ((_tl6771267865_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e6771067858_)))
                              (_hd6771167862_
                               (let ()
                                 (declare (not safe))
                                 (##car _e6771067858_))))
                          (if (gx#stx-pair? _tl6771267865_)
                              (let ((_e6771367868_
                                     (gx#syntax-e _tl6771267865_)))
                                (let ((_tl6771567875_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e6771367868_)))
                                      (_hd6771467872_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e6771367868_))))
                                  (if (gx#stx-datum? _hd6771467872_)
                                      (let ((_e6771667878_
                                             (gx#stx-e _hd6771467872_)))
                                        (if (equal? _e6771667878_ 'inline:)
                                            (if (gx#stx-pair? _tl6771567875_)
                                                (let ((_e6771767882_
                                                       (gx#syntax-e
                                                        _tl6771567875_)))
                                                  (let ((_tl6771967889_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _e6771767882_)))
                                                        (_hd6771867886_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _e6771767882_))))
                                                    (if (gx#stx-null?
                                                         _tl6771967889_)
                                                        (___kont6906869069_
                                                         _hd6771867886_
                                                         _hd6771167862_)
                                                        (_g6770367744_))))
                                                (if (gx#stx-null?
                                                     _tl6771567875_)
                                                    (___kont6907069071_
                                                     _hd6771467872_
                                                     _hd6771167862_)
                                                    (_g6770367744_)))
                                            (if (gx#stx-null? _tl6771567875_)
                                                (___kont6907069071_
                                                 _hd6771467872_
                                                 _hd6771167862_)
                                                (_g6770367744_))))
                                      (if (gx#stx-null? _tl6771567875_)
                                          (___kont6907069071_
                                           _hd6771467872_
                                           _hd6771167862_)
                                          (_g6770367744_)))))
                              (if (gx#stx-null? _tl6771267865_)
                                  (___kont6907269073_
                                   _hd6771167862_
                                   _hd6770867852_)
                                  (_g6770367744_)))))
                      (_g6770367744_))))
              (_g6770367744_))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx67916_)
      (let* ((_g6792067949_
              (lambda (_g6792167945_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g6792167945_)))
             (_g6791968049_
              (lambda (_g6792167953_)
                (if (gx#stx-pair? _g6792167953_)
                    (let ((_e6792467956_ (gx#syntax-e _g6792167953_)))
                      (let ((_hd6792567960_
                             (let ()
                               (declare (not safe))
                               (##car _e6792467956_)))
                            (_tl6792667963_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6792467956_))))
                        (if (gx#stx-pair/null? _tl6792667963_)
                            (let ((_g69200_
                                   (gx#syntax-split-splice _tl6792667963_ '0)))
                              (begin
                                (let ((_g69201_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g69200_)
                                             (##vector-length _g69200_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g69201_ 2)))
                                      (error "Context expects 2 values"
                                             _g69201_)))
                                (let ((_target6792767966_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g69200_ 0)))
                                      (_tl6792967969_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g69200_ 1))))
                                  (if (gx#stx-null? _tl6792967969_)
                                      (letrec ((_loop6793067972_
                                                (lambda (_hd6792867976_
                                                         _dispatch6793467979_
                                                         _arity6793567981_)
                                                  (if (gx#stx-pair?
                                                       _hd6792867976_)
                                                      (let ((_e6793167984_
                                                             (gx#syntax-e
                                                              _hd6792867976_)))
                                                        (let ((_lp-hd6793267988_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e6793167984_)))
                      (_lp-tl6793367991_
                       (let () (declare (not safe)) (##cdr _e6793167984_))))
                  (if (gx#stx-pair? _lp-hd6793267988_)
                      (let ((_e6793867994_ (gx#syntax-e _lp-hd6793267988_)))
                        (let ((_hd6793967998_
                               (let ()
                                 (declare (not safe))
                                 (##car _e6793867994_)))
                              (_tl6794068001_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e6793867994_))))
                          (if (gx#stx-pair? _tl6794068001_)
                              (let ((_e6794168004_
                                     (gx#syntax-e _tl6794068001_)))
                                (let ((_hd6794268008_
                                       (let ()
                                         (declare (not safe))
                                         (##car _e6794168004_)))
                                      (_tl6794368011_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _e6794168004_))))
                                  (if (gx#stx-null? _tl6794368011_)
                                      (_loop6793067972_
                                       _lp-tl6793367991_
                                       (cons _hd6794268008_
                                             _dispatch6793467979_)
                                       (cons _hd6793967998_ _arity6793567981_))
                                      (_g6792067949_ _g6792167953_))))
                              (_g6792067949_ _g6792167953_))))
                      (_g6792067949_ _g6792167953_))))
              (let ((_dispatch6793668014_ (reverse _dispatch6793467979_))
                    (_arity6793768017_ (reverse _arity6793567981_)))
                ((lambda (_L68020_ _L68022_)
                   (cons (gx#datum->syntax__0 '#f 'make-!case-lambda)
                         (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                     (cons (gx#datum->syntax__0
                                            '#f
                                            'case-lambda)
                                           '()))
                               (cons (cons (gx#datum->syntax__0 '#f '@list)
                                           (begin
                                             (gx#syntax-check-splice-targets
                                              _L68020_
                                              _L68022_)
                                             (foldr2 (lambda (_g6803768041_
                                                              _g6803868044_
                                                              _g6803968046_)
                                                       (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '@lambda)
                           (cons _g6803868044_ (cons _g6803768041_ '())))
                     _g6803968046_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()
                                                     _L68020_
                                                     _L68022_)))
                                     '()))))
                 _dispatch6793668014_
                 _arity6793768017_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop6793067972_
                                         _target6792767966_
                                         '()
                                         '()))
                                      (_g6792067949_ _g6792167953_)))))
                            (_g6792067949_ _g6792167953_))))
                    (_g6792067949_ _g6792167953_)))))
        (_g6791968049_ _$stx67916_))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx68054_)
      (let* ((_g6805868076_
              (lambda (_g6805968072_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g6805968072_)))
             (_g6805768131_
              (lambda (_g6805968080_)
                (if (gx#stx-pair? _g6805968080_)
                    (let ((_e6806268083_ (gx#syntax-e _g6805968080_)))
                      (let ((_hd6806368087_
                             (let ()
                               (declare (not safe))
                               (##car _e6806268083_)))
                            (_tl6806468090_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6806268083_))))
                        (if (gx#stx-pair? _tl6806468090_)
                            (let ((_e6806568093_ (gx#syntax-e _tl6806468090_)))
                              (let ((_hd6806668097_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6806568093_)))
                                    (_tl6806768100_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6806568093_))))
                                (if (gx#stx-pair? _tl6806768100_)
                                    (let ((_e6806868103_
                                           (gx#syntax-e _tl6806768100_)))
                                      (let ((_hd6806968107_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6806868103_)))
                                            (_tl6807068110_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6806868103_))))
                                        (if (gx#stx-null? _tl6807068110_)
                                            ((lambda (_L68113_ _L68115_)
                                               (cons (gx#datum->syntax__0
                                                      '#f
                                                      'make-!kw-lambda)
                                                     (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons (gx#datum->syntax__0 '#f 'kw-lambda) '()))
                   (cons (cons (gx#datum->syntax__0 '#f 'quote)
                               (cons _L68115_ '()))
                         (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                     (cons _L68113_ '()))
                               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd6806968107_
                                             _hd6806668097_)
                                            (_g6805868076_ _g6805968080_))))
                                    (_g6805868076_ _g6805968080_))))
                            (_g6805868076_ _g6805968080_))))
                    (_g6805868076_ _g6805968080_)))))
        (_g6805768131_ _$stx68054_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx68135_)
      (let* ((_g6813968157_
              (lambda (_g6814068153_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g6814068153_)))
             (_g6813868212_
              (lambda (_g6814068161_)
                (if (gx#stx-pair? _g6814068161_)
                    (let ((_e6814368164_ (gx#syntax-e _g6814068161_)))
                      (let ((_hd6814468168_
                             (let ()
                               (declare (not safe))
                               (##car _e6814368164_)))
                            (_tl6814568171_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6814368164_))))
                        (if (gx#stx-pair? _tl6814568171_)
                            (let ((_e6814668174_ (gx#syntax-e _tl6814568171_)))
                              (let ((_hd6814768178_
                                     (let ()
                                       (declare (not safe))
                                       (##car _e6814668174_)))
                                    (_tl6814868181_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _e6814668174_))))
                                (if (gx#stx-pair? _tl6814868181_)
                                    (let ((_e6814968184_
                                           (gx#syntax-e _tl6814868181_)))
                                      (let ((_hd6815068188_
                                             (let ()
                                               (declare (not safe))
                                               (##car _e6814968184_)))
                                            (_tl6815168191_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _e6814968184_))))
                                        (if (gx#stx-null? _tl6815168191_)
                                            ((lambda (_L68194_ _L68196_)
                                               (cons (gx#datum->syntax__0
                                                      '#f
                                                      'make-!kw-lambda-primary)
                                                     (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons (gx#datum->syntax__0 '#f 'kw-lambda-dispatch)
                               '()))
                   (cons (cons (gx#datum->syntax__0 '#f 'quote)
                               (cons _L68196_ '()))
                         (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                     (cons _L68194_ '()))
                               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd6815068188_
                                             _hd6814768178_)
                                            (_g6813968157_ _g6814068161_))))
                                    (_g6813968157_ _g6814068161_))))
                            (_g6813968157_ _g6814068161_))))
                    (_g6813968157_ _g6814068161_)))))
        (_g6813868212_ _$stx68135_))))
  (define |gxc[:0:]#declare-primitive|
    (lambda (_$stx68216_)
      (let* ((___stx6914369144_ _$stx68216_)
             (_g6822168256_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx6914369144_))))
        (let ((___kont6914669147_
               (lambda (_L68378_ _L68380_)
                 (cons (gx#datum->syntax__0 '#f 'declare-type)
                       (cons _L68380_
                             (cons (cons (gx#datum->syntax__0 '#f '@lambda)
                                         (cons _L68378_ '()))
                                   '())))))
              (___kont6914869149_
               (lambda (_L68313_ _L68315_)
                 (cons (gx#datum->syntax__0 '#f 'declare-type)
                       (cons _L68315_
                             (cons (cons (gx#datum->syntax__0
                                          '#f
                                          '@case-lambda)
                                         (foldr1 (lambda (_g6833268335_
                                                          _g6833368338_)
                                                   (cons (cons _g6833268335_
                                                               (cons '#f '()))
                                                         _g6833368338_))
                                                 '()
                                                 _L68313_))
                                   '()))))))
          (let ((___match6919269193_
                 (lambda (_e6823668263_
                          _hd6823768267_
                          _tl6823868270_
                          _e6823968273_
                          _hd6824068277_
                          _tl6824168280_
                          ___splice6915069151_
                          _target6824268283_
                          _tl6824468286_)
                   (letrec ((_loop6824568289_
                             (lambda (_hd6824368293_ _arity6824968296_)
                               (if (gx#stx-pair? _hd6824368293_)
                                   (let ((_e6824668299_
                                          (gx#syntax-e _hd6824368293_)))
                                     (let ((_lp-tl6824868306_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _e6824668299_)))
                                           (_lp-hd6824768303_
                                            (let ()
                                              (declare (not safe))
                                              (##car _e6824668299_))))
                                       (_loop6824568289_
                                        _lp-tl6824868306_
                                        (cons _lp-hd6824768303_
                                              _arity6824968296_))))
                                   (let ((_arity6825068309_
                                          (reverse _arity6824968296_)))
                                     (___kont6914869149_
                                      _arity6825068309_
                                      _hd6824068277_))))))
                     (_loop6824568289_ _target6824268283_ '())))))
            (if (gx#stx-pair? ___stx6914369144_)
                (let ((_e6822568348_ (gx#syntax-e ___stx6914369144_)))
                  (let ((_tl6822768355_
                         (let () (declare (not safe)) (##cdr _e6822568348_)))
                        (_hd6822668352_
                         (let () (declare (not safe)) (##car _e6822568348_))))
                    (if (gx#stx-pair? _tl6822768355_)
                        (let ((_e6822868358_ (gx#syntax-e _tl6822768355_)))
                          (let ((_tl6823068365_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _e6822868358_)))
                                (_hd6822968362_
                                 (let ()
                                   (declare (not safe))
                                   (##car _e6822868358_))))
                            (if (gx#stx-pair? _tl6823068365_)
                                (let ((_e6823168368_
                                       (gx#syntax-e _tl6823068365_)))
                                  (let ((_tl6823368375_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _e6823168368_)))
                                        (_hd6823268372_
                                         (let ()
                                           (declare (not safe))
                                           (##car _e6823168368_))))
                                    (if (gx#stx-null? _tl6823368375_)
                                        (___kont6914669147_
                                         _hd6823268372_
                                         _hd6822968362_)
                                        (if (gx#stx-pair/null? _tl6823068365_)
                                            (let ((___splice6915069151_
                                                   (gx#syntax-split-splice
                                                    _tl6823068365_
                                                    '0)))
                                              (let ((_tl6824468286_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice6915069151_
                                                        '1)))
                                                    (_target6824268283_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##vector-ref
                                                        ___splice6915069151_
                                                        '0))))
                                                (if (gx#stx-null?
                                                     _tl6824468286_)
                                                    (___match6919269193_
                                                     _e6822568348_
                                                     _hd6822668352_
                                                     _tl6822768355_
                                                     _e6822868358_
                                                     _hd6822968362_
                                                     _tl6823068365_
                                                     ___splice6915069151_
                                                     _target6824268283_
                                                     _tl6824468286_)
                                                    (_g6822168256_))))
                                            (_g6822168256_)))))
                                (if (gx#stx-pair/null? _tl6823068365_)
                                    (let ((___splice6915069151_
                                           (gx#syntax-split-splice
                                            _tl6823068365_
                                            '0)))
                                      (let ((_tl6824468286_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice6915069151_
                                                '1)))
                                            (_target6824268283_
                                             (let ()
                                               (declare (not safe))
                                               (##vector-ref
                                                ___splice6915069151_
                                                '0))))
                                        (if (gx#stx-null? _tl6824468286_)
                                            (___match6919269193_
                                             _e6822568348_
                                             _hd6822668352_
                                             _tl6822768355_
                                             _e6822868358_
                                             _hd6822968362_
                                             _tl6823068365_
                                             ___splice6915069151_
                                             _target6824268283_
                                             _tl6824468286_)
                                            (_g6822168256_))))
                                    (_g6822168256_)))))
                        (_g6822168256_))))
                (_g6822168256_)))))))
  (define |gxc[:0:]#declare-primitive*|
    (lambda (_$stx68400_)
      (let* ((_g6840468439_
              (lambda (_g6840568435_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g6840568435_)))
             (_g6840368567_
              (lambda (_g6840568443_)
                (if (gx#stx-pair? _g6840568443_)
                    (let ((_e6840868446_ (gx#syntax-e _g6840568443_)))
                      (let ((_hd6840968450_
                             (let ()
                               (declare (not safe))
                               (##car _e6840868446_)))
                            (_tl6841068453_
                             (let ()
                               (declare (not safe))
                               (##cdr _e6840868446_))))
                        (if (gx#stx-pair/null? _tl6841068453_)
                            (let ((_g69202_
                                   (gx#syntax-split-splice _tl6841068453_ '0)))
                              (begin
                                (let ((_g69203_
                                       (let ()
                                         (declare (not safe))
                                         (if (##values? _g69202_)
                                             (##vector-length _g69202_)
                                             1))))
                                  (if (not (let ()
                                             (declare (not safe))
                                             (##fx= _g69203_ 2)))
                                      (error "Context expects 2 values"
                                             _g69203_)))
                                (let ((_target6841168456_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g69202_ 0)))
                                      (_tl6841368459_
                                       (let ()
                                         (declare (not safe))
                                         (##vector-ref _g69202_ 1))))
                                  (if (gx#stx-null? _tl6841368459_)
                                      (letrec ((_loop6841468462_
                                                (lambda (_hd6841268466_
                                                         _arity6841868469_
                                                         _prim6841968471_)
                                                  (if (gx#stx-pair?
                                                       _hd6841268466_)
                                                      (let ((_e6841568474_
                                                             (gx#syntax-e
                                                              _hd6841268466_)))
                                                        (let ((_lp-hd6841668478_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##car _e6841568474_)))
                      (_lp-tl6841768481_
                       (let () (declare (not safe)) (##cdr _e6841568474_))))
                  (if (gx#stx-pair? _lp-hd6841668478_)
                      (let ((_e6842268484_ (gx#syntax-e _lp-hd6841668478_)))
                        (let ((_hd6842368488_
                               (let ()
                                 (declare (not safe))
                                 (##car _e6842268484_)))
                              (_tl6842468491_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _e6842268484_))))
                          (if (gx#stx-pair/null? _tl6842468491_)
                              (let ((_g69204_
                                     (gx#syntax-split-splice
                                      _tl6842468491_
                                      '0)))
                                (begin
                                  (let ((_g69205_
                                         (let ()
                                           (declare (not safe))
                                           (if (##values? _g69204_)
                                               (##vector-length _g69204_)
                                               1))))
                                    (if (not (let ()
                                               (declare (not safe))
                                               (##fx= _g69205_ 2)))
                                        (error "Context expects 2 values"
                                               _g69205_)))
                                  (let ((_target6842568494_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g69204_ 0)))
                                        (_tl6842768497_
                                         (let ()
                                           (declare (not safe))
                                           (##vector-ref _g69204_ 1))))
                                    (if (gx#stx-null? _tl6842768497_)
                                        (letrec ((_loop6842868500_
                                                  (lambda (_hd6842668504_
                                                           _arity6843268507_)
                                                    (if (gx#stx-pair?
                                                         _hd6842668504_)
                                                        (let ((_e6842968510_
                                                               (gx#syntax-e
                                                                _hd6842668504_)))
                                                          (let ((_lp-hd6843068514_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let () (declare (not safe)) (##car _e6842968510_)))
                        (_lp-tl6843168517_
                         (let () (declare (not safe)) (##cdr _e6842968510_))))
                    (_loop6842868500_
                     _lp-tl6843168517_
                     (cons _lp-hd6843068514_ _arity6843268507_))))
                (let ((_arity6843368520_ (reverse _arity6843268507_)))
                  (_loop6841468462_
                   _lp-tl6841768481_
                   (cons _arity6843368520_ _arity6841868469_)
                   (cons _hd6842368488_ _prim6841968471_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop6842868500_
                                           _target6842568494_
                                           '()))
                                        (_g6840468439_ _g6840568443_)))))
                              (_g6840468439_ _g6840568443_))))
                      (_g6840468439_ _g6840568443_))))
              (let ((_arity6842068524_ (reverse _arity6841868469_))
                    (_prim6842168527_ (reverse _prim6841968471_)))
                ((lambda (_L68530_ _L68532_)
                   (cons (gx#datum->syntax__0 '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets _L68530_ _L68532_)
                           (foldr2 (lambda (_g6854768553_
                                            _g6854868556_
                                            _g6854968558_)
                                     (cons (cons (gx#datum->syntax__0
                                                  '#f
                                                  'declare-primitive)
                                                 (cons _g6854868556_
                                                       (foldr1 (lambda (_g6855068561_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g6855168564_)
                         (cons _g6855068561_ _g6855168564_))
                       '()
                       _g6854768553_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _g6854968558_))
                                   '()
                                   _L68530_
                                   _L68532_))))
                 _arity6842068524_
                 _prim6842168527_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop6841468462_
                                         _target6841168456_
                                         '()
                                         '()))
                                      (_g6840468439_ _g6840568443_)))))
                            (_g6840468439_ _g6840568443_))))
                    (_g6840468439_ _g6840568443_)))))
        (_g6840368567_ _$stx68400_)))))
