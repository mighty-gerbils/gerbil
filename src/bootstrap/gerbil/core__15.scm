(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<module-sugar>[:0:]#require|
    (lambda (_$stx46043_)
      (let ((_g4604846067_
             (lambda (_g4604946063_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g4604946063_))))
        (let ((_g4604746113_
               (lambda (_g4604946071_)
                 (if (gx#stx-pair? _g4604946071_)
                     (let ((_e4605646074_ (gx#syntax-e _g4604946071_)))
                       (let ((_hd4605746078_ (##car _e4605646074_))
                             (_tl4605846081_ (##cdr _e4605646074_)))
                         (if (gx#stx-pair? _tl4605846081_)
                             (let ((_e4605946084_
                                    (gx#syntax-e _tl4605846081_)))
                               (let ((_hd4606046088_ (##car _e4605946084_))
                                     (_tl4606146091_ (##cdr _e4605946084_)))
                                 ((lambda (_L46094_ _L46096_ _L46097_)
                                    (cons (gx#datum->syntax '#f 'cond-expand)
                                          (cons (cons _L46096_
                                                      (cons (cons _L46097_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _L46094_)
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
                                      (cons _L46096_ '())))
                          '()))
              '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  _tl4606146091_
                                  _hd4606046088_
                                  _hd4605746078_)))
                             (_g4604846067_ _g4604946071_))))
                     (_g4604846067_ _g4604946071_)))))
          (let ((_g4604646134_
                 (lambda (_g4604946117_)
                   (if (gx#stx-pair? _g4604946117_)
                       (let ((_e4605046120_ (gx#syntax-e _g4604946117_)))
                         (let ((_hd4605146124_ (##car _e4605046120_))
                               (_tl4605246127_ (##cdr _e4605046120_)))
                           (if (gx#stx-null? _tl4605246127_)
                               ((lambda ()
                                  (cons (gx#datum->syntax '#f 'begin) '())))
                               (_g4604746113_ _g4604946117_))))
                       (_g4604746113_ _g4604946117_)))))
            (_g4604646134_ _$stx46043_))))))
  (define |gerbil/core::<module-sugar>[:0:]#defsyntax-for-import|
    (lambda (_$stx46138_)
      (let ((_g4614346183_
             (lambda (_g4614446179_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g4614446179_))))
        (let ((_g4614246284_
               (lambda (_g4614446187_)
                 (if (gx#stx-pair? _g4614446187_)
                     (let ((_e4616046190_ (gx#syntax-e _g4614446187_)))
                       (let ((_hd4616146194_ (##car _e4616046190_))
                             (_tl4616246197_ (##cdr _e4616046190_)))
                         (if (gx#stx-pair? _tl4616246197_)
                             (let ((_e4616346200_
                                    (gx#syntax-e _tl4616246197_)))
                               (let ((_hd4616446204_ (##car _e4616346200_))
                                     (_tl4616546207_ (##cdr _e4616346200_)))
                                 (if (gx#stx-pair? _hd4616446204_)
                                     (let ((_e4616646210_
                                            (gx#syntax-e _hd4616446204_)))
                                       (let ((_hd4616746214_
                                              (##car _e4616646210_))
                                             (_tl4616846217_
                                              (##cdr _e4616646210_)))
                                         (if (gx#stx-pair/null? _tl4616546207_)
                                             (if (fx>= (gx#stx-length
                                                        _tl4616546207_)
                                                       '0)
                                                 (let ((_g47135_
                                                        (gx#syntax-split-splice
                                                         _tl4616546207_
                                                         '0)))
                                                   (begin
                                                     (let ((_g47136_
                                                            (values-count
                                                             _g47135_)))
                                                       (if (not (fx= _g47136_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g47136_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target4616946220_
                                                            (values-ref
                                                             _g47135_
                                                             0))
                                                           (_tl4617146223_
                                                            (values-ref
                                                             _g47135_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl4617146223_)
                                                           (letrec ((_loop4617246226_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd4617046230_ _body4617646233_)
                               (if (gx#stx-pair? _hd4617046230_)
                                   (let ((_e4617346236_
                                          (gx#syntax-e _hd4617046230_)))
                                     (let ((_lp-hd4617446240_
                                            (##car _e4617346236_))
                                           (_lp-tl4617546243_
                                            (##cdr _e4617346236_)))
                                       (_loop4617246226_
                                        _lp-tl4617546243_
                                        (cons _lp-hd4617446240_
                                              _body4617646233_))))
                                   (let ((_body4617746246_
                                          (reverse _body4617646233_)))
                                     ((lambda (_L46250_
                                               _L46252_
                                               _L46253_
                                               _L46254_)
                                        (if (gx#identifier? _L46253_)
                                            (cons _L46254_
                                                  (cons _L46253_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'lambda)
                            (cons _L46252_
                                  (begin
                                    '#!void
                                    (foldr (lambda (_g4627546278_
                                                    _g4627646281_)
                                             (cons _g4627546278_
                                                   _g4627646281_))
                                           '()
                                           _L46250_))))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g4614346183_ _g4614446187_)))
                                      _body4617746246_
                                      _tl4616846217_
                                      _hd4616746214_
                                      _hd4616146194_))))))
                     (_loop4617246226_ _target4616946220_ '()))
                   (_g4614346183_ _g4614446187_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g4614346183_ _g4614446187_))
                                             (_g4614346183_ _g4614446187_))))
                                     (_g4614346183_ _g4614446187_))))
                             (_g4614346183_ _g4614446187_))))
                     (_g4614346183_ _g4614446187_)))))
          (let ((_g4614146338_
                 (lambda (_g4614446288_)
                   (if (gx#stx-pair? _g4614446288_)
                       (let ((_e4614746291_ (gx#syntax-e _g4614446288_)))
                         (let ((_hd4614846295_ (##car _e4614746291_))
                               (_tl4614946298_ (##cdr _e4614746291_)))
                           (if (gx#stx-pair? _tl4614946298_)
                               (let ((_e4615046301_
                                      (gx#syntax-e _tl4614946298_)))
                                 (let ((_hd4615146305_ (##car _e4615046301_))
                                       (_tl4615246308_ (##cdr _e4615046301_)))
                                   (if (gx#stx-pair? _tl4615246308_)
                                       (let ((_e4615346311_
                                              (gx#syntax-e _tl4615246308_)))
                                         (let ((_hd4615446315_
                                                (##car _e4615346311_))
                                               (_tl4615546318_
                                                (##cdr _e4615346311_)))
                                           (if (gx#stx-null? _tl4615546318_)
                                               ((lambda (_L46321_ _L46323_)
                                                  (if (gx#identifier? _L46323_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'defsyntax)
                                                            (cons _L46323_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax
                                       '#f
                                       'make-import-expander)
                                      (cons _L46321_ '()))
                                '())))
              (_g4614246284_ _g4614446288_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd4615446315_
                                                _hd4615146305_)
                                               (_g4614246284_ _g4614446288_))))
                                       (_g4614246284_ _g4614446288_))))
                               (_g4614246284_ _g4614446288_))))
                       (_g4614246284_ _g4614446288_)))))
            (_g4614146338_ _$stx46138_))))))
  (define |gerbil/core::<module-sugar>[:0:]#defsyntax-for-export|
    (lambda (_$stx46343_)
      (let ((_g4634846388_
             (lambda (_g4634946384_)
               (gx#raise-syntax-error '#f '"Bad syntax" _g4634946384_))))
        (let ((_g4634746489_
               (lambda (_g4634946392_)
                 (if (gx#stx-pair? _g4634946392_)
                     (let ((_e4636546395_ (gx#syntax-e _g4634946392_)))
                       (let ((_hd4636646399_ (##car _e4636546395_))
                             (_tl4636746402_ (##cdr _e4636546395_)))
                         (if (gx#stx-pair? _tl4636746402_)
                             (let ((_e4636846405_
                                    (gx#syntax-e _tl4636746402_)))
                               (let ((_hd4636946409_ (##car _e4636846405_))
                                     (_tl4637046412_ (##cdr _e4636846405_)))
                                 (if (gx#stx-pair? _hd4636946409_)
                                     (let ((_e4637146415_
                                            (gx#syntax-e _hd4636946409_)))
                                       (let ((_hd4637246419_
                                              (##car _e4637146415_))
                                             (_tl4637346422_
                                              (##cdr _e4637146415_)))
                                         (if (gx#stx-pair/null? _tl4637046412_)
                                             (if (fx>= (gx#stx-length
                                                        _tl4637046412_)
                                                       '0)
                                                 (let ((_g47137_
                                                        (gx#syntax-split-splice
                                                         _tl4637046412_
                                                         '0)))
                                                   (begin
                                                     (let ((_g47138_
                                                            (values-count
                                                             _g47137_)))
                                                       (if (not (fx= _g47138_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g47138_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target4637446425_
                                                            (values-ref
                                                             _g47137_
                                                             0))
                                                           (_tl4637646428_
                                                            (values-ref
                                                             _g47137_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl4637646428_)
                                                           (letrec ((_loop4637746431_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd4637546435_ _body4638146438_)
                               (if (gx#stx-pair? _hd4637546435_)
                                   (let ((_e4637846441_
                                          (gx#syntax-e _hd4637546435_)))
                                     (let ((_lp-hd4637946445_
                                            (##car _e4637846441_))
                                           (_lp-tl4638046448_
                                            (##cdr _e4637846441_)))
                                       (_loop4637746431_
                                        _lp-tl4638046448_
                                        (cons _lp-hd4637946445_
                                              _body4638146438_))))
                                   (let ((_body4638246451_
                                          (reverse _body4638146438_)))
                                     ((lambda (_L46455_
                                               _L46457_
                                               _L46458_
                                               _L46459_)
                                        (if (gx#identifier? _L46458_)
                                            (cons _L46459_
                                                  (cons _L46458_
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'lambda)
                            (cons _L46457_
                                  (begin
                                    '#!void
                                    (foldr (lambda (_g4648046483_
                                                    _g4648146486_)
                                             (cons _g4648046483_
                                                   _g4648146486_))
                                           '()
                                           _L46455_))))
                      '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g4634846388_ _g4634946392_)))
                                      _body4638246451_
                                      _tl4637346422_
                                      _hd4637246419_
                                      _hd4636646399_))))))
                     (_loop4637746431_ _target4637446425_ '()))
                   (_g4634846388_ _g4634946392_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g4634846388_ _g4634946392_))
                                             (_g4634846388_ _g4634946392_))))
                                     (_g4634846388_ _g4634946392_))))
                             (_g4634846388_ _g4634946392_))))
                     (_g4634846388_ _g4634946392_)))))
          (let ((_g4634646543_
                 (lambda (_g4634946493_)
                   (if (gx#stx-pair? _g4634946493_)
                       (let ((_e4635246496_ (gx#syntax-e _g4634946493_)))
                         (let ((_hd4635346500_ (##car _e4635246496_))
                               (_tl4635446503_ (##cdr _e4635246496_)))
                           (if (gx#stx-pair? _tl4635446503_)
                               (let ((_e4635546506_
                                      (gx#syntax-e _tl4635446503_)))
                                 (let ((_hd4635646510_ (##car _e4635546506_))
                                       (_tl4635746513_ (##cdr _e4635546506_)))
                                   (if (gx#stx-pair? _tl4635746513_)
                                       (let ((_e4635846516_
                                              (gx#syntax-e _tl4635746513_)))
                                         (let ((_hd4635946520_
                                                (##car _e4635846516_))
                                               (_tl4636046523_
                                                (##cdr _e4635846516_)))
                                           (if (gx#stx-null? _tl4636046523_)
                                               ((lambda (_L46526_ _L46528_)
                                                  (if (gx#identifier? _L46528_)
                                                      (cons (gx#datum->syntax
                                                             '#f
                                                             'defsyntax)
                                                            (cons _L46528_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (gx#datum->syntax
                                       '#f
                                       'make-export-expander)
                                      (cons _L46526_ '()))
                                '())))
              (_g4634746489_ _g4634946493_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd4635946520_
                                                _hd4635646510_)
                                               (_g4634746489_ _g4634946493_))))
                                       (_g4634746489_ _g4634946493_))))
                               (_g4634746489_ _g4634946493_))))
                       (_g4634746489_ _g4634946493_)))))
            (_g4634646543_ _$stx46343_))))))
  (define |gerbil/core::<module-sugar>[:0:]#only-in|
    (gx#make-import-expander
     (lambda (_stx46548_)
       (let ((_g4655146575_
              (lambda (_g4655246571_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g4655246571_))))
         (let ((_g4655046697_
                (lambda (_g4655246579_)
                  (if (gx#stx-pair? _g4655246579_)
                      (let ((_e4655546582_ (gx#syntax-e _g4655246579_)))
                        (let ((_hd4655646586_ (##car _e4655546582_))
                              (_tl4655746589_ (##cdr _e4655546582_)))
                          (if (gx#stx-pair? _tl4655746589_)
                              (let ((_e4655846592_
                                     (gx#syntax-e _tl4655746589_)))
                                (let ((_hd4655946596_ (##car _e4655846592_))
                                      (_tl4656046599_ (##cdr _e4655846592_)))
                                  (if (gx#stx-pair/null? _tl4656046599_)
                                      (if (fx>= (gx#stx-length _tl4656046599_)
                                                '0)
                                          (let ((_g47139_
                                                 (gx#syntax-split-splice
                                                  _tl4656046599_
                                                  '0)))
                                            (begin
                                              (let ((_g47140_
                                                     (values-count _g47139_)))
                                                (if (not (fx= _g47140_ 2))
                                                    (error "Context expects 2 values"
                                                           _g47140_)))
                                              (let ((_target4656146602_
                                                     (values-ref _g47139_ 0))
                                                    (_tl4656346605_
                                                     (values-ref _g47139_ 1)))
                                                (if (gx#stx-null?
                                                     _tl4656346605_)
                                                    (letrec ((_loop4656446608_
                                                              (lambda (_hd4656246612_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _id4656846615_)
                        (if (gx#stx-pair? _hd4656246612_)
                            (let ((_e4656546618_ (gx#syntax-e _hd4656246612_)))
                              (let ((_lp-hd4656646622_ (##car _e4656546618_))
                                    (_lp-tl4656746625_ (##cdr _e4656546618_)))
                                (_loop4656446608_
                                 _lp-tl4656746625_
                                 (cons _lp-hd4656646622_ _id4656846615_))))
                            (let ((_id4656946628_ (reverse _id4656846615_)))
                              ((lambda (_L46632_ _L46634_)
                                 (if (gx#identifier-list?
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g4665146654_
                                                        _g4665246657_)
                                                 (cons _g4665146654_
                                                       _g4665246657_))
                                               '()
                                               _L46632_)))
                                     (let ((_keys46668_
                                            (gx#stx-map
                                             gx#core-identifier-key
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g4665946662_
                                                               _g4666046665_)
                                                        (cons _g4665946662_
                                                              _g4666046665_))
                                                      '()
                                                      _L46632_)))))
                                       (let ((_keytab46679_
                                              (let ((_ht46671_
                                                     (make-hash-table)))
                                                (begin
                                                  (for-each
                                                   (lambda (_g4667346675_)
                                                     (hash-put!
                                                      _ht46671_
                                                      _g4667346675_
                                                      '#t))
                                                   _keys46668_)
                                                  _ht46671_))))
                                         (let ((_imports46682_
                                                (gx#core-expand-import-source
                                                 _L46634_)))
                                           (let ((_fold-e46692_
                                                  (letrec ((_fold-e46685_
                                                            (lambda (_in46688_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _r46690_)
                      (if (gx#module-import? _in46688_)
                          (if (hash-get
                               _keytab46679_
                               (gx#module-import-name _in46688_))
                              (cons _in46688_ _r46690_)
                              _r46690_)
                          (if (gx#import-set? _in46688_)
                              (foldl _fold-e46685_
                                     _r46690_
                                     (gx#import-set-imports _in46688_))
                              _r46690_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _fold-e46685_)))
                                             (let ()
                                               (cons 'begin:
                                                     (foldl _fold-e46692_
                                                            '()
                                                            _imports46682_)))))))
                                     (_g4655146575_ _g4655246579_)))
                               _id4656946628_
                               _hd4655946596_))))))
              (_loop4656446608_ _target4656146602_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g4655146575_
                                                     _g4655246579_)))))
                                          (_g4655146575_ _g4655246579_))
                                      (_g4655146575_ _g4655246579_))))
                              (_g4655146575_ _g4655246579_))))
                      (_g4655146575_ _g4655246579_)))))
           (_g4655046697_ _stx46548_))))))
  (define |gerbil/core::<module-sugar>[:0:]#except-out|
    (gx#make-export-expander
     (lambda (_stx46702_)
       (let ((_g4670546729_
              (lambda (_g4670646725_)
                (gx#raise-syntax-error '#f '"Bad syntax" _g4670646725_))))
         (let ((_g4670446851_
                (lambda (_g4670646733_)
                  (if (gx#stx-pair? _g4670646733_)
                      (let ((_e4670946736_ (gx#syntax-e _g4670646733_)))
                        (let ((_hd4671046740_ (##car _e4670946736_))
                              (_tl4671146743_ (##cdr _e4670946736_)))
                          (if (gx#stx-pair? _tl4671146743_)
                              (let ((_e4671246746_
                                     (gx#syntax-e _tl4671146743_)))
                                (let ((_hd4671346750_ (##car _e4671246746_))
                                      (_tl4671446753_ (##cdr _e4671246746_)))
                                  (if (gx#stx-pair/null? _tl4671446753_)
                                      (if (fx>= (gx#stx-length _tl4671446753_)
                                                '0)
                                          (let ((_g47141_
                                                 (gx#syntax-split-splice
                                                  _tl4671446753_
                                                  '0)))
                                            (begin
                                              (let ((_g47142_
                                                     (values-count _g47141_)))
                                                (if (not (fx= _g47142_ 2))
                                                    (error "Context expects 2 values"
                                                           _g47142_)))
                                              (let ((_target4671546756_
                                                     (values-ref _g47141_ 0))
                                                    (_tl4671746759_
                                                     (values-ref _g47141_ 1)))
                                                (if (gx#stx-null?
                                                     _tl4671746759_)
                                                    (letrec ((_loop4671846762_
                                                              (lambda (_hd4671646766_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _id4672246769_)
                        (if (gx#stx-pair? _hd4671646766_)
                            (let ((_e4671946772_ (gx#syntax-e _hd4671646766_)))
                              (let ((_lp-hd4672046776_ (##car _e4671946772_))
                                    (_lp-tl4672146779_ (##cdr _e4671946772_)))
                                (_loop4671846762_
                                 _lp-tl4672146779_
                                 (cons _lp-hd4672046776_ _id4672246769_))))
                            (let ((_id4672346782_ (reverse _id4672246769_)))
                              ((lambda (_L46786_ _L46788_)
                                 (if (gx#identifier-list?
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g4680546808_
                                                        _g4680646811_)
                                                 (cons _g4680546808_
                                                       _g4680646811_))
                                               '()
                                               _L46786_)))
                                     (let ((_keys46822_
                                            (gx#stx-map
                                             gx#core-identifier-key
                                             (begin
                                               '#!void
                                               (foldr (lambda (_g4681346816_
                                                               _g4681446819_)
                                                        (cons _g4681346816_
                                                              _g4681446819_))
                                                      '()
                                                      _L46786_)))))
                                       (let ((_keytab46833_
                                              (let ((_ht46825_
                                                     (make-hash-table)))
                                                (begin
                                                  (for-each
                                                   (lambda (_g4682746829_)
                                                     (hash-put!
                                                      _ht46825_
                                                      _g4682746829_
                                                      '#t))
                                                   _keys46822_)
                                                  _ht46825_))))
                                         (let ((_exports46836_
                                                (gx#core-expand-export-source
                                                 _L46788_)))
                                           (let ((_fold-e46846_
                                                  (letrec ((_fold-e46839_
                                                            (lambda (_out46842_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _r46844_)
                      (if (gx#module-export? _out46842_)
                          (if (hash-get
                               _keytab46833_
                               (gx#module-export-name _out46842_))
                              _r46844_
                              (cons _out46842_ _r46844_))
                          (if (gx#export-set? _out46842_)
                              (foldl _fold-e46839_
                                     _r46844_
                                     (gx#export-set-exports _out46842_))
                              _r46844_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    _fold-e46839_)))
                                             (let ()
                                               (cons 'begin:
                                                     (foldl _fold-e46846_
                                                            '()
                                                            _exports46836_)))))))
                                     (_g4670546729_ _g4670646733_)))
                               _id4672346782_
                               _hd4671346750_))))))
              (_loop4671846762_ _target4671546756_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g4670546729_
                                                     _g4670646733_)))))
                                          (_g4670546729_ _g4670646733_))
                                      (_g4670546729_ _g4670646733_))))
                              (_g4670546729_ _g4670646733_))))
                      (_g4670546729_ _g4670646733_)))))
           (_g4670446851_ _stx46702_)))))))
