(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define |gerbil/core::<syntax-sugar>[1]#_g29835_|
    (gx#core-quote-syntax 'values))
  (begin
    (define |gerbil/core::<syntax-sugar>[:0:]#syntax-rules|
      (lambda (_stx335_)
        (let ((_g338362_
               (lambda (_g339358_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g339358_))))
          (let ((_g337667_
                 (lambda (_g339366_)
                   (if (gx#stx-pair? _g339366_)
                       (let ((_e342369_ (gx#syntax-e _g339366_)))
                         (let ((_hd343373_ (##car _e342369_))
                               (_tl344376_ (##cdr _e342369_)))
                           (if (gx#stx-pair? _tl344376_)
                               (let ((_e345379_ (gx#syntax-e _tl344376_)))
                                 (let ((_hd346383_ (##car _e345379_))
                                       (_tl347386_ (##cdr _e345379_)))
                                   (if (gx#stx-pair/null? _tl347386_)
                                       (if (fx>= (gx#stx-length _tl347386_) '0)
                                           (let ((_g29821_
                                                  (gx#syntax-split-splice
                                                   _tl347386_
                                                   '0)))
                                             (begin
                                               (let ((_g29822_
                                                      (values-count _g29821_)))
                                                 (if (not (fx= _g29822_ 2))
                                                     (error "Context expects 2 values"
                                                            _g29822_)))
                                               (let ((_target348389_
                                                      (values-ref _g29821_ 0))
                                                     (_tl350392_
                                                      (values-ref _g29821_ 1)))
                                                 (if (gx#stx-null? _tl350392_)
                                                     (letrec ((_loop351395_
                                                               (lambda (_hd349399_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _clauses355402_)
                         (if (gx#stx-pair? _hd349399_)
                             (let ((_e352405_ (gx#syntax-e _hd349399_)))
                               (let ((_lp-hd353409_ (##car _e352405_))
                                     (_lp-tl354412_ (##cdr _e352405_)))
                                 (_loop351395_
                                  _lp-tl354412_
                                  (cons _lp-hd353409_ _clauses355402_))))
                             (let ((_clauses356415_ (reverse _clauses355402_)))
                               ((lambda (_L419_ _L421_)
                                  (if (gx#identifier-list? _L421_)
                                      (let ((_body584_
                                             (gx#stx-map
                                              (lambda (_clause441_)
                                                (let ((_g445472_
                                                       (lambda (_g446468_)
                                                         (gx#raise-syntax-error
                                                          '#f
                                                          '"Bad syntax"
                                                          _g446468_))))
                                                  (let ((_g444530_
                                                         (lambda (_g446476_)
                                                           (if (gx#stx-pair?
                                                                _g446476_)
                                                               (let ((_e458479_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gx#syntax-e _g446476_)))
                         (let ((_hd459483_ (##car _e458479_))
                               (_tl460486_ (##cdr _e458479_)))
                           (if (gx#stx-pair? _tl460486_)
                               (let ((_e461489_ (gx#syntax-e _tl460486_)))
                                 (let ((_hd462493_ (##car _e461489_))
                                       (_tl463496_ (##cdr _e461489_)))
                                   (if (gx#stx-pair? _tl463496_)
                                       (let ((_e464499_
                                              (gx#syntax-e _tl463496_)))
                                         (let ((_hd465503_ (##car _e464499_))
                                               (_tl466506_ (##cdr _e464499_)))
                                           (if (gx#stx-null? _tl466506_)
                                               ((lambda (_L509_ _L511_ _L512_)
                                                  (cons _L512_
                                                        (cons _L511_
                                                              (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '#f
                                   'syntax)
                                  (cons _L509_ '()))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd465503_
                                                _hd462493_
                                                _hd459483_)
                                               (_g445472_ _g446476_))))
                                       (_g445472_ _g446476_))))
                               (_g445472_ _g446476_))))
                       (_g445472_ _g446476_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_g443572_
                                                           (lambda (_g446534_)
                                                             (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g446534_)
                         (let ((_e449537_ (gx#syntax-e _g446534_)))
                           (let ((_hd450541_ (##car _e449537_))
                                 (_tl451544_ (##cdr _e449537_)))
                             (if (gx#stx-pair? _tl451544_)
                                 (let ((_e452547_ (gx#syntax-e _tl451544_)))
                                   (let ((_hd453551_ (##car _e452547_))
                                         (_tl454554_ (##cdr _e452547_)))
                                     (if (gx#stx-null? _tl454554_)
                                         ((lambda (_L557_ _L559_)
                                            (cons _L559_
                                                  (cons (cons (gx#datum->syntax
                                                               '#f
                                                               'syntax)
                                                              (cons _L557_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          _hd453551_
                                          _hd450541_)
                                         (_g444530_ _g446534_))))
                                 (_g444530_ _g446534_))))
                         (_g444530_ _g446534_)))))
              (_g443572_ _clause441_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (begin
                                                '#!void
                                                (foldr (lambda (_g575578_
                                                                _g576581_)
                                                         (cons _g575578_
                                                               _g576581_))
                                                       '()
                                                       _L419_)))))
                                        (let ((_g587604_
                                               (lambda (_g588600_)
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax"
                                                  _g588600_))))
                                          (let ((_g586663_
                                                 (lambda (_g588608_)
                                                   (if (gx#stx-pair/null?
                                                        _g588608_)
                                                       (if (fx>= (gx#stx-length
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g588608_)
                         '0)
                   (let ((_g29823_ (gx#syntax-split-splice _g588608_ '0)))
                     (begin
                       (let ((_g29824_ (values-count _g29823_)))
                         (if (not (fx= _g29824_ 2))
                             (error "Context expects 2 values" _g29824_)))
                       (let ((_target590611_ (values-ref _g29823_ 0))
                             (_tl592614_ (values-ref _g29823_ 1)))
                         (if (gx#stx-null? _tl592614_)
                             (letrec ((_loop593617_
                                       (lambda (_hd591621_ _clause597624_)
                                         (if (gx#stx-pair? _hd591621_)
                                             (let ((_e594627_
                                                    (gx#syntax-e _hd591621_)))
                                               (let ((_lp-hd595631_
                                                      (##car _e594627_))
                                                     (_lp-tl596634_
                                                      (##cdr _e594627_)))
                                                 (_loop593617_
                                                  _lp-tl596634_
                                                  (cons _lp-hd595631_
                                                        _clause597624_))))
                                             (let ((_clause598637_
                                                    (reverse _clause597624_)))
                                               ((lambda (_L641_)
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
                                        (cons _L421_
                                              (begin
                                                '#!void
                                                (foldr (lambda (_g654657_
                                                                _g655660_)
                                                         (cons _g654657_
                                                               _g655660_))
                                                       '()
                                                       _L641_)))))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _clause598637_))))))
                               (_loop593617_ _target590611_ '()))
                             (_g587604_ _g588608_)))))
                   (_g587604_ _g588608_))
               (_g587604_ _g588608_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_g586663_ _body584_))))
                                      (_g338362_ _g339366_)))
                                _clauses356415_
                                _hd346383_))))))
               (_loop351395_ _target348389_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g338362_ _g339366_)))))
                                           (_g338362_ _g339366_))
                                       (_g338362_ _g339366_))))
                               (_g338362_ _g339366_))))
                       (_g338362_ _g339366_)))))
            (_g337667_ _stx335_)))))
    (define |gerbil/core::<syntax-sugar>[:0:]#with-syntax|
      (lambda (_stx673_)
        (let ((_g678763_
               (lambda (_g679759_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g679759_))))
          (let ((_g677924_
                 (lambda (_g679767_)
                   (if (gx#stx-pair? _g679767_)
                       (let ((_e726770_ (gx#syntax-e _g679767_)))
                         (let ((_hd727774_ (##car _e726770_))
                               (_tl728777_ (##cdr _e726770_)))
                           (if (gx#stx-pair? _tl728777_)
                               (let ((_e729780_ (gx#syntax-e _tl728777_)))
                                 (let ((_hd730784_ (##car _e729780_))
                                       (_tl731787_ (##cdr _e729780_)))
                                   (if (gx#stx-pair/null? _hd730784_)
                                       (if (fx>= (gx#stx-length _hd730784_) '0)
                                           (let ((_g29825_
                                                  (gx#syntax-split-splice
                                                   _hd730784_
                                                   '0)))
                                             (begin
                                               (let ((_g29826_
                                                      (values-count _g29825_)))
                                                 (if (not (fx= _g29826_ 2))
                                                     (error "Context expects 2 values"
                                                            _g29826_)))
                                               (let ((_target732790_
                                                      (values-ref _g29825_ 0))
                                                     (_tl734793_
                                                      (values-ref _g29825_ 1)))
                                                 (if (gx#stx-null? _tl734793_)
                                                     (letrec ((_loop735796_
                                                               (lambda (_hd733800_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _e739803_
                                _pat740805_)
                         (if (gx#stx-pair? _hd733800_)
                             (let ((_e736808_ (gx#syntax-e _hd733800_)))
                               (let ((_lp-hd737812_ (##car _e736808_))
                                     (_lp-tl738815_ (##cdr _e736808_)))
                                 (if (gx#stx-pair? _lp-hd737812_)
                                     (let ((_e743818_
                                            (gx#syntax-e _lp-hd737812_)))
                                       (let ((_hd744822_ (##car _e743818_))
                                             (_tl745825_ (##cdr _e743818_)))
                                         (if (gx#stx-pair? _tl745825_)
                                             (let ((_e746828_
                                                    (gx#syntax-e _tl745825_)))
                                               (let ((_hd747832_
                                                      (##car _e746828_))
                                                     (_tl748835_
                                                      (##cdr _e746828_)))
                                                 (if (gx#stx-null? _tl748835_)
                                                     (_loop735796_
                                                      _lp-tl738815_
                                                      (cons _hd747832_
                                                            _e739803_)
                                                      (cons _hd744822_
                                                            _pat740805_))
                                                     (_g678763_ _g679767_))))
                                             (_g678763_ _g679767_))))
                                     (_g678763_ _g679767_))))
                             (let ((_e741838_ (reverse _e739803_))
                                   (_pat742841_ (reverse _pat740805_)))
                               (if (gx#stx-pair/null? _tl731787_)
                                   (if (fx>= (gx#stx-length _tl731787_) '0)
                                       (let ((_g29827_
                                              (gx#syntax-split-splice
                                               _tl731787_
                                               '0)))
                                         (begin
                                           (let ((_g29828_
                                                  (values-count _g29827_)))
                                             (if (not (fx= _g29828_ 2))
                                                 (error "Context expects 2 values"
                                                        _g29828_)))
                                           (let ((_target749844_
                                                  (values-ref _g29827_ 0))
                                                 (_tl751847_
                                                  (values-ref _g29827_ 1)))
                                             (if (gx#stx-null? _tl751847_)
                                                 (letrec ((_loop752850_
                                                           (lambda (_hd750854_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _body756857_)
                     (if (gx#stx-pair? _hd750854_)
                         (let ((_e753860_ (gx#syntax-e _hd750854_)))
                           (let ((_lp-hd754864_ (##car _e753860_))
                                 (_lp-tl755867_ (##cdr _e753860_)))
                             (_loop752850_
                              _lp-tl755867_
                              (cons _lp-hd754864_ _body756857_))))
                         (let ((_body757870_ (reverse _body756857_)))
                           ((lambda (_L874_ _L876_ _L877_)
                              (cons (gx#datum->syntax '#f 'syntax-case)
                                    (cons (cons (gx#datum->syntax '#f 'list)
                                                (begin
                                                  '#!void
                                                  (foldr (lambda (_g899906_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g900909_)
                   (cons _g899906_ _g900909_))
                 '()
                 _L876_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (cons '()
                                                (cons (cons (begin
                                                              '#!void
                                                              (foldr (lambda (_g901912_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _g902915_)
                               (cons _g901912_ _g902915_))
                             '()
                             _L877_))
                    (cons (cons (gx#datum->syntax '#f 'let-values)
                                (cons '()
                                      (begin
                                        '#!void
                                        (foldr (lambda (_g903918_ _g904921_)
                                                 (cons _g903918_ _g904921_))
                                               '()
                                               _L874_))))
                          '()))
              '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                            _body757870_
                            _e741838_
                            _pat742841_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_loop752850_
                                                    _target749844_
                                                    '()))
                                                 (_g678763_ _g679767_)))))
                                       (_g678763_ _g679767_))
                                   (_g678763_ _g679767_)))))))
               (_loop735796_ _target732790_ '() '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_g678763_ _g679767_)))))
                                           (_g678763_ _g679767_))
                                       (_g678763_ _g679767_))))
                               (_g678763_ _g679767_))))
                       (_g678763_ _g679767_)))))
            (let ((_g6761046_
                   (lambda (_g679928_)
                     (if (gx#stx-pair? _g679928_)
                         (let ((_e699931_ (gx#syntax-e _g679928_)))
                           (let ((_hd700935_ (##car _e699931_))
                                 (_tl701938_ (##cdr _e699931_)))
                             (if (gx#stx-pair? _tl701938_)
                                 (let ((_e702941_ (gx#syntax-e _tl701938_)))
                                   (let ((_hd703945_ (##car _e702941_))
                                         (_tl704948_ (##cdr _e702941_)))
                                     (if (gx#stx-pair? _hd703945_)
                                         (let ((_e705951_
                                                (gx#syntax-e _hd703945_)))
                                           (let ((_hd706955_ (##car _e705951_))
                                                 (_tl707958_
                                                  (##cdr _e705951_)))
                                             (if (gx#stx-pair? _hd706955_)
                                                 (let ((_e708961_
                                                        (gx#syntax-e
                                                         _hd706955_)))
                                                   (let ((_hd709965_
                                                          (##car _e708961_))
                                                         (_tl710968_
                                                          (##cdr _e708961_)))
                                                     (if (gx#stx-pair?
                                                          _tl710968_)
                                                         (let ((_e711971_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl710968_)))
                   (let ((_hd712975_ (##car _e711971_))
                         (_tl713978_ (##cdr _e711971_)))
                     (if (gx#stx-null? _tl713978_)
                         (if (gx#stx-null? _tl707958_)
                             (if (gx#stx-pair/null? _tl704948_)
                                 (if (fx>= (gx#stx-length _tl704948_) '0)
                                     (let ((_g29829_
                                            (gx#syntax-split-splice
                                             _tl704948_
                                             '0)))
                                       (begin
                                         (let ((_g29830_
                                                (values-count _g29829_)))
                                           (if (not (fx= _g29830_ 2))
                                               (error "Context expects 2 values"
                                                      _g29830_)))
                                         (let ((_target714981_
                                                (values-ref _g29829_ 0))
                                               (_tl716984_
                                                (values-ref _g29829_ 1)))
                                           (if (gx#stx-null? _tl716984_)
                                               (letrec ((_loop717987_
                                                         (lambda (_hd715991_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _body721994_)
                   (if (gx#stx-pair? _hd715991_)
                       (let ((_e718997_ (gx#syntax-e _hd715991_)))
                         (let ((_lp-hd7191001_ (##car _e718997_))
                               (_lp-tl7201004_ (##cdr _e718997_)))
                           (_loop717987_
                            _lp-tl7201004_
                            (cons _lp-hd7191001_ _body721994_))))
                       (let ((_body7221007_ (reverse _body721994_)))
                         ((lambda (_L1011_ _L1013_ _L1014_)
                            (cons (gx#datum->syntax '#f 'syntax-case)
                                  (cons _L1013_
                                        (cons '()
                                              (cons (cons _L1014_
                                                          (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               '#f
                               'let-values)
                              (cons '()
                                    (begin
                                      '#!void
                                      (foldr (lambda (_g10371040_ _g10381043_)
                                               (cons _g10371040_ _g10381043_))
                                             '()
                                             _L1011_))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))))
                          _body7221007_
                          _hd712975_
                          _hd709965_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_loop717987_
                                                  _target714981_
                                                  '()))
                                               (_g677924_ _g679928_)))))
                                     (_g677924_ _g679928_))
                                 (_g677924_ _g679928_))
                             (_g677924_ _g679928_))
                         (_g677924_ _g679928_))))
                 (_g677924_ _g679928_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g677924_ _g679928_))))
                                         (_g677924_ _g679928_))))
                                 (_g677924_ _g679928_))))
                         (_g677924_ _g679928_)))))
              (let ((_g6751128_
                     (lambda (_g6791050_)
                       (if (gx#stx-pair? _g6791050_)
                           (let ((_e6811053_ (gx#syntax-e _g6791050_)))
                             (let ((_hd6821057_ (##car _e6811053_))
                                   (_tl6831060_ (##cdr _e6811053_)))
                               (if (gx#stx-pair? _tl6831060_)
                                   (let ((_e6841063_
                                          (gx#syntax-e _tl6831060_)))
                                     (let ((_hd6851067_ (##car _e6841063_))
                                           (_tl6861070_ (##cdr _e6841063_)))
                                       (if (gx#stx-null? _hd6851067_)
                                           (if (gx#stx-pair/null? _tl6861070_)
                                               (if (fx>= (gx#stx-length
                                                          _tl6861070_)
                                                         '0)
                                                   (let ((_g29831_
                                                          (gx#syntax-split-splice
                                                           _tl6861070_
                                                           '0)))
                                                     (begin
                                                       (let ((_g29832_
                                                              (values-count
                                                               _g29831_)))
                                                         (if (not (fx= _g29832_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g29832_)))
               (let ((_target6871073_ (values-ref _g29831_ 0))
                     (_tl6891076_ (values-ref _g29831_ 1)))
                 (if (gx#stx-null? _tl6891076_)
                     (letrec ((_loop6901079_
                               (lambda (_hd6881083_ _body6941086_)
                                 (if (gx#stx-pair? _hd6881083_)
                                     (let ((_e6911089_
                                            (gx#syntax-e _hd6881083_)))
                                       (let ((_lp-hd6921093_
                                              (##car _e6911089_))
                                             (_lp-tl6931096_
                                              (##cdr _e6911089_)))
                                         (_loop6901079_
                                          _lp-tl6931096_
                                          (cons _lp-hd6921093_
                                                _body6941086_))))
                                     (let ((_body6951099_
                                            (reverse _body6941086_)))
                                       ((lambda (_L1103_)
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'let-values)
                                                (cons '()
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g11191122_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g11201125_)
                         (cons _g11191122_ _g11201125_))
                       '()
                       _L1103_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _body6951099_))))))
                       (_loop6901079_ _target6871073_ '()))
                     (_g6761046_ _g6791050_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g6761046_ _g6791050_))
                                               (_g6761046_ _g6791050_))
                                           (_g6761046_ _g6791050_))))
                                   (_g6761046_ _g6791050_))))
                           (_g6761046_ _g6791050_)))))
                (_g6751128_ _stx673_)))))))
    (define |gerbil/core::<syntax-sugar>[:0:]#with-syntax*|
      (lambda (_stx1136_)
        (let ((_g11411218_
               (lambda (_g11421214_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g11421214_))))
          (let ((_g11401319_
                 (lambda (_g11421222_)
                   (if (gx#stx-pair? _g11421222_)
                       (let ((_e11951225_ (gx#syntax-e _g11421222_)))
                         (let ((_hd11961229_ (##car _e11951225_))
                               (_tl11971232_ (##cdr _e11951225_)))
                           (if (gx#stx-pair? _tl11971232_)
                               (let ((_e11981235_ (gx#syntax-e _tl11971232_)))
                                 (let ((_hd11991239_ (##car _e11981235_))
                                       (_tl12001242_ (##cdr _e11981235_)))
                                   (if (gx#stx-pair? _hd11991239_)
                                       (let ((_e12011245_
                                              (gx#syntax-e _hd11991239_)))
                                         (let ((_hd12021249_
                                                (##car _e12011245_))
                                               (_tl12031252_
                                                (##cdr _e12011245_)))
                                           (if (gx#stx-pair/null? _tl12001242_)
                                               (if (fx>= (gx#stx-length
                                                          _tl12001242_)
                                                         '0)
                                                   (let ((_g29833_
                                                          (gx#syntax-split-splice
                                                           _tl12001242_
                                                           '0)))
                                                     (begin
                                                       (let ((_g29834_
                                                              (values-count
                                                               _g29833_)))
                                                         (if (not (fx= _g29834_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g29834_)))
               (let ((_target12041255_ (values-ref _g29833_ 0))
                     (_tl12061258_ (values-ref _g29833_ 1)))
                 (if (gx#stx-null? _tl12061258_)
                     (letrec ((_loop12071261_
                               (lambda (_hd12051265_ _body12111268_)
                                 (if (gx#stx-pair? _hd12051265_)
                                     (let ((_e12081271_
                                            (gx#syntax-e _hd12051265_)))
                                       (let ((_lp-hd12091275_
                                              (##car _e12081271_))
                                             (_lp-tl12101278_
                                              (##cdr _e12081271_)))
                                         (_loop12071261_
                                          _lp-tl12101278_
                                          (cons _lp-hd12091275_
                                                _body12111268_))))
                                     (let ((_body12121281_
                                            (reverse _body12111268_)))
                                       ((lambda (_L1285_
                                                 _L1287_
                                                 _L1288_
                                                 _L1289_)
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'with-syntax)
                                                (cons (cons _L1288_ '())
                                                      (cons (cons _L1289_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _L1287_
                                (begin
                                  '#!void
                                  (foldr (lambda (_g13101313_ _g13111316_)
                                           (cons _g13101313_ _g13111316_))
                                         '()
                                         _L1285_))))
                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _body12121281_
                                        _tl12031252_
                                        _hd12021249_
                                        _hd11961229_))))))
                       (_loop12071261_ _target12041255_ '()))
                     (_g11411218_ _g11421222_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g11411218_ _g11421222_))
                                               (_g11411218_ _g11421222_))))
                                       (_g11411218_ _g11421222_))))
                               (_g11411218_ _g11421222_))))
                       (_g11411218_ _g11421222_)))))
            (let ((_g11391457_
                   (lambda (_g11421323_)
                     (if (gx#stx-pair? _g11421323_)
                         (let ((_e11641326_ (gx#syntax-e _g11421323_)))
                           (let ((_hd11651330_ (##car _e11641326_))
                                 (_tl11661333_ (##cdr _e11641326_)))
                             (if (gx#stx-pair? _tl11661333_)
                                 (let ((_e11671336_
                                        (gx#syntax-e _tl11661333_)))
                                   (let ((_hd11681340_ (##car _e11671336_))
                                         (_tl11691343_ (##cdr _e11671336_)))
                                     (if (gx#stx-pair? _hd11681340_)
                                         (let ((_e11701346_
                                                (gx#syntax-e _hd11681340_)))
                                           (let ((_hd11711350_
                                                  (##car _e11701346_))
                                                 (_tl11721353_
                                                  (##cdr _e11701346_)))
                                             (if (gx#stx-pair? _hd11711350_)
                                                 (let ((_e11731356_
                                                        (gx#syntax-e
                                                         _hd11711350_)))
                                                   (let ((_hd11741360_
                                                          (##car _e11731356_))
                                                         (_tl11751363_
                                                          (##cdr _e11731356_)))
                                                     (if (gx#stx-pair?
                                                          _hd11741360_)
                                                         (let ((_e11761366_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd11741360_)))
                   (let ((_hd11771370_ (##car _e11761366_))
                         (_tl11781373_ (##cdr _e11761366_)))
                     (if (gx#identifier? _hd11771370_)
                         (if (gx#free-identifier=?
                              |gerbil/core::<syntax-sugar>[1]#_g29835_|
                              _hd11771370_)
                             (if (gx#stx-pair? _tl11751363_)
                                 (let ((_e11791376_
                                        (gx#syntax-e _tl11751363_)))
                                   (let ((_hd11801380_ (##car _e11791376_))
                                         (_tl11811383_ (##cdr _e11791376_)))
                                     (if (gx#stx-null? _tl11811383_)
                                         (if (gx#stx-pair/null? _tl11691343_)
                                             (if (fx>= (gx#stx-length
                                                        _tl11691343_)
                                                       '0)
                                                 (let ((_g29836_
                                                        (gx#syntax-split-splice
                                                         _tl11691343_
                                                         '0)))
                                                   (begin
                                                     (let ((_g29837_
                                                            (values-count
                                                             _g29836_)))
                                                       (if (not (fx= _g29837_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             2))
                   (error "Context expects 2 values" _g29837_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_target11821386_
                                                            (values-ref
                                                             _g29836_
                                                             0))
                                                           (_tl11841389_
                                                            (values-ref
                                                             _g29836_
                                                             1)))
                                                       (if (gx#stx-null?
                                                            _tl11841389_)
                                                           (letrec ((_loop11851392_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_hd11831396_ _body11891399_)
                               (if (gx#stx-pair? _hd11831396_)
                                   (let ((_e11861402_
                                          (gx#syntax-e _hd11831396_)))
                                     (let ((_lp-hd11871406_
                                            (##car _e11861402_))
                                           (_lp-tl11881409_
                                            (##cdr _e11861402_)))
                                       (_loop11851392_
                                        _lp-tl11881409_
                                        (cons _lp-hd11871406_
                                              _body11891399_))))
                                   (let ((_body11901412_
                                          (reverse _body11891399_)))
                                     ((lambda (_L1416_
                                               _L1418_
                                               _L1419_
                                               _L1420_
                                               _L1421_)
                                        (cons (gx#datum->syntax
                                               '#f
                                               'let-values)
                                              (cons (cons (cons _L1420_
                                                                (cons _L1419_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '()))
                  '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (cons (cons _L1421_
                                                                (cons _L1418_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (begin
                                '#!void
                                (foldr (lambda (_g14481451_ _g14491454_)
                                         (cons _g14481451_ _g14491454_))
                                       '()
                                       _L1416_))))
                  '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _body11901412_
                                      _tl11721353_
                                      _hd11801380_
                                      _tl11781373_
                                      _hd11651330_))))))
                     (_loop11851392_ _target11821386_ '()))
                   (_g11401319_ _g11421323_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g11401319_ _g11421323_))
                                             (_g11401319_ _g11421323_))
                                         (_g11401319_ _g11421323_))))
                                 (_g11401319_ _g11421323_))
                             (_g11401319_ _g11421323_))
                         (_g11401319_ _g11421323_))))
                 (_g11401319_ _g11421323_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_g11401319_ _g11421323_))))
                                         (_g11401319_ _g11421323_))))
                                 (_g11401319_ _g11421323_))))
                         (_g11401319_ _g11421323_)))))
              (let ((_g11381539_
                     (lambda (_g11421461_)
                       (if (gx#stx-pair? _g11421461_)
                           (let ((_e11441464_ (gx#syntax-e _g11421461_)))
                             (let ((_hd11451468_ (##car _e11441464_))
                                   (_tl11461471_ (##cdr _e11441464_)))
                               (if (gx#stx-pair? _tl11461471_)
                                   (let ((_e11471474_
                                          (gx#syntax-e _tl11461471_)))
                                     (let ((_hd11481478_ (##car _e11471474_))
                                           (_tl11491481_ (##cdr _e11471474_)))
                                       (if (gx#stx-null? _hd11481478_)
                                           (if (gx#stx-pair/null? _tl11491481_)
                                               (if (fx>= (gx#stx-length
                                                          _tl11491481_)
                                                         '0)
                                                   (let ((_g29838_
                                                          (gx#syntax-split-splice
                                                           _tl11491481_
                                                           '0)))
                                                     (begin
                                                       (let ((_g29839_
                                                              (values-count
                                                               _g29838_)))
                                                         (if (not (fx= _g29839_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               2))
                     (error "Context expects 2 values" _g29839_)))
               (let ((_target11501484_ (values-ref _g29838_ 0))
                     (_tl11521487_ (values-ref _g29838_ 1)))
                 (if (gx#stx-null? _tl11521487_)
                     (letrec ((_loop11531490_
                               (lambda (_hd11511494_ _body11571497_)
                                 (if (gx#stx-pair? _hd11511494_)
                                     (let ((_e11541500_
                                            (gx#syntax-e _hd11511494_)))
                                       (let ((_lp-hd11551504_
                                              (##car _e11541500_))
                                             (_lp-tl11561507_
                                              (##cdr _e11541500_)))
                                         (_loop11531490_
                                          _lp-tl11561507_
                                          (cons _lp-hd11551504_
                                                _body11571497_))))
                                     (let ((_body11581510_
                                            (reverse _body11571497_)))
                                       ((lambda (_L1514_)
                                          (cons (gx#datum->syntax
                                                 '#f
                                                 'let-values)
                                                (cons '()
                                                      (begin
                                                        '#!void
                                                        (foldr (lambda (_g15301533_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _g15311536_)
                         (cons _g15301533_ _g15311536_))
                       '()
                       _L1514_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _body11581510_))))))
                       (_loop11531490_ _target11501484_ '()))
                     (_g11391457_ _g11421461_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_g11391457_ _g11421461_))
                                               (_g11391457_ _g11421461_))
                                           (_g11391457_ _g11421461_))))
                                   (_g11391457_ _g11421461_))))
                           (_g11391457_ _g11421461_)))))
                (_g11381539_ _stx1136_)))))))
    (define |gerbil/core::<syntax-sugar>[:0:]#syntax/loc|
      (lambda (_stx1546_)
        (let ((_g15491567_
               (lambda (_g15501563_)
                 (gx#raise-syntax-error '#f '"Bad syntax" _g15501563_))))
          (let ((_g15481622_
                 (lambda (_g15501571_)
                   (if (gx#stx-pair? _g15501571_)
                       (let ((_e15531574_ (gx#syntax-e _g15501571_)))
                         (let ((_hd15541578_ (##car _e15531574_))
                               (_tl15551581_ (##cdr _e15531574_)))
                           (if (gx#stx-pair? _tl15551581_)
                               (let ((_e15561584_ (gx#syntax-e _tl15551581_)))
                                 (let ((_hd15571588_ (##car _e15561584_))
                                       (_tl15581591_ (##cdr _e15561584_)))
                                   (if (gx#stx-pair? _tl15581591_)
                                       (let ((_e15591594_
                                              (gx#syntax-e _tl15581591_)))
                                         (let ((_hd15601598_
                                                (##car _e15591594_))
                                               (_tl15611601_
                                                (##cdr _e15591594_)))
                                           (if (gx#stx-null? _tl15611601_)
                                               ((lambda (_L1604_ _L1606_)
                                                  (cons (gx#datum->syntax
                                                         '#f
                                                         'stx-wrap-source)
                                                        (cons (cons (gx#datum->syntax
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '#f
                             'syntax)
                            (cons _L1604_ '()))
                      (cons (cons (gx#datum->syntax '#f 'stx-source)
                                  (cons _L1606_ '()))
                            '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                _hd15601598_
                                                _hd15571588_)
                                               (_g15491567_ _g15501571_))))
                                       (_g15491567_ _g15501571_))))
                               (_g15491567_ _g15501571_))))
                       (_g15491567_ _g15501571_)))))
            (_g15481622_ _stx1546_)))))))
