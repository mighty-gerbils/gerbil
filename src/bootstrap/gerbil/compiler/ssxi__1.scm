(declare (block) (standard-bindings) (extended-bindings) (inlining-limit 200))
(begin
  (define |gxc[:0:]#declare-type|
    (lambda (_$stx50440_)
      (let* ((_g5044450462_
              (lambda (_g5044550458_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5044550458_)))
             (_g5044350517_
              (lambda (_g5044550466_)
                (if (gx#stx-pair? _g5044550466_)
                    (let ((_e5044850469_ (gx#syntax-e _g5044550466_)))
                      (let ((_hd5044950473_ (##car _e5044850469_))
                            (_tl5045050476_ (##cdr _e5044850469_)))
                        (if (gx#stx-pair? _tl5045050476_)
                            (let ((_e5045150479_ (gx#syntax-e _tl5045050476_)))
                              (let ((_hd5045250483_ (##car _e5045150479_))
                                    (_tl5045350486_ (##cdr _e5045150479_)))
                                (if (gx#stx-pair? _tl5045350486_)
                                    (let ((_e5045450489_
                                           (gx#syntax-e _tl5045350486_)))
                                      (let ((_hd5045550493_
                                             (##car _e5045450489_))
                                            (_tl5045650496_
                                             (##cdr _e5045450489_)))
                                        (if (gx#stx-null? _tl5045650496_)
                                            ((lambda (_L50499_ _L50501_)
                                               (if (gx#identifier? _L50501_)
                                                   (cons (gx#datum->syntax__0
                                                          '#f
                                                          'optimizer-declare-type!)
                                                         (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#f
                              'quote)
                             (cons _L50501_ '()))
                       (cons _L50499_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g5044450462_
                                                    _g5044550466_)))
                                             _hd5045550493_
                                             _hd5045250483_)
                                            (_g5044450462_ _g5044550466_))))
                                    (_g5044450462_ _g5044550466_))))
                            (_g5044450462_ _g5044550466_))))
                    (_g5044450462_ _g5044550466_)))))
        (_g5044350517_ _$stx50440_))))
  (define |gxc[:0:]#declare-type*|
    (lambda (_$stx50521_)
      (let* ((_g5052550554_
              (lambda (_g5052650550_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5052650550_)))
             (_g5052450654_
              (lambda (_g5052650558_)
                (if (gx#stx-pair? _g5052650558_)
                    (let ((_e5052950561_ (gx#syntax-e _g5052650558_)))
                      (let ((_hd5053050565_ (##car _e5052950561_))
                            (_tl5053150568_ (##cdr _e5052950561_)))
                        (if (gx#stx-pair/null? _tl5053150568_)
                            (let ((_g53671_
                                   (gx#syntax-split-splice _tl5053150568_ '0)))
                              (begin
                                (let ((_g53672_
                                       (if (##values? _g53671_)
                                           (##vector-length _g53671_)
                                           1)))
                                  (if (not (##fx= _g53672_ 2))
                                      (error "Context expects 2 values"
                                             _g53672_)))
                                (let ((_target5053250571_
                                       (##vector-ref _g53671_ 0))
                                      (_tl5053450574_
                                       (##vector-ref _g53671_ 1)))
                                  (if (gx#stx-null? _tl5053450574_)
                                      (letrec ((_loop5053550577_
                                                (lambda (_hd5053350581_
                                                         _type5053950584_
                                                         _symbol5054050586_)
                                                  (if (gx#stx-pair?
                                                       _hd5053350581_)
                                                      (let ((_e5053650589_
                                                             (gx#syntax-e
                                                              _hd5053350581_)))
                                                        (let ((_lp-hd5053750593_
                                                               (##car _e5053650589_))
                                                              (_lp-tl5053850596_
                                                               (##cdr _e5053650589_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd5053750593_)
                                                              (let ((_e5054350599_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _lp-hd5053750593_)))
                        (let ((_hd5054450603_ (##car _e5054350599_))
                              (_tl5054550606_ (##cdr _e5054350599_)))
                          (if (gx#stx-pair? _tl5054550606_)
                              (let ((_e5054650609_
                                     (gx#syntax-e _tl5054550606_)))
                                (let ((_hd5054750613_ (##car _e5054650609_))
                                      (_tl5054850616_ (##cdr _e5054650609_)))
                                  (if (gx#stx-null? _tl5054850616_)
                                      (_loop5053550577_
                                       _lp-tl5053850596_
                                       (cons _hd5054750613_ _type5053950584_)
                                       (cons _hd5054450603_
                                             _symbol5054050586_))
                                      (_g5052550554_ _g5052650558_))))
                              (_g5052550554_ _g5052650558_))))
                      (_g5052550554_ _g5052650558_))))
              (let ((_type5054150619_ (reverse _type5053950584_))
                    (_symbol5054250622_ (reverse _symbol5054050586_)))
                ((lambda (_L50625_ _L50627_)
                   (cons (gx#datum->syntax__0 '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets _L50625_ _L50627_)
                           (foldr2 (lambda (_g5064250646_
                                            _g5064350649_
                                            _g5064450651_)
                                     (cons (cons (gx#datum->syntax__0
                                                  '#f
                                                  'declare-type)
                                                 (cons _g5064350649_
                                                       (cons _g5064250646_
                                                             '())))
                                           _g5064450651_))
                                   '()
                                   _L50625_
                                   _L50627_))))
                 _type5054150619_
                 _symbol5054250622_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop5053550577_
                                         _target5053250571_
                                         '()
                                         '()))
                                      (_g5052550554_ _g5052650558_)))))
                            (_g5052550554_ _g5052650558_))))
                    (_g5052550554_ _g5052650558_)))))
        (_g5052450654_ _$stx50521_))))
  (define |gxc[:0:]#declare-method|
    (lambda (_$stx50659_)
      (let* ((___stx5316253163_ _$stx50659_)
             (_g5066450706_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5316253163_))))
        (let ((___kont5316553166_
               (lambda (_L50834_ _L50836_ _L50837_ _L50838_)
                 (cons (gx#datum->syntax__0 '#f 'optimizer-declare-method!)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L50838_ '()))
                             (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                         (cons _L50837_ '()))
                                   (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                               (cons _L50836_ '()))
                                         (cons _L50834_ '())))))))
              (___kont5316753168_
               (lambda (_L50753_ _L50755_ _L50756_ _L50757_)
                 (cons _L50757_
                       (cons _L50756_
                             (cons _L50755_
                                   (cons _L50753_
                                         (cons (gx#datum->syntax__0
                                                '#f
                                                'rebind?)
                                               '()))))))))
          (let ((___match5320153202_
                 (lambda (_e5067050784_
                          _hd5067150788_
                          _tl5067250791_
                          _e5067350794_
                          _hd5067450798_
                          _tl5067550801_
                          _e5067650804_
                          _hd5067750808_
                          _tl5067850811_
                          _e5067950814_
                          _hd5068050818_
                          _tl5068150821_
                          _e5068250824_
                          _hd5068350828_
                          _tl5068450831_)
                   (let ((_L50834_ _hd5068350828_)
                         (_L50836_ _hd5068050818_)
                         (_L50837_ _hd5067750808_)
                         (_L50838_ _hd5067450798_))
                     (if (if (gx#identifier? _L50838_)
                             (if (gx#identifier? _L50837_)
                                 (gx#identifier? _L50836_)
                                 '#f)
                             '#f)
                         (___kont5316553166_
                          _L50834_
                          _L50836_
                          _L50837_
                          _L50838_)
                         (_g5066450706_))))))
            (if (gx#stx-pair? ___stx5316253163_)
                (let ((_e5067050784_ (gx#syntax-e ___stx5316253163_)))
                  (let ((_tl5067250791_ (##cdr _e5067050784_))
                        (_hd5067150788_ (##car _e5067050784_)))
                    (if (gx#stx-pair? _tl5067250791_)
                        (let ((_e5067350794_ (gx#syntax-e _tl5067250791_)))
                          (let ((_tl5067550801_ (##cdr _e5067350794_))
                                (_hd5067450798_ (##car _e5067350794_)))
                            (if (gx#stx-pair? _tl5067550801_)
                                (let ((_e5067650804_
                                       (gx#syntax-e _tl5067550801_)))
                                  (let ((_tl5067850811_ (##cdr _e5067650804_))
                                        (_hd5067750808_ (##car _e5067650804_)))
                                    (if (gx#stx-pair? _tl5067850811_)
                                        (let ((_e5067950814_
                                               (gx#syntax-e _tl5067850811_)))
                                          (let ((_tl5068150821_
                                                 (##cdr _e5067950814_))
                                                (_hd5068050818_
                                                 (##car _e5067950814_)))
                                            (if (gx#stx-pair? _tl5068150821_)
                                                (let ((_e5068250824_
                                                       (gx#syntax-e
                                                        _tl5068150821_)))
                                                  (let ((_tl5068450831_
                                                         (##cdr _e5068250824_))
                                                        (_hd5068350828_
                                                         (##car _e5068250824_)))
                                                    (if (gx#stx-null?
                                                         _tl5068450831_)
                                                        (___match5320153202_
                                                         _e5067050784_
                                                         _hd5067150788_
                                                         _tl5067250791_
                                                         _e5067350794_
                                                         _hd5067450798_
                                                         _tl5067550801_
                                                         _e5067650804_
                                                         _hd5067750808_
                                                         _tl5067850811_
                                                         _e5067950814_
                                                         _hd5068050818_
                                                         _tl5068150821_
                                                         _e5068250824_
                                                         _hd5068350828_
                                                         _tl5068450831_)
                                                        (_g5066450706_))))
                                                (if (gx#stx-null?
                                                     _tl5068150821_)
                                                    (___kont5316753168_
                                                     _hd5068050818_
                                                     _hd5067750808_
                                                     _hd5067450798_
                                                     _hd5067150788_)
                                                    (_g5066450706_)))))
                                        (_g5066450706_))))
                                (_g5066450706_))))
                        (_g5066450706_))))
                (_g5066450706_)))))))
  (define |gxc[:0:]#declare-method*|
    (lambda (_$stx50863_)
      (let* ((_g5086750902_
              (lambda (_g5086850898_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5086850898_)))
             (_g5086651021_
              (lambda (_g5086850906_)
                (if (gx#stx-pair? _g5086850906_)
                    (let ((_e5087250909_ (gx#syntax-e _g5086850906_)))
                      (let ((_hd5087350913_ (##car _e5087250909_))
                            (_tl5087450916_ (##cdr _e5087250909_)))
                        (if (gx#stx-pair/null? _tl5087450916_)
                            (let ((_g53673_
                                   (gx#syntax-split-splice _tl5087450916_ '0)))
                              (begin
                                (let ((_g53674_
                                       (if (##values? _g53673_)
                                           (##vector-length _g53673_)
                                           1)))
                                  (if (not (##fx= _g53674_ 2))
                                      (error "Context expects 2 values"
                                             _g53674_)))
                                (let ((_target5087550919_
                                       (##vector-ref _g53673_ 0))
                                      (_tl5087750922_
                                       (##vector-ref _g53673_ 1)))
                                  (if (gx#stx-null? _tl5087750922_)
                                      (letrec ((_loop5087850925_
                                                (lambda (_hd5087650929_
                                                         _symbol5088250932_
                                                         _method5088350934_
                                                         _type-t5088450936_)
                                                  (if (gx#stx-pair?
                                                       _hd5087650929_)
                                                      (let ((_e5087950939_
                                                             (gx#syntax-e
                                                              _hd5087650929_)))
                                                        (let ((_lp-hd5088050943_
                                                               (##car _e5087950939_))
                                                              (_lp-tl5088150946_
                                                               (##cdr _e5087950939_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd5088050943_)
                                                              (let ((_e5088850949_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _lp-hd5088050943_)))
                        (let ((_hd5088950953_ (##car _e5088850949_))
                              (_tl5089050956_ (##cdr _e5088850949_)))
                          (if (gx#stx-pair? _tl5089050956_)
                              (let ((_e5089150959_
                                     (gx#syntax-e _tl5089050956_)))
                                (let ((_hd5089250963_ (##car _e5089150959_))
                                      (_tl5089350966_ (##cdr _e5089150959_)))
                                  (if (gx#stx-pair? _tl5089350966_)
                                      (let ((_e5089450969_
                                             (gx#syntax-e _tl5089350966_)))
                                        (let ((_hd5089550973_
                                               (##car _e5089450969_))
                                              (_tl5089650976_
                                               (##cdr _e5089450969_)))
                                          (if (gx#stx-null? _tl5089650976_)
                                              (_loop5087850925_
                                               _lp-tl5088150946_
                                               (cons _hd5089550973_
                                                     _symbol5088250932_)
                                               (cons _hd5089250963_
                                                     _method5088350934_)
                                               (cons _hd5088950953_
                                                     _type-t5088450936_))
                                              (_g5086750902_ _g5086850906_))))
                                      (_g5086750902_ _g5086850906_))))
                              (_g5086750902_ _g5086850906_))))
                      (_g5086750902_ _g5086850906_))))
              (let ((_symbol5088550979_ (reverse _symbol5088250932_))
                    (_method5088650982_ (reverse _method5088350934_))
                    (_type-t5088750984_ (reverse _type-t5088450936_)))
                ((lambda (_L50987_ _L50989_ _L50990_)
                   (cons (gx#datum->syntax__0 '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets
                            _L50987_
                            _L50989_
                            _L50990_)
                           (foldr (lambda (_g5100651011_
                                           _g5100751014_
                                           _g5100851016_
                                           _g5100951018_)
                                    (cons (cons (gx#datum->syntax__0
                                                 '#f
                                                 'declare-method)
                                                (cons _g5100851016_
                                                      (cons _g5100751014_
                                                            (cons _g5100651011_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _g5100951018_))
                                  '()
                                  _L50987_
                                  _L50989_
                                  _L50990_))))
                 _symbol5088550979_
                 _method5088650982_
                 _type-t5088750984_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop5087850925_
                                         _target5087550919_
                                         '()
                                         '()
                                         '()))
                                      (_g5086750902_ _g5086850906_)))))
                            (_g5086750902_ _g5086850906_))))
                    (_g5086750902_ _g5086850906_)))))
        (_g5086651021_ _$stx50863_))))
  (define |gxc[:0:]#declare-methods|
    (lambda (_$stx51026_)
      (let* ((_g5103051063_
              (lambda (_g5103151059_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5103151059_)))
             (_g5102951177_
              (lambda (_g5103151067_)
                (if (gx#stx-pair? _g5103151067_)
                    (let ((_e5103551070_ (gx#syntax-e _g5103151067_)))
                      (let ((_hd5103651074_ (##car _e5103551070_))
                            (_tl5103751077_ (##cdr _e5103551070_)))
                        (if (gx#stx-pair? _tl5103751077_)
                            (let ((_e5103851080_ (gx#syntax-e _tl5103751077_)))
                              (let ((_hd5103951084_ (##car _e5103851080_))
                                    (_tl5104051087_ (##cdr _e5103851080_)))
                                (if (gx#stx-pair/null? _tl5104051087_)
                                    (let ((_g53675_
                                           (gx#syntax-split-splice
                                            _tl5104051087_
                                            '0)))
                                      (begin
                                        (let ((_g53676_
                                               (if (##values? _g53675_)
                                                   (##vector-length _g53675_)
                                                   1)))
                                          (if (not (##fx= _g53676_ 2))
                                              (error "Context expects 2 values"
                                                     _g53676_)))
                                        (let ((_target5104151090_
                                               (##vector-ref _g53675_ 0))
                                              (_tl5104351093_
                                               (##vector-ref _g53675_ 1)))
                                          (if (gx#stx-null? _tl5104351093_)
                                              (letrec ((_loop5104451096_
                                                        (lambda (_hd5104251100_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _symbol5104851103_
                         _method5104951105_)
                  (if (gx#stx-pair? _hd5104251100_)
                      (let ((_e5104551108_ (gx#syntax-e _hd5104251100_)))
                        (let ((_lp-hd5104651112_ (##car _e5104551108_))
                              (_lp-tl5104751115_ (##cdr _e5104551108_)))
                          (if (gx#stx-pair? _lp-hd5104651112_)
                              (let ((_e5105251118_
                                     (gx#syntax-e _lp-hd5104651112_)))
                                (let ((_hd5105351122_ (##car _e5105251118_))
                                      (_tl5105451125_ (##cdr _e5105251118_)))
                                  (if (gx#stx-pair? _tl5105451125_)
                                      (let ((_e5105551128_
                                             (gx#syntax-e _tl5105451125_)))
                                        (let ((_hd5105651132_
                                               (##car _e5105551128_))
                                              (_tl5105751135_
                                               (##cdr _e5105551128_)))
                                          (if (gx#stx-null? _tl5105751135_)
                                              (_loop5104451096_
                                               _lp-tl5104751115_
                                               (cons _hd5105651132_
                                                     _symbol5104851103_)
                                               (cons _hd5105351122_
                                                     _method5104951105_))
                                              (_g5103051063_ _g5103151067_))))
                                      (_g5103051063_ _g5103151067_))))
                              (_g5103051063_ _g5103151067_))))
                      (let ((_symbol5105051138_ (reverse _symbol5104851103_))
                            (_method5105151141_ (reverse _method5104951105_)))
                        ((lambda (_L51144_ _L51146_ _L51147_)
                           (cons (gx#datum->syntax__0 '#f 'begin)
                                 (begin
                                   (gx#syntax-check-splice-targets
                                    _L51144_
                                    _L51146_)
                                   (foldr2 (lambda (_g5116551169_
                                                    _g5116651172_
                                                    _g5116751174_)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          'declare-method)
                                                         (cons _L51147_
                                                               (cons _g5116651172_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons _g5116551169_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _g5116751174_))
                                           '()
                                           _L51144_
                                           _L51146_))))
                         _symbol5105051138_
                         _method5105151141_
                         _hd5103951084_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_loop5104451096_
                                                 _target5104151090_
                                                 '()
                                                 '()))
                                              (_g5103051063_ _g5103151067_)))))
                                    (_g5103051063_ _g5103151067_))))
                            (_g5103051063_ _g5103151067_))))
                    (_g5103051063_ _g5103151067_)))))
        (_g5102951177_ _$stx51026_))))
  (define |gxc[:0:]#@alias|
    (lambda (_$stx51182_)
      (let* ((_g5118651200_
              (lambda (_g5118751196_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5118751196_)))
             (_g5118551241_
              (lambda (_g5118751204_)
                (if (gx#stx-pair? _g5118751204_)
                    (let ((_e5118951207_ (gx#syntax-e _g5118751204_)))
                      (let ((_hd5119051211_ (##car _e5118951207_))
                            (_tl5119151214_ (##cdr _e5118951207_)))
                        (if (gx#stx-pair? _tl5119151214_)
                            (let ((_e5119251217_ (gx#syntax-e _tl5119151214_)))
                              (let ((_hd5119351221_ (##car _e5119251217_))
                                    (_tl5119451224_ (##cdr _e5119251217_)))
                                (if (gx#stx-null? _tl5119451224_)
                                    ((lambda (_L51227_)
                                       (cons (gx#datum->syntax__0
                                              '#f
                                              'make-!alias)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          'quote)
                                                         (cons _L51227_ '()))
                                                   '())))
                                     _hd5119351221_)
                                    (_g5118651200_ _g5118751204_))))
                            (_g5118651200_ _g5118751204_))))
                    (_g5118651200_ _g5118751204_)))))
        (_g5118551241_ _$stx51182_))))
  (define |gxc[:0:]#@struct-type|
    (lambda (_$stx51245_)
      (let* ((___stx5323053231_ _$stx51245_)
             (_g5125151317_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5323053231_))))
        (let ((___kont5323353234_
               (lambda (_L51539_ _L51541_ _L51542_ _L51543_ _L51544_)
                 (cons (gx#datum->syntax__0 '#f '@make-struct-type)
                       (cons _L51544_
                             (cons _L51543_
                                   (cons _L51542_
                                         (cons _L51541_
                                               (cons _L51539_ '()))))))))
              (___kont5323553236_
               (lambda (_L51449_ _L51451_ _L51452_ _L51453_)
                 (cons _L51453_
                       (cons _L51452_
                             (cons _L51451_
                                   (cons _L51449_
                                         (cons '#f (cons '#f '()))))))))
              (___kont5323753238_
               (lambda (_L51374_ _L51376_ _L51377_ _L51378_ _L51379_)
                 (cons _L51379_
                       (cons (gx#datum->syntax__0 '#f 'type)
                             (cons _L51377_
                                   (cons _L51376_
                                         (cons _L51374_ (cons '#f '())))))))))
          (if (gx#stx-pair? ___stx5323053231_)
              (let ((_e5125851479_ (gx#syntax-e ___stx5323053231_)))
                (let ((_tl5126051486_ (##cdr _e5125851479_))
                      (_hd5125951483_ (##car _e5125851479_)))
                  (if (gx#stx-pair? _tl5126051486_)
                      (let ((_e5126151489_ (gx#syntax-e _tl5126051486_)))
                        (let ((_tl5126351496_ (##cdr _e5126151489_))
                              (_hd5126251493_ (##car _e5126151489_)))
                          (if (gx#stx-pair? _tl5126351496_)
                              (let ((_e5126451499_
                                     (gx#syntax-e _tl5126351496_)))
                                (let ((_tl5126651506_ (##cdr _e5126451499_))
                                      (_hd5126551503_ (##car _e5126451499_)))
                                  (if (gx#stx-pair? _tl5126651506_)
                                      (let ((_e5126751509_
                                             (gx#syntax-e _tl5126651506_)))
                                        (let ((_tl5126951516_
                                               (##cdr _e5126751509_))
                                              (_hd5126851513_
                                               (##car _e5126751509_)))
                                          (if (gx#stx-pair? _tl5126951516_)
                                              (let ((_e5127051519_
                                                     (gx#syntax-e
                                                      _tl5126951516_)))
                                                (let ((_tl5127251526_
                                                       (##cdr _e5127051519_))
                                                      (_hd5127151523_
                                                       (##car _e5127051519_)))
                                                  (if (gx#stx-pair?
                                                       _tl5127251526_)
                                                      (let ((_e5127351529_
                                                             (gx#syntax-e
                                                              _tl5127251526_)))
                                                        (let ((_tl5127551536_
                                                               (##cdr _e5127351529_))
                                                              (_hd5127451533_
                                                               (##car _e5127351529_)))
                                                          (if (gx#stx-null?
                                                               _tl5127551536_)
                                                              (___kont5323353234_
                                                               _hd5127451533_
                                                               _hd5127151523_
                                                               _hd5126851513_
                                                               _hd5126551503_
                                                               _hd5126251493_)
                                                              (_g5125151317_))))
                                                      (if (gx#stx-null?
                                                           _tl5127251526_)
                                                          (___kont5323753238_
                                                           _hd5127151523_
                                                           _hd5126851513_
                                                           _hd5126551503_
                                                           _hd5126251493_
                                                           _hd5125951483_)
                                                          (_g5125151317_)))))
                                              (if (gx#stx-null? _tl5126951516_)
                                                  (___kont5323553236_
                                                   _hd5126851513_
                                                   _hd5126551503_
                                                   _hd5126251493_
                                                   _hd5125951483_)
                                                  (_g5125151317_)))))
                                      (_g5125151317_))))
                              (_g5125151317_))))
                      (_g5125151317_))))
              (_g5125151317_))))))
  (define |gxc[:0:]#@make-struct-type|
    (lambda (_$stx51572_)
      (let* ((___stx5333853339_ _$stx51572_)
             (_g5157751630_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5333853339_))))
        (let ((___kont5334153342_
               (lambda (_L51798_ _L51800_ _L51801_ _L51802_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-type)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L51802_ '()))
                             (cons '#f
                                   (cons _L51801_
                                         (cons '0
                                               (cons (cons (gx#datum->syntax__0
                                                            '#f
                                                            'quote)
                                                           (cons _L51800_ '()))
                                                     (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _L51798_ '()))
                   '())))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              (___kont5334353344_
               (lambda (_L51697_ _L51699_ _L51700_ _L51701_ _L51702_)
                 (cons (gx#datum->syntax__0 '#f 'let*)
                       (cons (cons (cons (gx#datum->syntax__0 '#f 'super-type)
                                         (cons (cons (gx#datum->syntax__0
                                                      '#f
                                                      'optimizer-resolve-type)
                                                     (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons _L51701_ '()))
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
                                     (cons _L51699_ '()))
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
                                                     (cons _L51702_ '()))
                                               (cons (cons (gx#datum->syntax__0
                                                            '#f
                                                            'quote)
                                                           (cons _L51701_ '()))
                                                     (cons _L51700_
                                                           (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'xfields)
                         (cons (gx#datum->syntax__0 '#f 'xtor)
                               (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                           (cons _L51697_ '()))
                                     '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   '()))))))
          (if (gx#stx-pair? ___stx5333853339_)
              (let ((_e5158351734_ (gx#syntax-e ___stx5333853339_)))
                (let ((_tl5158551741_ (##cdr _e5158351734_))
                      (_hd5158451738_ (##car _e5158351734_)))
                  (if (gx#stx-pair? _tl5158551741_)
                      (let ((_e5158651744_ (gx#syntax-e _tl5158551741_)))
                        (let ((_tl5158851751_ (##cdr _e5158651744_))
                              (_hd5158751748_ (##car _e5158651744_)))
                          (if (gx#stx-pair? _tl5158851751_)
                              (let ((_e5158951754_
                                     (gx#syntax-e _tl5158851751_)))
                                (let ((_tl5159151761_ (##cdr _e5158951754_))
                                      (_hd5159051758_ (##car _e5158951754_)))
                                  (if (gx#stx-datum? _hd5159051758_)
                                      (let ((_e5159251764_
                                             (gx#stx-e _hd5159051758_)))
                                        (if (equal? _e5159251764_ '#f)
                                            (if (gx#stx-pair? _tl5159151761_)
                                                (let ((_e5159351768_
                                                       (gx#syntax-e
                                                        _tl5159151761_)))
                                                  (let ((_tl5159551775_
                                                         (##cdr _e5159351768_))
                                                        (_hd5159451772_
                                                         (##car _e5159351768_)))
                                                    (if (gx#stx-pair?
                                                         _tl5159551775_)
                                                        (let ((_e5159651778_
                                                               (gx#syntax-e
                                                                _tl5159551775_)))
                                                          (let ((_tl5159851785_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e5159651778_))
                        (_hd5159751782_ (##car _e5159651778_)))
                    (if (gx#stx-pair? _tl5159851785_)
                        (let ((_e5159951788_ (gx#syntax-e _tl5159851785_)))
                          (let ((_tl5160151795_ (##cdr _e5159951788_))
                                (_hd5160051792_ (##car _e5159951788_)))
                            (if (gx#stx-null? _tl5160151795_)
                                (___kont5334153342_
                                 _hd5160051792_
                                 _hd5159751782_
                                 _hd5159451772_
                                 _hd5158751748_)
                                (_g5157751630_))))
                        (_g5157751630_))))
                (_g5157751630_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g5157751630_))
                                            (if (gx#stx-pair? _tl5159151761_)
                                                (let ((_e5161651667_
                                                       (gx#syntax-e
                                                        _tl5159151761_)))
                                                  (let ((_tl5161851674_
                                                         (##cdr _e5161651667_))
                                                        (_hd5161751671_
                                                         (##car _e5161651667_)))
                                                    (if (gx#stx-pair?
                                                         _tl5161851674_)
                                                        (let ((_e5161951677_
                                                               (gx#syntax-e
                                                                _tl5161851674_)))
                                                          (let ((_tl5162151684_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##cdr _e5161951677_))
                        (_hd5162051681_ (##car _e5161951677_)))
                    (if (gx#stx-pair? _tl5162151684_)
                        (let ((_e5162251687_ (gx#syntax-e _tl5162151684_)))
                          (let ((_tl5162451694_ (##cdr _e5162251687_))
                                (_hd5162351691_ (##car _e5162251687_)))
                            (if (gx#stx-null? _tl5162451694_)
                                (___kont5334353344_
                                 _hd5162351691_
                                 _hd5162051681_
                                 _hd5161751671_
                                 _hd5159051758_
                                 _hd5158751748_)
                                (_g5157751630_))))
                        (_g5157751630_))))
                (_g5157751630_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_g5157751630_))))
                                      (if (gx#stx-pair? _tl5159151761_)
                                          (let ((_e5161651667_
                                                 (gx#syntax-e _tl5159151761_)))
                                            (let ((_tl5161851674_
                                                   (##cdr _e5161651667_))
                                                  (_hd5161751671_
                                                   (##car _e5161651667_)))
                                              (if (gx#stx-pair? _tl5161851674_)
                                                  (let ((_e5161951677_
                                                         (gx#syntax-e
                                                          _tl5161851674_)))
                                                    (let ((_tl5162151684_
                                                           (##cdr _e5161951677_))
                                                          (_hd5162051681_
                                                           (##car _e5161951677_)))
                                                      (if (gx#stx-pair?
                                                           _tl5162151684_)
                                                          (let ((_e5162251687_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl5162151684_)))
                    (let ((_tl5162451694_ (##cdr _e5162251687_))
                          (_hd5162351691_ (##car _e5162251687_)))
                      (if (gx#stx-null? _tl5162451694_)
                          (___kont5334353344_
                           _hd5162351691_
                           _hd5162051681_
                           _hd5161751671_
                           _hd5159051758_
                           _hd5158751748_)
                          (_g5157751630_))))
                  (_g5157751630_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g5157751630_))))
                                          (_g5157751630_)))))
                              (_g5157751630_))))
                      (_g5157751630_))))
              (_g5157751630_))))))
  (define |gxc[:0:]#@struct-pred|
    (lambda (_$stx51830_)
      (let* ((_g5183451848_
              (lambda (_g5183551844_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5183551844_)))
             (_g5183351889_
              (lambda (_g5183551852_)
                (if (gx#stx-pair? _g5183551852_)
                    (let ((_e5183751855_ (gx#syntax-e _g5183551852_)))
                      (let ((_hd5183851859_ (##car _e5183751855_))
                            (_tl5183951862_ (##cdr _e5183751855_)))
                        (if (gx#stx-pair? _tl5183951862_)
                            (let ((_e5184051865_ (gx#syntax-e _tl5183951862_)))
                              (let ((_hd5184151869_ (##car _e5184051865_))
                                    (_tl5184251872_ (##cdr _e5184051865_)))
                                (if (gx#stx-null? _tl5184251872_)
                                    ((lambda (_L51875_)
                                       (cons (gx#datum->syntax__0
                                              '#f
                                              'make-!struct-pred)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          'quote)
                                                         (cons _L51875_ '()))
                                                   '())))
                                     _hd5184151869_)
                                    (_g5183451848_ _g5183551852_))))
                            (_g5183451848_ _g5183551852_))))
                    (_g5183451848_ _g5183551852_)))))
        (_g5183351889_ _$stx51830_))))
  (define |gxc[:0:]#@struct-cons|
    (lambda (_$stx51893_)
      (let* ((_g5189751911_
              (lambda (_g5189851907_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5189851907_)))
             (_g5189651952_
              (lambda (_g5189851915_)
                (if (gx#stx-pair? _g5189851915_)
                    (let ((_e5190051918_ (gx#syntax-e _g5189851915_)))
                      (let ((_hd5190151922_ (##car _e5190051918_))
                            (_tl5190251925_ (##cdr _e5190051918_)))
                        (if (gx#stx-pair? _tl5190251925_)
                            (let ((_e5190351928_ (gx#syntax-e _tl5190251925_)))
                              (let ((_hd5190451932_ (##car _e5190351928_))
                                    (_tl5190551935_ (##cdr _e5190351928_)))
                                (if (gx#stx-null? _tl5190551935_)
                                    ((lambda (_L51938_)
                                       (cons (gx#datum->syntax__0
                                              '#f
                                              'make-!struct-cons)
                                             (cons (cons (gx#datum->syntax__0
                                                          '#f
                                                          'quote)
                                                         (cons _L51938_ '()))
                                                   '())))
                                     _hd5190451932_)
                                    (_g5189751911_ _g5189851915_))))
                            (_g5189751911_ _g5189851915_))))
                    (_g5189751911_ _g5189851915_)))))
        (_g5189651952_ _$stx51893_))))
  (define |gxc[:0:]#@struct-getf|
    (lambda (_$stx51956_)
      (let* ((___stx5343053431_ _$stx51956_)
             (_g5196151994_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5343053431_))))
        (let ((___kont5343353434_
               (lambda (_L52096_ _L52098_ _L52099_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-getf)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L52099_ '()))
                             (cons _L52098_ (cons _L52096_ '()))))))
              (___kont5343553436_
               (lambda (_L52031_ _L52033_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-getf)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L52033_ '()))
                             (cons _L52031_ (cons '#f '())))))))
          (if (gx#stx-pair? ___stx5343053431_)
              (let ((_e5196652056_ (gx#syntax-e ___stx5343053431_)))
                (let ((_tl5196852063_ (##cdr _e5196652056_))
                      (_hd5196752060_ (##car _e5196652056_)))
                  (if (gx#stx-pair? _tl5196852063_)
                      (let ((_e5196952066_ (gx#syntax-e _tl5196852063_)))
                        (let ((_tl5197152073_ (##cdr _e5196952066_))
                              (_hd5197052070_ (##car _e5196952066_)))
                          (if (gx#stx-pair? _tl5197152073_)
                              (let ((_e5197252076_
                                     (gx#syntax-e _tl5197152073_)))
                                (let ((_tl5197452083_ (##cdr _e5197252076_))
                                      (_hd5197352080_ (##car _e5197252076_)))
                                  (if (gx#stx-pair? _tl5197452083_)
                                      (let ((_e5197552086_
                                             (gx#syntax-e _tl5197452083_)))
                                        (let ((_tl5197752093_
                                               (##cdr _e5197552086_))
                                              (_hd5197652090_
                                               (##car _e5197552086_)))
                                          (if (gx#stx-null? _tl5197752093_)
                                              (___kont5343353434_
                                               _hd5197652090_
                                               _hd5197352080_
                                               _hd5197052070_)
                                              (_g5196151994_))))
                                      (if (gx#stx-null? _tl5197452083_)
                                          (___kont5343553436_
                                           _hd5197352080_
                                           _hd5197052070_)
                                          (_g5196151994_)))))
                              (_g5196151994_))))
                      (_g5196151994_))))
              (_g5196151994_))))))
  (define |gxc[:0:]#@struct-setf|
    (lambda (_$stx52121_)
      (let* ((___stx5348653487_ _$stx52121_)
             (_g5212652159_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5348653487_))))
        (let ((___kont5348953490_
               (lambda (_L52261_ _L52263_ _L52264_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-setf)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L52264_ '()))
                             (cons _L52263_ (cons _L52261_ '()))))))
              (___kont5349153492_
               (lambda (_L52196_ _L52198_)
                 (cons (gx#datum->syntax__0 '#f 'make-!struct-setf)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons _L52198_ '()))
                             (cons _L52196_ (cons '#f '())))))))
          (if (gx#stx-pair? ___stx5348653487_)
              (let ((_e5213152221_ (gx#syntax-e ___stx5348653487_)))
                (let ((_tl5213352228_ (##cdr _e5213152221_))
                      (_hd5213252225_ (##car _e5213152221_)))
                  (if (gx#stx-pair? _tl5213352228_)
                      (let ((_e5213452231_ (gx#syntax-e _tl5213352228_)))
                        (let ((_tl5213652238_ (##cdr _e5213452231_))
                              (_hd5213552235_ (##car _e5213452231_)))
                          (if (gx#stx-pair? _tl5213652238_)
                              (let ((_e5213752241_
                                     (gx#syntax-e _tl5213652238_)))
                                (let ((_tl5213952248_ (##cdr _e5213752241_))
                                      (_hd5213852245_ (##car _e5213752241_)))
                                  (if (gx#stx-pair? _tl5213952248_)
                                      (let ((_e5214052251_
                                             (gx#syntax-e _tl5213952248_)))
                                        (let ((_tl5214252258_
                                               (##cdr _e5214052251_))
                                              (_hd5214152255_
                                               (##car _e5214052251_)))
                                          (if (gx#stx-null? _tl5214252258_)
                                              (___kont5348953490_
                                               _hd5214152255_
                                               _hd5213852245_
                                               _hd5213552235_)
                                              (_g5212652159_))))
                                      (if (gx#stx-null? _tl5213952248_)
                                          (___kont5349153492_
                                           _hd5213852245_
                                           _hd5213552235_)
                                          (_g5212652159_)))))
                              (_g5212652159_))))
                      (_g5212652159_))))
              (_g5212652159_))))))
  (define |gxc[:0:]#@lambda|
    (lambda (_$stx52286_)
      (let* ((___stx5354253543_ _$stx52286_)
             (_g5229252333_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5354253543_))))
        (let ((___kont5354553546_
               (lambda (_L52481_ _L52483_)
                 (cons (gx#datum->syntax__0 '#f 'make-!lambda)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons (gx#datum->syntax__0 '#f 'lambda)
                                         '()))
                             (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                         (cons _L52483_ '()))
                                   (cons '#f
                                         (cons _L52481_
                                               (cons (cons (gx#datum->syntax__0
                                                            '#f
                                                            'quote)
                                                           (cons _L52481_ '()))
                                                     '()))))))))
              (___kont5354753548_
               (lambda (_L52413_ _L52415_)
                 (cons (gx#datum->syntax__0 '#f 'make-!lambda)
                       (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                   (cons (gx#datum->syntax__0 '#f 'lambda)
                                         '()))
                             (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                         (cons _L52415_ '()))
                                   (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                               (cons _L52413_ '()))
                                         '()))))))
              (___kont5354953550_
               (lambda (_L52360_ _L52362_)
                 (cons _L52362_ (cons _L52360_ (cons '#f '()))))))
          (if (gx#stx-pair? ___stx5354253543_)
              (let ((_e5229652437_ (gx#syntax-e ___stx5354253543_)))
                (let ((_tl5229852444_ (##cdr _e5229652437_))
                      (_hd5229752441_ (##car _e5229652437_)))
                  (if (gx#stx-pair? _tl5229852444_)
                      (let ((_e5229952447_ (gx#syntax-e _tl5229852444_)))
                        (let ((_tl5230152454_ (##cdr _e5229952447_))
                              (_hd5230052451_ (##car _e5229952447_)))
                          (if (gx#stx-pair? _tl5230152454_)
                              (let ((_e5230252457_
                                     (gx#syntax-e _tl5230152454_)))
                                (let ((_tl5230452464_ (##cdr _e5230252457_))
                                      (_hd5230352461_ (##car _e5230252457_)))
                                  (if (gx#stx-datum? _hd5230352461_)
                                      (let ((_e5230552467_
                                             (gx#stx-e _hd5230352461_)))
                                        (if (equal? _e5230552467_ 'inline:)
                                            (if (gx#stx-pair? _tl5230452464_)
                                                (let ((_e5230652471_
                                                       (gx#syntax-e
                                                        _tl5230452464_)))
                                                  (let ((_tl5230852478_
                                                         (##cdr _e5230652471_))
                                                        (_hd5230752475_
                                                         (##car _e5230652471_)))
                                                    (if (gx#stx-null?
                                                         _tl5230852478_)
                                                        (___kont5354553546_
                                                         _hd5230752475_
                                                         _hd5230052451_)
                                                        (_g5229252333_))))
                                                (if (gx#stx-null?
                                                     _tl5230452464_)
                                                    (___kont5354753548_
                                                     _hd5230352461_
                                                     _hd5230052451_)
                                                    (_g5229252333_)))
                                            (if (gx#stx-null? _tl5230452464_)
                                                (___kont5354753548_
                                                 _hd5230352461_
                                                 _hd5230052451_)
                                                (_g5229252333_))))
                                      (if (gx#stx-null? _tl5230452464_)
                                          (___kont5354753548_
                                           _hd5230352461_
                                           _hd5230052451_)
                                          (_g5229252333_)))))
                              (if (gx#stx-null? _tl5230152454_)
                                  (___kont5354953550_
                                   _hd5230052451_
                                   _hd5229752441_)
                                  (_g5229252333_)))))
                      (_g5229252333_))))
              (_g5229252333_))))))
  (define |gxc[:0:]#@case-lambda|
    (lambda (_$stx52505_)
      (let* ((_g5250952538_
              (lambda (_g5251052534_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5251052534_)))
             (_g5250852638_
              (lambda (_g5251052542_)
                (if (gx#stx-pair? _g5251052542_)
                    (let ((_e5251352545_ (gx#syntax-e _g5251052542_)))
                      (let ((_hd5251452549_ (##car _e5251352545_))
                            (_tl5251552552_ (##cdr _e5251352545_)))
                        (if (gx#stx-pair/null? _tl5251552552_)
                            (let ((_g53677_
                                   (gx#syntax-split-splice _tl5251552552_ '0)))
                              (begin
                                (let ((_g53678_
                                       (if (##values? _g53677_)
                                           (##vector-length _g53677_)
                                           1)))
                                  (if (not (##fx= _g53678_ 2))
                                      (error "Context expects 2 values"
                                             _g53678_)))
                                (let ((_target5251652555_
                                       (##vector-ref _g53677_ 0))
                                      (_tl5251852558_
                                       (##vector-ref _g53677_ 1)))
                                  (if (gx#stx-null? _tl5251852558_)
                                      (letrec ((_loop5251952561_
                                                (lambda (_hd5251752565_
                                                         _dispatch5252352568_
                                                         _arity5252452570_)
                                                  (if (gx#stx-pair?
                                                       _hd5251752565_)
                                                      (let ((_e5252052573_
                                                             (gx#syntax-e
                                                              _hd5251752565_)))
                                                        (let ((_lp-hd5252152577_
                                                               (##car _e5252052573_))
                                                              (_lp-tl5252252580_
                                                               (##cdr _e5252052573_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd5252152577_)
                                                              (let ((_e5252752583_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _lp-hd5252152577_)))
                        (let ((_hd5252852587_ (##car _e5252752583_))
                              (_tl5252952590_ (##cdr _e5252752583_)))
                          (if (gx#stx-pair? _tl5252952590_)
                              (let ((_e5253052593_
                                     (gx#syntax-e _tl5252952590_)))
                                (let ((_hd5253152597_ (##car _e5253052593_))
                                      (_tl5253252600_ (##cdr _e5253052593_)))
                                  (if (gx#stx-null? _tl5253252600_)
                                      (_loop5251952561_
                                       _lp-tl5252252580_
                                       (cons _hd5253152597_
                                             _dispatch5252352568_)
                                       (cons _hd5252852587_ _arity5252452570_))
                                      (_g5250952538_ _g5251052542_))))
                              (_g5250952538_ _g5251052542_))))
                      (_g5250952538_ _g5251052542_))))
              (let ((_dispatch5252552603_ (reverse _dispatch5252352568_))
                    (_arity5252652606_ (reverse _arity5252452570_)))
                ((lambda (_L52609_ _L52611_)
                   (cons (gx#datum->syntax__0 '#f 'make-!case-lambda)
                         (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                     (cons (gx#datum->syntax__0
                                            '#f
                                            'case-lambda)
                                           '()))
                               (cons (cons (gx#datum->syntax__0 '#f '@list)
                                           (begin
                                             (gx#syntax-check-splice-targets
                                              _L52609_
                                              _L52611_)
                                             (foldr2 (lambda (_g5262652630_
                                                              _g5262752633_
                                                              _g5262852635_)
                                                       (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            '@lambda)
                           (cons _g5262752633_ (cons _g5262652630_ '())))
                     _g5262852635_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()
                                                     _L52609_
                                                     _L52611_)))
                                     '()))))
                 _dispatch5252552603_
                 _arity5252652606_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop5251952561_
                                         _target5251652555_
                                         '()
                                         '()))
                                      (_g5250952538_ _g5251052542_)))))
                            (_g5250952538_ _g5251052542_))))
                    (_g5250952538_ _g5251052542_)))))
        (_g5250852638_ _$stx52505_))))
  (define |gxc[:0:]#@kw-lambda|
    (lambda (_$stx52643_)
      (let* ((_g5264752665_
              (lambda (_g5264852661_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5264852661_)))
             (_g5264652720_
              (lambda (_g5264852669_)
                (if (gx#stx-pair? _g5264852669_)
                    (let ((_e5265152672_ (gx#syntax-e _g5264852669_)))
                      (let ((_hd5265252676_ (##car _e5265152672_))
                            (_tl5265352679_ (##cdr _e5265152672_)))
                        (if (gx#stx-pair? _tl5265352679_)
                            (let ((_e5265452682_ (gx#syntax-e _tl5265352679_)))
                              (let ((_hd5265552686_ (##car _e5265452682_))
                                    (_tl5265652689_ (##cdr _e5265452682_)))
                                (if (gx#stx-pair? _tl5265652689_)
                                    (let ((_e5265752692_
                                           (gx#syntax-e _tl5265652689_)))
                                      (let ((_hd5265852696_
                                             (##car _e5265752692_))
                                            (_tl5265952699_
                                             (##cdr _e5265752692_)))
                                        (if (gx#stx-null? _tl5265952699_)
                                            ((lambda (_L52702_ _L52704_)
                                               (cons (gx#datum->syntax__0
                                                      '#f
                                                      'make-!kw-lambda)
                                                     (cons (cons (gx#datum->syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '#f
                          'quote)
                         (cons (gx#datum->syntax__0 '#f 'kw-lambda) '()))
                   (cons (cons (gx#datum->syntax__0 '#f 'quote)
                               (cons _L52704_ '()))
                         (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                     (cons _L52702_ '()))
                               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd5265852696_
                                             _hd5265552686_)
                                            (_g5264752665_ _g5264852669_))))
                                    (_g5264752665_ _g5264852669_))))
                            (_g5264752665_ _g5264852669_))))
                    (_g5264752665_ _g5264852669_)))))
        (_g5264652720_ _$stx52643_))))
  (define |gxc[:0:]#@kw-lambda-dispatch|
    (lambda (_$stx52724_)
      (let* ((_g5272852746_
              (lambda (_g5272952742_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5272952742_)))
             (_g5272752801_
              (lambda (_g5272952750_)
                (if (gx#stx-pair? _g5272952750_)
                    (let ((_e5273252753_ (gx#syntax-e _g5272952750_)))
                      (let ((_hd5273352757_ (##car _e5273252753_))
                            (_tl5273452760_ (##cdr _e5273252753_)))
                        (if (gx#stx-pair? _tl5273452760_)
                            (let ((_e5273552763_ (gx#syntax-e _tl5273452760_)))
                              (let ((_hd5273652767_ (##car _e5273552763_))
                                    (_tl5273752770_ (##cdr _e5273552763_)))
                                (if (gx#stx-pair? _tl5273752770_)
                                    (let ((_e5273852773_
                                           (gx#syntax-e _tl5273752770_)))
                                      (let ((_hd5273952777_
                                             (##car _e5273852773_))
                                            (_tl5274052780_
                                             (##cdr _e5273852773_)))
                                        (if (gx#stx-null? _tl5274052780_)
                                            ((lambda (_L52783_ _L52785_)
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
                               (cons _L52785_ '()))
                         (cons (cons (gx#datum->syntax__0 '#f 'quote)
                                     (cons _L52783_ '()))
                               '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _hd5273952777_
                                             _hd5273652767_)
                                            (_g5272852746_ _g5272952750_))))
                                    (_g5272852746_ _g5272952750_))))
                            (_g5272852746_ _g5272952750_))))
                    (_g5272852746_ _g5272952750_)))))
        (_g5272752801_ _$stx52724_))))
  (define |gxc[:0:]#declare-primitive|
    (lambda (_$stx52805_)
      (let* ((___stx5362053621_ _$stx52805_)
             (_g5281052845_
              (lambda ()
                (gx#raise-syntax-error '#f '"Bad syntax" ___stx5362053621_))))
        (let ((___kont5362353624_
               (lambda (_L52967_ _L52969_)
                 (cons (gx#datum->syntax__0 '#f 'declare-type)
                       (cons _L52969_
                             (cons (cons (gx#datum->syntax__0 '#f '@lambda)
                                         (cons _L52967_ '()))
                                   '())))))
              (___kont5362553626_
               (lambda (_L52902_ _L52904_)
                 (cons (gx#datum->syntax__0 '#f 'declare-type)
                       (cons _L52904_
                             (cons (cons (gx#datum->syntax__0
                                          '#f
                                          '@case-lambda)
                                         (begin
                                           '#!void
                                           (foldr1 (lambda (_g5292152924_
                                                            _g5292252927_)
                                                     (cons (cons _g5292152924_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons '#f '()))
                   _g5292252927_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   '()
                                                   _L52902_)))
                                   '()))))))
          (let ((___match5366953670_
                 (lambda (_e5282552852_
                          _hd5282652856_
                          _tl5282752859_
                          _e5282852862_
                          _hd5282952866_
                          _tl5283052869_
                          ___splice5362753628_
                          _target5283152872_
                          _tl5283352875_)
                   (letrec ((_loop5283452878_
                             (lambda (_hd5283252882_ _arity5283852885_)
                               (if (gx#stx-pair? _hd5283252882_)
                                   (let ((_e5283552888_
                                          (gx#syntax-e _hd5283252882_)))
                                     (let ((_lp-tl5283752895_
                                            (##cdr _e5283552888_))
                                           (_lp-hd5283652892_
                                            (##car _e5283552888_)))
                                       (_loop5283452878_
                                        _lp-tl5283752895_
                                        (cons _lp-hd5283652892_
                                              _arity5283852885_))))
                                   (let ((_arity5283952898_
                                          (reverse _arity5283852885_)))
                                     (___kont5362553626_
                                      _arity5283952898_
                                      _hd5282952866_))))))
                     (_loop5283452878_ _target5283152872_ '())))))
            (if (gx#stx-pair? ___stx5362053621_)
                (let ((_e5281452937_ (gx#syntax-e ___stx5362053621_)))
                  (let ((_tl5281652944_ (##cdr _e5281452937_))
                        (_hd5281552941_ (##car _e5281452937_)))
                    (if (gx#stx-pair? _tl5281652944_)
                        (let ((_e5281752947_ (gx#syntax-e _tl5281652944_)))
                          (let ((_tl5281952954_ (##cdr _e5281752947_))
                                (_hd5281852951_ (##car _e5281752947_)))
                            (if (gx#stx-pair? _tl5281952954_)
                                (let ((_e5282052957_
                                       (gx#syntax-e _tl5281952954_)))
                                  (let ((_tl5282252964_ (##cdr _e5282052957_))
                                        (_hd5282152961_ (##car _e5282052957_)))
                                    (if (gx#stx-null? _tl5282252964_)
                                        (___kont5362353624_
                                         _hd5282152961_
                                         _hd5281852951_)
                                        (if (gx#stx-pair/null? _tl5281952954_)
                                            (let ((___splice5362753628_
                                                   (gx#syntax-split-splice
                                                    _tl5281952954_
                                                    '0)))
                                              (let ((_tl5283352875_
                                                     (##vector-ref
                                                      ___splice5362753628_
                                                      '1))
                                                    (_target5283152872_
                                                     (##vector-ref
                                                      ___splice5362753628_
                                                      '0)))
                                                (if (gx#stx-null?
                                                     _tl5283352875_)
                                                    (___match5366953670_
                                                     _e5281452937_
                                                     _hd5281552941_
                                                     _tl5281652944_
                                                     _e5281752947_
                                                     _hd5281852951_
                                                     _tl5281952954_
                                                     ___splice5362753628_
                                                     _target5283152872_
                                                     _tl5283352875_)
                                                    (_g5281052845_))))
                                            (_g5281052845_)))))
                                (if (gx#stx-pair/null? _tl5281952954_)
                                    (let ((___splice5362753628_
                                           (gx#syntax-split-splice
                                            _tl5281952954_
                                            '0)))
                                      (let ((_tl5283352875_
                                             (##vector-ref
                                              ___splice5362753628_
                                              '1))
                                            (_target5283152872_
                                             (##vector-ref
                                              ___splice5362753628_
                                              '0)))
                                        (if (gx#stx-null? _tl5283352875_)
                                            (___match5366953670_
                                             _e5281452937_
                                             _hd5281552941_
                                             _tl5281652944_
                                             _e5281752947_
                                             _hd5281852951_
                                             _tl5281952954_
                                             ___splice5362753628_
                                             _target5283152872_
                                             _tl5283352875_)
                                            (_g5281052845_))))
                                    (_g5281052845_)))))
                        (_g5281052845_))))
                (_g5281052845_)))))))
  (define |gxc[:0:]#declare-primitive*|
    (lambda (_$stx52989_)
      (let* ((_g5299353028_
              (lambda (_g5299453024_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g5299453024_)))
             (_g5299253156_
              (lambda (_g5299453032_)
                (if (gx#stx-pair? _g5299453032_)
                    (let ((_e5299753035_ (gx#syntax-e _g5299453032_)))
                      (let ((_hd5299853039_ (##car _e5299753035_))
                            (_tl5299953042_ (##cdr _e5299753035_)))
                        (if (gx#stx-pair/null? _tl5299953042_)
                            (let ((_g53679_
                                   (gx#syntax-split-splice _tl5299953042_ '0)))
                              (begin
                                (let ((_g53680_
                                       (if (##values? _g53679_)
                                           (##vector-length _g53679_)
                                           1)))
                                  (if (not (##fx= _g53680_ 2))
                                      (error "Context expects 2 values"
                                             _g53680_)))
                                (let ((_target5300053045_
                                       (##vector-ref _g53679_ 0))
                                      (_tl5300253048_
                                       (##vector-ref _g53679_ 1)))
                                  (if (gx#stx-null? _tl5300253048_)
                                      (letrec ((_loop5300353051_
                                                (lambda (_hd5300153055_
                                                         _arity5300753058_
                                                         _prim5300853060_)
                                                  (if (gx#stx-pair?
                                                       _hd5300153055_)
                                                      (let ((_e5300453063_
                                                             (gx#syntax-e
                                                              _hd5300153055_)))
                                                        (let ((_lp-hd5300553067_
                                                               (##car _e5300453063_))
                                                              (_lp-tl5300653070_
                                                               (##cdr _e5300453063_)))
                                                          (if (gx#stx-pair?
                                                               _lp-hd5300553067_)
                                                              (let ((_e5301153073_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _lp-hd5300553067_)))
                        (let ((_hd5301253077_ (##car _e5301153073_))
                              (_tl5301353080_ (##cdr _e5301153073_)))
                          (if (gx#stx-pair/null? _tl5301353080_)
                              (let ((_g53681_
                                     (gx#syntax-split-splice
                                      _tl5301353080_
                                      '0)))
                                (begin
                                  (let ((_g53682_
                                         (if (##values? _g53681_)
                                             (##vector-length _g53681_)
                                             1)))
                                    (if (not (##fx= _g53682_ 2))
                                        (error "Context expects 2 values"
                                               _g53682_)))
                                  (let ((_target5301453083_
                                         (##vector-ref _g53681_ 0))
                                        (_tl5301653086_
                                         (##vector-ref _g53681_ 1)))
                                    (if (gx#stx-null? _tl5301653086_)
                                        (letrec ((_loop5301753089_
                                                  (lambda (_hd5301553093_
                                                           _arity5302153096_)
                                                    (if (gx#stx-pair?
                                                         _hd5301553093_)
                                                        (let ((_e5301853099_
                                                               (gx#syntax-e
                                                                _hd5301553093_)))
                                                          (let ((_lp-hd5301953103_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _e5301853099_))
                        (_lp-tl5302053106_ (##cdr _e5301853099_)))
                    (_loop5301753089_
                     _lp-tl5302053106_
                     (cons _lp-hd5301953103_ _arity5302153096_))))
                (let ((_arity5302253109_ (reverse _arity5302153096_)))
                  (_loop5300353051_
                   _lp-tl5300653070_
                   (cons _arity5302253109_ _arity5300753058_)
                   (cons _hd5301253077_ _prim5300853060_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_loop5301753089_
                                           _target5301453083_
                                           '()))
                                        (_g5299353028_ _g5299453032_)))))
                              (_g5299353028_ _g5299453032_))))
                      (_g5299353028_ _g5299453032_))))
              (let ((_arity5300953113_ (reverse _arity5300753058_))
                    (_prim5301053116_ (reverse _prim5300853060_)))
                ((lambda (_L53119_ _L53121_)
                   (cons (gx#datum->syntax__0 '#f 'begin)
                         (begin
                           (gx#syntax-check-splice-targets _L53119_ _L53121_)
                           (foldr2 (lambda (_g5313653142_
                                            _g5313753145_
                                            _g5313853147_)
                                     (cons (cons (gx#datum->syntax__0
                                                  '#f
                                                  'declare-primitive)
                                                 (cons _g5313753145_
                                                       (begin
                                                         '#!void
                                                         (foldr1 (lambda (_g5313953150_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  _g5314053153_)
                           (cons _g5313953150_ _g5314053153_))
                         '()
                         _g5313653142_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           _g5313853147_))
                                   '()
                                   _L53119_
                                   _L53121_))))
                 _arity5300953113_
                 _prim5301053116_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (_loop5300353051_
                                         _target5300053045_
                                         '()
                                         '()))
                                      (_g5299353028_ _g5299453032_)))))
                            (_g5299353028_ _g5299453032_))))
                    (_g5299353028_ _g5299453032_)))))
        (_g5299253156_ _$stx52989_)))))
