(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<syntax-sugar>[1]#_g28247_|
    (gx#core-quote-syntax 'values))
  (begin
    (define |gerbil/core::<syntax-sugar>[:0:]#syntax-rules|
      (lambda (_stx172_)
        (let ((_g175199_
               (lambda (_g176195_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g176195_))))
          (let ((_g174504_
                 (lambda (_g176203_)
                   (if (gx#stx-pair? _g176203_)
                       (let ((_e179206_ (gx#syntax-e _g176203_)))
                         (let ((_hd180210_ (##car _e179206_))
                               (_tl181213_ (##cdr _e179206_)))
                           (if (gx#stx-pair? _tl181213_)
                               (let ((_e182216_ (gx#syntax-e _tl181213_)))
                                 (let ((_hd183220_ (##car _e182216_))
                                       (_tl184223_ (##cdr _e182216_)))
                                   (if (gx#stx-pair/null? _tl184223_)
                                       (if (fx>= (gx#stx-length _tl184223_) '0)
                                           (let ((_g28233_
                                                  (gx#syntax-split-splice
                                                   _tl184223_
                                                   '0)))
                                             (begin
                                               (let ((_g28234_
                                                      (values-count _g28233_)))
                                                 (if (not (fx= _g28234_ 2))
                                                     (error "Context expects 2 values"
                                                            _g28234_)))
                                               (let ((_target185226_
                                                      (values-ref _g28233_ 0))
                                                     (_tl187229_
                                                      (values-ref _g28233_ 1)))
                                                 (if (gx#stx-null? _tl187229_)
                                                     (letrec ((_loop188232_
                                                               (lambda (_hd186236_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _clauses192239_)
                         (if (gx#stx-pair? _hd186236_)
                             (let ((_e189242_ (gx#syntax-e _hd186236_)))
                               (let ((_lp-hd190246_ (##car _e189242_))
                                     (_lp-tl191249_ (##cdr _e189242_)))
                                 (_loop188232_
                                  _lp-tl191249_
                                  (cons _lp-hd190246_ _clauses192239_))))
                             (let ((_clauses193252_ (reverse _clauses192239_)))
                               ((lambda (_L256_ _L258_)
                                  (if (gx#identifier-list? _L258_)
                                      (let ((_body421_
                                             (gx#stx-map
                                              (lambda (_clause278_)
                                                (let ((_g282309_
                                                       (lambda (_g283305_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g283305_))))
                                                  (let ((_g281367_
                                                         (lambda (_g283313_)
                                                           (if (gx#stx-pair?
                                                                _g283313_)
                                                               (let ((_e295316_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _g283313_)))
                         (let ((_hd296320_ (##car _e295316_))
                               (_tl297323_ (##cdr _e295316_)))
                           (if (gx#stx-pair? _tl297323_)
                               (let ((_e298326_ (gx#syntax-e _tl297323_)))
                                 (let ((_hd299330_ (##car _e298326_))
                                       (_tl300333_ (##cdr _e298326_)))
                                   (if (gx#stx-pair? _tl300333_)
                                       (let ((_e301336_
                                              (gx#syntax-e _tl300333_)))
                                         (let ((_hd302340_ (##car _e301336_))
                                               (_tl303343_ (##cdr _e301336_)))
                                           (if (gx#stx-null? _tl303343_)
                                               ((lambda (_L346_ _L348_ _L349_)
                                                  (cons _L349_
                                                        (cons _L348_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'syntax)
                                  (cons _L346_ '()))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd302340_
                                                _hd299330_
                                                _hd296320_)
                                               (_g282309_ _g283313_))))
                                       (_g282309_ _g283313_))))
                               (_g282309_ _g283313_))))
                       (_g282309_ _g283313_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_g280409_
                                                           (lambda (_g283371_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g283371_)
                         (let ((_e286374_ (gx#syntax-e _g283371_)))
                           (let ((_hd287378_ (##car _e286374_))
                                 (_tl288381_ (##cdr _e286374_)))
                             (if (gx#stx-pair? _tl288381_)
                                 (let ((_e289384_ (gx#syntax-e _tl288381_)))
                                   (let ((_hd290388_ (##car _e289384_))
                                         (_tl291391_ (##cdr _e289384_)))
                                     (if (gx#stx-null? _tl291391_)
                                         ((lambda (_L394_ _L396_)
                                            (cons _L396_
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'syntax)
                                                              (cons _L394_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _hd290388_
                                          _hd287378_)
                                         (_g281367_ _g283371_))))
                                 (_g281367_ _g283371_))))
                         (_g281367_ _g283371_)))))
              (_g280409_ _clause278_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (begin
                                                '#!void
                                                (foldr (lambda (_g412415_
                                                                _g413418_)
                                                         (cons _g412415_
                                                               _g413418_))
                                                       '()
                                                       _L256_)))))
                                        (let ((_g424441_
                                               (lambda (_g425437_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g425437_))))
                                          (let ((_g423500_
                                                 (lambda (_g425445_)
                                                   (if (gx#stx-pair/null?
                                                        _g425445_)
                                                       (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g425445_)
                         '0)
                   (let ((_g28235_ (gx#syntax-split-splice _g425445_ '0)))
                     (begin
                       (let ((_g28236_ (values-count _g28235_)))
                         (if (not (fx= _g28236_ 2))
                             (error "Context expects 2 values" _g28236_)))
                       (let ((_target427448_ (values-ref _g28235_ 0))
                             (_tl429451_ (values-ref _g28235_ 1)))
                         (if (gx#stx-null? _tl429451_)
                             (letrec ((_loop430454_
                                       (lambda (_hd428458_ _clause434461_)
                                         (if (gx#stx-pair? _hd428458_)
                                             (let ((_e431464_
                                                    (gx#syntax-e _hd428458_)))
                                               (let ((_lp-hd432468_
                                                      (##car _e431464_))
                                                     (_lp-tl433471_
                                                      (##cdr _e431464_)))
                                                 (_loop430454_
                                                  _lp-tl433471_
                                                  (cons _lp-hd432468_
                                                        _clause434461_))))
                                             (let ((_clause435474_
                                                    (reverse _clause434461_)))
                                               ((lambda (_L478_)
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
                                        (cons _L258_
                                              (begin
                                                '#!void
                                                (foldr (lambda (_g491494_
                                                                _g492497_)
                                                         (cons _g491494_
                                                               _g492497_))
                                                       '()
                                                       _L478_)))))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _clause435474_))))))
                               (_loop430454_ _target427448_ '()))
                             (_g424441_ _g425445_)))))
                   (_g424441_ _g425445_))
               (_g424441_ _g425445_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g423500_ _body421_))))
                                      (_g175199_ _g176203_)))
                                _clauses193252_
                                _hd183220_))))))
               (_loop188232_ _target185226_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g175199_ _g176203_)))))
                                           (_g175199_ _g176203_))
                                       (_g175199_ _g176203_))))
                               (_g175199_ _g176203_))))
                       (_g175199_ _g176203_)))))
            (_g174504_ _stx172_)))))
    (define |gerbil/core::<syntax-sugar>[:0:]#with-syntax|
      (lambda (_stx510_)
        (let ((_g515600_
               (lambda (_g516596_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g516596_))))
          (let ((_g514761_
                 (lambda (_g516604_)
                   (if (gx#stx-pair? _g516604_)
                       (let ((_e563607_ (gx#syntax-e _g516604_)))
                         (let ((_hd564611_ (##car _e563607_))
                               (_tl565614_ (##cdr _e563607_)))
                           (if (gx#stx-pair? _tl565614_)
                               (let ((_e566617_ (gx#syntax-e _tl565614_)))
                                 (let ((_hd567621_ (##car _e566617_))
                                       (_tl568624_ (##cdr _e566617_)))
                                   (if (gx#stx-pair/null? _hd567621_)
                                       (if (fx>= (gx#stx-length _hd567621_) '0)
                                           (let ((_g28237_
                                                  (gx#syntax-split-splice
                                                   _hd567621_
                                                   '0)))
                                             (begin
                                               (let ((_g28238_
                                                      (values-count _g28237_)))
                                                 (if (not (fx= _g28238_ 2))
                                                     (error "Context expects 2 values"
                                                            _g28238_)))
                                               (let ((_target569627_
                                                      (values-ref _g28237_ 0))
                                                     (_tl571630_
                                                      (values-ref _g28237_ 1)))
                                                 (if (gx#stx-null? _tl571630_)
                                                     (letrec ((_loop572633_
                                                               (lambda (_hd570637_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _e576640_
                                _pat577642_)
                         (if (gx#stx-pair? _hd570637_)
                             (let ((_e573645_ (gx#syntax-e _hd570637_)))
                               (let ((_lp-hd574649_ (##car _e573645_))
                                     (_lp-tl575652_ (##cdr _e573645_)))
                                 (if (gx#stx-pair? _lp-hd574649_)
                                     (let ((_e580655_
                                            (gx#syntax-e _lp-hd574649_)))
                                       (let ((_hd581659_ (##car _e580655_))
                                             (_tl582662_ (##cdr _e580655_)))
                                         (if (gx#stx-pair? _tl582662_)
                                             (let ((_e583665_
                                                    (gx#syntax-e _tl582662_)))
                                               (let ((_hd584669_
                                                      (##car _e583665_))
                                                     (_tl585672_
                                                      (##cdr _e583665_)))
                                                 (if (gx#stx-null? _tl585672_)
                                                     (_loop572633_
                                                      _lp-tl575652_
                                                      (cons _hd584669_
                                                            _e576640_)
                                                      (cons _hd581659_
                                                            _pat577642_))
                                                     (_g515600_ _g516604_))))
                                             (_g515600_ _g516604_))))
                                     (_g515600_ _g516604_))))
                             (let ((_e578675_ (reverse _e576640_))
                                   (_pat579678_ (reverse _pat577642_)))
                               (if (gx#stx-pair/null? _tl568624_)
                                   (if (fx>= (gx#stx-length _tl568624_) '0)
                                       (let ((_g28239_
                                              (gx#syntax-split-splice
                                               _tl568624_
                                               '0)))
                                         (begin
                                           (let ((_g28240_
                                                  (values-count _g28239_)))
                                             (if (not (fx= _g28240_ 2))
                                                 (error "Context expects 2 values"
                                                        _g28240_)))
                                           (let ((_target586681_
                                                  (values-ref _g28239_ 0))
                                                 (_tl588684_
                                                  (values-ref _g28239_ 1)))
                                             (if (gx#stx-null? _tl588684_)
                                                 (letrec ((_loop589687_
                                                           (lambda (_hd587691_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _body593694_)
                     (if (gx#stx-pair? _hd587691_)
                         (let ((_e590697_ (gx#syntax-e _hd587691_)))
                           (let ((_lp-hd591701_ (##car _e590697_))
                                 (_lp-tl592704_ (##cdr _e590697_)))
                             (_loop589687_
                              _lp-tl592704_
                              (cons _lp-hd591701_ _body593694_))))
                         (let ((_body594707_ (reverse _body593694_)))
                           ((lambda (_L711_ _L713_ _L714_)
                              (cons (gx#datum->syntax '#f 'syntax-case)
                                    (cons (cons (gx#datum->syntax '#f 'list)
                                                (begin
                                                  '#!void
                                                  (foldr (lambda (_g736743_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g737746_)
                   (cons _g736743_ _g737746_))
                 '()
                 _L713_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons '()
                                                (cons (cons (begin
                                                              '#!void
                                                              (foldr (lambda (_g738749_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g739752_)
                               (cons _g738749_ _g739752_))
                             '()
                             _L714_))
                    (cons (cons (gx#datum->syntax '#f 'let-values)
                                (cons '()
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g740755_ _g741758_)
                                                 (cons _g740755_ _g741758_))
                                               '()
                                               _L711_))))
                          '()))
              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            _body594707_
                            _e578675_
                            _pat579678_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_loop589687_
                                                    _target586681_
                                                    '()))
                                                 (_g515600_ _g516604_)))))
                                       (_g515600_ _g516604_))
                                   (_g515600_ _g516604_)))))))
               (_loop572633_ _target569627_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g515600_ _g516604_)))))
                                           (_g515600_ _g516604_))
                                       (_g515600_ _g516604_))))
                               (_g515600_ _g516604_))))
                       (_g515600_ _g516604_)))))
            (let ((_g513883_
                   (lambda (_g516765_)
                     (if (gx#stx-pair? _g516765_)
                         (let ((_e536768_ (gx#syntax-e _g516765_)))
                           (let ((_hd537772_ (##car _e536768_))
                                 (_tl538775_ (##cdr _e536768_)))
                             (if (gx#stx-pair? _tl538775_)
                                 (let ((_e539778_ (gx#syntax-e _tl538775_)))
                                   (let ((_hd540782_ (##car _e539778_))
                                         (_tl541785_ (##cdr _e539778_)))
                                     (if (gx#stx-pair? _hd540782_)
                                         (let ((_e542788_
                                                (gx#syntax-e _hd540782_)))
                                           (let ((_hd543792_ (##car _e542788_))
                                                 (_tl544795_
                                                  (##cdr _e542788_)))
                                             (if (gx#stx-pair? _hd543792_)
                                                 (let ((_e545798_
                                                        (gx#syntax-e
                                                         _hd543792_)))
                                                   (let ((_hd546802_
                                                          (##car _e545798_))
                                                         (_tl547805_
                                                          (##cdr _e545798_)))
                                                     (if (gx#stx-pair?
                                                          _tl547805_)
                                                         (let ((_e548808_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl547805_)))
                   (let ((_hd549812_ (##car _e548808_))
                         (_tl550815_ (##cdr _e548808_)))
                     (if (gx#stx-null? _tl550815_)
                         (if (gx#stx-null? _tl544795_)
                             (if (gx#stx-pair/null? _tl541785_)
                                 (if (fx>= (gx#stx-length _tl541785_) '0)
                                     (let ((_g28241_
                                            (gx#syntax-split-splice
                                             _tl541785_
                                             '0)))
                                       (begin
                                         (let ((_g28242_
                                                (values-count _g28241_)))
                                           (if (not (fx= _g28242_ 2))
                                               (error "Context expects 2 values"
                                                      _g28242_)))
                                         (let ((_target551818_
                                                (values-ref _g28241_ 0))
                                               (_tl553821_
                                                (values-ref _g28241_ 1)))
                                           (if (gx#stx-null? _tl553821_)
                                               (letrec ((_loop554824_
                                                         (lambda (_hd552828_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _body558831_)
                   (if (gx#stx-pair? _hd552828_)
                       (let ((_e555834_ (gx#syntax-e _hd552828_)))
                         (let ((_lp-hd556838_ (##car _e555834_))
                               (_lp-tl557841_ (##cdr _e555834_)))
                           (_loop554824_
                            _lp-tl557841_
                            (cons _lp-hd556838_ _body558831_))))
                       (let ((_body559844_ (reverse _body558831_)))
                         ((lambda (_L848_ _L850_ _L851_)
                            (cons (gx#datum->syntax '#f 'syntax-case)
                                  (cons _L850_
                                        (cons '()
                                              (cons (cons _L851_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'let-values)
                              (cons '()
                                    (begin
                                      '#!void
                                      (foldr (lambda (_g874877_ _g875880_)
                                               (cons _g874877_ _g875880_))
                                             '()
                                             _L848_))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))))
                          _body559844_
                          _hd549812_
                          _hd546802_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop554824_
                                                  _target551818_
                                                  '()))
                                               (_g514761_ _g516765_)))))
                                     (_g514761_ _g516765_))
                                 (_g514761_ _g516765_))
                             (_g514761_ _g516765_))
                         (_g514761_ _g516765_))))
                 (_g514761_ _g516765_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g514761_ _g516765_))))
                                         (_g514761_ _g516765_))))
                                 (_g514761_ _g516765_))))
                         (_g514761_ _g516765_)))))
              (let ((_g512965_
                     (lambda (_g516887_)
                       (if (gx#stx-pair? _g516887_)
                           (let ((_e518890_ (gx#syntax-e _g516887_)))
                             (let ((_hd519894_ (##car _e518890_))
                                   (_tl520897_ (##cdr _e518890_)))
                               (if (gx#stx-pair? _tl520897_)
                                   (let ((_e521900_ (gx#syntax-e _tl520897_)))
                                     (let ((_hd522904_ (##car _e521900_))
                                           (_tl523907_ (##cdr _e521900_)))
                                       (if (gx#stx-null? _hd522904_)
                                           (if (gx#stx-pair/null? _tl523907_)
                                               (if (fx>= (gx#stx-length
                                                          _tl523907_)
                                                         '0)
                                                   (let ((_g28243_
                                                          (gx#syntax-split-splice
                                                           _tl523907_
                                                           '0)))
                                                     (begin
                                                       (let ((_g28244_
                                                              (values-count
                                                               _g28243_)))
                                                         (if (not (fx= _g28244_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g28244_)))
               (let ((_target524910_ (values-ref _g28243_ 0))
                     (_tl526913_ (values-ref _g28243_ 1)))
                 (if (gx#stx-null? _tl526913_)
                     (letrec ((_loop527916_
                               (lambda (_hd525920_ _body531923_)
                                 (if (gx#stx-pair? _hd525920_)
                                     (let ((_e528926_
                                            (gx#syntax-e _hd525920_)))
                                       (let ((_lp-hd529930_ (##car _e528926_))
                                             (_lp-tl530933_ (##cdr _e528926_)))
                                         (_loop527916_
                                          _lp-tl530933_
                                          (cons _lp-hd529930_ _body531923_))))
                                     (let ((_body532936_
                                            (reverse _body531923_)))
                                       ((lambda (_L940_)
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'let-values)
                                                (cons '()
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g956959_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g957962_)
                         (cons _g956959_ _g957962_))
                       '()
                       _L940_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _body532936_))))))
                       (_loop527916_ _target524910_ '()))
                     (_g513883_ _g516887_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g513883_ _g516887_))
                                               (_g513883_ _g516887_))
                                           (_g513883_ _g516887_))))
                                   (_g513883_ _g516887_))))
                           (_g513883_ _g516887_)))))
                (_g512965_ _stx510_)))))))
    (define |gerbil/core::<syntax-sugar>[:0:]#with-syntax*|
      (lambda (_stx973_)
        (let ((_g9781055_
               (lambda (_g9791051_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g9791051_))))
          (let ((_g9771156_
                 (lambda (_g9791059_)
                   (if (gx#stx-pair? _g9791059_)
                       (let ((_e10321062_ (gx#syntax-e _g9791059_)))
                         (let ((_hd10331066_ (##car _e10321062_))
                               (_tl10341069_ (##cdr _e10321062_)))
                           (if (gx#stx-pair? _tl10341069_)
                               (let ((_e10351072_ (gx#syntax-e _tl10341069_)))
                                 (let ((_hd10361076_ (##car _e10351072_))
                                       (_tl10371079_ (##cdr _e10351072_)))
                                   (if (gx#stx-pair? _hd10361076_)
                                       (let ((_e10381082_
                                              (gx#syntax-e _hd10361076_)))
                                         (let ((_hd10391086_
                                                (##car _e10381082_))
                                               (_tl10401089_
                                                (##cdr _e10381082_)))
                                           (if (gx#stx-pair/null? _tl10371079_)
                                               (if (fx>= (gx#stx-length
                                                          _tl10371079_)
                                                         '0)
                                                   (let ((_g28245_
                                                          (gx#syntax-split-splice
                                                           _tl10371079_
                                                           '0)))
                                                     (begin
                                                       (let ((_g28246_
                                                              (values-count
                                                               _g28245_)))
                                                         (if (not (fx= _g28246_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g28246_)))
               (let ((_target10411092_ (values-ref _g28245_ 0))
                     (_tl10431095_ (values-ref _g28245_ 1)))
                 (if (gx#stx-null? _tl10431095_)
                     (letrec ((_loop10441098_
                               (lambda (_hd10421102_ _body10481105_)
                                 (if (gx#stx-pair? _hd10421102_)
                                     (let ((_e10451108_
                                            (gx#syntax-e _hd10421102_)))
                                       (let ((_lp-hd10461112_
                                              (##car _e10451108_))
                                             (_lp-tl10471115_
                                              (##cdr _e10451108_)))
                                         (_loop10441098_
                                          _lp-tl10471115_
                                          (cons _lp-hd10461112_
                                                _body10481105_))))
                                     (let ((_body10491118_
                                            (reverse _body10481105_)))
                                       ((lambda (_L1122_
                                                 _L1124_
                                                 _L1125_
                                                 _L1126_)
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'with-syntax)
                                                (cons (cons _L1125_ '())
                                                      (cons (cons _L1126_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L1124_
                                (begin
                                  '#!void
                                  (foldr (lambda (_g11471150_ _g11481153_)
                                           (cons _g11471150_ _g11481153_))
                                         '()
                                         _L1122_))))
                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _body10491118_
                                        _tl10401089_
                                        _hd10391086_
                                        _hd10331066_))))))
                       (_loop10441098_ _target10411092_ '()))
                     (_g9781055_ _g9791059_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g9781055_ _g9791059_))
                                               (_g9781055_ _g9791059_))))
                                       (_g9781055_ _g9791059_))))
                               (_g9781055_ _g9791059_))))
                       (_g9781055_ _g9791059_)))))
            (let ((_g9761294_
                   (lambda (_g9791160_)
                     (if (gx#stx-pair? _g9791160_)
                         (let ((_e10011163_ (gx#syntax-e _g9791160_)))
                           (let ((_hd10021167_ (##car _e10011163_))
                                 (_tl10031170_ (##cdr _e10011163_)))
                             (if (gx#stx-pair? _tl10031170_)
                                 (let ((_e10041173_
                                        (gx#syntax-e _tl10031170_)))
                                   (let ((_hd10051177_ (##car _e10041173_))
                                         (_tl10061180_ (##cdr _e10041173_)))
                                     (if (gx#stx-pair? _hd10051177_)
                                         (let ((_e10071183_
                                                (gx#syntax-e _hd10051177_)))
                                           (let ((_hd10081187_
                                                  (##car _e10071183_))
                                                 (_tl10091190_
                                                  (##cdr _e10071183_)))
                                             (if (gx#stx-pair? _hd10081187_)
                                                 (let ((_e10101193_
                                                        (gx#syntax-e
                                                         _hd10081187_)))
                                                   (let ((_hd10111197_
                                                          (##car _e10101193_))
                                                         (_tl10121200_
                                                          (##cdr _e10101193_)))
                                                     (if (gx#stx-pair?
                                                          _hd10111197_)
                                                         (let ((_e10131203_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd10111197_)))
                   (let ((_hd10141207_ (##car _e10131203_))
                         (_tl10151210_ (##cdr _e10131203_)))
                     (if (gx#identifier? _hd10141207_)
                         (if (gx#free-identifier=?
                              |gerbil/core::<syntax-sugar>[1]#_g28247_|
                              _hd10141207_)
                             (if (gx#stx-pair? _tl10121200_)
                                 (let ((_e10161213_
                                        (gx#syntax-e _tl10121200_)))
                                   (let ((_hd10171217_ (##car _e10161213_))
                                         (_tl10181220_ (##cdr _e10161213_)))
                                     (if (gx#stx-null? _tl10181220_)
                                         (if (gx#stx-pair/null? _tl10061180_)
                                             (if (fx>= (gx#stx-length
                                                        _tl10061180_)
                                                       '0)
                                                 (let ((_g28248_
                                                        (gx#syntax-split-splice
                                                         _tl10061180_
                                                         '0)))
                                                   (begin
                                                     (let ((_g28249_
                                                            (values-count
                                                             _g28248_)))
                                                       (if (not (fx= _g28249_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g28249_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target10191223_
                                                            (values-ref
                                                             _g28248_
                                                             0))
                                                           (_tl10211226_
                                                            (values-ref
                                                             _g28248_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl10211226_)
                                                           (letrec ((_loop10221229_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd10201233_ _body10261236_)
                               (if (gx#stx-pair? _hd10201233_)
                                   (let ((_e10231239_
                                          (gx#syntax-e _hd10201233_)))
                                     (let ((_lp-hd10241243_
                                            (##car _e10231239_))
                                           (_lp-tl10251246_
                                            (##cdr _e10231239_)))
                                       (_loop10221229_
                                        _lp-tl10251246_
                                        (cons _lp-hd10241243_
                                              _body10261236_))))
                                   (let ((_body10271249_
                                          (reverse _body10261236_)))
                                     ((lambda (_L1253_
                                               _L1255_
                                               _L1256_
                                               _L1257_
                                               _L1258_)
                                        (cons (gx#datum->syntax
                                               '#f
                                               'let-values)
                                              (cons (cons (cons _L1257_
                                                                (cons _L1256_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons _L1258_
                                                                (cons _L1255_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (begin
                                '#!void
                                (foldr (lambda (_g12851288_ _g12861291_)
                                         (cons _g12851288_ _g12861291_))
                                       '()
                                       _L1253_))))
                  '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _body10271249_
                                      _tl10091190_
                                      _hd10171217_
                                      _tl10151210_
                                      _hd10021167_))))))
                     (_loop10221229_ _target10191223_ '()))
                   (_g9771156_ _g9791160_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g9771156_ _g9791160_))
                                             (_g9771156_ _g9791160_))
                                         (_g9771156_ _g9791160_))))
                                 (_g9771156_ _g9791160_))
                             (_g9771156_ _g9791160_))
                         (_g9771156_ _g9791160_))))
                 (_g9771156_ _g9791160_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g9771156_ _g9791160_))))
                                         (_g9771156_ _g9791160_))))
                                 (_g9771156_ _g9791160_))))
                         (_g9771156_ _g9791160_)))))
              (let ((_g9751376_
                     (lambda (_g9791298_)
                       (if (gx#stx-pair? _g9791298_)
                           (let ((_e9811301_ (gx#syntax-e _g9791298_)))
                             (let ((_hd9821305_ (##car _e9811301_))
                                   (_tl9831308_ (##cdr _e9811301_)))
                               (if (gx#stx-pair? _tl9831308_)
                                   (let ((_e9841311_
                                          (gx#syntax-e _tl9831308_)))
                                     (let ((_hd9851315_ (##car _e9841311_))
                                           (_tl9861318_ (##cdr _e9841311_)))
                                       (if (gx#stx-null? _hd9851315_)
                                           (if (gx#stx-pair/null? _tl9861318_)
                                               (if (fx>= (gx#stx-length
                                                          _tl9861318_)
                                                         '0)
                                                   (let ((_g28250_
                                                          (gx#syntax-split-splice
                                                           _tl9861318_
                                                           '0)))
                                                     (begin
                                                       (let ((_g28251_
                                                              (values-count
                                                               _g28250_)))
                                                         (if (not (fx= _g28251_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g28251_)))
               (let ((_target9871321_ (values-ref _g28250_ 0))
                     (_tl9891324_ (values-ref _g28250_ 1)))
                 (if (gx#stx-null? _tl9891324_)
                     (letrec ((_loop9901327_
                               (lambda (_hd9881331_ _body9941334_)
                                 (if (gx#stx-pair? _hd9881331_)
                                     (let ((_e9911337_
                                            (gx#syntax-e _hd9881331_)))
                                       (let ((_lp-hd9921341_
                                              (##car _e9911337_))
                                             (_lp-tl9931344_
                                              (##cdr _e9911337_)))
                                         (_loop9901327_
                                          _lp-tl9931344_
                                          (cons _lp-hd9921341_
                                                _body9941334_))))
                                     (let ((_body9951347_
                                            (reverse _body9941334_)))
                                       ((lambda (_L1351_)
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'let-values)
                                                (cons '()
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g13671370_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g13681373_)
                         (cons _g13671370_ _g13681373_))
                       '()
                       _L1351_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _body9951347_))))))
                       (_loop9901327_ _target9871321_ '()))
                     (_g9761294_ _g9791298_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g9761294_ _g9791298_))
                                               (_g9761294_ _g9791298_))
                                           (_g9761294_ _g9791298_))))
                                   (_g9761294_ _g9791298_))))
                           (_g9761294_ _g9791298_)))))
                (_g9751376_ _stx973_)))))))))
