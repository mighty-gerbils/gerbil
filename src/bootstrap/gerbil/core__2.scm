(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core$<syntax-sugar>[1]#_g34613_|
    (gx#make-syntax-quote 'values #f (gx#current-expander-context) '()))
  (begin
    (define |gerbil/core$<syntax-sugar>[:0:]#syntax-rules|
      (lambda (_stx360_)
        (let* ((_g363387_
                (lambda (_g364383_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g364383_)))
               (_g362692_
                (lambda (_g364391_)
                  (if (gx#stx-pair? _g364391_)
                      (let ((_e367394_ (gx#syntax-e _g364391_)))
                        (let ((_hd368398_ (##car _e367394_))
                              (_tl369401_ (##cdr _e367394_)))
                          (if (gx#stx-pair? _tl369401_)
                              (let ((_e370404_ (gx#syntax-e _tl369401_)))
                                (let ((_hd371408_ (##car _e370404_))
                                      (_tl372411_ (##cdr _e370404_)))
                                  (if (gx#stx-pair/null? _tl372411_)
                                      (if (fx>= (gx#stx-length _tl372411_) '0)
                                          (let ((_g34599_
                                                 (gx#syntax-split-splice
                                                  _tl372411_
                                                  '0)))
                                            (begin
                                              (let ((_g34600_
                                                     (values-count _g34599_)))
                                                (if (not (fx= _g34600_ 2))
                                                    (error "Context expects 2 values"
                                                           _g34600_)))
                                              (let ((_target373414_
                                                     (values-ref _g34599_ 0))
                                                    (_tl375417_
                                                     (values-ref _g34599_ 1)))
                                                (if (gx#stx-null? _tl375417_)
                                                    (letrec ((_loop376420_
                                                              (lambda (_hd374424_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _clauses380427_)
                        (if (gx#stx-pair? _hd374424_)
                            (let ((_e377430_ (gx#syntax-e _hd374424_)))
                              (let ((_lp-hd378434_ (##car _e377430_))
                                    (_lp-tl379437_ (##cdr _e377430_)))
                                (_loop376420_
                                 _lp-tl379437_
                                 (cons _lp-hd378434_ _clauses380427_))))
                            (let ((_clauses381440_ (reverse _clauses380427_)))
                              ((lambda (_L444_ _L446_)
                                 (if (gx#identifier-list? _L446_)
                                     (let* ((_body609_
                                             (gx#stx-map
                                              (lambda (_clause466_)
                                                (let* ((_g470497_
                                                        (lambda (_g471493_)
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _g471493_)))
                                                       (_g469555_
                                                        (lambda (_g471501_)
                                                          (if (gx#stx-pair?
                                                               _g471501_)
                                                              (let ((_e483504_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _g471501_)))
                        (let ((_hd484508_ (##car _e483504_))
                              (_tl485511_ (##cdr _e483504_)))
                          (if (gx#stx-pair? _tl485511_)
                              (let ((_e486514_ (gx#syntax-e _tl485511_)))
                                (let ((_hd487518_ (##car _e486514_))
                                      (_tl488521_ (##cdr _e486514_)))
                                  (if (gx#stx-pair? _tl488521_)
                                      (let ((_e489524_
                                             (gx#syntax-e _tl488521_)))
                                        (let ((_hd490528_ (##car _e489524_))
                                              (_tl491531_ (##cdr _e489524_)))
                                          (if (gx#stx-null? _tl491531_)
                                              ((lambda (_L534_ _L536_ _L537_)
                                                 (cons _L537_
                                                       (cons _L536_
                                                             (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                  '#f
                                  'syntax)
                                 (cons _L534_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd490528_
                                               _hd487518_
                                               _hd484508_)
                                              (_g470497_ _g471501_))))
                                      (_g470497_ _g471501_))))
                              (_g470497_ _g471501_))))
                      (_g470497_ _g471501_))))
               (_g468597_
                (lambda (_g471559_)
                  (if (gx#stx-pair? _g471559_)
                      (let ((_e474562_ (gx#syntax-e _g471559_)))
                        (let ((_hd475566_ (##car _e474562_))
                              (_tl476569_ (##cdr _e474562_)))
                          (if (gx#stx-pair? _tl476569_)
                              (let ((_e477572_ (gx#syntax-e _tl476569_)))
                                (let ((_hd478576_ (##car _e477572_))
                                      (_tl479579_ (##cdr _e477572_)))
                                  (if (gx#stx-null? _tl479579_)
                                      ((lambda (_L582_ _L584_)
                                         (cons _L584_
                                               (cons (cons (gx#datum->syntax
                                                            '#f
                                                            'syntax)
                                                           (cons _L582_ '()))
                                                     '())))
                                       _hd478576_
                                       _hd475566_)
                                      (_g469555_ _g471559_))))
                              (_g469555_ _g471559_))))
                      (_g469555_ _g471559_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g468597_ _clause466_)))
                                              (begin
                                                '#!void
                                                (foldr (lambda (_g600603_
                                                                _g601606_)
                                                         (cons _g600603_
                                                               _g601606_))
                                                       '()
                                                       _L444_))))
                                            (_g612629_
                                             (lambda (_g613625_)
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax"
                                                _g613625_)))
                                            (_g611688_
                                             (lambda (_g613633_)
                                               (if (gx#stx-pair/null?
                                                    _g613633_)
                                                   (if (fx>= (gx#stx-length
                                                              _g613633_)
                                                             '0)
                                                       (let ((_g34601_
                                                              (gx#syntax-split-splice
                                                               _g613633_
                                                               '0)))
                                                         (begin
                                                           (let ((_g34602_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (values-count _g34601_)))
                     (if (not (fx= _g34602_ 2))
                         (error "Context expects 2 values" _g34602_)))
                   (let ((_target615636_ (values-ref _g34601_ 0))
                         (_tl617639_ (values-ref _g34601_ 1)))
                     (if (gx#stx-null? _tl617639_)
                         (letrec ((_loop618642_
                                   (lambda (_hd616646_ _clause622649_)
                                     (if (gx#stx-pair? _hd616646_)
                                         (let ((_e619652_
                                                (gx#syntax-e _hd616646_)))
                                           (let ((_lp-hd620656_
                                                  (##car _e619652_))
                                                 (_lp-tl621659_
                                                  (##cdr _e619652_)))
                                             (_loop618642_
                                              _lp-tl621659_
                                              (cons _lp-hd620656_
                                                    _clause622649_))))
                                         (let ((_clause623662_
                                                (reverse _clause622649_)))
                                           ((lambda (_L666_)
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
                                    (cons _L446_
                                          (begin
                                            '#!void
                                            (foldr (lambda (_g679682_
                                                            _g680685_)
                                                     (cons _g679682_
                                                           _g680685_))
                                                   '()
                                                   _L666_)))))
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            _clause623662_))))))
                           (_loop618642_ _target615636_ '()))
                         (_g612629_ _g613633_)))))
               (_g612629_ _g613633_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g612629_ _g613633_)))))
                                       (_g611688_ _body609_))
                                     (_g363387_ _g364391_)))
                               _clauses381440_
                               _hd371408_))))))
              (_loop376420_ _target373414_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g363387_ _g364391_)))))
                                          (_g363387_ _g364391_))
                                      (_g363387_ _g364391_))))
                              (_g363387_ _g364391_))))
                      (_g363387_ _g364391_)))))
          (_g362692_ _stx360_))))
    (define |gerbil/core$<syntax-sugar>[:0:]#with-syntax|
      (lambda (_stx698_)
        (let* ((_g703788_
                (lambda (_g704784_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g704784_)))
               (_g702949_
                (lambda (_g704792_)
                  (if (gx#stx-pair? _g704792_)
                      (let ((_e751795_ (gx#syntax-e _g704792_)))
                        (let ((_hd752799_ (##car _e751795_))
                              (_tl753802_ (##cdr _e751795_)))
                          (if (gx#stx-pair? _tl753802_)
                              (let ((_e754805_ (gx#syntax-e _tl753802_)))
                                (let ((_hd755809_ (##car _e754805_))
                                      (_tl756812_ (##cdr _e754805_)))
                                  (if (gx#stx-pair/null? _hd755809_)
                                      (if (fx>= (gx#stx-length _hd755809_) '0)
                                          (let ((_g34603_
                                                 (gx#syntax-split-splice
                                                  _hd755809_
                                                  '0)))
                                            (begin
                                              (let ((_g34604_
                                                     (values-count _g34603_)))
                                                (if (not (fx= _g34604_ 2))
                                                    (error "Context expects 2 values"
                                                           _g34604_)))
                                              (let ((_target757815_
                                                     (values-ref _g34603_ 0))
                                                    (_tl759818_
                                                     (values-ref _g34603_ 1)))
                                                (if (gx#stx-null? _tl759818_)
                                                    (letrec ((_loop760821_
                                                              (lambda (_hd758825_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _e764828_
                               _pat765830_)
                        (if (gx#stx-pair? _hd758825_)
                            (let ((_e761833_ (gx#syntax-e _hd758825_)))
                              (let ((_lp-hd762837_ (##car _e761833_))
                                    (_lp-tl763840_ (##cdr _e761833_)))
                                (if (gx#stx-pair? _lp-hd762837_)
                                    (let ((_e768843_
                                           (gx#syntax-e _lp-hd762837_)))
                                      (let ((_hd769847_ (##car _e768843_))
                                            (_tl770850_ (##cdr _e768843_)))
                                        (if (gx#stx-pair? _tl770850_)
                                            (let ((_e771853_
                                                   (gx#syntax-e _tl770850_)))
                                              (let ((_hd772857_
                                                     (##car _e771853_))
                                                    (_tl773860_
                                                     (##cdr _e771853_)))
                                                (if (gx#stx-null? _tl773860_)
                                                    (_loop760821_
                                                     _lp-tl763840_
                                                     (cons _hd772857_
                                                           _e764828_)
                                                     (cons _hd769847_
                                                           _pat765830_))
                                                    (_g703788_ _g704792_))))
                                            (_g703788_ _g704792_))))
                                    (_g703788_ _g704792_))))
                            (let ((_e766863_ (reverse _e764828_))
                                  (_pat767866_ (reverse _pat765830_)))
                              (if (gx#stx-pair/null? _tl756812_)
                                  (if (fx>= (gx#stx-length _tl756812_) '0)
                                      (let ((_g34605_
                                             (gx#syntax-split-splice
                                              _tl756812_
                                              '0)))
                                        (begin
                                          (let ((_g34606_
                                                 (values-count _g34605_)))
                                            (if (not (fx= _g34606_ 2))
                                                (error "Context expects 2 values"
                                                       _g34606_)))
                                          (let ((_target774869_
                                                 (values-ref _g34605_ 0))
                                                (_tl776872_
                                                 (values-ref _g34605_ 1)))
                                            (if (gx#stx-null? _tl776872_)
                                                (letrec ((_loop777875_
                                                          (lambda (_hd775879_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _body781882_)
                    (if (gx#stx-pair? _hd775879_)
                        (let ((_e778885_ (gx#syntax-e _hd775879_)))
                          (let ((_lp-hd779889_ (##car _e778885_))
                                (_lp-tl780892_ (##cdr _e778885_)))
                            (_loop777875_
                             _lp-tl780892_
                             (cons _lp-hd779889_ _body781882_))))
                        (let ((_body782895_ (reverse _body781882_)))
                          ((lambda (_L899_ _L901_ _L902_)
                             (cons (gx#datum->syntax '#f 'syntax-case)
                                   (cons (cons (gx#datum->syntax '#f 'list)
                                               (begin
                                                 '#!void
                                                 (foldr (lambda (_g924931_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g925934_)
                  (cons _g924931_ _g925934_))
                '()
                _L901_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (cons '()
                                               (cons (cons (begin
                                                             '#!void
                                                             (foldr (lambda (_g926937_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                     _g927940_)
                              (cons _g926937_ _g927940_))
                            '()
                            _L902_))
                   (cons (cons (gx#datum->syntax '#f 'let-values)
                               (cons '()
                                     (begin
                                       '#!void
                                       (foldr (lambda (_g928943_ _g929946_)
                                                (cons _g928943_ _g929946_))
                                              '()
                                              _L899_))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())))))
                           _body782895_
                           _e766863_
                           _pat767866_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_loop777875_
                                                   _target774869_
                                                   '()))
                                                (_g703788_ _g704792_)))))
                                      (_g703788_ _g704792_))
                                  (_g703788_ _g704792_)))))))
              (_loop760821_ _target757815_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_g703788_ _g704792_)))))
                                          (_g703788_ _g704792_))
                                      (_g703788_ _g704792_))))
                              (_g703788_ _g704792_))))
                      (_g703788_ _g704792_))))
               (_g7011071_
                (lambda (_g704953_)
                  (if (gx#stx-pair? _g704953_)
                      (let ((_e724956_ (gx#syntax-e _g704953_)))
                        (let ((_hd725960_ (##car _e724956_))
                              (_tl726963_ (##cdr _e724956_)))
                          (if (gx#stx-pair? _tl726963_)
                              (let ((_e727966_ (gx#syntax-e _tl726963_)))
                                (let ((_hd728970_ (##car _e727966_))
                                      (_tl729973_ (##cdr _e727966_)))
                                  (if (gx#stx-pair? _hd728970_)
                                      (let ((_e730976_
                                             (gx#syntax-e _hd728970_)))
                                        (let ((_hd731980_ (##car _e730976_))
                                              (_tl732983_ (##cdr _e730976_)))
                                          (if (gx#stx-pair? _hd731980_)
                                              (let ((_e733986_
                                                     (gx#syntax-e _hd731980_)))
                                                (let ((_hd734990_
                                                       (##car _e733986_))
                                                      (_tl735993_
                                                       (##cdr _e733986_)))
                                                  (if (gx#stx-pair? _tl735993_)
                                                      (let ((_e736996_
                                                             (gx#syntax-e
                                                              _tl735993_)))
                                                        (let ((_hd7371000_
                                                               (##car _e736996_))
                                                              (_tl7381003_
                                                               (##cdr _e736996_)))
                                                          (if (gx#stx-null?
                                                               _tl7381003_)
                                                              (if (gx#stx-null?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _tl732983_)
                          (if (gx#stx-pair/null? _tl729973_)
                              (if (fx>= (gx#stx-length _tl729973_) '0)
                                  (let ((_g34607_
                                         (gx#syntax-split-splice
                                          _tl729973_
                                          '0)))
                                    (begin
                                      (let ((_g34608_ (values-count _g34607_)))
                                        (if (not (fx= _g34608_ 2))
                                            (error "Context expects 2 values"
                                                   _g34608_)))
                                      (let ((_target7391006_
                                             (values-ref _g34607_ 0))
                                            (_tl7411009_
                                             (values-ref _g34607_ 1)))
                                        (if (gx#stx-null? _tl7411009_)
                                            (letrec ((_loop7421012_
                                                      (lambda (_hd7401016_
                                                               _body7461019_)
                                                        (if (gx#stx-pair?
                                                             _hd7401016_)
                                                            (let ((_e7431022_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _hd7401016_)))
                      (let ((_lp-hd7441026_ (##car _e7431022_))
                            (_lp-tl7451029_ (##cdr _e7431022_)))
                        (_loop7421012_
                         _lp-tl7451029_
                         (cons _lp-hd7441026_ _body7461019_))))
                    (let ((_body7471032_ (reverse _body7461019_)))
                      ((lambda (_L1036_ _L1038_ _L1039_)
                         (cons (gx#datum->syntax '#f 'syntax-case)
                               (cons _L1038_
                                     (cons '()
                                           (cons (cons _L1039_
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'let-values)
                           (cons '()
                                 (begin
                                   '#!void
                                   (foldr (lambda (_g10621065_ _g10631068_)
                                            (cons _g10621065_ _g10631068_))
                                          '()
                                          _L1036_))))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())))))
                       _body7471032_
                       _hd7371000_
                       _hd734990_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_loop7421012_
                                               _target7391006_
                                               '()))
                                            (_g702949_ _g704953_)))))
                                  (_g702949_ _g704953_))
                              (_g702949_ _g704953_))
                          (_g702949_ _g704953_))
                      (_g702949_ _g704953_))))
              (_g702949_ _g704953_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g702949_ _g704953_))))
                                      (_g702949_ _g704953_))))
                              (_g702949_ _g704953_))))
                      (_g702949_ _g704953_))))
               (_g7001153_
                (lambda (_g7041075_)
                  (if (gx#stx-pair? _g7041075_)
                      (let ((_e7061078_ (gx#syntax-e _g7041075_)))
                        (let ((_hd7071082_ (##car _e7061078_))
                              (_tl7081085_ (##cdr _e7061078_)))
                          (if (gx#stx-pair? _tl7081085_)
                              (let ((_e7091088_ (gx#syntax-e _tl7081085_)))
                                (let ((_hd7101092_ (##car _e7091088_))
                                      (_tl7111095_ (##cdr _e7091088_)))
                                  (if (gx#stx-null? _hd7101092_)
                                      (if (gx#stx-pair/null? _tl7111095_)
                                          (if (fx>= (gx#stx-length _tl7111095_)
                                                    '0)
                                              (let ((_g34609_
                                                     (gx#syntax-split-splice
                                                      _tl7111095_
                                                      '0)))
                                                (begin
                                                  (let ((_g34610_
                                                         (values-count
                                                          _g34609_)))
                                                    (if (not (fx= _g34610_ 2))
                                                        (error "Context expects 2 values"
                                                               _g34610_)))
                                                  (let ((_target7121098_
                                                         (values-ref
                                                          _g34609_
                                                          0))
                                                        (_tl7141101_
                                                         (values-ref
                                                          _g34609_
                                                          1)))
                                                    (if (gx#stx-null?
                                                         _tl7141101_)
                                                        (letrec ((_loop7151104_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd7131108_ _body7191111_)
                            (if (gx#stx-pair? _hd7131108_)
                                (let ((_e7161114_ (gx#syntax-e _hd7131108_)))
                                  (let ((_lp-hd7171118_ (##car _e7161114_))
                                        (_lp-tl7181121_ (##cdr _e7161114_)))
                                    (_loop7151104_
                                     _lp-tl7181121_
                                     (cons _lp-hd7171118_ _body7191111_))))
                                (let ((_body7201124_ (reverse _body7191111_)))
                                  ((lambda (_L1128_)
                                     (cons (gx#datum->syntax '#f 'let-values)
                                           (cons '()
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g11441147_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g11451150_)
                    (cons _g11441147_ _g11451150_))
                  '()
                  _L1128_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _body7201124_))))))
                  (_loop7151104_ _target7121098_ '()))
                (_g7011071_ _g7041075_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g7011071_ _g7041075_))
                                          (_g7011071_ _g7041075_))
                                      (_g7011071_ _g7041075_))))
                              (_g7011071_ _g7041075_))))
                      (_g7011071_ _g7041075_)))))
          (_g7001153_ _stx698_))))
    (define |gerbil/core$<syntax-sugar>[:0:]#with-syntax*|
      (lambda (_stx1161_)
        (let* ((_g11661243_
                (lambda (_g11671239_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g11671239_)))
               (_g11651344_
                (lambda (_g11671247_)
                  (if (gx#stx-pair? _g11671247_)
                      (let ((_e12201250_ (gx#syntax-e _g11671247_)))
                        (let ((_hd12211254_ (##car _e12201250_))
                              (_tl12221257_ (##cdr _e12201250_)))
                          (if (gx#stx-pair? _tl12221257_)
                              (let ((_e12231260_ (gx#syntax-e _tl12221257_)))
                                (let ((_hd12241264_ (##car _e12231260_))
                                      (_tl12251267_ (##cdr _e12231260_)))
                                  (if (gx#stx-pair? _hd12241264_)
                                      (let ((_e12261270_
                                             (gx#syntax-e _hd12241264_)))
                                        (let ((_hd12271274_
                                               (##car _e12261270_))
                                              (_tl12281277_
                                               (##cdr _e12261270_)))
                                          (if (gx#stx-pair/null? _tl12251267_)
                                              (if (fx>= (gx#stx-length
                                                         _tl12251267_)
                                                        '0)
                                                  (let ((_g34611_
                                                         (gx#syntax-split-splice
                                                          _tl12251267_
                                                          '0)))
                                                    (begin
                                                      (let ((_g34612_
                                                             (values-count
                                                              _g34611_)))
                                                        (if (not (fx= _g34612_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g34612_)))
              (let ((_target12291280_ (values-ref _g34611_ 0))
                    (_tl12311283_ (values-ref _g34611_ 1)))
                (if (gx#stx-null? _tl12311283_)
                    (letrec ((_loop12321286_
                              (lambda (_hd12301290_ _body12361293_)
                                (if (gx#stx-pair? _hd12301290_)
                                    (let ((_e12331296_
                                           (gx#syntax-e _hd12301290_)))
                                      (let ((_lp-hd12341300_
                                             (##car _e12331296_))
                                            (_lp-tl12351303_
                                             (##cdr _e12331296_)))
                                        (_loop12321286_
                                         _lp-tl12351303_
                                         (cons _lp-hd12341300_
                                               _body12361293_))))
                                    (let ((_body12371306_
                                           (reverse _body12361293_)))
                                      ((lambda (_L1310_
                                                _L1312_
                                                _L1313_
                                                _L1314_)
                                         (cons (gx#datum->syntax
                                                '#f
                                                'with-syntax)
                                               (cons (cons _L1313_ '())
                                                     (cons (cons _L1314_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons _L1312_
                               (begin
                                 '#!void
                                 (foldr (lambda (_g13351338_ _g13361341_)
                                          (cons _g13351338_ _g13361341_))
                                        '()
                                        _L1310_))))
                   '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _body12371306_
                                       _tl12281277_
                                       _hd12271274_
                                       _hd12211254_))))))
                      (_loop12321286_ _target12291280_ '()))
                    (_g11661243_ _g11671247_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_g11661243_ _g11671247_))
                                              (_g11661243_ _g11671247_))))
                                      (_g11661243_ _g11671247_))))
                              (_g11661243_ _g11671247_))))
                      (_g11661243_ _g11671247_))))
               (_g11641482_
                (lambda (_g11671348_)
                  (if (gx#stx-pair? _g11671348_)
                      (let ((_e11891351_ (gx#syntax-e _g11671348_)))
                        (let ((_hd11901355_ (##car _e11891351_))
                              (_tl11911358_ (##cdr _e11891351_)))
                          (if (gx#stx-pair? _tl11911358_)
                              (let ((_e11921361_ (gx#syntax-e _tl11911358_)))
                                (let ((_hd11931365_ (##car _e11921361_))
                                      (_tl11941368_ (##cdr _e11921361_)))
                                  (if (gx#stx-pair? _hd11931365_)
                                      (let ((_e11951371_
                                             (gx#syntax-e _hd11931365_)))
                                        (let ((_hd11961375_
                                               (##car _e11951371_))
                                              (_tl11971378_
                                               (##cdr _e11951371_)))
                                          (if (gx#stx-pair? _hd11961375_)
                                              (let ((_e11981381_
                                                     (gx#syntax-e
                                                      _hd11961375_)))
                                                (let ((_hd11991385_
                                                       (##car _e11981381_))
                                                      (_tl12001388_
                                                       (##cdr _e11981381_)))
                                                  (if (gx#stx-pair?
                                                       _hd11991385_)
                                                      (let ((_e12011391_
                                                             (gx#syntax-e
                                                              _hd11991385_)))
                                                        (let ((_hd12021395_
                                                               (##car _e12011391_))
                                                              (_tl12031398_
                                                               (##cdr _e12011391_)))
                                                          (if (gx#identifier?
                                                               _hd12021395_)
                                                              (if (gx#free-identifier=?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           |gerbil/core$<syntax-sugar>[1]#_g34613_|
                           _hd12021395_)
                          (if (gx#stx-pair? _tl12001388_)
                              (let ((_e12041401_ (gx#syntax-e _tl12001388_)))
                                (let ((_hd12051405_ (##car _e12041401_))
                                      (_tl12061408_ (##cdr _e12041401_)))
                                  (if (gx#stx-null? _tl12061408_)
                                      (if (gx#stx-pair/null? _tl11941368_)
                                          (if (fx>= (gx#stx-length
                                                     _tl11941368_)
                                                    '0)
                                              (let ((_g34614_
                                                     (gx#syntax-split-splice
                                                      _tl11941368_
                                                      '0)))
                                                (begin
                                                  (let ((_g34615_
                                                         (values-count
                                                          _g34614_)))
                                                    (if (not (fx= _g34615_ 2))
                                                        (error "Context expects 2 values"
                                                               _g34615_)))
                                                  (let ((_target12071411_
                                                         (values-ref
                                                          _g34614_
                                                          0))
                                                        (_tl12091414_
                                                         (values-ref
                                                          _g34614_
                                                          1)))
                                                    (if (gx#stx-null?
                                                         _tl12091414_)
                                                        (letrec ((_loop12101417_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd12081421_ _body12141424_)
                            (if (gx#stx-pair? _hd12081421_)
                                (let ((_e12111427_ (gx#syntax-e _hd12081421_)))
                                  (let ((_lp-hd12121431_ (##car _e12111427_))
                                        (_lp-tl12131434_ (##cdr _e12111427_)))
                                    (_loop12101417_
                                     _lp-tl12131434_
                                     (cons _lp-hd12121431_ _body12141424_))))
                                (let ((_body12151437_
                                       (reverse _body12141424_)))
                                  ((lambda (_L1441_
                                            _L1443_
                                            _L1444_
                                            _L1445_
                                            _L1446_)
                                     (cons (gx#datum->syntax '#f 'let-values)
                                           (cons (cons (cons _L1445_
                                                             (cons _L1444_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _L1446_
                                                             (cons _L1443_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (begin
                             '#!void
                             (foldr (lambda (_g14731476_ _g14741479_)
                                      (cons _g14731476_ _g14741479_))
                                    '()
                                    _L1441_))))
               '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _body12151437_
                                   _tl11971378_
                                   _hd12051405_
                                   _tl12031398_
                                   _hd11901355_))))))
                  (_loop12101417_ _target12071411_ '()))
                (_g11651344_ _g11671348_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g11651344_ _g11671348_))
                                          (_g11651344_ _g11671348_))
                                      (_g11651344_ _g11671348_))))
                              (_g11651344_ _g11671348_))
                          (_g11651344_ _g11671348_))
                      (_g11651344_ _g11671348_))))
              (_g11651344_ _g11671348_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g11651344_ _g11671348_))))
                                      (_g11651344_ _g11671348_))))
                              (_g11651344_ _g11671348_))))
                      (_g11651344_ _g11671348_))))
               (_g11631564_
                (lambda (_g11671486_)
                  (if (gx#stx-pair? _g11671486_)
                      (let ((_e11691489_ (gx#syntax-e _g11671486_)))
                        (let ((_hd11701493_ (##car _e11691489_))
                              (_tl11711496_ (##cdr _e11691489_)))
                          (if (gx#stx-pair? _tl11711496_)
                              (let ((_e11721499_ (gx#syntax-e _tl11711496_)))
                                (let ((_hd11731503_ (##car _e11721499_))
                                      (_tl11741506_ (##cdr _e11721499_)))
                                  (if (gx#stx-null? _hd11731503_)
                                      (if (gx#stx-pair/null? _tl11741506_)
                                          (if (fx>= (gx#stx-length
                                                     _tl11741506_)
                                                    '0)
                                              (let ((_g34616_
                                                     (gx#syntax-split-splice
                                                      _tl11741506_
                                                      '0)))
                                                (begin
                                                  (let ((_g34617_
                                                         (values-count
                                                          _g34616_)))
                                                    (if (not (fx= _g34617_ 2))
                                                        (error "Context expects 2 values"
                                                               _g34617_)))
                                                  (let ((_target11751509_
                                                         (values-ref
                                                          _g34616_
                                                          0))
                                                        (_tl11771512_
                                                         (values-ref
                                                          _g34616_
                                                          1)))
                                                    (if (gx#stx-null?
                                                         _tl11771512_)
                                                        (letrec ((_loop11781515_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (lambda (_hd11761519_ _body11821522_)
                            (if (gx#stx-pair? _hd11761519_)
                                (let ((_e11791525_ (gx#syntax-e _hd11761519_)))
                                  (let ((_lp-hd11801529_ (##car _e11791525_))
                                        (_lp-tl11811532_ (##cdr _e11791525_)))
                                    (_loop11781515_
                                     _lp-tl11811532_
                                     (cons _lp-hd11801529_ _body11821522_))))
                                (let ((_body11831535_
                                       (reverse _body11821522_)))
                                  ((lambda (_L1539_)
                                     (cons (gx#datum->syntax '#f 'let-values)
                                           (cons '()
                                                 (begin
                                                   '#!void
                                                   (foldr (lambda (_g15551558_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _g15561561_)
                    (cons _g15551558_ _g15561561_))
                  '()
                  _L1539_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _body11831535_))))))
                  (_loop11781515_ _target11751509_ '()))
                (_g11641482_ _g11671486_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_g11641482_ _g11671486_))
                                          (_g11641482_ _g11671486_))
                                      (_g11641482_ _g11671486_))))
                              (_g11641482_ _g11671486_))))
                      (_g11641482_ _g11671486_)))))
          (_g11631564_ _stx1161_))))
    (define |gerbil/core$<syntax-sugar>[:0:]#syntax/loc|
      (lambda (_stx1571_)
        (let* ((_g15741592_
                (lambda (_g15751588_)
                  (gx#raise-syntax-error '#f '"Bad syntax" _g15751588_)))
               (_g15731647_
                (lambda (_g15751596_)
                  (if (gx#stx-pair? _g15751596_)
                      (let ((_e15781599_ (gx#syntax-e _g15751596_)))
                        (let ((_hd15791603_ (##car _e15781599_))
                              (_tl15801606_ (##cdr _e15781599_)))
                          (if (gx#stx-pair? _tl15801606_)
                              (let ((_e15811609_ (gx#syntax-e _tl15801606_)))
                                (let ((_hd15821613_ (##car _e15811609_))
                                      (_tl15831616_ (##cdr _e15811609_)))
                                  (if (gx#stx-pair? _tl15831616_)
                                      (let ((_e15841619_
                                             (gx#syntax-e _tl15831616_)))
                                        (let ((_hd15851623_
                                               (##car _e15841619_))
                                              (_tl15861626_
                                               (##cdr _e15841619_)))
                                          (if (gx#stx-null? _tl15861626_)
                                              ((lambda (_L1629_ _L1631_)
                                                 (cons (gx#datum->syntax
                                                        '#f
                                                        'stx-wrap-source)
                                                       (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '#f
                            'syntax)
                           (cons _L1629_ '()))
                     (cons (cons (gx#datum->syntax '#f 'stx-source)
                                 (cons _L1631_ '()))
                           '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               _hd15851623_
                                               _hd15821613_)
                                              (_g15741592_ _g15751596_))))
                                      (_g15741592_ _g15751596_))))
                              (_g15741592_ _g15751596_))))
                      (_g15741592_ _g15751596_)))))
          (_g15731647_ _stx1571_))))))
