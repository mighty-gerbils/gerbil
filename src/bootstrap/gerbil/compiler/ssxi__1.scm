(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx50297_)
      (let* ((_g5030150319_
              (lambda (_g5030250315_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5030250315_)))
             (_g5030050374_
              (lambda (_g5030250323_)
                (if (gx#stx-pair? _g5030250323_)
                    (let ((_e5030550326_ (gx#syntax-e _g5030250323_)))
                      (let ((_hd5030650330_ (##car _e5030550326_))
                            (_tl5030750333_ (##cdr _e5030550326_)))
                        (if (gx#stx-pair? _tl5030750333_)
                            (let ((_e5030850336_ (gx#syntax-e _tl5030750333_)))
                              (let ((_hd5030950340_ (##car _e5030850336_))
                                    (_tl5031050343_ (##cdr _e5030850336_)))
                                (if (gx#stx-pair? _tl5031050343_)
                                    (let ((_e5031150346_
                                           (gx#syntax-e _tl5031050343_)))
                                      (let ((_hd5031250350_
                                             (##car _e5031150346_))
                                            (_tl5031350353_
                                             (##cdr _e5031150346_)))
                                        (if (gx#stx-null? _tl5031350353_)
                                            ((lambda (_L50356_ _L50358_)
                                               (if (gx#identifier? _L50358_)
                                                   (cons (gx#datum->syntax__0
                                                          '#f
                                                          'optimizer-declare-type!)
                                                         (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'quote)
                             (cons _L50358_ '()))
                       (cons _L50356_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g5030150319_
                                                    _g5030250323_)))
                                             _hd5031250350_
                                             _hd5030950340_)
                                            (_g5030150319_ _g5030250323_))))
                                    (_g5030150319_ _g5030250323_))))
                            (_g5030150319_ _g5030250323_))))
                    (_g5030150319_ _g5030250323_)))))
        (_g5030050374_ _$stx50297_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx50378_)
      (let* ((_g5038250411_
              (lambda (_g5038350407_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5038350407_)))
             (_g5038150511_
              (lambda (_g5038350415_)
                (if (gx#stx-pair? _g5038350415_)
                    (let ((_e5038650418_ (gx#syntax-e _g5038350415_)))
                      (let ((_hd5038750422_ (##car _e5038650418_))
                            (_tl5038850425_ (##cdr _e5038650418_)))
                        (if (gx#stx-pair/null? _tl5038850425_)
                            (let ((_g53528_
                                   (gx#syntax-split-splice _tl5038850425_ '0)))
                              (begin
                                (let ((_g53529_
                                       (if (##values? _g53528_)
                                           (##vector-length _g53528_)
                                           1)))
                                  (if (not (##fx= _g53529_ 2))
                                      (error "Context expects 2 values"
                                             _g53529_)))
                                (let ((_target5038950428_
                                       (##vector-ref _g53528_ 0))
                                      (_tl5039150431_
                                       (##vector-ref _g53528_ 1)))
                                  (if (gx#stx-null? _tl5039150431_)
                                      (letrec ((_loop5039250434_
                                                (lambda (_hd5039050438_
                                                         _type5039650441_
                                                         _symbol5039750443_)
                                                  (if (gx#stx-pair?
                                                       _hd5039050438_)
                                                      (let ((_e5039350446_
                                                             (gx#syntax-e
                                                              _hd5039050438_)))
                                                        (let ((_lp-hd5039450450_
                                                               (##car _e5039350446_))
                                                              (_lp-tl5039550453_
                                                               (##cdr _e5039350446_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd5039450450_)
                                                              (let ((_e5040050456_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _lp-hd5039450450_)))
                        (let ((_hd5040150460_ (##car _e5040050456_))
                              (_tl5040250463_ (##cdr _e5040050456_)))
                          (if (gx#stx-pair? _tl5040250463_)
                              (let ((_e5040350466_
                                     (gx#syntax-e _tl5040250463_)))
                                (let ((_hd5040450470_ (##car _e5040350466_))
                                      (_tl5040550473_ (##cdr _e5040350466_)))
                                  (if (gx#stx-null? _tl5040550473_)
                                      (_loop5039250434_
                                       _lp-tl5039550453_
                                       (cons _hd5040450470_ _type5039650441_)
                                       (cons _hd5040150460_
                                             _symbol5039750443_))
                                      (_g5038250411_ _g5038350415_))))
                              (_g5038250411_ _g5038350415_))))
                      (_g5038250411_ _g5038350415_))))
              (let ((_type5039850476_ (reverse _type5039650441_))
                    (_symbol5039950479_ (reverse _symbol5039750443_)))
                ((lambda (_L50482_ _L50484_)
                   (cons (gx#datum->syntax__0 '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets _L50482_ _L50484_)
                           (foldr2 (lambda (_g5049950503_
                                            _g5050050506_
                                            _g5050150508_)
                                     (cons (cons (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type)
                                                 (cons _g5050050506_
                                                       (cons _g5049950503_
                                                             '())))
                                           _g5050150508_))
                                   '()
                                   _L50482_
                                   _L50484_))))
                 _type5039850476_
                 _symbol5039950479_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop5039250434_
                                         _target5038950428_
                                         '()
                                         '()))
                                      (_g5038250411_ _g5038350415_)))))
                            (_g5038250411_ _g5038350415_))))
                    (_g5038250411_ _g5038350415_)))))
        (_g5038150511_ _$stx50378_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx50516_)
      (let* ((___stx5301953020_ _$stx50516_)
             (_g5052150563_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5301953020_))))
        (let ((___kont5302253023_
               (lambda (_L50691_ _L50693_ _L50694_ _L50695_)
                 (cons (gx#datum->syntax__0 '#f 'optimizer-declare-method!)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L50695_ '()))
                             (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                         (cons _L50694_ '()))
                                   (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                               (cons _L50693_ '()))
                                         (cons _L50691_ '())))))))
              (___kont5302453025_
               (lambda (_L50610_ _L50612_ _L50613_ _L50614_)
                 (cons _L50614_
                       (cons _L50613_
                             (cons _L50612_
                                   (cons _L50610_
                                         (cons (gx#datum->syntax__0
                                                '#f
                                                'rebind?)
                                               '()))))))))
          (let ((___match5305853059_
                 (lambda (_e5052750641_
                          _hd5052850645_
                          _tl5052950648_
                          _e5053050651_
                          _hd5053150655_
                          _tl5053250658_
                          _e5053350661_
                          _hd5053450665_
                          _tl5053550668_
                          _e5053650671_
                          _hd5053750675_
                          _tl5053850678_
                          _e5053950681_
                          _hd5054050685_
                          _tl5054150688_)
                   (let ((_L50691_ _hd5054050685_)
                         (_L50693_ _hd5053750675_)
                         (_L50694_ _hd5053450665_)
                         (_L50695_ _hd5053150655_))
                     (if (and (gx#identifier? _L50695_)
                              (gx#identifier? _L50694_)
                              (gx#identifier? _L50693_))
                         (___kont5302253023_
                          _L50691_
                          _L50693_
                          _L50694_
                          _L50695_)
                         (_g5052150563_))))))
            (if (gx#stx-pair? ___stx5301953020_)
                (let ((_e5052750641_ (gx#syntax-e ___stx5301953020_)))
                  (let ((_tl5052950648_ (##cdr _e5052750641_))
                        (_hd5052850645_ (##car _e5052750641_)))
                    (if (gx#stx-pair? _tl5052950648_)
                        (let ((_e5053050651_ (gx#syntax-e _tl5052950648_)))
                          (let ((_tl5053250658_ (##cdr _e5053050651_))
                                (_hd5053150655_ (##car _e5053050651_)))
                            (if (gx#stx-pair? _tl5053250658_)
                                (let ((_e5053350661_
                                       (gx#syntax-e _tl5053250658_)))
                                  (let ((_tl5053550668_ (##cdr _e5053350661_))
                                        (_hd5053450665_ (##car _e5053350661_)))
                                    (if (gx#stx-pair? _tl5053550668_)
                                        (let ((_e5053650671_
                                               (gx#syntax-e _tl5053550668_)))
                                          (let ((_tl5053850678_
                                                 (##cdr _e5053650671_))
                                                (_hd5053750675_
                                                 (##car _e5053650671_)))
                                            (if (gx#stx-pair? _tl5053850678_)
                                                (let ((_e5053950681_
                                                       (gx#syntax-e
                                                        _tl5053850678_)))
                                                  (let ((_tl5054150688_
                                                         (##cdr _e5053950681_))
                                                        (_hd5054050685_
                                                         (##car _e5053950681_)))
                                                    (if (gx#stx-null?
                                                         _tl5054150688_)
                                                        (___match5305853059_
                                                         _e5052750641_
                                                         _hd5052850645_
                                                         _tl5052950648_
                                                         _e5053050651_
                                                         _hd5053150655_
                                                         _tl5053250658_
                                                         _e5053350661_
                                                         _hd5053450665_
                                                         _tl5053550668_
                                                         _e5053650671_
                                                         _hd5053750675_
                                                         _tl5053850678_
                                                         _e5053950681_
                                                         _hd5054050685_
                                                         _tl5054150688_)
                                                        (_g5052150563_))))
                                                (if (gx#stx-null?
                                                     _tl5053850678_)
                                                    (___kont5302453025_
                                                     _hd5053750675_
                                                     _hd5053450665_
                                                     _hd5053150655_
                                                     _hd5052850645_)
                                                    (_g5052150563_)))))
                                        (_g5052150563_))))
                                (_g5052150563_))))
                        (_g5052150563_))))
                (_g5052150563_)))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx50720_)
      (let* ((_g5072450759_
              (lambda (_g5072550755_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5072550755_)))
             (_g5072350878_
              (lambda (_g5072550763_)
                (if (gx#stx-pair? _g5072550763_)
                    (let ((_e5072950766_ (gx#syntax-e _g5072550763_)))
                      (let ((_hd5073050770_ (##car _e5072950766_))
                            (_tl5073150773_ (##cdr _e5072950766_)))
                        (if (gx#stx-pair/null? _tl5073150773_)
                            (let ((_g53530_
                                   (gx#syntax-split-splice _tl5073150773_ '0)))
                              (begin
                                (let ((_g53531_
                                       (if (##values? _g53530_)
                                           (##vector-length _g53530_)
                                           1)))
                                  (if (not (##fx= _g53531_ 2))
                                      (error "Context expects 2 values"
                                             _g53531_)))
                                (let ((_target5073250776_
                                       (##vector-ref _g53530_ 0))
                                      (_tl5073450779_
                                       (##vector-ref _g53530_ 1)))
                                  (if (gx#stx-null? _tl5073450779_)
                                      (letrec ((_loop5073550782_
                                                (lambda (_hd5073350786_
                                                         _symbol5073950789_
                                                         _method5074050791_
                                                         _type-t5074150793_)
                                                  (if (gx#stx-pair?
                                                       _hd5073350786_)
                                                      (let ((_e5073650796_
                                                             (gx#syntax-e
                                                              _hd5073350786_)))
                                                        (let ((_lp-hd5073750800_
                                                               (##car _e5073650796_))
                                                              (_lp-tl5073850803_
                                                               (##cdr _e5073650796_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd5073750800_)
                                                              (let ((_e5074550806_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _lp-hd5073750800_)))
                        (let ((_hd5074650810_ (##car _e5074550806_))
                              (_tl5074750813_ (##cdr _e5074550806_)))
                          (if (gx#stx-pair? _tl5074750813_)
                              (let ((_e5074850816_
                                     (gx#syntax-e _tl5074750813_)))
                                (let ((_hd5074950820_ (##car _e5074850816_))
                                      (_tl5075050823_ (##cdr _e5074850816_)))
                                  (if (gx#stx-pair? _tl5075050823_)
                                      (let ((_e5075150826_
                                             (gx#syntax-e _tl5075050823_)))
                                        (let ((_hd5075250830_
                                               (##car _e5075150826_))
                                              (_tl5075350833_
                                               (##cdr _e5075150826_)))
                                          (if (gx#stx-null? _tl5075350833_)
                                              (_loop5073550782_
                                               _lp-tl5073850803_
                                               (cons _hd5075250830_
                                                     _symbol5073950789_)
                                               (cons _hd5074950820_
                                                     _method5074050791_)
                                               (cons _hd5074650810_
                                                     _type-t5074150793_))
                                              (_g5072450759_ _g5072550763_))))
                                      (_g5072450759_ _g5072550763_))))
                              (_g5072450759_ _g5072550763_))))
                      (_g5072450759_ _g5072550763_))))
              (let ((_symbol5074250836_ (reverse _symbol5073950789_))
                    (_method5074350839_ (reverse _method5074050791_))
                    (_type-t5074450841_ (reverse _type-t5074150793_)))
                ((lambda (_L50844_ _L50846_ _L50847_)
                   (cons (gx#datum->syntax__0 '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _L50844_
                            _L50846_
                            _L50847_)
                           (foldr (lambda (_g5086350868_
                                           _g5086450871_
                                           _g5086550873_
                                           _g5086650875_)
                                    (cons (cons (gx#datum->syntax__0
                                                 '#f
                                                 'declare-method)
                                                (cons _g5086550873_
                                                      (cons _g5086450871_
                                                            (cons _g5086350868_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _g5086650875_))
                                  '()
                                  _L50844_
                                  _L50846_
                                  _L50847_))))
                 _symbol5074250836_
                 _method5074350839_
                 _type-t5074450841_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop5073550782_
                                         _target5073250776_
                                         '()
                                         '()
                                         '()))
                                      (_g5072450759_ _g5072550763_)))))
                            (_g5072450759_ _g5072550763_))))
                    (_g5072450759_ _g5072550763_)))))
        (_g5072350878_ _$stx50720_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx50883_)
      (let* ((_g5088750920_
              (lambda (_g5088850916_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5088850916_)))
             (_g5088651034_
              (lambda (_g5088850924_)
                (if (gx#stx-pair? _g5088850924_)
                    (let ((_e5089250927_ (gx#syntax-e _g5088850924_)))
                      (let ((_hd5089350931_ (##car _e5089250927_))
                            (_tl5089450934_ (##cdr _e5089250927_)))
                        (if (gx#stx-pair? _tl5089450934_)
                            (let ((_e5089550937_ (gx#syntax-e _tl5089450934_)))
                              (let ((_hd5089650941_ (##car _e5089550937_))
                                    (_tl5089750944_ (##cdr _e5089550937_)))
                                (if (gx#stx-pair/null? _tl5089750944_)
                                    (let ((_g53532_
                                           (gx#syntax-split-splice
                                            _tl5089750944_
                                            '0)))
                                      (begin
                                        (let ((_g53533_
                                               (if (##values? _g53532_)
                                                   (##vector-length _g53532_)
                                                   1)))
                                          (if (not (##fx= _g53533_ 2))
                                              (error "Context expects 2 values"
                                                     _g53533_)))
                                        (let ((_target5089850947_
                                               (##vector-ref _g53532_ 0))
                                              (_tl5090050950_
                                               (##vector-ref _g53532_ 1)))
                                          (if (gx#stx-null? _tl5090050950_)
                                              (letrec ((_loop5090150953_
                                                        (lambda (_hd5089950957_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol5090550960_
                         _method5090650962_)
                  (if (gx#stx-pair? _hd5089950957_)
                      (let ((_e5090250965_ (gx#syntax-e _hd5089950957_)))
                        (let ((_lp-hd5090350969_ (##car _e5090250965_))
                              (_lp-tl5090450972_ (##cdr _e5090250965_)))
                          (if (gx#stx-pair? _lp-hd5090350969_)
                              (let ((_e5090950975_
                                     (gx#syntax-e _lp-hd5090350969_)))
                                (let ((_hd5091050979_ (##car _e5090950975_))
                                      (_tl5091150982_ (##cdr _e5090950975_)))
                                  (if (gx#stx-pair? _tl5091150982_)
                                      (let ((_e5091250985_
                                             (gx#syntax-e _tl5091150982_)))
                                        (let ((_hd5091350989_
                                               (##car _e5091250985_))
                                              (_tl5091450992_
                                               (##cdr _e5091250985_)))
                                          (if (gx#stx-null? _tl5091450992_)
                                              (_loop5090150953_
                                               _lp-tl5090450972_
                                               (cons _hd5091350989_
                                                     _symbol5090550960_)
                                               (cons _hd5091050979_
                                                     _method5090650962_))
                                              (_g5088750920_ _g5088850924_))))
                                      (_g5088750920_ _g5088850924_))))
                              (_g5088750920_ _g5088850924_))))
                      (let ((_symbol5090750995_ (reverse _symbol5090550960_))
                            (_method5090850998_ (reverse _method5090650962_)))
                        ((lambda (_L51001_ _L51003_ _L51004_)
                           (cons (gx#datum->syntax__0 '#f 'begin)
                                 (begin
                                   (gx#syntax-check-splice-targets
                                    _L51001_
                                    _L51003_)
                                   (foldr2 (lambda (_g5102251026_
                                                    _g5102351029_
                                                    _g5102451031_)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          'declare-method)
                                                         (cons _L51004_
                                                               (cons _g5102351029_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _g5102251026_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g5102451031_))
                                           '()
                                           _L51001_
                                           _L51003_))))
                         _symbol5090750995_
                         _method5090850998_
                         _hd5089650941_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop5090150953_
                                                 _target5089850947_
                                                 '()
                                                 '()))
                                              (_g5088750920_ _g5088850924_)))))
                                    (_g5088750920_ _g5088850924_))))
                            (_g5088750920_ _g5088850924_))))
                    (_g5088750920_ _g5088850924_)))))
        (_g5088651034_ _$stx50883_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx51039_)
      (let* ((_g5104351057_
              (lambda (_g5104451053_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5104451053_)))
             (_g5104251098_
              (lambda (_g5104451061_)
                (if (gx#stx-pair? _g5104451061_)
                    (let ((_e5104651064_ (gx#syntax-e _g5104451061_)))
                      (let ((_hd5104751068_ (##car _e5104651064_))
                            (_tl5104851071_ (##cdr _e5104651064_)))
                        (if (gx#stx-pair? _tl5104851071_)
                            (let ((_e5104951074_ (gx#syntax-e _tl5104851071_)))
                              (let ((_hd5105051078_ (##car _e5104951074_))
                                    (_tl5105151081_ (##cdr _e5104951074_)))
                                (if (gx#stx-null? _tl5105151081_)
                                    ((lambda (_L51084_)
                                       (cons (gx#datum->syntax__0
                                              '#f
                                              'make-!alias)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          'quote)
                                                         (cons _L51084_ '()))
                                                   '())))
                                     _hd5105051078_)
                                    (_g5104351057_ _g5104451061_))))
                            (_g5104351057_ _g5104451061_))))
                    (_g5104351057_ _g5104451061_)))))
        (_g5104251098_ _$stx51039_))))
  (define |gxc[:0:]#@struct-type|
    (lambda (_$stx51102_)
      (let* ((___stx5308753088_ _$stx51102_)
             (_g5110851174_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5308753088_))))
        (let ((___kont5309053091_
               (lambda (_L51396_ _L51398_ _L51399_ _L51400_ _L51401_)
                 (cons (gx#datum->syntax__0 '#f '@make-struct-type)
                       (cons _L51401_
                             (cons _L51400_
                                   (cons _L51399_
                                         (cons _L51398_
                                               (cons _L51396_ '()))))))))
              (___kont5309253093_
               (lambda (_L51306_ _L51308_ _L51309_ _L51310_)
                 (cons _L51310_
                       (cons _L51309_
                             (cons _L51308_
                                   (cons _L51306_
                                         (cons '#f (cons '#f '()))))))))
              (___kont5309453095_
               (lambda (_L51231_ _L51233_ _L51234_ _L51235_ _L51236_)
                 (cons _L51236_
                       (cons (gx#datum->syntax__0 '#f 'type)
                             (cons _L51234_
                                   (cons _L51233_
                                         (cons _L51231_ (cons '#f '())))))))))
          (if (gx#stx-pair? ___stx5308753088_)
              (let ((_e5111551336_ (gx#syntax-e ___stx5308753088_)))
                (let ((_tl5111751343_ (##cdr _e5111551336_))
                      (_hd5111651340_ (##car _e5111551336_)))
                  (if (gx#stx-pair? _tl5111751343_)
                      (let ((_e5111851346_ (gx#syntax-e _tl5111751343_)))
                        (let ((_tl5112051353_ (##cdr _e5111851346_))
                              (_hd5111951350_ (##car _e5111851346_)))
                          (if (gx#stx-pair? _tl5112051353_)
                              (let ((_e5112151356_
                                     (gx#syntax-e _tl5112051353_)))
                                (let ((_tl5112351363_ (##cdr _e5112151356_))
                                      (_hd5112251360_ (##car _e5112151356_)))
                                  (if (gx#stx-pair? _tl5112351363_)
                                      (let ((_e5112451366_
                                             (gx#syntax-e _tl5112351363_)))
                                        (let ((_tl5112651373_
                                               (##cdr _e5112451366_))
                                              (_hd5112551370_
                                               (##car _e5112451366_)))
                                          (if (gx#stx-pair? _tl5112651373_)
                                              (let ((_e5112751376_
                                                     (gx#syntax-e
                                                      _tl5112651373_)))
                                                (let ((_tl5112951383_
                                                       (##cdr _e5112751376_))
                                                      (_hd5112851380_
                                                       (##car _e5112751376_)))
                                                  (if (gx#stx-pair?
                                                       _tl5112951383_)
                                                      (let ((_e5113051386_
                                                             (gx#syntax-e
                                                              _tl5112951383_)))
                                                        (let ((_tl5113251393_
                                                               (##cdr _e5113051386_))
                                                              (_hd5113151390_
                                                               (##car _e5113051386_)))
                                                          (if (gx#stx-null?
                                                               _tl5113251393_)
                                                              (___kont5309053091_
                                                               _hd5113151390_
                                                               _hd5112851380_
                                                               _hd5112551370_
                                                               _hd5112251360_
                                                               _hd5111951350_)
                                                              (_g5110851174_))))
                                                      (if (gx#stx-null?
                                                           _tl5112951383_)
                                                          (___kont5309453095_
                                                           _hd5112851380_
                                                           _hd5112551370_
                                                           _hd5112251360_
                                                           _hd5111951350_
                                                           _hd5111651340_)
                                                          (_g5110851174_)))))
                                              (if (gx#stx-null? _tl5112651373_)
                                                  (___kont5309253093_
                                                   _hd5112551370_
                                                   _hd5112251360_
                                                   _hd5111951350_
                                                   _hd5111651340_)
                                                  (_g5110851174_)))))
                                      (_g5110851174_))))
                              (_g5110851174_))))
                      (_g5110851174_))))
              (_g5110851174_))))))
  (define |gxc[:0:]#@make-struct-type|
    (lambda (_$stx51429_)
      (let* ((___stx5319553196_ _$stx51429_)
             (_g5143451487_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5319553196_))))
        (let ((___kont5319853199_
               (lambda (_L51655_ _L51657_ _L51658_ _L51659_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-type)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L51659_ '()))
                             (cons '#f
                                   (cons _L51658_
                                         (cons '0
                                               (cons (cons (gx#datum->syntax__0
                                                            '#f
                                                            'quote)
                                                           (cons _L51657_ '()))
                                                     (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _L51655_ '()))
                   '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              (___kont5320053201_
               (lambda (_L51554_ _L51556_ _L51557_ _L51558_ _L51559_)
                 (cons (gx#datum->syntax__0 '#f 'let*)
                       (cons (cons (cons (gx#datum->syntax__0 '#f 'super-type)
                                         (cons (cons (gx#datum->syntax__0
                                                      '#f
                                                      'optimizer-resolve-type)
                                                     (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _L51558_ '()))
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
                                     (cons _L51556_ '()))
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
                                                     (cons _L51559_ '()))
                                               (cons (cons (gx#datum->syntax__0
                                                            '#f
                                                            'quote)
                                                           (cons _L51558_ '()))
                                                     (cons _L51557_
                                                           (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'xfields)
                         (cons (gx#datum->syntax__0 '#f 'xtor)
                               (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                           (cons _L51554_ '()))
                                     '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   '()))))))
          (if (gx#stx-pair? ___stx5319553196_)
              (let ((_e5144051591_ (gx#syntax-e ___stx5319553196_)))
                (let ((_tl5144251598_ (##cdr _e5144051591_))
                      (_hd5144151595_ (##car _e5144051591_)))
                  (if (gx#stx-pair? _tl5144251598_)
                      (let ((_e5144351601_ (gx#syntax-e _tl5144251598_)))
                        (let ((_tl5144551608_ (##cdr _e5144351601_))
                              (_hd5144451605_ (##car _e5144351601_)))
                          (if (gx#stx-pair? _tl5144551608_)
                              (let ((_e5144651611_
                                     (gx#syntax-e _tl5144551608_)))
                                (let ((_tl5144851618_ (##cdr _e5144651611_))
                                      (_hd5144751615_ (##car _e5144651611_)))
                                  (if (gx#stx-datum? _hd5144751615_)
                                      (let ((_e5144951621_
                                             (gx#stx-e _hd5144751615_)))
                                        (if (equal? _e5144951621_ '#f)
                                            (if (gx#stx-pair? _tl5144851618_)
                                                (let ((_e5145051625_
                                                       (gx#syntax-e
                                                        _tl5144851618_)))
                                                  (let ((_tl5145251632_
                                                         (##cdr _e5145051625_))
                                                        (_hd5145151629_
                                                         (##car _e5145051625_)))
                                                    (if (gx#stx-pair?
                                                         _tl5145251632_)
                                                        (let ((_e5145351635_
                                                               (gx#syntax-e
                                                                _tl5145251632_)))
                                                          (let ((_tl5145551642_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e5145351635_))
                        (_hd5145451639_ (##car _e5145351635_)))
                    (if (gx#stx-pair? _tl5145551642_)
                        (let ((_e5145651645_ (gx#syntax-e _tl5145551642_)))
                          (let ((_tl5145851652_ (##cdr _e5145651645_))
                                (_hd5145751649_ (##car _e5145651645_)))
                            (if (gx#stx-null? _tl5145851652_)
                                (___kont5319853199_
                                 _hd5145751649_
                                 _hd5145451639_
                                 _hd5145151629_
                                 _hd5144451605_)
                                (_g5143451487_))))
                        (_g5143451487_))))
                (_g5143451487_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g5143451487_))
                                            (if (gx#stx-pair? _tl5144851618_)
                                                (let ((_e5147351524_
                                                       (gx#syntax-e
                                                        _tl5144851618_)))
                                                  (let ((_tl5147551531_
                                                         (##cdr _e5147351524_))
                                                        (_hd5147451528_
                                                         (##car _e5147351524_)))
                                                    (if (gx#stx-pair?
                                                         _tl5147551531_)
                                                        (let ((_e5147651534_
                                                               (gx#syntax-e
                                                                _tl5147551531_)))
                                                          (let ((_tl5147851541_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e5147651534_))
                        (_hd5147751538_ (##car _e5147651534_)))
                    (if (gx#stx-pair? _tl5147851541_)
                        (let ((_e5147951544_ (gx#syntax-e _tl5147851541_)))
                          (let ((_tl5148151551_ (##cdr _e5147951544_))
                                (_hd5148051548_ (##car _e5147951544_)))
                            (if (gx#stx-null? _tl5148151551_)
                                (___kont5320053201_
                                 _hd5148051548_
                                 _hd5147751538_
                                 _hd5147451528_
                                 _hd5144751615_
                                 _hd5144451605_)
                                (_g5143451487_))))
                        (_g5143451487_))))
                (_g5143451487_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g5143451487_))))
                                      (if (gx#stx-pair? _tl5144851618_)
                                          (let ((_e5147351524_
                                                 (gx#syntax-e _tl5144851618_)))
                                            (let ((_tl5147551531_
                                                   (##cdr _e5147351524_))
                                                  (_hd5147451528_
                                                   (##car _e5147351524_)))
                                              (if (gx#stx-pair? _tl5147551531_)
                                                  (let ((_e5147651534_
                                                         (gx#syntax-e
                                                          _tl5147551531_)))
                                                    (let ((_tl5147851541_
                                                           (##cdr _e5147651534_))
                                                          (_hd5147751538_
                                                           (##car _e5147651534_)))
                                                      (if (gx#stx-pair?
                                                           _tl5147851541_)
                                                          (let ((_e5147951544_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl5147851541_)))
                    (let ((_tl5148151551_ (##cdr _e5147951544_))
                          (_hd5148051548_ (##car _e5147951544_)))
                      (if (gx#stx-null? _tl5148151551_)
                          (___kont5320053201_
                           _hd5148051548_
                           _hd5147751538_
                           _hd5147451528_
                           _hd5144751615_
                           _hd5144451605_)
                          (_g5143451487_))))
                  (_g5143451487_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g5143451487_))))
                                          (_g5143451487_)))))
                              (_g5143451487_))))
                      (_g5143451487_))))
              (_g5143451487_))))))
  (define |gxc[:0:]#@struct-pred|
    (lambda (_$stx51687_)
      (let* ((_g5169151705_
              (lambda (_g5169251701_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5169251701_)))
             (_g5169051746_
              (lambda (_g5169251709_)
                (if (gx#stx-pair? _g5169251709_)
                    (let ((_e5169451712_ (gx#syntax-e _g5169251709_)))
                      (let ((_hd5169551716_ (##car _e5169451712_))
                            (_tl5169651719_ (##cdr _e5169451712_)))
                        (if (gx#stx-pair? _tl5169651719_)
                            (let ((_e5169751722_ (gx#syntax-e _tl5169651719_)))
                              (let ((_hd5169851726_ (##car _e5169751722_))
                                    (_tl5169951729_ (##cdr _e5169751722_)))
                                (if (gx#stx-null? _tl5169951729_)
                                    ((lambda (_L51732_)
                                       (cons (gx#datum->syntax__0
                                              '#f
                                              'make-!struct-pred)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          'quote)
                                                         (cons _L51732_ '()))
                                                   '())))
                                     _hd5169851726_)
                                    (_g5169151705_ _g5169251709_))))
                            (_g5169151705_ _g5169251709_))))
                    (_g5169151705_ _g5169251709_)))))
        (_g5169051746_ _$stx51687_))))
  (define |gxc[:0:]#@struct-cons|
    (lambda (_$stx51750_)
      (let* ((_g5175451768_
              (lambda (_g5175551764_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5175551764_)))
             (_g5175351809_
              (lambda (_g5175551772_)
                (if (gx#stx-pair? _g5175551772_)
                    (let ((_e5175751775_ (gx#syntax-e _g5175551772_)))
                      (let ((_hd5175851779_ (##car _e5175751775_))
                            (_tl5175951782_ (##cdr _e5175751775_)))
                        (if (gx#stx-pair? _tl5175951782_)
                            (let ((_e5176051785_ (gx#syntax-e _tl5175951782_)))
                              (let ((_hd5176151789_ (##car _e5176051785_))
                                    (_tl5176251792_ (##cdr _e5176051785_)))
                                (if (gx#stx-null? _tl5176251792_)
                                    ((lambda (_L51795_)
                                       (cons (gx#datum->syntax__0
                                              '#f
                                              'make-!struct-cons)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          'quote)
                                                         (cons _L51795_ '()))
                                                   '())))
                                     _hd5176151789_)
                                    (_g5175451768_ _g5175551772_))))
                            (_g5175451768_ _g5175551772_))))
                    (_g5175451768_ _g5175551772_)))))
        (_g5175351809_ _$stx51750_))))
  (define |gxc[:0:]#@struct-getf|
    (lambda (_$stx51813_)
      (let* ((___stx5328753288_ _$stx51813_)
             (_g5181851851_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5328753288_))))
        (let ((___kont5329053291_
               (lambda (_L51953_ _L51955_ _L51956_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-getf)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L51956_ '()))
                             (cons _L51955_ (cons _L51953_ '()))))))
              (___kont5329253293_
               (lambda (_L51888_ _L51890_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-getf)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L51890_ '()))
                             (cons _L51888_ (cons '#f '())))))))
          (if (gx#stx-pair? ___stx5328753288_)
              (let ((_e5182351913_ (gx#syntax-e ___stx5328753288_)))
                (let ((_tl5182551920_ (##cdr _e5182351913_))
                      (_hd5182451917_ (##car _e5182351913_)))
                  (if (gx#stx-pair? _tl5182551920_)
                      (let ((_e5182651923_ (gx#syntax-e _tl5182551920_)))
                        (let ((_tl5182851930_ (##cdr _e5182651923_))
                              (_hd5182751927_ (##car _e5182651923_)))
                          (if (gx#stx-pair? _tl5182851930_)
                              (let ((_e5182951933_
                                     (gx#syntax-e _tl5182851930_)))
                                (let ((_tl5183151940_ (##cdr _e5182951933_))
                                      (_hd5183051937_ (##car _e5182951933_)))
                                  (if (gx#stx-pair? _tl5183151940_)
                                      (let ((_e5183251943_
                                             (gx#syntax-e _tl5183151940_)))
                                        (let ((_tl5183451950_
                                               (##cdr _e5183251943_))
                                              (_hd5183351947_
                                               (##car _e5183251943_)))
                                          (if (gx#stx-null? _tl5183451950_)
                                              (___kont5329053291_
                                               _hd5183351947_
                                               _hd5183051937_
                                               _hd5182751927_)
                                              (_g5181851851_))))
                                      (if (gx#stx-null? _tl5183151940_)
                                          (___kont5329253293_
                                           _hd5183051937_
                                           _hd5182751927_)
                                          (_g5181851851_)))))
                              (_g5181851851_))))
                      (_g5181851851_))))
              (_g5181851851_))))))
  (define |gxc[:0:]#@struct-setf|
    (lambda (_$stx51978_)
      (let* ((___stx5334353344_ _$stx51978_)
             (_g5198352016_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5334353344_))))
        (let ((___kont5334653347_
               (lambda (_L52118_ _L52120_ _L52121_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-setf)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L52121_ '()))
                             (cons _L52120_ (cons _L52118_ '()))))))
              (___kont5334853349_
               (lambda (_L52053_ _L52055_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-setf)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L52055_ '()))
                             (cons _L52053_ (cons '#f '())))))))
          (if (gx#stx-pair? ___stx5334353344_)
              (let ((_e5198852078_ (gx#syntax-e ___stx5334353344_)))
                (let ((_tl5199052085_ (##cdr _e5198852078_))
                      (_hd5198952082_ (##car _e5198852078_)))
                  (if (gx#stx-pair? _tl5199052085_)
                      (let ((_e5199152088_ (gx#syntax-e _tl5199052085_)))
                        (let ((_tl5199352095_ (##cdr _e5199152088_))
                              (_hd5199252092_ (##car _e5199152088_)))
                          (if (gx#stx-pair? _tl5199352095_)
                              (let ((_e5199452098_
                                     (gx#syntax-e _tl5199352095_)))
                                (let ((_tl5199652105_ (##cdr _e5199452098_))
                                      (_hd5199552102_ (##car _e5199452098_)))
                                  (if (gx#stx-pair? _tl5199652105_)
                                      (let ((_e5199752108_
                                             (gx#syntax-e _tl5199652105_)))
                                        (let ((_tl5199952115_
                                               (##cdr _e5199752108_))
                                              (_hd5199852112_
                                               (##car _e5199752108_)))
                                          (if (gx#stx-null? _tl5199952115_)
                                              (___kont5334653347_
                                               _hd5199852112_
                                               _hd5199552102_
                                               _hd5199252092_)
                                              (_g5198352016_))))
                                      (if (gx#stx-null? _tl5199652105_)
                                          (___kont5334853349_
                                           _hd5199552102_
                                           _hd5199252092_)
                                          (_g5198352016_)))))
                              (_g5198352016_))))
                      (_g5198352016_))))
              (_g5198352016_))))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx52143_)
      (let* ((___stx5339953400_ _$stx52143_)
             (_g5214952190_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5339953400_))))
        (let ((___kont5340253403_
               (lambda (_L52338_ _L52340_)
                 (cons (gx#datum->syntax__0 '#f 'make-!lambda)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons (gx#datum->syntax__0 '#f 'lambda)
                                         '()))
                             (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                         (cons _L52340_ '()))
                                   (cons '#f
                                         (cons _L52338_
                                               (cons (cons (gx#datum->syntax__0
                                                            '#f
                                                            'quote)
                                                           (cons _L52338_ '()))
                                                     '()))))))))
              (___kont5340453405_
               (lambda (_L52270_ _L52272_)
                 (cons (gx#datum->syntax__0 '#f 'make-!lambda)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons (gx#datum->syntax__0 '#f 'lambda)
                                         '()))
                             (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                         (cons _L52272_ '()))
                                   (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                               (cons _L52270_ '()))
                                         '()))))))
              (___kont5340653407_
               (lambda (_L52217_ _L52219_)
                 (cons _L52219_ (cons _L52217_ (cons '#f '()))))))
          (if (gx#stx-pair? ___stx5339953400_)
              (let ((_e5215352294_ (gx#syntax-e ___stx5339953400_)))
                (let ((_tl5215552301_ (##cdr _e5215352294_))
                      (_hd5215452298_ (##car _e5215352294_)))
                  (if (gx#stx-pair? _tl5215552301_)
                      (let ((_e5215652304_ (gx#syntax-e _tl5215552301_)))
                        (let ((_tl5215852311_ (##cdr _e5215652304_))
                              (_hd5215752308_ (##car _e5215652304_)))
                          (if (gx#stx-pair? _tl5215852311_)
                              (let ((_e5215952314_
                                     (gx#syntax-e _tl5215852311_)))
                                (let ((_tl5216152321_ (##cdr _e5215952314_))
                                      (_hd5216052318_ (##car _e5215952314_)))
                                  (if (gx#stx-datum? _hd5216052318_)
                                      (let ((_e5216252324_
                                             (gx#stx-e _hd5216052318_)))
                                        (if (equal? _e5216252324_ 'inline:)
                                            (if (gx#stx-pair? _tl5216152321_)
                                                (let ((_e5216352328_
                                                       (gx#syntax-e
                                                        _tl5216152321_)))
                                                  (let ((_tl5216552335_
                                                         (##cdr _e5216352328_))
                                                        (_hd5216452332_
                                                         (##car _e5216352328_)))
                                                    (if (gx#stx-null?
                                                         _tl5216552335_)
                                                        (___kont5340253403_
                                                         _hd5216452332_
                                                         _hd5215752308_)
                                                        (_g5214952190_))))
                                                (if (gx#stx-null?
                                                     _tl5216152321_)
                                                    (___kont5340453405_
                                                     _hd5216052318_
                                                     _hd5215752308_)
                                                    (_g5214952190_)))
                                            (if (gx#stx-null? _tl5216152321_)
                                                (___kont5340453405_
                                                 _hd5216052318_
                                                 _hd5215752308_)
                                                (_g5214952190_))))
                                      (if (gx#stx-null? _tl5216152321_)
                                          (___kont5340453405_
                                           _hd5216052318_
                                           _hd5215752308_)
                                          (_g5214952190_)))))
                              (if (gx#stx-null? _tl5215852311_)
                                  (___kont5340653407_
                                   _hd5215752308_
                                   _hd5215452298_)
                                  (_g5214952190_)))))
                      (_g5214952190_))))
              (_g5214952190_))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx52362_)
      (let* ((_g5236652395_
              (lambda (_g5236752391_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5236752391_)))
             (_g5236552495_
              (lambda (_g5236752399_)
                (if (gx#stx-pair? _g5236752399_)
                    (let ((_e5237052402_ (gx#syntax-e _g5236752399_)))
                      (let ((_hd5237152406_ (##car _e5237052402_))
                            (_tl5237252409_ (##cdr _e5237052402_)))
                        (if (gx#stx-pair/null? _tl5237252409_)
                            (let ((_g53534_
                                   (gx#syntax-split-splice _tl5237252409_ '0)))
                              (begin
                                (let ((_g53535_
                                       (if (##values? _g53534_)
                                           (##vector-length _g53534_)
                                           1)))
                                  (if (not (##fx= _g53535_ 2))
                                      (error "Context expects 2 values"
                                             _g53535_)))
                                (let ((_target5237352412_
                                       (##vector-ref _g53534_ 0))
                                      (_tl5237552415_
                                       (##vector-ref _g53534_ 1)))
                                  (if (gx#stx-null? _tl5237552415_)
                                      (letrec ((_loop5237652418_
                                                (lambda (_hd5237452422_
                                                         _dispatch5238052425_
                                                         _arity5238152427_)
                                                  (if (gx#stx-pair?
                                                       _hd5237452422_)
                                                      (let ((_e5237752430_
                                                             (gx#syntax-e
                                                              _hd5237452422_)))
                                                        (let ((_lp-hd5237852434_
                                                               (##car _e5237752430_))
                                                              (_lp-tl5237952437_
                                                               (##cdr _e5237752430_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd5237852434_)
                                                              (let ((_e5238452440_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _lp-hd5237852434_)))
                        (let ((_hd5238552444_ (##car _e5238452440_))
                              (_tl5238652447_ (##cdr _e5238452440_)))
                          (if (gx#stx-pair? _tl5238652447_)
                              (let ((_e5238752450_
                                     (gx#syntax-e _tl5238652447_)))
                                (let ((_hd5238852454_ (##car _e5238752450_))
                                      (_tl5238952457_ (##cdr _e5238752450_)))
                                  (if (gx#stx-null? _tl5238952457_)
                                      (_loop5237652418_
                                       _lp-tl5237952437_
                                       (cons _hd5238852454_
                                             _dispatch5238052425_)
                                       (cons _hd5238552444_ _arity5238152427_))
                                      (_g5236652395_ _g5236752399_))))
                              (_g5236652395_ _g5236752399_))))
                      (_g5236652395_ _g5236752399_))))
              (let ((_dispatch5238252460_ (reverse _dispatch5238052425_))
                    (_arity5238352463_ (reverse _arity5238152427_)))
                ((lambda (_L52466_ _L52468_)
                   (cons (gx#datum->syntax__0 '#f 'make-!case-lambda)
                         (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                     (cons (gx#datum->syntax__0
                                            '#f
                                            'case-lambda)
                                           '()))
                               (cons (cons (gx#datum->syntax__0 '#f '@list)
                                           (begin
                                             (gx#syntax-check-splice-targets
                                              _L52466_
                                              _L52468_)
                                             (foldr2 (lambda (_g5248352487_
                                                              _g5248452490_
                                                              _g5248552492_)
                                                       (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '@lambda)
                           (cons _g5248452490_ (cons _g5248352487_ '())))
                     _g5248552492_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()
                                                     _L52466_
                                                     _L52468_)))
                                     '()))))
                 _dispatch5238252460_
                 _arity5238352463_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop5237652418_
                                         _target5237352412_
                                         '()
                                         '()))
                                      (_g5236652395_ _g5236752399_)))))
                            (_g5236652395_ _g5236752399_))))
                    (_g5236652395_ _g5236752399_)))))
        (_g5236552495_ _$stx52362_))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx52500_)
      (let* ((_g5250452522_
              (lambda (_g5250552518_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5250552518_)))
             (_g5250352577_
              (lambda (_g5250552526_)
                (if (gx#stx-pair? _g5250552526_)
                    (let ((_e5250852529_ (gx#syntax-e _g5250552526_)))
                      (let ((_hd5250952533_ (##car _e5250852529_))
                            (_tl5251052536_ (##cdr _e5250852529_)))
                        (if (gx#stx-pair? _tl5251052536_)
                            (let ((_e5251152539_ (gx#syntax-e _tl5251052536_)))
                              (let ((_hd5251252543_ (##car _e5251152539_))
                                    (_tl5251352546_ (##cdr _e5251152539_)))
                                (if (gx#stx-pair? _tl5251352546_)
                                    (let ((_e5251452549_
                                           (gx#syntax-e _tl5251352546_)))
                                      (let ((_hd5251552553_
                                             (##car _e5251452549_))
                                            (_tl5251652556_
                                             (##cdr _e5251452549_)))
                                        (if (gx#stx-null? _tl5251652556_)
                                            ((lambda (_L52559_ _L52561_)
                                               (cons (gx#datum->syntax__0
                                                      '#f
                                                      'make-!kw-lambda)
                                                     (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons (gx#datum->syntax__0 '#f 'kw-lambda) '()))
                   (cons (cons (gx#datum->syntax__0 '#f 'quote)
                               (cons _L52561_ '()))
                         (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                     (cons _L52559_ '()))
                               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd5251552553_
                                             _hd5251252543_)
                                            (_g5250452522_ _g5250552526_))))
                                    (_g5250452522_ _g5250552526_))))
                            (_g5250452522_ _g5250552526_))))
                    (_g5250452522_ _g5250552526_)))))
        (_g5250352577_ _$stx52500_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx52581_)
      (let* ((_g5258552603_
              (lambda (_g5258652599_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5258652599_)))
             (_g5258452658_
              (lambda (_g5258652607_)
                (if (gx#stx-pair? _g5258652607_)
                    (let ((_e5258952610_ (gx#syntax-e _g5258652607_)))
                      (let ((_hd5259052614_ (##car _e5258952610_))
                            (_tl5259152617_ (##cdr _e5258952610_)))
                        (if (gx#stx-pair? _tl5259152617_)
                            (let ((_e5259252620_ (gx#syntax-e _tl5259152617_)))
                              (let ((_hd5259352624_ (##car _e5259252620_))
                                    (_tl5259452627_ (##cdr _e5259252620_)))
                                (if (gx#stx-pair? _tl5259452627_)
                                    (let ((_e5259552630_
                                           (gx#syntax-e _tl5259452627_)))
                                      (let ((_hd5259652634_
                                             (##car _e5259552630_))
                                            (_tl5259752637_
                                             (##cdr _e5259552630_)))
                                        (if (gx#stx-null? _tl5259752637_)
                                            ((lambda (_L52640_ _L52642_)
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
                               (cons _L52642_ '()))
                         (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                     (cons _L52640_ '()))
                               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd5259652634_
                                             _hd5259352624_)
                                            (_g5258552603_ _g5258652607_))))
                                    (_g5258552603_ _g5258652607_))))
                            (_g5258552603_ _g5258652607_))))
                    (_g5258552603_ _g5258652607_)))))
        (_g5258452658_ _$stx52581_))))
  (define |gxc[:0:]#declare-primitive|
    (lambda (_$stx52662_)
      (let* ((___stx5347753478_ _$stx52662_)
             (_g5266752702_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5347753478_))))
        (let ((___kont5348053481_
               (lambda (_L52824_ _L52826_)
                 (cons (gx#datum->syntax__0 '#f 'declare-type)
                       (cons _L52826_
                             (cons (cons (gx#datum->syntax__0 '#f '@lambda)
                                         (cons _L52824_ '()))
                                   '())))))
              (___kont5348253483_
               (lambda (_L52759_ _L52761_)
                 (cons (gx#datum->syntax__0 '#f 'declare-type)
                       (cons _L52761_
                             (cons (cons (gx#datum->syntax__0
                                          '#f
                                          '@case-lambda)
                                         (foldr1 (lambda (_g5277852781_
                                                          _g5277952784_)
                                                   (cons (cons _g5277852781_
                                                               (cons '#f '()))
                                                         _g5277952784_))
                                                 '()
                                                 _L52759_))
                                   '()))))))
          (let ((___match5352653527_
                 (lambda (_e5268252709_
                          _hd5268352713_
                          _tl5268452716_
                          _e5268552719_
                          _hd5268652723_
                          _tl5268752726_
                          ___splice5348453485_
                          _target5268852729_
                          _tl5269052732_)
                   (letrec ((_loop5269152735_
                             (lambda (_hd5268952739_ _arity5269552742_)
                               (if (gx#stx-pair? _hd5268952739_)
                                   (let ((_e5269252745_
                                          (gx#syntax-e _hd5268952739_)))
                                     (let ((_lp-tl5269452752_
                                            (##cdr _e5269252745_))
                                           (_lp-hd5269352749_
                                            (##car _e5269252745_)))
                                       (_loop5269152735_
                                        _lp-tl5269452752_
                                        (cons _lp-hd5269352749_
                                              _arity5269552742_))))
                                   (let ((_arity5269652755_
                                          (reverse _arity5269552742_)))
                                     (___kont5348253483_
                                      _arity5269652755_
                                      _hd5268652723_))))))
                     (_loop5269152735_ _target5268852729_ '())))))
            (if (gx#stx-pair? ___stx5347753478_)
                (let ((_e5267152794_ (gx#syntax-e ___stx5347753478_)))
                  (let ((_tl5267352801_ (##cdr _e5267152794_))
                        (_hd5267252798_ (##car _e5267152794_)))
                    (if (gx#stx-pair? _tl5267352801_)
                        (let ((_e5267452804_ (gx#syntax-e _tl5267352801_)))
                          (let ((_tl5267652811_ (##cdr _e5267452804_))
                                (_hd5267552808_ (##car _e5267452804_)))
                            (if (gx#stx-pair? _tl5267652811_)
                                (let ((_e5267752814_
                                       (gx#syntax-e _tl5267652811_)))
                                  (let ((_tl5267952821_ (##cdr _e5267752814_))
                                        (_hd5267852818_ (##car _e5267752814_)))
                                    (if (gx#stx-null? _tl5267952821_)
                                        (___kont5348053481_
                                         _hd5267852818_
                                         _hd5267552808_)
                                        (if (gx#stx-pair/null? _tl5267652811_)
                                            (let ((___splice5348453485_
                                                   (gx#syntax-split-splice
                                                    _tl5267652811_
                                                    '0)))
                                              (let ((_tl5269052732_
                                                     (##vector-ref
                                                      ___splice5348453485_
                                                      '1))
                                                    (_target5268852729_
                                                     (##vector-ref
                                                      ___splice5348453485_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl5269052732_)
                                                    (___match5352653527_
                                                     _e5267152794_
                                                     _hd5267252798_
                                                     _tl5267352801_
                                                     _e5267452804_
                                                     _hd5267552808_
                                                     _tl5267652811_
                                                     ___splice5348453485_
                                                     _target5268852729_
                                                     _tl5269052732_)
                                                    (_g5266752702_))))
                                            (_g5266752702_)))))
                                (if (gx#stx-pair/null? _tl5267652811_)
                                    (let ((___splice5348453485_
                                           (gx#syntax-split-splice
                                            _tl5267652811_
                                            '0)))
                                      (let ((_tl5269052732_
                                             (##vector-ref
                                              ___splice5348453485_
                                              '1))
                                            (_target5268852729_
                                             (##vector-ref
                                              ___splice5348453485_
                                              '0)))
                                        (if (gx#stx-null? _tl5269052732_)
                                            (___match5352653527_
                                             _e5267152794_
                                             _hd5267252798_
                                             _tl5267352801_
                                             _e5267452804_
                                             _hd5267552808_
                                             _tl5267652811_
                                             ___splice5348453485_
                                             _target5268852729_
                                             _tl5269052732_)
                                            (_g5266752702_))))
                                    (_g5266752702_)))))
                        (_g5266752702_))))
                (_g5266752702_)))))))
  (define |gxc[:0:]#declare-primitive*|
    (lambda (_$stx52846_)
      (let* ((_g5285052885_
              (lambda (_g5285152881_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5285152881_)))
             (_g5284953013_
              (lambda (_g5285152889_)
                (if (gx#stx-pair? _g5285152889_)
                    (let ((_e5285452892_ (gx#syntax-e _g5285152889_)))
                      (let ((_hd5285552896_ (##car _e5285452892_))
                            (_tl5285652899_ (##cdr _e5285452892_)))
                        (if (gx#stx-pair/null? _tl5285652899_)
                            (let ((_g53536_
                                   (gx#syntax-split-splice _tl5285652899_ '0)))
                              (begin
                                (let ((_g53537_
                                       (if (##values? _g53536_)
                                           (##vector-length _g53536_)
                                           1)))
                                  (if (not (##fx= _g53537_ 2))
                                      (error "Context expects 2 values"
                                             _g53537_)))
                                (let ((_target5285752902_
                                       (##vector-ref _g53536_ 0))
                                      (_tl5285952905_
                                       (##vector-ref _g53536_ 1)))
                                  (if (gx#stx-null? _tl5285952905_)
                                      (letrec ((_loop5286052908_
                                                (lambda (_hd5285852912_
                                                         _arity5286452915_
                                                         _prim5286552917_)
                                                  (if (gx#stx-pair?
                                                       _hd5285852912_)
                                                      (let ((_e5286152920_
                                                             (gx#syntax-e
                                                              _hd5285852912_)))
                                                        (let ((_lp-hd5286252924_
                                                               (##car _e5286152920_))
                                                              (_lp-tl5286352927_
                                                               (##cdr _e5286152920_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd5286252924_)
                                                              (let ((_e5286852930_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _lp-hd5286252924_)))
                        (let ((_hd5286952934_ (##car _e5286852930_))
                              (_tl5287052937_ (##cdr _e5286852930_)))
                          (if (gx#stx-pair/null? _tl5287052937_)
                              (let ((_g53538_
                                     (gx#syntax-split-splice
                                      _tl5287052937_
                                      '0)))
                                (begin
                                  (let ((_g53539_
                                         (if (##values? _g53538_)
                                             (##vector-length _g53538_)
                                             1)))
                                    (if (not (##fx= _g53539_ 2))
                                        (error "Context expects 2 values"
                                               _g53539_)))
                                  (let ((_target5287152940_
                                         (##vector-ref _g53538_ 0))
                                        (_tl5287352943_
                                         (##vector-ref _g53538_ 1)))
                                    (if (gx#stx-null? _tl5287352943_)
                                        (letrec ((_loop5287452946_
                                                  (lambda (_hd5287252950_
                                                           _arity5287852953_)
                                                    (if (gx#stx-pair?
                                                         _hd5287252950_)
                                                        (let ((_e5287552956_
                                                               (gx#syntax-e
                                                                _hd5287252950_)))
                                                          (let ((_lp-hd5287652960_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e5287552956_))
                        (_lp-tl5287752963_ (##cdr _e5287552956_)))
                    (_loop5287452946_
                     _lp-tl5287752963_
                     (cons _lp-hd5287652960_ _arity5287852953_))))
                (let ((_arity5287952966_ (reverse _arity5287852953_)))
                  (_loop5286052908_
                   _lp-tl5286352927_
                   (cons _arity5287952966_ _arity5286452915_)
                   (cons _hd5286952934_ _prim5286552917_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop5287452946_
                                           _target5287152940_
                                           '()))
                                        (_g5285052885_ _g5285152889_)))))
                              (_g5285052885_ _g5285152889_))))
                      (_g5285052885_ _g5285152889_))))
              (let ((_arity5286652970_ (reverse _arity5286452915_))
                    (_prim5286752973_ (reverse _prim5286552917_)))
                ((lambda (_L52976_ _L52978_)
                   (cons (gx#datum->syntax__0 '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets _L52976_ _L52978_)
                           (foldr2 (lambda (_g5299352999_
                                            _g5299453002_
                                            _g5299553004_)
                                     (cons (cons (gx#datum->syntax__0
                                                  '#f
                                                  'declare-primitive)
                                                 (cons _g5299453002_
                                                       (foldr1 (lambda (_g5299653007_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g5299753010_)
                         (cons _g5299653007_ _g5299753010_))
                       '()
                       _g5299352999_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _g5299553004_))
                                   '()
                                   _L52976_
                                   _L52978_))))
                 _arity5286652970_
                 _prim5286752973_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop5286052908_
                                         _target5285752902_
                                         '()
                                         '()))
                                      (_g5285052885_ _g5285152889_)))))
                            (_g5285052885_ _g5285152889_))))
                    (_g5285052885_ _g5285152889_)))))
        (_g5284953013_ _$stx52846_)))))
