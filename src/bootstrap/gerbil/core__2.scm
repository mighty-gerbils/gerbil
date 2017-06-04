(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<syntax-sugar>[1]#_g29364_|
    (gx#core-quote-syntax 'values))
  (begin
    (define |gerbil/core::<syntax-sugar>[:0:]#syntax-rules|
      (lambda (_stx329_)
        (let ((_g332356_
               (lambda (_g333352_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g333352_))))
          (let ((_g331661_
                 (lambda (_g333360_)
                   (if (gx#stx-pair? _g333360_)
                       (let ((_e336363_ (gx#syntax-e _g333360_)))
                         (let ((_hd337367_ (##car _e336363_))
                               (_tl338370_ (##cdr _e336363_)))
                           (if (gx#stx-pair? _tl338370_)
                               (let ((_e339373_ (gx#syntax-e _tl338370_)))
                                 (let ((_hd340377_ (##car _e339373_))
                                       (_tl341380_ (##cdr _e339373_)))
                                   (if (gx#stx-pair/null? _tl341380_)
                                       (if (fx>= (gx#stx-length _tl341380_) '0)
                                           (let ((_g29350_
                                                  (gx#syntax-split-splice
                                                   _tl341380_
                                                   '0)))
                                             (begin
                                               (let ((_g29351_
                                                      (values-count _g29350_)))
                                                 (if (not (fx= _g29351_ 2))
                                                     (error "Context expects 2 values"
                                                            _g29351_)))
                                               (let ((_target342383_
                                                      (values-ref _g29350_ 0))
                                                     (_tl344386_
                                                      (values-ref _g29350_ 1)))
                                                 (if (gx#stx-null? _tl344386_)
                                                     (letrec ((_loop345389_
                                                               (lambda (_hd343393_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _clauses349396_)
                         (if (gx#stx-pair? _hd343393_)
                             (let ((_e346399_ (gx#syntax-e _hd343393_)))
                               (let ((_lp-hd347403_ (##car _e346399_))
                                     (_lp-tl348406_ (##cdr _e346399_)))
                                 (_loop345389_
                                  _lp-tl348406_
                                  (cons _lp-hd347403_ _clauses349396_))))
                             (let ((_clauses350409_ (reverse _clauses349396_)))
                               ((lambda (_L413_ _L415_)
                                  (if (gx#identifier-list? _L415_)
                                      (let ((_body578_
                                             (gx#stx-map
                                              (lambda (_clause435_)
                                                (let ((_g439466_
                                                       (lambda (_g440462_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g440462_))))
                                                  (let ((_g438524_
                                                         (lambda (_g440470_)
                                                           (if (gx#stx-pair?
                                                                _g440470_)
                                                               (let ((_e452473_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _g440470_)))
                         (let ((_hd453477_ (##car _e452473_))
                               (_tl454480_ (##cdr _e452473_)))
                           (if (gx#stx-pair? _tl454480_)
                               (let ((_e455483_ (gx#syntax-e _tl454480_)))
                                 (let ((_hd456487_ (##car _e455483_))
                                       (_tl457490_ (##cdr _e455483_)))
                                   (if (gx#stx-pair? _tl457490_)
                                       (let ((_e458493_
                                              (gx#syntax-e _tl457490_)))
                                         (let ((_hd459497_ (##car _e458493_))
                                               (_tl460500_ (##cdr _e458493_)))
                                           (if (gx#stx-null? _tl460500_)
                                               ((lambda (_L503_ _L505_ _L506_)
                                                  (cons _L506_
                                                        (cons _L505_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'syntax)
                                  (cons _L503_ '()))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd459497_
                                                _hd456487_
                                                _hd453477_)
                                               (_g439466_ _g440470_))))
                                       (_g439466_ _g440470_))))
                               (_g439466_ _g440470_))))
                       (_g439466_ _g440470_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_g437566_
                                                           (lambda (_g440528_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g440528_)
                         (let ((_e443531_ (gx#syntax-e _g440528_)))
                           (let ((_hd444535_ (##car _e443531_))
                                 (_tl445538_ (##cdr _e443531_)))
                             (if (gx#stx-pair? _tl445538_)
                                 (let ((_e446541_ (gx#syntax-e _tl445538_)))
                                   (let ((_hd447545_ (##car _e446541_))
                                         (_tl448548_ (##cdr _e446541_)))
                                     (if (gx#stx-null? _tl448548_)
                                         ((lambda (_L551_ _L553_)
                                            (cons _L553_
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'syntax)
                                                              (cons _L551_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _hd447545_
                                          _hd444535_)
                                         (_g438524_ _g440528_))))
                                 (_g438524_ _g440528_))))
                         (_g438524_ _g440528_)))))
              (_g437566_ _clause435_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (begin
                                                '#!void
                                                (foldr (lambda (_g569572_
                                                                _g570575_)
                                                         (cons _g569572_
                                                               _g570575_))
                                                       '()
                                                       _L413_)))))
                                        (let ((_g581598_
                                               (lambda (_g582594_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g582594_))))
                                          (let ((_g580657_
                                                 (lambda (_g582602_)
                                                   (if (gx#stx-pair/null?
                                                        _g582602_)
                                                       (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g582602_)
                         '0)
                   (let ((_g29352_ (gx#syntax-split-splice _g582602_ '0)))
                     (begin
                       (let ((_g29353_ (values-count _g29352_)))
                         (if (not (fx= _g29353_ 2))
                             (error "Context expects 2 values" _g29353_)))
                       (let ((_target584605_ (values-ref _g29352_ 0))
                             (_tl586608_ (values-ref _g29352_ 1)))
                         (if (gx#stx-null? _tl586608_)
                             (letrec ((_loop587611_
                                       (lambda (_hd585615_ _clause591618_)
                                         (if (gx#stx-pair? _hd585615_)
                                             (let ((_e588621_
                                                    (gx#syntax-e _hd585615_)))
                                               (let ((_lp-hd589625_
                                                      (##car _e588621_))
                                                     (_lp-tl590628_
                                                      (##cdr _e588621_)))
                                                 (_loop587611_
                                                  _lp-tl590628_
                                                  (cons _lp-hd589625_
                                                        _clause591618_))))
                                             (let ((_clause592631_
                                                    (reverse _clause591618_)))
                                               ((lambda (_L635_)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'lambda%)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             '$stx)
                            '())
                      (cons (cons (gx#datum->syntax '#f 'syntax-case)
                                  (cons (gx#datum->syntax '#f '$stx)
                                        (cons _L415_
                                              (begin
                                                '#!void
                                                (foldr (lambda (_g648651_
                                                                _g649654_)
                                                         (cons _g648651_
                                                               _g649654_))
                                                       '()
                                                       _L635_)))))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _clause592631_))))))
                               (_loop587611_ _target584605_ '()))
                             (_g581598_ _g582602_)))))
                   (_g581598_ _g582602_))
               (_g581598_ _g582602_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g580657_ _body578_))))
                                      (_g332356_ _g333360_)))
                                _clauses350409_
                                _hd340377_))))))
               (_loop345389_ _target342383_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g332356_ _g333360_)))))
                                           (_g332356_ _g333360_))
                                       (_g332356_ _g333360_))))
                               (_g332356_ _g333360_))))
                       (_g332356_ _g333360_)))))
            (_g331661_ _stx329_)))))
    (define |gerbil/core::<syntax-sugar>[:0:]#with-syntax|
      (lambda (_stx667_)
        (let ((_g672757_
               (lambda (_g673753_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g673753_))))
          (let ((_g671918_
                 (lambda (_g673761_)
                   (if (gx#stx-pair? _g673761_)
                       (let ((_e720764_ (gx#syntax-e _g673761_)))
                         (let ((_hd721768_ (##car _e720764_))
                               (_tl722771_ (##cdr _e720764_)))
                           (if (gx#stx-pair? _tl722771_)
                               (let ((_e723774_ (gx#syntax-e _tl722771_)))
                                 (let ((_hd724778_ (##car _e723774_))
                                       (_tl725781_ (##cdr _e723774_)))
                                   (if (gx#stx-pair/null? _hd724778_)
                                       (if (fx>= (gx#stx-length _hd724778_) '0)
                                           (let ((_g29354_
                                                  (gx#syntax-split-splice
                                                   _hd724778_
                                                   '0)))
                                             (begin
                                               (let ((_g29355_
                                                      (values-count _g29354_)))
                                                 (if (not (fx= _g29355_ 2))
                                                     (error "Context expects 2 values"
                                                            _g29355_)))
                                               (let ((_target726784_
                                                      (values-ref _g29354_ 0))
                                                     (_tl728787_
                                                      (values-ref _g29354_ 1)))
                                                 (if (gx#stx-null? _tl728787_)
                                                     (letrec ((_loop729790_
                                                               (lambda (_hd727794_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _e733797_
                                _pat734799_)
                         (if (gx#stx-pair? _hd727794_)
                             (let ((_e730802_ (gx#syntax-e _hd727794_)))
                               (let ((_lp-hd731806_ (##car _e730802_))
                                     (_lp-tl732809_ (##cdr _e730802_)))
                                 (if (gx#stx-pair? _lp-hd731806_)
                                     (let ((_e737812_
                                            (gx#syntax-e _lp-hd731806_)))
                                       (let ((_hd738816_ (##car _e737812_))
                                             (_tl739819_ (##cdr _e737812_)))
                                         (if (gx#stx-pair? _tl739819_)
                                             (let ((_e740822_
                                                    (gx#syntax-e _tl739819_)))
                                               (let ((_hd741826_
                                                      (##car _e740822_))
                                                     (_tl742829_
                                                      (##cdr _e740822_)))
                                                 (if (gx#stx-null? _tl742829_)
                                                     (_loop729790_
                                                      _lp-tl732809_
                                                      (cons _hd741826_
                                                            _e733797_)
                                                      (cons _hd738816_
                                                            _pat734799_))
                                                     (_g672757_ _g673761_))))
                                             (_g672757_ _g673761_))))
                                     (_g672757_ _g673761_))))
                             (let ((_e735832_ (reverse _e733797_))
                                   (_pat736835_ (reverse _pat734799_)))
                               (if (gx#stx-pair/null? _tl725781_)
                                   (if (fx>= (gx#stx-length _tl725781_) '0)
                                       (let ((_g29356_
                                              (gx#syntax-split-splice
                                               _tl725781_
                                               '0)))
                                         (begin
                                           (let ((_g29357_
                                                  (values-count _g29356_)))
                                             (if (not (fx= _g29357_ 2))
                                                 (error "Context expects 2 values"
                                                        _g29357_)))
                                           (let ((_target743838_
                                                  (values-ref _g29356_ 0))
                                                 (_tl745841_
                                                  (values-ref _g29356_ 1)))
                                             (if (gx#stx-null? _tl745841_)
                                                 (letrec ((_loop746844_
                                                           (lambda (_hd744848_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _body750851_)
                     (if (gx#stx-pair? _hd744848_)
                         (let ((_e747854_ (gx#syntax-e _hd744848_)))
                           (let ((_lp-hd748858_ (##car _e747854_))
                                 (_lp-tl749861_ (##cdr _e747854_)))
                             (_loop746844_
                              _lp-tl749861_
                              (cons _lp-hd748858_ _body750851_))))
                         (let ((_body751864_ (reverse _body750851_)))
                           ((lambda (_L868_ _L870_ _L871_)
                              (cons (gx#datum->syntax '#f 'syntax-case)
                                    (cons (cons (gx#datum->syntax '#f 'list)
                                                (begin
                                                  '#!void
                                                  (foldr (lambda (_g893900_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g894903_)
                   (cons _g893900_ _g894903_))
                 '()
                 _L870_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons '()
                                                (cons (cons (begin
                                                              '#!void
                                                              (foldr (lambda (_g895906_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g896909_)
                               (cons _g895906_ _g896909_))
                             '()
                             _L871_))
                    (cons (cons (gx#datum->syntax '#f 'let-values)
                                (cons '()
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g897912_ _g898915_)
                                                 (cons _g897912_ _g898915_))
                                               '()
                                               _L868_))))
                          '()))
              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            _body751864_
                            _e735832_
                            _pat736835_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_loop746844_
                                                    _target743838_
                                                    '()))
                                                 (_g672757_ _g673761_)))))
                                       (_g672757_ _g673761_))
                                   (_g672757_ _g673761_)))))))
               (_loop729790_ _target726784_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g672757_ _g673761_)))))
                                           (_g672757_ _g673761_))
                                       (_g672757_ _g673761_))))
                               (_g672757_ _g673761_))))
                       (_g672757_ _g673761_)))))
            (let ((_g6701040_
                   (lambda (_g673922_)
                     (if (gx#stx-pair? _g673922_)
                         (let ((_e693925_ (gx#syntax-e _g673922_)))
                           (let ((_hd694929_ (##car _e693925_))
                                 (_tl695932_ (##cdr _e693925_)))
                             (if (gx#stx-pair? _tl695932_)
                                 (let ((_e696935_ (gx#syntax-e _tl695932_)))
                                   (let ((_hd697939_ (##car _e696935_))
                                         (_tl698942_ (##cdr _e696935_)))
                                     (if (gx#stx-pair? _hd697939_)
                                         (let ((_e699945_
                                                (gx#syntax-e _hd697939_)))
                                           (let ((_hd700949_ (##car _e699945_))
                                                 (_tl701952_
                                                  (##cdr _e699945_)))
                                             (if (gx#stx-pair? _hd700949_)
                                                 (let ((_e702955_
                                                        (gx#syntax-e
                                                         _hd700949_)))
                                                   (let ((_hd703959_
                                                          (##car _e702955_))
                                                         (_tl704962_
                                                          (##cdr _e702955_)))
                                                     (if (gx#stx-pair?
                                                          _tl704962_)
                                                         (let ((_e705965_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl704962_)))
                   (let ((_hd706969_ (##car _e705965_))
                         (_tl707972_ (##cdr _e705965_)))
                     (if (gx#stx-null? _tl707972_)
                         (if (gx#stx-null? _tl701952_)
                             (if (gx#stx-pair/null? _tl698942_)
                                 (if (fx>= (gx#stx-length _tl698942_) '0)
                                     (let ((_g29358_
                                            (gx#syntax-split-splice
                                             _tl698942_
                                             '0)))
                                       (begin
                                         (let ((_g29359_
                                                (values-count _g29358_)))
                                           (if (not (fx= _g29359_ 2))
                                               (error "Context expects 2 values"
                                                      _g29359_)))
                                         (let ((_target708975_
                                                (values-ref _g29358_ 0))
                                               (_tl710978_
                                                (values-ref _g29358_ 1)))
                                           (if (gx#stx-null? _tl710978_)
                                               (letrec ((_loop711981_
                                                         (lambda (_hd709985_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _body715988_)
                   (if (gx#stx-pair? _hd709985_)
                       (let ((_e712991_ (gx#syntax-e _hd709985_)))
                         (let ((_lp-hd713995_ (##car _e712991_))
                               (_lp-tl714998_ (##cdr _e712991_)))
                           (_loop711981_
                            _lp-tl714998_
                            (cons _lp-hd713995_ _body715988_))))
                       (let ((_body7161001_ (reverse _body715988_)))
                         ((lambda (_L1005_ _L1007_ _L1008_)
                            (cons (gx#datum->syntax '#f 'syntax-case)
                                  (cons _L1007_
                                        (cons '()
                                              (cons (cons _L1008_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'let-values)
                              (cons '()
                                    (begin
                                      '#!void
                                      (foldr (lambda (_g10311034_ _g10321037_)
                                               (cons _g10311034_ _g10321037_))
                                             '()
                                             _L1005_))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))))
                          _body7161001_
                          _hd706969_
                          _hd703959_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop711981_
                                                  _target708975_
                                                  '()))
                                               (_g671918_ _g673922_)))))
                                     (_g671918_ _g673922_))
                                 (_g671918_ _g673922_))
                             (_g671918_ _g673922_))
                         (_g671918_ _g673922_))))
                 (_g671918_ _g673922_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g671918_ _g673922_))))
                                         (_g671918_ _g673922_))))
                                 (_g671918_ _g673922_))))
                         (_g671918_ _g673922_)))))
              (let ((_g6691122_
                     (lambda (_g6731044_)
                       (if (gx#stx-pair? _g6731044_)
                           (let ((_e6751047_ (gx#syntax-e _g6731044_)))
                             (let ((_hd6761051_ (##car _e6751047_))
                                   (_tl6771054_ (##cdr _e6751047_)))
                               (if (gx#stx-pair? _tl6771054_)
                                   (let ((_e6781057_
                                          (gx#syntax-e _tl6771054_)))
                                     (let ((_hd6791061_ (##car _e6781057_))
                                           (_tl6801064_ (##cdr _e6781057_)))
                                       (if (gx#stx-null? _hd6791061_)
                                           (if (gx#stx-pair/null? _tl6801064_)
                                               (if (fx>= (gx#stx-length
                                                          _tl6801064_)
                                                         '0)
                                                   (let ((_g29360_
                                                          (gx#syntax-split-splice
                                                           _tl6801064_
                                                           '0)))
                                                     (begin
                                                       (let ((_g29361_
                                                              (values-count
                                                               _g29360_)))
                                                         (if (not (fx= _g29361_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g29361_)))
               (let ((_target6811067_ (values-ref _g29360_ 0))
                     (_tl6831070_ (values-ref _g29360_ 1)))
                 (if (gx#stx-null? _tl6831070_)
                     (letrec ((_loop6841073_
                               (lambda (_hd6821077_ _body6881080_)
                                 (if (gx#stx-pair? _hd6821077_)
                                     (let ((_e6851083_
                                            (gx#syntax-e _hd6821077_)))
                                       (let ((_lp-hd6861087_
                                              (##car _e6851083_))
                                             (_lp-tl6871090_
                                              (##cdr _e6851083_)))
                                         (_loop6841073_
                                          _lp-tl6871090_
                                          (cons _lp-hd6861087_
                                                _body6881080_))))
                                     (let ((_body6891093_
                                            (reverse _body6881080_)))
                                       ((lambda (_L1097_)
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'let-values)
                                                (cons '()
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g11131116_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g11141119_)
                         (cons _g11131116_ _g11141119_))
                       '()
                       _L1097_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _body6891093_))))))
                       (_loop6841073_ _target6811067_ '()))
                     (_g6701040_ _g6731044_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g6701040_ _g6731044_))
                                               (_g6701040_ _g6731044_))
                                           (_g6701040_ _g6731044_))))
                                   (_g6701040_ _g6731044_))))
                           (_g6701040_ _g6731044_)))))
                (_g6691122_ _stx667_)))))))
    (define |gerbil/core::<syntax-sugar>[:0:]#with-syntax*|
      (lambda (_stx1130_)
        (let ((_g11351212_
               (lambda (_g11361208_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g11361208_))))
          (let ((_g11341313_
                 (lambda (_g11361216_)
                   (if (gx#stx-pair? _g11361216_)
                       (let ((_e11891219_ (gx#syntax-e _g11361216_)))
                         (let ((_hd11901223_ (##car _e11891219_))
                               (_tl11911226_ (##cdr _e11891219_)))
                           (if (gx#stx-pair? _tl11911226_)
                               (let ((_e11921229_ (gx#syntax-e _tl11911226_)))
                                 (let ((_hd11931233_ (##car _e11921229_))
                                       (_tl11941236_ (##cdr _e11921229_)))
                                   (if (gx#stx-pair? _hd11931233_)
                                       (let ((_e11951239_
                                              (gx#syntax-e _hd11931233_)))
                                         (let ((_hd11961243_
                                                (##car _e11951239_))
                                               (_tl11971246_
                                                (##cdr _e11951239_)))
                                           (if (gx#stx-pair/null? _tl11941236_)
                                               (if (fx>= (gx#stx-length
                                                          _tl11941236_)
                                                         '0)
                                                   (let ((_g29362_
                                                          (gx#syntax-split-splice
                                                           _tl11941236_
                                                           '0)))
                                                     (begin
                                                       (let ((_g29363_
                                                              (values-count
                                                               _g29362_)))
                                                         (if (not (fx= _g29363_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g29363_)))
               (let ((_target11981249_ (values-ref _g29362_ 0))
                     (_tl12001252_ (values-ref _g29362_ 1)))
                 (if (gx#stx-null? _tl12001252_)
                     (letrec ((_loop12011255_
                               (lambda (_hd11991259_ _body12051262_)
                                 (if (gx#stx-pair? _hd11991259_)
                                     (let ((_e12021265_
                                            (gx#syntax-e _hd11991259_)))
                                       (let ((_lp-hd12031269_
                                              (##car _e12021265_))
                                             (_lp-tl12041272_
                                              (##cdr _e12021265_)))
                                         (_loop12011255_
                                          _lp-tl12041272_
                                          (cons _lp-hd12031269_
                                                _body12051262_))))
                                     (let ((_body12061275_
                                            (reverse _body12051262_)))
                                       ((lambda (_L1279_
                                                 _L1281_
                                                 _L1282_
                                                 _L1283_)
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'with-syntax)
                                                (cons (cons _L1282_ '())
                                                      (cons (cons _L1283_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L1281_
                                (begin
                                  '#!void
                                  (foldr (lambda (_g13041307_ _g13051310_)
                                           (cons _g13041307_ _g13051310_))
                                         '()
                                         _L1279_))))
                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _body12061275_
                                        _tl11971246_
                                        _hd11961243_
                                        _hd11901223_))))))
                       (_loop12011255_ _target11981249_ '()))
                     (_g11351212_ _g11361216_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g11351212_ _g11361216_))
                                               (_g11351212_ _g11361216_))))
                                       (_g11351212_ _g11361216_))))
                               (_g11351212_ _g11361216_))))
                       (_g11351212_ _g11361216_)))))
            (let ((_g11331451_
                   (lambda (_g11361317_)
                     (if (gx#stx-pair? _g11361317_)
                         (let ((_e11581320_ (gx#syntax-e _g11361317_)))
                           (let ((_hd11591324_ (##car _e11581320_))
                                 (_tl11601327_ (##cdr _e11581320_)))
                             (if (gx#stx-pair? _tl11601327_)
                                 (let ((_e11611330_
                                        (gx#syntax-e _tl11601327_)))
                                   (let ((_hd11621334_ (##car _e11611330_))
                                         (_tl11631337_ (##cdr _e11611330_)))
                                     (if (gx#stx-pair? _hd11621334_)
                                         (let ((_e11641340_
                                                (gx#syntax-e _hd11621334_)))
                                           (let ((_hd11651344_
                                                  (##car _e11641340_))
                                                 (_tl11661347_
                                                  (##cdr _e11641340_)))
                                             (if (gx#stx-pair? _hd11651344_)
                                                 (let ((_e11671350_
                                                        (gx#syntax-e
                                                         _hd11651344_)))
                                                   (let ((_hd11681354_
                                                          (##car _e11671350_))
                                                         (_tl11691357_
                                                          (##cdr _e11671350_)))
                                                     (if (gx#stx-pair?
                                                          _hd11681354_)
                                                         (let ((_e11701360_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd11681354_)))
                   (let ((_hd11711364_ (##car _e11701360_))
                         (_tl11721367_ (##cdr _e11701360_)))
                     (if (gx#identifier? _hd11711364_)
                         (if (gx#free-identifier=?
                              |gerbil/core::<syntax-sugar>[1]#_g29364_|
                              _hd11711364_)
                             (if (gx#stx-pair? _tl11691357_)
                                 (let ((_e11731370_
                                        (gx#syntax-e _tl11691357_)))
                                   (let ((_hd11741374_ (##car _e11731370_))
                                         (_tl11751377_ (##cdr _e11731370_)))
                                     (if (gx#stx-null? _tl11751377_)
                                         (if (gx#stx-pair/null? _tl11631337_)
                                             (if (fx>= (gx#stx-length
                                                        _tl11631337_)
                                                       '0)
                                                 (let ((_g29365_
                                                        (gx#syntax-split-splice
                                                         _tl11631337_
                                                         '0)))
                                                   (begin
                                                     (let ((_g29366_
                                                            (values-count
                                                             _g29365_)))
                                                       (if (not (fx= _g29366_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g29366_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target11761380_
                                                            (values-ref
                                                             _g29365_
                                                             0))
                                                           (_tl11781383_
                                                            (values-ref
                                                             _g29365_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl11781383_)
                                                           (letrec ((_loop11791386_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd11771390_ _body11831393_)
                               (if (gx#stx-pair? _hd11771390_)
                                   (let ((_e11801396_
                                          (gx#syntax-e _hd11771390_)))
                                     (let ((_lp-hd11811400_
                                            (##car _e11801396_))
                                           (_lp-tl11821403_
                                            (##cdr _e11801396_)))
                                       (_loop11791386_
                                        _lp-tl11821403_
                                        (cons _lp-hd11811400_
                                              _body11831393_))))
                                   (let ((_body11841406_
                                          (reverse _body11831393_)))
                                     ((lambda (_L1410_
                                               _L1412_
                                               _L1413_
                                               _L1414_
                                               _L1415_)
                                        (cons (gx#datum->syntax
                                               '#f
                                               'let-values)
                                              (cons (cons (cons _L1414_
                                                                (cons _L1413_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons _L1415_
                                                                (cons _L1412_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (begin
                                '#!void
                                (foldr (lambda (_g14421445_ _g14431448_)
                                         (cons _g14421445_ _g14431448_))
                                       '()
                                       _L1410_))))
                  '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _body11841406_
                                      _tl11661347_
                                      _hd11741374_
                                      _tl11721367_
                                      _hd11591324_))))))
                     (_loop11791386_ _target11761380_ '()))
                   (_g11341313_ _g11361317_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g11341313_ _g11361317_))
                                             (_g11341313_ _g11361317_))
                                         (_g11341313_ _g11361317_))))
                                 (_g11341313_ _g11361317_))
                             (_g11341313_ _g11361317_))
                         (_g11341313_ _g11361317_))))
                 (_g11341313_ _g11361317_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g11341313_ _g11361317_))))
                                         (_g11341313_ _g11361317_))))
                                 (_g11341313_ _g11361317_))))
                         (_g11341313_ _g11361317_)))))
              (let ((_g11321533_
                     (lambda (_g11361455_)
                       (if (gx#stx-pair? _g11361455_)
                           (let ((_e11381458_ (gx#syntax-e _g11361455_)))
                             (let ((_hd11391462_ (##car _e11381458_))
                                   (_tl11401465_ (##cdr _e11381458_)))
                               (if (gx#stx-pair? _tl11401465_)
                                   (let ((_e11411468_
                                          (gx#syntax-e _tl11401465_)))
                                     (let ((_hd11421472_ (##car _e11411468_))
                                           (_tl11431475_ (##cdr _e11411468_)))
                                       (if (gx#stx-null? _hd11421472_)
                                           (if (gx#stx-pair/null? _tl11431475_)
                                               (if (fx>= (gx#stx-length
                                                          _tl11431475_)
                                                         '0)
                                                   (let ((_g29367_
                                                          (gx#syntax-split-splice
                                                           _tl11431475_
                                                           '0)))
                                                     (begin
                                                       (let ((_g29368_
                                                              (values-count
                                                               _g29367_)))
                                                         (if (not (fx= _g29368_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g29368_)))
               (let ((_target11441478_ (values-ref _g29367_ 0))
                     (_tl11461481_ (values-ref _g29367_ 1)))
                 (if (gx#stx-null? _tl11461481_)
                     (letrec ((_loop11471484_
                               (lambda (_hd11451488_ _body11511491_)
                                 (if (gx#stx-pair? _hd11451488_)
                                     (let ((_e11481494_
                                            (gx#syntax-e _hd11451488_)))
                                       (let ((_lp-hd11491498_
                                              (##car _e11481494_))
                                             (_lp-tl11501501_
                                              (##cdr _e11481494_)))
                                         (_loop11471484_
                                          _lp-tl11501501_
                                          (cons _lp-hd11491498_
                                                _body11511491_))))
                                     (let ((_body11521504_
                                            (reverse _body11511491_)))
                                       ((lambda (_L1508_)
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'let-values)
                                                (cons '()
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g15241527_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g15251530_)
                         (cons _g15241527_ _g15251530_))
                       '()
                       _L1508_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _body11521504_))))))
                       (_loop11471484_ _target11441478_ '()))
                     (_g11331451_ _g11361455_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g11331451_ _g11361455_))
                                               (_g11331451_ _g11361455_))
                                           (_g11331451_ _g11361455_))))
                                   (_g11331451_ _g11361455_))))
                           (_g11331451_ _g11361455_)))))
                (_g11321533_ _stx1130_)))))))
    (define |gerbil/core::<syntax-sugar>[:0:]#syntax/loc|
      (lambda (_stx1540_)
        (let ((_g15431561_
               (lambda (_g15441557_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g15441557_))))
          (let ((_g15421616_
                 (lambda (_g15441565_)
                   (if (gx#stx-pair? _g15441565_)
                       (let ((_e15471568_ (gx#syntax-e _g15441565_)))
                         (let ((_hd15481572_ (##car _e15471568_))
                               (_tl15491575_ (##cdr _e15471568_)))
                           (if (gx#stx-pair? _tl15491575_)
                               (let ((_e15501578_ (gx#syntax-e _tl15491575_)))
                                 (let ((_hd15511582_ (##car _e15501578_))
                                       (_tl15521585_ (##cdr _e15501578_)))
                                   (if (gx#stx-pair? _tl15521585_)
                                       (let ((_e15531588_
                                              (gx#syntax-e _tl15521585_)))
                                         (let ((_hd15541592_
                                                (##car _e15531588_))
                                               (_tl15551595_
                                                (##cdr _e15531588_)))
                                           (if (gx#stx-null? _tl15551595_)
                                               ((lambda (_L1598_ _L1600_)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'stx-wrap-source)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'syntax)
                            (cons _L1598_ '()))
                      (cons (cons (gx#datum->syntax '#f 'stx-source)
                                  (cons _L1600_ '()))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd15541592_
                                                _hd15511582_)
                                               (_g15431561_ _g15441565_))))
                                       (_g15431561_ _g15441565_))))
                               (_g15431561_ _g15441565_))))
                       (_g15431561_ _g15441565_)))))
            (_g15421616_ _stx1540_)))))))
