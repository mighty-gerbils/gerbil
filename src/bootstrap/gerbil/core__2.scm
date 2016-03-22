(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<syntax-sugar>[1]#_g28210_|
    (gx#core-quote-syntax 'values))
  (begin
    (define |gerbil/core::<syntax-sugar>[:0:]#syntax-rules|
      (lambda (_stx135_)
        (let ((_g138162_
               (lambda (_g139158_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g139158_))))
          (let ((_g137467_
                 (lambda (_g139166_)
                   (if (gx#stx-pair? _g139166_)
                       (let ((_e142169_ (gx#syntax-e _g139166_)))
                         (let ((_hd143173_ (##car _e142169_))
                               (_tl144176_ (##cdr _e142169_)))
                           (if (gx#stx-pair? _tl144176_)
                               (let ((_e145179_ (gx#syntax-e _tl144176_)))
                                 (let ((_hd146183_ (##car _e145179_))
                                       (_tl147186_ (##cdr _e145179_)))
                                   (if (gx#stx-pair/null? _tl147186_)
                                       (if (fx>= (gx#stx-length _tl147186_) '0)
                                           (let ((_g28196_
                                                  (gx#syntax-split-splice
                                                   _tl147186_
                                                   '0)))
                                             (begin
                                               (let ((_g28197_
                                                      (values-count _g28196_)))
                                                 (if (not (fx= _g28197_ 2))
                                                     (error "Context expects 2 values"
                                                            _g28197_)))
                                               (let ((_target148189_
                                                      (values-ref _g28196_ 0))
                                                     (_tl150192_
                                                      (values-ref _g28196_ 1)))
                                                 (if (gx#stx-null? _tl150192_)
                                                     (letrec ((_loop151195_
                                                               (lambda (_hd149199_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _clauses155202_)
                         (if (gx#stx-pair? _hd149199_)
                             (let ((_e152205_ (gx#syntax-e _hd149199_)))
                               (let ((_lp-hd153209_ (##car _e152205_))
                                     (_lp-tl154212_ (##cdr _e152205_)))
                                 (_loop151195_
                                  _lp-tl154212_
                                  (cons _lp-hd153209_ _clauses155202_))))
                             (let ((_clauses156215_ (reverse _clauses155202_)))
                               ((lambda (_L219_ _L221_)
                                  (if (gx#identifier-list? _L221_)
                                      (let ((_body384_
                                             (gx#stx-map
                                              (lambda (_clause241_)
                                                (let ((_g245272_
                                                       (lambda (_g246268_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g246268_))))
                                                  (let ((_g244330_
                                                         (lambda (_g246276_)
                                                           (if (gx#stx-pair?
                                                                _g246276_)
                                                               (let ((_e258279_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _g246276_)))
                         (let ((_hd259283_ (##car _e258279_))
                               (_tl260286_ (##cdr _e258279_)))
                           (if (gx#stx-pair? _tl260286_)
                               (let ((_e261289_ (gx#syntax-e _tl260286_)))
                                 (let ((_hd262293_ (##car _e261289_))
                                       (_tl263296_ (##cdr _e261289_)))
                                   (if (gx#stx-pair? _tl263296_)
                                       (let ((_e264299_
                                              (gx#syntax-e _tl263296_)))
                                         (let ((_hd265303_ (##car _e264299_))
                                               (_tl266306_ (##cdr _e264299_)))
                                           (if (gx#stx-null? _tl266306_)
                                               ((lambda (_L309_ _L311_ _L312_)
                                                  (cons _L312_
                                                        (cons _L311_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'syntax)
                                  (cons _L309_ '()))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd265303_
                                                _hd262293_
                                                _hd259283_)
                                               (_g245272_ _g246276_))))
                                       (_g245272_ _g246276_))))
                               (_g245272_ _g246276_))))
                       (_g245272_ _g246276_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_g243372_
                                                           (lambda (_g246334_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g246334_)
                         (let ((_e249337_ (gx#syntax-e _g246334_)))
                           (let ((_hd250341_ (##car _e249337_))
                                 (_tl251344_ (##cdr _e249337_)))
                             (if (gx#stx-pair? _tl251344_)
                                 (let ((_e252347_ (gx#syntax-e _tl251344_)))
                                   (let ((_hd253351_ (##car _e252347_))
                                         (_tl254354_ (##cdr _e252347_)))
                                     (if (gx#stx-null? _tl254354_)
                                         ((lambda (_L357_ _L359_)
                                            (cons _L359_
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'syntax)
                                                              (cons _L357_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _hd253351_
                                          _hd250341_)
                                         (_g244330_ _g246334_))))
                                 (_g244330_ _g246334_))))
                         (_g244330_ _g246334_)))))
              (_g243372_ _clause241_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (begin
                                                '#!void
                                                (foldr (lambda (_g375378_
                                                                _g376381_)
                                                         (cons _g375378_
                                                               _g376381_))
                                                       '()
                                                       _L219_)))))
                                        (let ((_g387404_
                                               (lambda (_g388400_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g388400_))))
                                          (let ((_g386463_
                                                 (lambda (_g388408_)
                                                   (if (gx#stx-pair/null?
                                                        _g388408_)
                                                       (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g388408_)
                         '0)
                   (let ((_g28198_ (gx#syntax-split-splice _g388408_ '0)))
                     (begin
                       (let ((_g28199_ (values-count _g28198_)))
                         (if (not (fx= _g28199_ 2))
                             (error "Context expects 2 values" _g28199_)))
                       (let ((_target390411_ (values-ref _g28198_ 0))
                             (_tl392414_ (values-ref _g28198_ 1)))
                         (if (gx#stx-null? _tl392414_)
                             (letrec ((_loop393417_
                                       (lambda (_hd391421_ _clause397424_)
                                         (if (gx#stx-pair? _hd391421_)
                                             (let ((_e394427_
                                                    (gx#syntax-e _hd391421_)))
                                               (let ((_lp-hd395431_
                                                      (##car _e394427_))
                                                     (_lp-tl396434_
                                                      (##cdr _e394427_)))
                                                 (_loop393417_
                                                  _lp-tl396434_
                                                  (cons _lp-hd395431_
                                                        _clause397424_))))
                                             (let ((_clause398437_
                                                    (reverse _clause397424_)))
                                               ((lambda (_L441_)
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
                                        (cons _L221_
                                              (begin
                                                '#!void
                                                (foldr (lambda (_g454457_
                                                                _g455460_)
                                                         (cons _g454457_
                                                               _g455460_))
                                                       '()
                                                       _L441_)))))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _clause398437_))))))
                               (_loop393417_ _target390411_ '()))
                             (_g387404_ _g388408_)))))
                   (_g387404_ _g388408_))
               (_g387404_ _g388408_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g386463_ _body384_))))
                                      (_g138162_ _g139166_)))
                                _clauses156215_
                                _hd146183_))))))
               (_loop151195_ _target148189_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g138162_ _g139166_)))))
                                           (_g138162_ _g139166_))
                                       (_g138162_ _g139166_))))
                               (_g138162_ _g139166_))))
                       (_g138162_ _g139166_)))))
            (_g137467_ _stx135_)))))
    (define |gerbil/core::<syntax-sugar>[:0:]#with-syntax|
      (lambda (_stx473_)
        (let ((_g478563_
               (lambda (_g479559_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g479559_))))
          (let ((_g477724_
                 (lambda (_g479567_)
                   (if (gx#stx-pair? _g479567_)
                       (let ((_e526570_ (gx#syntax-e _g479567_)))
                         (let ((_hd527574_ (##car _e526570_))
                               (_tl528577_ (##cdr _e526570_)))
                           (if (gx#stx-pair? _tl528577_)
                               (let ((_e529580_ (gx#syntax-e _tl528577_)))
                                 (let ((_hd530584_ (##car _e529580_))
                                       (_tl531587_ (##cdr _e529580_)))
                                   (if (gx#stx-pair/null? _hd530584_)
                                       (if (fx>= (gx#stx-length _hd530584_) '0)
                                           (let ((_g28200_
                                                  (gx#syntax-split-splice
                                                   _hd530584_
                                                   '0)))
                                             (begin
                                               (let ((_g28201_
                                                      (values-count _g28200_)))
                                                 (if (not (fx= _g28201_ 2))
                                                     (error "Context expects 2 values"
                                                            _g28201_)))
                                               (let ((_target532590_
                                                      (values-ref _g28200_ 0))
                                                     (_tl534593_
                                                      (values-ref _g28200_ 1)))
                                                 (if (gx#stx-null? _tl534593_)
                                                     (letrec ((_loop535596_
                                                               (lambda (_hd533600_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _e539603_
                                _pat540605_)
                         (if (gx#stx-pair? _hd533600_)
                             (let ((_e536608_ (gx#syntax-e _hd533600_)))
                               (let ((_lp-hd537612_ (##car _e536608_))
                                     (_lp-tl538615_ (##cdr _e536608_)))
                                 (if (gx#stx-pair? _lp-hd537612_)
                                     (let ((_e543618_
                                            (gx#syntax-e _lp-hd537612_)))
                                       (let ((_hd544622_ (##car _e543618_))
                                             (_tl545625_ (##cdr _e543618_)))
                                         (if (gx#stx-pair? _tl545625_)
                                             (let ((_e546628_
                                                    (gx#syntax-e _tl545625_)))
                                               (let ((_hd547632_
                                                      (##car _e546628_))
                                                     (_tl548635_
                                                      (##cdr _e546628_)))
                                                 (if (gx#stx-null? _tl548635_)
                                                     (_loop535596_
                                                      _lp-tl538615_
                                                      (cons _hd547632_
                                                            _e539603_)
                                                      (cons _hd544622_
                                                            _pat540605_))
                                                     (_g478563_ _g479567_))))
                                             (_g478563_ _g479567_))))
                                     (_g478563_ _g479567_))))
                             (let ((_e541638_ (reverse _e539603_))
                                   (_pat542641_ (reverse _pat540605_)))
                               (if (gx#stx-pair/null? _tl531587_)
                                   (if (fx>= (gx#stx-length _tl531587_) '0)
                                       (let ((_g28202_
                                              (gx#syntax-split-splice
                                               _tl531587_
                                               '0)))
                                         (begin
                                           (let ((_g28203_
                                                  (values-count _g28202_)))
                                             (if (not (fx= _g28203_ 2))
                                                 (error "Context expects 2 values"
                                                        _g28203_)))
                                           (let ((_target549644_
                                                  (values-ref _g28202_ 0))
                                                 (_tl551647_
                                                  (values-ref _g28202_ 1)))
                                             (if (gx#stx-null? _tl551647_)
                                                 (letrec ((_loop552650_
                                                           (lambda (_hd550654_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _body556657_)
                     (if (gx#stx-pair? _hd550654_)
                         (let ((_e553660_ (gx#syntax-e _hd550654_)))
                           (let ((_lp-hd554664_ (##car _e553660_))
                                 (_lp-tl555667_ (##cdr _e553660_)))
                             (_loop552650_
                              _lp-tl555667_
                              (cons _lp-hd554664_ _body556657_))))
                         (let ((_body557670_ (reverse _body556657_)))
                           ((lambda (_L674_ _L676_ _L677_)
                              (cons (gx#datum->syntax '#f 'syntax-case)
                                    (cons (cons (gx#datum->syntax '#f 'list)
                                                (begin
                                                  '#!void
                                                  (foldr (lambda (_g699706_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g700709_)
                   (cons _g699706_ _g700709_))
                 '()
                 _L676_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons '()
                                                (cons (cons (begin
                                                              '#!void
                                                              (foldr (lambda (_g701712_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g702715_)
                               (cons _g701712_ _g702715_))
                             '()
                             _L677_))
                    (cons (cons (gx#datum->syntax '#f 'let-values)
                                (cons '()
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g703718_ _g704721_)
                                                 (cons _g703718_ _g704721_))
                                               '()
                                               _L674_))))
                          '()))
              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            _body557670_
                            _e541638_
                            _pat542641_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_loop552650_
                                                    _target549644_
                                                    '()))
                                                 (_g478563_ _g479567_)))))
                                       (_g478563_ _g479567_))
                                   (_g478563_ _g479567_)))))))
               (_loop535596_ _target532590_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g478563_ _g479567_)))))
                                           (_g478563_ _g479567_))
                                       (_g478563_ _g479567_))))
                               (_g478563_ _g479567_))))
                       (_g478563_ _g479567_)))))
            (let ((_g476846_
                   (lambda (_g479728_)
                     (if (gx#stx-pair? _g479728_)
                         (let ((_e499731_ (gx#syntax-e _g479728_)))
                           (let ((_hd500735_ (##car _e499731_))
                                 (_tl501738_ (##cdr _e499731_)))
                             (if (gx#stx-pair? _tl501738_)
                                 (let ((_e502741_ (gx#syntax-e _tl501738_)))
                                   (let ((_hd503745_ (##car _e502741_))
                                         (_tl504748_ (##cdr _e502741_)))
                                     (if (gx#stx-pair? _hd503745_)
                                         (let ((_e505751_
                                                (gx#syntax-e _hd503745_)))
                                           (let ((_hd506755_ (##car _e505751_))
                                                 (_tl507758_
                                                  (##cdr _e505751_)))
                                             (if (gx#stx-pair? _hd506755_)
                                                 (let ((_e508761_
                                                        (gx#syntax-e
                                                         _hd506755_)))
                                                   (let ((_hd509765_
                                                          (##car _e508761_))
                                                         (_tl510768_
                                                          (##cdr _e508761_)))
                                                     (if (gx#stx-pair?
                                                          _tl510768_)
                                                         (let ((_e511771_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl510768_)))
                   (let ((_hd512775_ (##car _e511771_))
                         (_tl513778_ (##cdr _e511771_)))
                     (if (gx#stx-null? _tl513778_)
                         (if (gx#stx-null? _tl507758_)
                             (if (gx#stx-pair/null? _tl504748_)
                                 (if (fx>= (gx#stx-length _tl504748_) '0)
                                     (let ((_g28204_
                                            (gx#syntax-split-splice
                                             _tl504748_
                                             '0)))
                                       (begin
                                         (let ((_g28205_
                                                (values-count _g28204_)))
                                           (if (not (fx= _g28205_ 2))
                                               (error "Context expects 2 values"
                                                      _g28205_)))
                                         (let ((_target514781_
                                                (values-ref _g28204_ 0))
                                               (_tl516784_
                                                (values-ref _g28204_ 1)))
                                           (if (gx#stx-null? _tl516784_)
                                               (letrec ((_loop517787_
                                                         (lambda (_hd515791_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _body521794_)
                   (if (gx#stx-pair? _hd515791_)
                       (let ((_e518797_ (gx#syntax-e _hd515791_)))
                         (let ((_lp-hd519801_ (##car _e518797_))
                               (_lp-tl520804_ (##cdr _e518797_)))
                           (_loop517787_
                            _lp-tl520804_
                            (cons _lp-hd519801_ _body521794_))))
                       (let ((_body522807_ (reverse _body521794_)))
                         ((lambda (_L811_ _L813_ _L814_)
                            (cons (gx#datum->syntax '#f 'syntax-case)
                                  (cons _L813_
                                        (cons '()
                                              (cons (cons _L814_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'let-values)
                              (cons '()
                                    (begin
                                      '#!void
                                      (foldr (lambda (_g837840_ _g838843_)
                                               (cons _g837840_ _g838843_))
                                             '()
                                             _L811_))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))))
                          _body522807_
                          _hd512775_
                          _hd509765_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop517787_
                                                  _target514781_
                                                  '()))
                                               (_g477724_ _g479728_)))))
                                     (_g477724_ _g479728_))
                                 (_g477724_ _g479728_))
                             (_g477724_ _g479728_))
                         (_g477724_ _g479728_))))
                 (_g477724_ _g479728_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g477724_ _g479728_))))
                                         (_g477724_ _g479728_))))
                                 (_g477724_ _g479728_))))
                         (_g477724_ _g479728_)))))
              (let ((_g475928_
                     (lambda (_g479850_)
                       (if (gx#stx-pair? _g479850_)
                           (let ((_e481853_ (gx#syntax-e _g479850_)))
                             (let ((_hd482857_ (##car _e481853_))
                                   (_tl483860_ (##cdr _e481853_)))
                               (if (gx#stx-pair? _tl483860_)
                                   (let ((_e484863_ (gx#syntax-e _tl483860_)))
                                     (let ((_hd485867_ (##car _e484863_))
                                           (_tl486870_ (##cdr _e484863_)))
                                       (if (gx#stx-null? _hd485867_)
                                           (if (gx#stx-pair/null? _tl486870_)
                                               (if (fx>= (gx#stx-length
                                                          _tl486870_)
                                                         '0)
                                                   (let ((_g28206_
                                                          (gx#syntax-split-splice
                                                           _tl486870_
                                                           '0)))
                                                     (begin
                                                       (let ((_g28207_
                                                              (values-count
                                                               _g28206_)))
                                                         (if (not (fx= _g28207_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g28207_)))
               (let ((_target487873_ (values-ref _g28206_ 0))
                     (_tl489876_ (values-ref _g28206_ 1)))
                 (if (gx#stx-null? _tl489876_)
                     (letrec ((_loop490879_
                               (lambda (_hd488883_ _body494886_)
                                 (if (gx#stx-pair? _hd488883_)
                                     (let ((_e491889_
                                            (gx#syntax-e _hd488883_)))
                                       (let ((_lp-hd492893_ (##car _e491889_))
                                             (_lp-tl493896_ (##cdr _e491889_)))
                                         (_loop490879_
                                          _lp-tl493896_
                                          (cons _lp-hd492893_ _body494886_))))
                                     (let ((_body495899_
                                            (reverse _body494886_)))
                                       ((lambda (_L903_)
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'let-values)
                                                (cons '()
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g919922_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g920925_)
                         (cons _g919922_ _g920925_))
                       '()
                       _L903_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _body495899_))))))
                       (_loop490879_ _target487873_ '()))
                     (_g476846_ _g479850_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g476846_ _g479850_))
                                               (_g476846_ _g479850_))
                                           (_g476846_ _g479850_))))
                                   (_g476846_ _g479850_))))
                           (_g476846_ _g479850_)))))
                (_g475928_ _stx473_)))))))
    (define |gerbil/core::<syntax-sugar>[:0:]#with-syntax*|
      (lambda (_stx936_)
        (let ((_g9411018_
               (lambda (_g9421014_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g9421014_))))
          (let ((_g9401119_
                 (lambda (_g9421022_)
                   (if (gx#stx-pair? _g9421022_)
                       (let ((_e9951025_ (gx#syntax-e _g9421022_)))
                         (let ((_hd9961029_ (##car _e9951025_))
                               (_tl9971032_ (##cdr _e9951025_)))
                           (if (gx#stx-pair? _tl9971032_)
                               (let ((_e9981035_ (gx#syntax-e _tl9971032_)))
                                 (let ((_hd9991039_ (##car _e9981035_))
                                       (_tl10001042_ (##cdr _e9981035_)))
                                   (if (gx#stx-pair? _hd9991039_)
                                       (let ((_e10011045_
                                              (gx#syntax-e _hd9991039_)))
                                         (let ((_hd10021049_
                                                (##car _e10011045_))
                                               (_tl10031052_
                                                (##cdr _e10011045_)))
                                           (if (gx#stx-pair/null? _tl10001042_)
                                               (if (fx>= (gx#stx-length
                                                          _tl10001042_)
                                                         '0)
                                                   (let ((_g28208_
                                                          (gx#syntax-split-splice
                                                           _tl10001042_
                                                           '0)))
                                                     (begin
                                                       (let ((_g28209_
                                                              (values-count
                                                               _g28208_)))
                                                         (if (not (fx= _g28209_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g28209_)))
               (let ((_target10041055_ (values-ref _g28208_ 0))
                     (_tl10061058_ (values-ref _g28208_ 1)))
                 (if (gx#stx-null? _tl10061058_)
                     (letrec ((_loop10071061_
                               (lambda (_hd10051065_ _body10111068_)
                                 (if (gx#stx-pair? _hd10051065_)
                                     (let ((_e10081071_
                                            (gx#syntax-e _hd10051065_)))
                                       (let ((_lp-hd10091075_
                                              (##car _e10081071_))
                                             (_lp-tl10101078_
                                              (##cdr _e10081071_)))
                                         (_loop10071061_
                                          _lp-tl10101078_
                                          (cons _lp-hd10091075_
                                                _body10111068_))))
                                     (let ((_body10121081_
                                            (reverse _body10111068_)))
                                       ((lambda (_L1085_
                                                 _L1087_
                                                 _L1088_
                                                 _L1089_)
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'with-syntax)
                                                (cons (cons _L1088_ '())
                                                      (cons (cons _L1089_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L1087_
                                (begin
                                  '#!void
                                  (foldr (lambda (_g11101113_ _g11111116_)
                                           (cons _g11101113_ _g11111116_))
                                         '()
                                         _L1085_))))
                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _body10121081_
                                        _tl10031052_
                                        _hd10021049_
                                        _hd9961029_))))))
                       (_loop10071061_ _target10041055_ '()))
                     (_g9411018_ _g9421022_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g9411018_ _g9421022_))
                                               (_g9411018_ _g9421022_))))
                                       (_g9411018_ _g9421022_))))
                               (_g9411018_ _g9421022_))))
                       (_g9411018_ _g9421022_)))))
            (let ((_g9391257_
                   (lambda (_g9421123_)
                     (if (gx#stx-pair? _g9421123_)
                         (let ((_e9641126_ (gx#syntax-e _g9421123_)))
                           (let ((_hd9651130_ (##car _e9641126_))
                                 (_tl9661133_ (##cdr _e9641126_)))
                             (if (gx#stx-pair? _tl9661133_)
                                 (let ((_e9671136_ (gx#syntax-e _tl9661133_)))
                                   (let ((_hd9681140_ (##car _e9671136_))
                                         (_tl9691143_ (##cdr _e9671136_)))
                                     (if (gx#stx-pair? _hd9681140_)
                                         (let ((_e9701146_
                                                (gx#syntax-e _hd9681140_)))
                                           (let ((_hd9711150_
                                                  (##car _e9701146_))
                                                 (_tl9721153_
                                                  (##cdr _e9701146_)))
                                             (if (gx#stx-pair? _hd9711150_)
                                                 (let ((_e9731156_
                                                        (gx#syntax-e
                                                         _hd9711150_)))
                                                   (let ((_hd9741160_
                                                          (##car _e9731156_))
                                                         (_tl9751163_
                                                          (##cdr _e9731156_)))
                                                     (if (gx#stx-pair?
                                                          _hd9741160_)
                                                         (let ((_e9761166_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd9741160_)))
                   (let ((_hd9771170_ (##car _e9761166_))
                         (_tl9781173_ (##cdr _e9761166_)))
                     (if (gx#identifier? _hd9771170_)
                         (if (gx#free-identifier=?
                              |gerbil/core::<syntax-sugar>[1]#_g28210_|
                              _hd9771170_)
                             (if (gx#stx-pair? _tl9751163_)
                                 (let ((_e9791176_ (gx#syntax-e _tl9751163_)))
                                   (let ((_hd9801180_ (##car _e9791176_))
                                         (_tl9811183_ (##cdr _e9791176_)))
                                     (if (gx#stx-null? _tl9811183_)
                                         (if (gx#stx-pair/null? _tl9691143_)
                                             (if (fx>= (gx#stx-length
                                                        _tl9691143_)
                                                       '0)
                                                 (let ((_g28211_
                                                        (gx#syntax-split-splice
                                                         _tl9691143_
                                                         '0)))
                                                   (begin
                                                     (let ((_g28212_
                                                            (values-count
                                                             _g28211_)))
                                                       (if (not (fx= _g28212_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g28212_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target9821186_
                                                            (values-ref
                                                             _g28211_
                                                             0))
                                                           (_tl9841189_
                                                            (values-ref
                                                             _g28211_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl9841189_)
                                                           (letrec ((_loop9851192_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd9831196_ _body9891199_)
                               (if (gx#stx-pair? _hd9831196_)
                                   (let ((_e9861202_
                                          (gx#syntax-e _hd9831196_)))
                                     (let ((_lp-hd9871206_ (##car _e9861202_))
                                           (_lp-tl9881209_ (##cdr _e9861202_)))
                                       (_loop9851192_
                                        _lp-tl9881209_
                                        (cons _lp-hd9871206_ _body9891199_))))
                                   (let ((_body9901212_
                                          (reverse _body9891199_)))
                                     ((lambda (_L1216_
                                               _L1218_
                                               _L1219_
                                               _L1220_
                                               _L1221_)
                                        (cons (gx#datum->syntax
                                               '#f
                                               'let-values)
                                              (cons (cons (cons _L1220_
                                                                (cons _L1219_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons _L1221_
                                                                (cons _L1218_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (begin
                                '#!void
                                (foldr (lambda (_g12481251_ _g12491254_)
                                         (cons _g12481251_ _g12491254_))
                                       '()
                                       _L1216_))))
                  '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _body9901212_
                                      _tl9721153_
                                      _hd9801180_
                                      _tl9781173_
                                      _hd9651130_))))))
                     (_loop9851192_ _target9821186_ '()))
                   (_g9401119_ _g9421123_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g9401119_ _g9421123_))
                                             (_g9401119_ _g9421123_))
                                         (_g9401119_ _g9421123_))))
                                 (_g9401119_ _g9421123_))
                             (_g9401119_ _g9421123_))
                         (_g9401119_ _g9421123_))))
                 (_g9401119_ _g9421123_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g9401119_ _g9421123_))))
                                         (_g9401119_ _g9421123_))))
                                 (_g9401119_ _g9421123_))))
                         (_g9401119_ _g9421123_)))))
              (let ((_g9381339_
                     (lambda (_g9421261_)
                       (if (gx#stx-pair? _g9421261_)
                           (let ((_e9441264_ (gx#syntax-e _g9421261_)))
                             (let ((_hd9451268_ (##car _e9441264_))
                                   (_tl9461271_ (##cdr _e9441264_)))
                               (if (gx#stx-pair? _tl9461271_)
                                   (let ((_e9471274_
                                          (gx#syntax-e _tl9461271_)))
                                     (let ((_hd9481278_ (##car _e9471274_))
                                           (_tl9491281_ (##cdr _e9471274_)))
                                       (if (gx#stx-null? _hd9481278_)
                                           (if (gx#stx-pair/null? _tl9491281_)
                                               (if (fx>= (gx#stx-length
                                                          _tl9491281_)
                                                         '0)
                                                   (let ((_g28213_
                                                          (gx#syntax-split-splice
                                                           _tl9491281_
                                                           '0)))
                                                     (begin
                                                       (let ((_g28214_
                                                              (values-count
                                                               _g28213_)))
                                                         (if (not (fx= _g28214_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g28214_)))
               (let ((_target9501284_ (values-ref _g28213_ 0))
                     (_tl9521287_ (values-ref _g28213_ 1)))
                 (if (gx#stx-null? _tl9521287_)
                     (letrec ((_loop9531290_
                               (lambda (_hd9511294_ _body9571297_)
                                 (if (gx#stx-pair? _hd9511294_)
                                     (let ((_e9541300_
                                            (gx#syntax-e _hd9511294_)))
                                       (let ((_lp-hd9551304_
                                              (##car _e9541300_))
                                             (_lp-tl9561307_
                                              (##cdr _e9541300_)))
                                         (_loop9531290_
                                          _lp-tl9561307_
                                          (cons _lp-hd9551304_
                                                _body9571297_))))
                                     (let ((_body9581310_
                                            (reverse _body9571297_)))
                                       ((lambda (_L1314_)
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'let-values)
                                                (cons '()
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g13301333_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g13311336_)
                         (cons _g13301333_ _g13311336_))
                       '()
                       _L1314_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _body9581310_))))))
                       (_loop9531290_ _target9501284_ '()))
                     (_g9391257_ _g9421261_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g9391257_ _g9421261_))
                                               (_g9391257_ _g9421261_))
                                           (_g9391257_ _g9421261_))))
                                   (_g9391257_ _g9421261_))))
                           (_g9391257_ _g9421261_)))))
                (_g9381339_ _stx936_)))))))))
