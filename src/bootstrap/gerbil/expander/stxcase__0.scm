(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#syntax-pattern::t
    (make-struct-type
     'gx#syntax-pattern::t
     gx#expander::t
     '2
     'syntax-pattern
     '()
     '#f))
  (define gx#syntax-pattern? (make-struct-predicate gx#syntax-pattern::t))
  (define gx#make-syntax-pattern
    (lambda _$args13855_
      (apply make-struct-instance gx#syntax-pattern::t _$args13855_)))
  (define gx#syntax-pattern-id
    (make-struct-field-accessor gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth
    (make-struct-field-accessor gx#syntax-pattern::t '1))
  (define gx#syntax-pattern-id-set!
    (make-struct-field-mutator gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth-set!
    (make-struct-field-mutator gx#syntax-pattern::t '1))
  (define gx#syntax-pattern::apply-macro-expander
    (lambda (_self13852_ _stx13853_)
      (gx#raise-syntax-error
       '#f
       '"Identifier used out of context"
       _stx13853_)))
  (bind-method!
   gx#syntax-pattern::t
   'apply-macro-expander
   gx#syntax-pattern::apply-macro-expander
   '#f)
  (define gx#macro-expand-syntax
    (lambda (_stx13461_)
      (let ((_generate13463_
             (lambda (_e13690_)
               (let ((_BUG13692_
                      (lambda (_q13850_)
                        (error '"BUG: syntax; generate"
                               _stx13461_
                               _e13690_
                               _q13850_))))
                 (let ((_local-pattern-e13693_
                        (lambda (_pat13848_)
                          (gx#syntax-local-rewrap
                           (##structure-ref
                            _pat13848_
                            '2
                            gx#syntax-pattern::t
                            '#f)))))
                   (let ((_getvar13694_
                          (lambda (_q13845_ _vars13846_)
                            (assgetq _q13845_ _vars13846_ _BUG13692_))))
                     (let ((_getarg13695_
                            (lambda (_arg13811_ _vars13812_)
                              (let ((_arg1381313820_ _arg13811_))
                                (let ((_E1381513824_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _arg1381313820_))))
                                  (let ((_K1381613833_
                                         (lambda (_e13827_ _tag13828_)
                                           (let ((_$e13830_ _tag13828_))
                                             (if (eq? _$e13830_ 'ref)
                                                 (_getvar13694_
                                                  _e13827_
                                                  _vars13812_)
                                                 (if (eq? _$e13830_ 'pattern)
                                                     (_local-pattern-e13693_
                                                      _e13827_)
                                                     (_BUG13692_
                                                      _arg13811_)))))))
                                    (if (##pair? _arg1381313820_)
                                        (let ((_hd1381713836_
                                               (##car _arg1381313820_))
                                              (_tl1381813838_
                                               (##cdr _arg1381313820_)))
                                          (let ((_tag13841_ _hd1381713836_))
                                            (let ((_e13843_ _tl1381813838_))
                                              (_K1381613833_
                                               _e13843_
                                               _tag13841_))))
                                        (_E1381513824_))))))))
                       ((letrec ((_recur13697_
                                  (lambda (_e13699_ _vars13700_)
                                    (let ((_e1370113708_ _e13699_))
                                      (let ((_E1370313712_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _e1370113708_))))
                                        (let ((_K1370413799_
                                               (lambda (_body13715_ _tag13716_)
                                                 (let ((_$e13718_ _tag13716_))
                                                   (if (eq? _$e13718_ 'datum)
                                                       (gx#core-list
                                                        'quote
                                                        _body13715_)
                                                       (if (eq? _$e13718_
                                                                'term)
                                                           (gx#core-list
                                                            'datum->syntax
                                                            '#f
                                                            (gx#core-list
                                                             'quote
                                                             _body13715_))
                                                           (if (eq? _$e13718_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'pattern)
                       (_local-pattern-e13693_ _body13715_)
                       (if (eq? _$e13718_ 'ref)
                           (_getvar13694_ _body13715_ _vars13700_)
                           (if (eq? _$e13718_ 'cons)
                               (gx#core-list
                                'cons
                                (_recur13697_ (car _body13715_) _vars13700_)
                                (_recur13697_ (cdr _body13715_) _vars13700_))
                               (if (eq? _$e13718_ 'vector)
                                   (gx#core-list
                                    'list->vector
                                    (_recur13697_ _body13715_ _vars13700_))
                                   (if (eq? _$e13718_ 'box)
                                       (gx#core-list
                                        'box
                                        (_recur13697_ _body13715_ _vars13700_))
                                       (if (eq? _$e13718_ 'splice)
                                           (let ((_body1372013731_
                                                  _body13715_))
                                             (let ((_E1372213735_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _body1372013731_))))
                                               (let ((_K1372313773_
                                                      (lambda (_args13738_
                                                               _iv13739_
                                                               _hd13740_
                                                               _depth13741_)
                                                        (let ((_targets13747_
                                                               (map (lambda (_g1374213744_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (_getarg13695_ _g1374213744_ _vars13700_))
                            _args13738_)))
                  (let ((_fold-in13749_ (gx#gentemps _args13738_)))
                    (let ((_fold-out13751_ (gx#genident__0)))
                      (let ((_lambda-args13753_
                             (foldr1 cons
                                     (cons _fold-out13751_ '())
                                     _fold-in13749_)))
                        (let ((_lambda-body13770_
                               (if (fx> _depth13741_ '1)
                                   (let ((_r-args13761_
                                          (map (lambda (_arg13755_)
                                                 (cons 'ref (cdr _arg13755_)))
                                               _args13738_))
                                         (_r-vars13762_
                                          (foldr (lambda (_arg13757_
                                                          _var13758_
                                                          _r13759_)
                                                   (cons (cons (cdr _arg13757_)
                                                               _var13758_)
                                                         _r13759_))
                                                 _vars13700_
                                                 _args13738_
                                                 _fold-in13749_)))
                                     (_recur13697_
                                      (cons* 'splice
                                             (fx- _depth13741_ '1)
                                             _hd13740_
                                             (cons 'var _fold-out13751_)
                                             _r-args13761_)
                                      _r-vars13762_))
                                   (let ((_hd-vars13768_
                                          (foldr (lambda (_arg13764_
                                                          _var13765_
                                                          _r13766_)
                                                   (cons (cons (cdr _arg13764_)
                                                               _var13765_)
                                                         _r13766_))
                                                 _vars13700_
                                                 _args13738_
                                                 _fold-in13749_)))
                                     (gx#core-list
                                      'cons
                                      (_recur13697_ _hd13740_ _hd-vars13768_)
                                      _fold-out13751_)))))
                          (let ()
                            (gx#core-list
                             'begin
                             (if (fx> (length _targets13747_) '1)
                                 (gx#core-cons*
                                  'syntax-check-splice-targets
                                  _targets13747_)
                                 '#!void)
                             (gx#core-cons*
                              'foldr
                              (gx#core-list
                               'lambda%
                               _lambda-args13753_
                               _lambda-body13770_)
                              (_recur13697_ _iv13739_ _vars13700_)
                              _targets13747_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (##pair? _body1372013731_)
                                                     (let ((_hd1372413776_
                                                            (##car _body1372013731_))
                                                           (_tl1372513778_
                                                            (##cdr _body1372013731_)))
                                                       (let ((_depth13781_
                                                              _hd1372413776_))
                                                         (if (##pair? _tl1372513778_)
                                                             (let ((_hd1372613783_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##car _tl1372513778_))
                           (_tl1372713785_ (##cdr _tl1372513778_)))
                       (let ((_hd13788_ _hd1372613783_))
                         (if (##pair? _tl1372713785_)
                             (let ((_hd1372813790_ (##car _tl1372713785_))
                                   (_tl1372913792_ (##cdr _tl1372713785_)))
                               (let ((_iv13795_ _hd1372813790_))
                                 (let ((_args13797_ _tl1372913792_))
                                   (_K1372313773_
                                    _args13797_
                                    _iv13795_
                                    _hd13788_
                                    _depth13781_))))
                             (_E1372213735_))))
                     (_E1372213735_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E1372213735_)))))
                                           (if (eq? _$e13718_ 'var)
                                               _body13715_
                                               (_BUG13692_
                                                _e13699_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _e1370113708_)
                                              (let ((_hd1370513802_
                                                     (##car _e1370113708_))
                                                    (_tl1370613804_
                                                     (##cdr _e1370113708_)))
                                                (let ((_tag13807_
                                                       _hd1370513802_))
                                                  (let ((_body13809_
                                                         _tl1370613804_))
                                                    (_K1370413799_
                                                     _body13809_
                                                     _tag13807_))))
                                              (_E1370313712_))))))))
                          _recur13697_)
                        _e13690_
                        '()))))))))
        (let ((_parse13464_
               (lambda (_e13505_)
                 (let ((_make-cons13507_
                        (lambda (_hd13682_ _tl13683_)
                          (let ((_g13867_ _hd13682_) (_g13869_ _tl13683_))
                            (begin
                              (let ((_g13868_ (values-count _g13867_)))
                                (if (not (fx= _g13868_ 2))
                                    (error "Context expects 2 values"
                                           _g13868_)))
                              (let ((_g13870_ (values-count _g13869_)))
                                (if (not (fx= _g13870_ 2))
                                    (error "Context expects 2 values"
                                           _g13870_)))
                              (let ((_hd-e13685_ (values-ref _g13867_ 0))
                                    (_hd-vars13686_ (values-ref _g13867_ 1)))
                                (let ((_tl-e13687_ (values-ref _g13869_ 0))
                                      (_tl-vars13688_ (values-ref _g13869_ 1)))
                                  (values (cons* 'cons _hd-e13685_ _tl-e13687_)
                                          (append _hd-vars13686_
                                                  _tl-vars13688_)))))))))
                   (let ((_make-splice13508_
                          (lambda (_where13621_
                                   _depth13622_
                                   _hd13623_
                                   _tl13624_)
                            (let ((_g13863_ _hd13623_) (_g13865_ _tl13624_))
                              (begin
                                (let ((_g13864_ (values-count _g13863_)))
                                  (if (not (fx= _g13864_ 2))
                                      (error "Context expects 2 values"
                                             _g13864_)))
                                (let ((_g13866_ (values-count _g13865_)))
                                  (if (not (fx= _g13866_ 2))
                                      (error "Context expects 2 values"
                                             _g13866_)))
                                (let ((_hd-e13626_ (values-ref _g13863_ 0))
                                      (_hd-vars13627_ (values-ref _g13863_ 1)))
                                  (let ((_tl-e13628_ (values-ref _g13865_ 0))
                                        (_tl-vars13629_
                                         (values-ref _g13865_ 1)))
                                    ((letrec ((_lp13631_
                                               (lambda (_rest13633_
                                                        _targets13634_
                                                        _vars13635_)
                                                 (let ((_rest1363613646_
                                                        _rest13633_))
                                                   (let ((_E1363913650_
                                                          (lambda ()
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _rest1363613646_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_else1363813654_
                                                            (lambda ()
                                                              (if (null? _targets13634_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Misplaced ellipsis"
                           _stx13461_
                           _where13621_)
                          (values (cons* 'splice
                                         _depth13622_
                                         _hd-e13626_
                                         _tl-e13628_
                                         _targets13634_)
                                  _vars13635_)))))
               (let ((_K1364013663_
                      (lambda (_rest13657_ _hd-pat13658_ _hd-depth*13659_)
                        (let ((_hd-depth13661_
                               (fx- _hd-depth*13659_ _depth13622_)))
                          (if (fxpositive? _hd-depth13661_)
                              (_lp13631_
                               _rest13657_
                               (cons (cons 'ref _hd-pat13658_) _targets13634_)
                               (cons (cons _hd-depth13661_ _hd-pat13658_)
                                     _vars13635_))
                              (if (fxzero? _hd-depth13661_)
                                  (_lp13631_
                                   _rest13657_
                                   (cons (cons 'pattern _hd-pat13658_)
                                         _targets13634_)
                                   _vars13635_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Too many ellipses"
                                   _stx13461_
                                   _where13621_)))))))
                 (if (##pair? _rest1363613646_)
                     (let ((_hd1364113666_ (##car _rest1363613646_))
                           (_tl1364213668_ (##cdr _rest1363613646_)))
                       (if (##pair? _hd1364113666_)
                           (let ((_hd1364313671_ (##car _hd1364113666_))
                                 (_tl1364413673_ (##cdr _hd1364113666_)))
                             (let ((_hd-depth*13676_ _hd1364313671_))
                               (let ((_hd-pat13678_ _tl1364413673_))
                                 (let ((_rest13680_ _tl1364213668_))
                                   (_K1364013663_
                                    _rest13680_
                                    _hd-pat13678_
                                    _hd-depth*13676_)))))
                           (_else1363813654_)))
                     (_else1363813654_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _lp13631_)
                                     _hd-vars13627_
                                     '()
                                     _tl-vars13629_))))))))
                     (letrec ((_recur13509_
                               (lambda (_e13514_ _is-e?13515_)
                                 (if (_is-e?13515_ _e13514_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Mislpaced ellipsis"
                                      _stx13461_)
                                     (if (gx#syntax-local-pattern? _e13514_)
                                         (let ((_pat13517_
                                                (gx#syntax-local-e__0
                                                 _e13514_)))
                                           (let ((_depth13519_
                                                  (##structure-ref
                                                   _pat13517_
                                                   '3
                                                   gx#syntax-pattern::t
                                                   '#f)))
                                             (let ()
                                               (if (fxpositive? _depth13519_)
                                                   (values (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pat13517_)
                   (cons (cons _depth13519_ _pat13517_) '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (values (cons 'pattern
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pat13517_)
                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (if (gx#identifier? _e13514_)
                                             (values (cons 'term _e13514_) '())
                                             (if (gx#stx-pair? _e13514_)
                                                 (let ((_e1352113528_
                                                        _e13514_))
                                                   (let ((_E1352313532_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _e1352113528_))))
                                                     (let ((_E1352213611_
                                                            (lambda ()
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e1352113528_)
                          (let ((_e1352413536_ (gx#syntax-e _e1352113528_)))
                            (let ((_hd1352513539_ (##car _e1352413536_))
                                  (_tl1352613541_ (##cdr _e1352413536_)))
                              (let ((_hd13544_ _hd1352513539_))
                                (let ((_rest13546_ _tl1352613541_))
                                  (if '#t
                                      (if (_is-e?13515_ _hd13544_)
                                          (let ((_e1354713554_ _rest13546_))
                                            (let ((_E1354913558_
                                                   (lambda ()
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad ellipsis syntax"
                                                      _stx13461_
                                                      _e13514_))))
                                              (let ((_E1354813572_
                                                     (lambda ()
                                                       (if (gx#stx-pair?
                                                            _e1354713554_)
                                                           (let ((_e1355013562_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _e1354713554_)))
                     (let ((_hd1355113565_ (##car _e1355013562_))
                           (_tl1355213567_ (##cdr _e1355013562_)))
                       (let ((_rest13570_ _hd1355113565_))
                         (if (gx#stx-null? _tl1355213567_)
                             (if '#t
                                 (_recur13509_ _rest13570_ false)
                                 (_E1354913558_))
                             (_E1354913558_)))))
                   (_E1354913558_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let () (_E1354813572_)))))
                                          ((letrec ((_lp13576_
                                                     (lambda (_rest13578_
                                                              _depth13579_)
                                                       (let ((_e1358013587_
                                                              _rest13578_))
                                                         (let ((_E1358213591_
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (fxpositive? _depth13579_)
                              (_make-splice13508_
                               _e13514_
                               _depth13579_
                               (_recur13509_ _hd13544_ _is-e?13515_)
                               (_recur13509_ _rest13578_ _is-e?13515_))
                              (_make-cons13507_
                               (_recur13509_ _hd13544_ _is-e?13515_)
                               (_recur13509_ _rest13578_ _is-e?13515_))))))
                   (let ((_E1358113607_
                          (lambda ()
                            (if (gx#stx-pair? _e1358013587_)
                                (let ((_e1358313595_
                                       (gx#syntax-e _e1358013587_)))
                                  (let ((_hd1358413598_ (##car _e1358313595_))
                                        (_tl1358513600_ (##cdr _e1358313595_)))
                                    (let ((_rest-hd13603_ _hd1358413598_))
                                      (let ((_rest-tl13605_ _tl1358513600_))
                                        (if '#t
                                            (if (_is-e?13515_ _rest-hd13603_)
                                                (_lp13576_
                                                 _rest-tl13605_
                                                 (fx+ _depth13579_ '1))
                                                (if (fxpositive? _depth13579_)
                                                    (_make-splice13508_
                                                     _e13514_
                                                     _depth13579_
                                                     (_recur13509_
                                                      _hd13544_
                                                      _is-e?13515_)
                                                     (_recur13509_
                                                      _rest13578_
                                                      _is-e?13515_))
                                                    (_make-cons13507_
                                                     (_recur13509_
                                                      _hd13544_
                                                      _is-e?13515_)
                                                     (_recur13509_
                                                      _rest13578_
                                                      _is-e?13515_))))
                                            (_E1358213591_))))))
                                (_E1358213591_)))))
                     (let () (_E1358113607_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _lp13576_)
                                           _rest13546_
                                           '0))
                                      (_E1352313532_))))))
                          (_E1352313532_)))))
               (let () (_E1352213611_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-vector? _e13514_)
                                                     (let ((_g13857_
                                                            (_recur13509_
                                                             (vector->list
                                                              (gx#stx-unwrap__0
                                                               _e13514_))
                                                             _is-e?13515_)))
                                                       (begin
                                                         (let ((_g13858_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g13857_)))
                   (if (not (fx= _g13858_ 2))
                       (error "Context expects 2 values" _g13858_)))
                 (let ((_e13615_ (values-ref _g13857_ 0))
                       (_vars13616_ (values-ref _g13857_ 1)))
                   (values (cons 'vector _e13615_) _vars13616_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#stx-box? _e13514_)
                                                         (let ((_g13859_
                                                                (_recur13509_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (unbox (gx#stx-unwrap__0 _e13514_))
                         _is-e?13515_)))
                   (begin
                     (let ((_g13860_ (values-count _g13859_)))
                       (if (not (fx= _g13860_ 2))
                           (error "Context expects 2 values" _g13860_)))
                     (let ((_e13618_ (values-ref _g13859_ 0))
                           (_vars13619_ (values-ref _g13859_ 1)))
                       (values (cons 'box _e13618_) _vars13619_))))
                 (values (cons 'datum _e13514_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                       (let ((_g13861_ (_recur13509_ _e13505_ gx#ellipsis?)))
                         (begin
                           (let ((_g13862_ (values-count _g13861_)))
                             (if (not (fx= _g13862_ 2))
                                 (error "Context expects 2 values" _g13862_)))
                           (let ((_tree13511_ (values-ref _g13861_ 0))
                                 (_vars13512_ (values-ref _g13861_ 1)))
                             (if (null? _vars13512_)
                                 _tree13511_
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Missing ellipsis"
                                  _stx13461_
                                  _vars13512_)))))))))))
          (let ((_e1346513475_ _stx13461_))
            (let ((_E1346713479_
                   (lambda ()
                     (gx#raise-syntax-error '#f '"Bad syntax" _stx13461_))))
              (let ((_E1346613501_
                     (lambda ()
                       (if (gx#stx-pair? _e1346513475_)
                           (let ((_e1346813483_ (gx#syntax-e _e1346513475_)))
                             (let ((_hd1346913486_ (##car _e1346813483_))
                                   (_tl1347013488_ (##cdr _e1346813483_)))
                               (if (gx#stx-pair? _tl1347013488_)
                                   (let ((_e1347113491_
                                          (gx#syntax-e _tl1347013488_)))
                                     (let ((_hd1347213494_
                                            (##car _e1347113491_))
                                           (_tl1347313496_
                                            (##cdr _e1347113491_)))
                                       (let ((_form13499_ _hd1347213494_))
                                         (if (gx#stx-null? _tl1347313496_)
                                             (if '#t
                                                 (gx#stx-wrap-source
                                                  (_generate13463_
                                                   (_parse13464_ _form13499_))
                                                  (gx#stx-source _stx13461_))
                                                 (_E1346713479_))
                                             (_E1346713479_)))))
                                   (_E1346713479_))))
                           (_E1346713479_)))))
                (let () (_E1346613501_)))))))))
  (begin
    (define gx#macro-expand-syntax-case__opt-lambda12731
      (lambda (_stx12733_ _identifier=?12734_ _unwrap-e12735_ _wrap-e12736_)
        (let ((_generate-body12739_
               (lambda (_bindings13283_ _body13284_)
                 ((letrec ((_recur13286_
                            (lambda (_rest13288_)
                              (let ((_rest1328913297_ _rest13288_))
                                (let ((_E1329213301_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _rest1328913297_))))
                                  (let ((_else1329113305_
                                         (lambda () _body13284_)))
                                    (let ((_K1329313311_
                                           (lambda (_rest13308_ _hd13309_)
                                             (gx#core-list
                                              'let-values
                                              (cons _hd13309_ '())
                                              (_recur13286_ _rest13308_)))))
                                      (if (##pair? _rest1328913297_)
                                          (let ((_hd1329413314_
                                                 (##car _rest1328913297_))
                                                (_tl1329513316_
                                                 (##cdr _rest1328913297_)))
                                            (let ((_hd13319_ _hd1329413314_))
                                              (let ((_rest13321_
                                                     _tl1329513316_))
                                                (_K1329313311_
                                                 _rest13321_
                                                 _hd13319_))))
                                          (_else1329113305_)))))))))
                    _recur13286_)
                  _bindings13283_))))
          (let ((_generate-match12741_
                 (lambda (_where12905_
                          _target12906_
                          _hd12907_
                          _mvars12908_
                          _K12909_
                          _E12910_)
                   (let ((_BUG12912_
                          (lambda (_q13144_)
                            (error '"BUG: syntax-case; generate"
                                   _stx12733_
                                   _hd12907_
                                   _q13144_))))
                     (let ((_splice-rlen12914_
                            (lambda (_e12960_)
                              ((letrec ((_lp12962_
                                         (lambda (_e12964_ _n12965_)
                                           (let ((_e1296612973_ _e12964_))
                                             (let ((_E1296812977_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _e1296612973_))))
                                               (let ((_K1296912986_
                                                      (lambda (_body12980_
                                                               _tag12981_)
                                                        (let ((_$e12983_
                                                               _tag12981_))
                                                          (if (eq? _$e12983_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'splice)
                      (gx#raise-syntax-error
                       '#f
                       '"Ambiguous pattern"
                       _stx12733_
                       _where12905_)
                      (if (eq? _$e12983_ 'cons)
                          (_lp12962_ (cdr _body12980_) (fx+ _n12965_ '1))
                          _n12965_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (##pair? _e1296612973_)
                                                     (let ((_hd1297012989_
                                                            (##car _e1296612973_))
                                                           (_tl1297112991_
                                                            (##cdr _e1296612973_)))
                                                       (let ((_tag12994_
                                                              _hd1297012989_))
                                                         (let ((_body12996_
                                                                _tl1297112991_))
                                                           (_K1296912986_
                                                            _body12996_
                                                            _tag12994_))))
                                                     (_E1296812977_))))))))
                                 _lp12962_)
                               _e12960_
                               '0))))
                       (let ((_splice-vars12915_
                              (lambda (_e12922_)
                                ((letrec ((_recur12924_
                                           (lambda (_e12926_ _vars12927_)
                                             (let ((_e1292812935_ _e12926_))
                                               (let ((_E1293012939_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _e1292812935_))))
                                                 (let ((_K1293112948_
                                                        (lambda (_body12942_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tag12943_)
                  (let ((_$e12945_ _tag12943_))
                    (if (eq? _$e12945_ 'var)
                        (cons _body12942_ _vars12927_)
                        (if (memq _$e12945_ '(cons splice))
                            (_recur12924_
                             (cdr _body12942_)
                             (_recur12924_ (car _body12942_) _vars12927_))
                            (if (memq _$e12945_ '(vector box))
                                (_recur12924_ _body12942_ _vars12927_)
                                _vars12927_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (##pair? _e1292812935_)
                                                       (let ((_hd1293212951_
                                                              (##car _e1292812935_))
                                                             (_tl1293312953_
                                                              (##cdr _e1292812935_)))
                                                         (let ((_tag12956_
                                                                _hd1293212951_))
                                                           (let ((_body12958_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1293312953_))
                     (_K1293112948_ _body12958_ _tag12956_))))
               (_E1293012939_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _recur12924_)
                                 _e12922_
                                 '()))))
                         (let ((_make-body12916_
                                (lambda (_vars12918_)
                                  (cons _K12909_
                                        (map (lambda (_mvar12920_)
                                               (assgetq (car _mvar12920_)
                                                        _vars12918_
                                                        _BUG12912_))
                                             _mvars12908_)))))
                           (letrec ((_recur12913_
                                     (lambda (_e12998_
                                              _vars12999_
                                              _target13000_
                                              _E13001_
                                              _k13002_)
                                       (let ((_e1300313010_ _e12998_))
                                         (let ((_E1300513014_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _e1300313010_))))
                                           (let ((_K1300613132_
                                                  (lambda (_body13017_
                                                           _tag13018_)
                                                    (let ((_$e13020_
                                                           _tag13018_))
                                                      (if (eq? _$e13020_ 'any)
                                                          (_k13002_
                                                           _vars12999_)
                                                          (if (eq? _$e13020_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'id)
                      (gx#core-list
                       'if
                       (gx#core-list 'identifier? _target13000_)
                       (gx#core-list
                        'if
                        (gx#core-list
                         _identifier=?12734_
                         (gx#core-list _wrap-e12736_ _body13017_)
                         _target13000_)
                        (_k13002_ _vars12999_)
                        _E13001_)
                       _E13001_)
                      (if (eq? _$e13020_ 'var)
                          (_k13002_
                           (cons (cons _body13017_ _target13000_) _vars12999_))
                          (if (eq? _$e13020_ 'cons)
                              (let ((_$e13023_ (gx#genident__1 'e))
                                    (_$hd13024_ (gx#genident__1 'hd))
                                    (_$tl13025_ (gx#genident__1 'tl)))
                                (gx#core-list
                                 'if
                                 (gx#core-list 'stx-pair? _target13000_)
                                 (gx#core-list
                                  'let-values
                                  (cons (cons (cons _$e13023_ '())
                                              (cons (gx#core-list
                                                     _unwrap-e12735_
                                                     _target13000_)
                                                    '()))
                                        '())
                                  (gx#core-list
                                   'let-values
                                   (cons (cons (cons _$hd13024_ '())
                                               (cons (gx#core-list
                                                      '##car
                                                      _$e13023_)
                                                     '()))
                                         (cons (cons (cons _$tl13025_ '())
                                                     (cons (gx#core-list
                                                            '##cdr
                                                            _$e13023_)
                                                           '()))
                                               '()))
                                   (let ((_body1302613033_ _body13017_))
                                     (let ((_E1302813037_
                                            (lambda ()
                                              (error '"No clause matching"
                                                     _body1302613033_))))
                                       (let ((_K1302913045_
                                              (lambda (_tl13040_ _hd13041_)
                                                (_recur12913_
                                                 _hd13041_
                                                 _vars12999_
                                                 _$hd13024_
                                                 _E13001_
                                                 (lambda (_vars13043_)
                                                   (_recur12913_
                                                    _tl13040_
                                                    _vars13043_
                                                    _$tl13025_
                                                    _E13001_
                                                    _k13002_))))))
                                         (if (##pair? _body1302613033_)
                                             (let ((_hd1303013048_
                                                    (##car _body1302613033_))
                                                   (_tl1303113050_
                                                    (##cdr _body1302613033_)))
                                               (let ((_hd13053_
                                                      _hd1303013048_))
                                                 (let ((_tl13055_
                                                        _tl1303113050_))
                                                   (_K1302913045_
                                                    _tl13055_
                                                    _hd13053_))))
                                             (_E1302813037_)))))))
                                 _E13001_))
                              (if (eq? _$e13020_ 'splice)
                                  (let ((_body1305613063_ _body13017_))
                                    (let ((_E1305813067_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _body1305613063_))))
                                      (let ((_K1305913116_
                                             (lambda (_tl13070_ _hd13071_)
                                               (let ((_rlen13073_
                                                      (_splice-rlen12914_
                                                       _tl13070_)))
                                                 (let ((_$target13075_
                                                        (gx#genident__1
                                                         'target)))
                                                   (let ((_$hd13077_
                                                          (gx#genident__1
                                                           'hd)))
                                                     (let ((_$tl13079_
                                                            (gx#genident__1
                                                             'tl)))
                                                       (let ((_$lp13081_
                                                              (gx#genident__1
                                                               'loop)))
                                                         (let ((_$lp-e13083_
                                                                (gx#genident__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'e)))
                   (let ((_$lp-hd13085_ (gx#genident__1 'lp-hd)))
                     (let ((_$lp-tl13087_ (gx#genident__1 'lp-tl)))
                       (let ((_svars13089_ (_splice-vars12915_ _hd13071_)))
                         (let ((_lvars13091_ (gx#gentemps _svars13089_)))
                           (let ((_tlvars13093_ (gx#gentemps _svars13089_)))
                             (let ((_linit13097_
                                    (map (lambda (_var13095_)
                                           (gx#core-list 'quote '()))
                                         _lvars13091_)))
                               (let ()
                                 (let ((_make-loop13100_
                                        (lambda (_vars13102_)
                                          (gx#core-list
                                           'letrec-values
                                           (cons (cons (cons _$lp13081_ '())
                                                       (cons (gx#core-list
                                                              'lambda%
                                                              (cons _$hd13077_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _lvars13091_)
                      (gx#core-list
                       'if
                       (gx#core-list 'stx-pair? _$hd13077_)
                       (gx#core-list
                        'let-values
                        (cons (cons (cons _$lp-e13083_ '())
                                    (cons (gx#core-list
                                           _unwrap-e12735_
                                           _$hd13077_)
                                          '()))
                              '())
                        (gx#core-list
                         'let-values
                         (cons (cons (cons _$lp-hd13085_ '())
                                     (cons (gx#core-list '##car _$lp-e13083_)
                                           '()))
                               (cons (cons (cons _$lp-tl13087_ '())
                                           (cons (gx#core-list
                                                  '##cdr
                                                  _$lp-e13083_)
                                                 '()))
                                     '()))
                         (_recur12913_
                          _hd13071_
                          '()
                          _$lp-hd13085_
                          _E13001_
                          (lambda (_hdvars13104_)
                            (cons* _$lp13081_
                                   _$lp-tl13087_
                                   (map (lambda (_svar13106_ _lvar13107_)
                                          (gx#core-list
                                           'cons
                                           (assgetq _svar13106_
                                                    _hdvars13104_
                                                    _BUG12912_)
                                           _lvar13107_))
                                        _svars13089_
                                        _lvars13091_))))))
                       (gx#core-list
                        'let-values
                        (map (lambda (_lvar13109_ _tlvar13110_)
                               (cons (cons _tlvar13110_ '())
                                     (cons (gx#core-list 'reverse _lvar13109_)
                                           '())))
                             _lvars13091_
                             _tlvars13093_)
                        (_k13002_
                         (foldl (lambda (_svar13112_ _tlvar13113_ _r13114_)
                                  (cons (cons _svar13112_ _tlvar13113_)
                                        _r13114_))
                                _vars13102_
                                _svars13089_
                                _tlvars13093_)))))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons* _$lp13081_
                                                  _$target13075_
                                                  _linit13097_)))))
                                   (gx#core-list
                                    'if
                                    (gx#core-list
                                     'stx-pair/null?
                                     _target13000_)
                                    (gx#core-list
                                     'if
                                     (gx#core-list
                                      'fx>=
                                      (gx#core-list 'stx-length _target13000_)
                                      _rlen13073_)
                                     (gx#core-list
                                      'let-values
                                      (cons (cons (cons _$target13075_
                                                        (cons _$tl13079_ '()))
                                                  (cons (gx#core-list
                                                         'syntax-split-splice
                                                         _target13000_
                                                         _rlen13073_)
                                                        '()))
                                            '())
                                      (_recur12913_
                                       _tl13070_
                                       _vars12999_
                                       _$tl13079_
                                       _E13001_
                                       _make-loop13100_))
                                     _E13001_)
                                    _E13001_))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (##pair? _body1305613063_)
                                            (let ((_hd1306013119_
                                                   (##car _body1305613063_))
                                                  (_tl1306113121_
                                                   (##cdr _body1305613063_)))
                                              (let ((_hd13124_ _hd1306013119_))
                                                (let ((_tl13126_
                                                       _tl1306113121_))
                                                  (_K1305913116_
                                                   _tl13126_
                                                   _hd13124_))))
                                            (_E1305813067_)))))
                                  (if (eq? _$e13020_ 'null)
                                      (gx#core-list
                                       'if
                                       (gx#core-list 'stx-null? _target13000_)
                                       (_k13002_ _vars12999_)
                                       _E13001_)
                                      (if (eq? _$e13020_ 'vector)
                                          (let ((_$e13128_
                                                 (gx#genident__1 'e)))
                                            (gx#core-list
                                             'if
                                             (gx#core-list
                                              'stx-vector?
                                              _target13000_)
                                             (gx#core-list
                                              'let-values
                                              (cons (cons (cons _$e13128_ '())
                                                          (cons (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'vector->list
                         (gx#core-list _unwrap-e12735_ _target13000_))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (_recur12913_
                                               _body13017_
                                               _vars12999_
                                               _$e13128_
                                               _E13001_
                                               _k13002_))
                                             _E13001_))
                                          (if (eq? _$e13020_ 'box)
                                              (let ((_$e13130_
                                                     (gx#genident__1 'e)))
                                                (gx#core-list
                                                 'if
                                                 (gx#core-list
                                                  'stx-box?
                                                  _target13000_)
                                                 (gx#core-list
                                                  'let-values
                                                  (cons (cons (cons _$e13130_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (gx#core-list
                             'unbox
                             (gx#core-list _unwrap-e12735_ _target13000_))
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_recur12913_
                                                   _body13017_
                                                   _vars12999_
                                                   _$e13130_
                                                   _E13001_
                                                   _k13002_))
                                                 _E13001_))
                                              (if (eq? _$e13020_ 'datum)
                                                  (gx#core-list
                                                   'if
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _target13000_)
                                                   (gx#core-list
                                                    'if
                                                    (gx#core-list
                                                     'equal?
                                                     (gx#core-list
                                                      'stx-e
                                                      _target13000_)
                                                     _body13017_)
                                                    (_k13002_ _vars12999_)
                                                    _E13001_)
                                                   _E13001_)
                                                  (_BUG12912_
                                                   _e12998_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _e1300313010_)
                                                 (let ((_hd1300713135_
                                                        (##car _e1300313010_))
                                                       (_tl1300813137_
                                                        (##cdr _e1300313010_)))
                                                   (let ((_tag13140_
                                                          _hd1300713135_))
                                                     (let ((_body13142_
                                                            _tl1300813137_))
                                                       (_K1300613132_
                                                        _body13142_
                                                        _tag13140_))))
                                                 (_E1300513014_))))))))
                             (_recur12913_
                              _hd12907_
                              '()
                              _target12906_
                              _E12910_
                              _make-body12916_)))))))))
            (let ((_parse-clause12742_
                   (lambda (_hd12811_ _ids12812_)
                     ((letrec ((_recur12814_
                                (lambda (_e12816_ _vars12817_ _depth12818_)
                                  (if (gx#identifier? _e12816_)
                                      (if (gx#underscore? _e12816_)
                                          (values '(any) _vars12817_)
                                          (if (gx#ellipsis? _e12816_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Misplaced ellipsis"
                                               _stx12733_
                                               _hd12811_)
                                              (if (find (lambda (_id12820_)
                                                          (gx#bound-identifier=?
                                                           _e12816_
                                                           _id12820_))
                                                        _ids12812_)
                                                  (values (cons 'id _e12816_)
                                                          _vars12817_)
                                                  (if (find (lambda (_var12822_)
                                                              (gx#bound-identifier=?
                                                               _e12816_
                                                               (car _var12822_)))
                                                            _vars12817_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Duplicate pattern variable"
                                                       _stx12733_
                                                       _e12816_)
                                                      (values (cons 'var
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _e12816_)
                      (cons (cons _e12816_ _depth12818_) _vars12817_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-pair? _e12816_)
                                          (let ((_e1282312830_ _e12816_))
                                            (let ((_E1282512834_
                                                   (lambda ()
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _e1282312830_))))
                                              (let ((_E1282412895_
                                                     (lambda ()
                                                       (if (gx#stx-pair?
                                                            _e1282312830_)
                                                           (let ((_e1282612838_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _e1282312830_)))
                     (let ((_hd1282712841_ (##car _e1282612838_))
                           (_tl1282812843_ (##cdr _e1282612838_)))
                       (let ((_hd12846_ _hd1282712841_))
                         (let ((_rest12848_ _tl1282812843_))
                           (if '#t
                               (let ((_make-pair12863_
                                      (lambda (_tag12850_ _hd12851_ _tl12852_)
                                        (let ((_hd-depth12854_
                                               (if (eq? _tag12850_ 'splice)
                                                   (fx+ _depth12818_ '1)
                                                   _depth12818_)))
                                          (let ((_g13873_
                                                 (_recur12814_
                                                  _hd12851_
                                                  _vars12817_
                                                  _hd-depth12854_)))
                                            (begin
                                              (let ((_g13874_
                                                     (values-count _g13873_)))
                                                (if (not (fx= _g13874_ 2))
                                                    (error "Context expects 2 values"
                                                           _g13874_)))
                                              (let ((_hd12856_
                                                     (values-ref _g13873_ 0))
                                                    (_vars12857_
                                                     (values-ref _g13873_ 1)))
                                                (let ((_g13875_
                                                       (_recur12814_
                                                        _tl12852_
                                                        _vars12857_
                                                        _depth12818_)))
                                                  (begin
                                                    (let ((_g13876_
                                                           (values-count
                                                            _g13875_)))
                                                      (if (not (fx= _g13876_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g13876_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_tl12859_
                                                           (values-ref
                                                            _g13875_
                                                            0))
                                                          (_vars12860_
                                                           (values-ref
                                                            _g13875_
                                                            1)))
                                                      (let ()
                                                        (values (cons* _tag12850_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd12856_
                               _tl12859_)
                        _vars12860_))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (let ((_e1286412871_ _rest12848_))
                                   (let ((_E1286612875_
                                          (lambda ()
                                            (_make-pair12863_
                                             'cons
                                             _hd12846_
                                             _rest12848_))))
                                     (let ((_E1286512891_
                                            (lambda ()
                                              (if (gx#stx-pair? _e1286412871_)
                                                  (let ((_e1286712879_
                                                         (gx#syntax-e
                                                          _e1286412871_)))
                                                    (let ((_hd1286812882_
                                                           (##car _e1286712879_))
                                                          (_tl1286912884_
                                                           (##cdr _e1286712879_)))
                                                      (let ((_rest-hd12887_
                                                             _hd1286812882_))
                                                        (let ((_rest-tl12889_
                                                               _tl1286912884_))
                                                          (if '#t
                                                              (if (gx#ellipsis?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _rest-hd12887_)
                          (_make-pair12863_ 'splice _hd12846_ _rest-tl12889_)
                          (_make-pair12863_ 'cons _hd12846_ _rest12848_))
                      (_E1286612875_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1286612875_)))))
                                       (let () (_E1286512891_))))))
                               (_E1282512834_))))))
                   (_E1282512834_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let () (_E1282412895_)))))
                                          (if (gx#stx-null? _e12816_)
                                              (values '(null) _vars12817_)
                                              (if (gx#stx-vector? _e12816_)
                                                  (let ((_g13877_
                                                         (_recur12814_
                                                          (vector->list
                                                           (gx#syntax-e
                                                            _e12816_))
                                                          _vars12817_
                                                          _depth12818_)))
                                                    (begin
                                                      (let ((_g13878_
                                                             (values-count
                                                              _g13877_)))
                                                        (if (not (fx= _g13878_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g13878_)))
              (let ((_e12899_ (values-ref _g13877_ 0))
                    (_vars12900_ (values-ref _g13877_ 1)))
                (values (cons 'vector _e12899_) _vars12900_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-box? _e12816_)
                                                      (let ((_g13879_
                                                             (_recur12814_
                                                              (unbox (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _e12816_))
                      _vars12817_
                      _depth12818_)))
                (begin
                  (let ((_g13880_ (values-count _g13879_)))
                    (if (not (fx= _g13880_ 2))
                        (error "Context expects 2 values" _g13880_)))
                  (let ((_e12902_ (values-ref _g13879_ 0))
                        (_vars12903_ (values-ref _g13879_ 1)))
                    (values (cons 'box _e12902_) _vars12903_))))
              (if (gx#stx-datum? _e12816_)
                  (values (cons 'datum (gx#stx-e _e12816_)) _vars12817_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad pattern"
                   _stx12733_
                   _e12816_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        _recur12814_)
                      _hd12811_
                      '()
                      '0))))
              (let ((_generate-clause12740_
                     (lambda (_target13146_ _ids13147_ _clause13148_ _E13149_)
                       (let ((_generate113151_
                              (lambda (_hd13238_ _fender13239_ _body13240_)
                                (let ((_g13871_
                                       (_parse-clause12742_
                                        _hd13238_
                                        _ids13147_)))
                                  (begin
                                    (let ((_g13872_ (values-count _g13871_)))
                                      (if (not (fx= _g13872_ 2))
                                          (error "Context expects 2 values"
                                                 _g13872_)))
                                    (let ((_e13242_ (values-ref _g13871_ 0))
                                          (_mvars13243_
                                           (values-ref _g13871_ 1)))
                                      (let ((_pvars13245_
                                             (map gx#syntax-local-rewrap
                                                  (gx#gentemps _mvars13243_))))
                                        (let ((_E13247_
                                               (cons _E13149_
                                                     (cons _target13146_
                                                           '()))))
                                          (let ((_K13280_
                                                 (gx#core-list
                                                  'lambda%
                                                  _pvars13245_
                                                  (gx#core-list
                                                   'let-syntax
                                                   (map (lambda (_mvar13249_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pvar13250_)
                  (let ((_mvar1325113258_ _mvar13249_))
                    (let ((_E1325313262_
                           (lambda ()
                             (error '"No clause matching" _mvar1325113258_))))
                      (let ((_K1325413268_
                             (lambda (_depth13265_ _id13266_)
                               (cons _id13266_
                                     (cons (gx#core-list
                                            'make-syntax-pattern
                                            (gx#core-list 'quote _id13266_)
                                            (gx#core-list 'quote _pvar13250_)
                                            _depth13265_)
                                           '())))))
                        (if (##pair? _mvar1325113258_)
                            (let ((_hd1325513271_ (##car _mvar1325113258_))
                                  (_tl1325613273_ (##cdr _mvar1325113258_)))
                              (let ((_id13276_ _hd1325513271_))
                                (let ((_depth13278_ _tl1325613273_))
                                  (_K1325413268_ _depth13278_ _id13276_))))
                            (_E1325313262_))))))
                _mvars13243_
                _pvars13245_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (eq? _fender13239_ '#t)
                                                       _body13240_
                                                       (gx#core-list
                                                        'if
                                                        _fender13239_
                                                        _body13240_
                                                        _E13247_))))))
                                            (let ()
                                              (_generate-match12741_
                                               _hd13238_
                                               _target13146_
                                               _e13242_
                                               _mvars13243_
                                               _K13280_
                                               _E13247_)))))))))))
                         (let ((_e1315213172_ _clause13148_))
                           (let ((_E1316113176_
                                  (lambda ()
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _e1315213172_))))
                             (let ((_E1315413210_
                                    (lambda ()
                                      (if (gx#stx-pair? _e1315213172_)
                                          (let ((_e1316213180_
                                                 (gx#syntax-e _e1315213172_)))
                                            (let ((_hd1316313183_
                                                   (##car _e1316213180_))
                                                  (_tl1316413185_
                                                   (##cdr _e1316213180_)))
                                              (let ((_hd13188_ _hd1316313183_))
                                                (if (gx#stx-pair?
                                                     _tl1316413185_)
                                                    (let ((_e1316513190_
                                                           (gx#syntax-e
                                                            _tl1316413185_)))
                                                      (let ((_hd1316613193_
                                                             (##car _e1316513190_))
                                                            (_tl1316713195_
                                                             (##cdr _e1316513190_)))
                                                        (let ((_fender13198_
                                                               _hd1316613193_))
                                                          (if (gx#stx-pair?
                                                               _tl1316713195_)
                                                              (let ((_e1316813200_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl1316713195_)))
                        (let ((_hd1316913203_ (##car _e1316813200_))
                              (_tl1317013205_ (##cdr _e1316813200_)))
                          (let ((_body13208_ _hd1316913203_))
                            (if (gx#stx-null? _tl1317013205_)
                                (if '#t
                                    (_generate113151_
                                     _hd13188_
                                     _fender13198_
                                     _body13208_)
                                    (_E1316113176_))
                                (_E1316113176_)))))
                      (_E1316113176_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1316113176_)))))
                                          (_E1316113176_)))))
                               (let ((_E1315313234_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1315213172_)
                                            (let ((_e1315513214_
                                                   (gx#syntax-e
                                                    _e1315213172_)))
                                              (let ((_hd1315613217_
                                                     (##car _e1315513214_))
                                                    (_tl1315713219_
                                                     (##cdr _e1315513214_)))
                                                (let ((_hd13222_
                                                       _hd1315613217_))
                                                  (if (gx#stx-pair?
                                                       _tl1315713219_)
                                                      (let ((_e1315813224_
                                                             (gx#syntax-e
                                                              _tl1315713219_)))
                                                        (let ((_hd1315913227_
                                                               (##car _e1315813224_))
                                                              (_tl1316013229_
                                                               (##cdr _e1315813224_)))
                                                          (let ((_body13232_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1315913227_))
                    (if (gx#stx-null? _tl1316013229_)
                        (if '#t
                            (_generate113151_ _hd13222_ '#t _body13232_)
                            (_E1315413210_))
                        (_E1315413210_)))))
              (_E1315413210_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1315413210_)))))
                                 (let () (_E1315313234_))))))))))
                (let ((_generate-bindings12738_
                       (lambda (_target13323_
                                _ids13324_
                                _clauses13325_
                                _clause-ids13326_
                                _E13327_)
                         (let ((_generate113329_
                                (lambda (_clause13428_
                                         _clause-id13429_
                                         _E13430_)
                                  (cons (cons _clause-id13429_ '())
                                        (cons (gx#core-list
                                               'lambda%
                                               (cons _target13323_ '())
                                               (_generate-clause12740_
                                                _target13323_
                                                _ids13324_
                                                _clause13428_
                                                _E13430_))
                                              '())))))
                           ((letrec ((_lp13331_
                                      (lambda (_rest13333_
                                               _rest-ids13334_
                                               _bindings13335_)
                                        (let ((_rest1333613344_ _rest13333_))
                                          (let ((_E1333913348_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _rest1333613344_))))
                                            (let ((_else1333813352_
                                                   (lambda ()
                                                     _bindings13335_)))
                                              (let ((_K1334013416_
                                                     (lambda (_rest13355_
                                                              _clause13356_)
                                                       (let ((_rest-ids1335713364_
                                                              _rest-ids13334_))
                                                         (let ((_E1335913368_
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (error '"No clause matching" _rest-ids1335713364_))))
                   (let ((_K1336013404_
                          (lambda (_rest-ids13371_ _clause-id13372_)
                            (let ((_rest-ids1337313381_ _rest-ids13371_))
                              (let ((_E1337613385_
                                     (lambda ()
                                       (error '"No clause matching"
                                              _rest-ids1337313381_))))
                                (let ((_else1337513389_
                                       (lambda ()
                                         (cons (_generate113329_
                                                _clause13356_
                                                _clause-id13372_
                                                _E13327_)
                                               _bindings13335_))))
                                  (let ((_K1337713394_
                                         (lambda (_next-clause-id13392_)
                                           (_lp13331_
                                            _rest13355_
                                            _rest-ids13371_
                                            (cons (_generate113329_
                                                   _clause13356_
                                                   _clause-id13372_
                                                   _next-clause-id13392_)
                                                  _bindings13335_)))))
                                    (if (##pair? _rest-ids1337313381_)
                                        (let ((_hd1337813397_
                                               (##car _rest-ids1337313381_))
                                              (_tl1337913399_
                                               (##cdr _rest-ids1337313381_)))
                                          (let ((_next-clause-id13402_
                                                 _hd1337813397_))
                                            (_K1337713394_
                                             _next-clause-id13402_)))
                                        (_else1337513389_)))))))))
                     (if (##pair? _rest-ids1335713364_)
                         (let ((_hd1336113407_ (##car _rest-ids1335713364_))
                               (_tl1336213409_ (##cdr _rest-ids1335713364_)))
                           (let ((_clause-id13412_ _hd1336113407_))
                             (let ((_rest-ids13414_ _tl1336213409_))
                               (_K1336013404_
                                _rest-ids13414_
                                _clause-id13412_))))
                         (_E1335913368_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (##pair? _rest1333613344_)
                                                    (let ((_hd1334113419_
                                                           (##car _rest1333613344_))
                                                          (_tl1334213421_
                                                           (##cdr _rest1333613344_)))
                                                      (let ((_clause13424_
                                                             _hd1334113419_))
                                                        (let ((_rest13426_
                                                               _tl1334213421_))
                                                          (_K1334013416_
                                                           _rest13426_
                                                           _clause13424_))))
                                                    (_else1333813352_)))))))))
                              _lp13331_)
                            _clauses13325_
                            _clause-ids13326_
                            '())))))
                  (let ((_e1274312756_ _stx12733_))
                    (let ((_E1274512760_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _e1274312756_))))
                      (let ((_E1274412807_
                             (lambda ()
                               (if (gx#stx-pair? _e1274312756_)
                                   (let ((_e1274612764_
                                          (gx#syntax-e _e1274312756_)))
                                     (let ((_hd1274712767_
                                            (##car _e1274612764_))
                                           (_tl1274812769_
                                            (##cdr _e1274612764_)))
                                       (if (gx#stx-pair? _tl1274812769_)
                                           (let ((_e1274912772_
                                                  (gx#syntax-e
                                                   _tl1274812769_)))
                                             (let ((_hd1275012775_
                                                    (##car _e1274912772_))
                                                   (_tl1275112777_
                                                    (##cdr _e1274912772_)))
                                               (let ((_expr12780_
                                                      _hd1275012775_))
                                                 (if (gx#stx-pair?
                                                      _tl1275112777_)
                                                     (let ((_e1275212782_
                                                            (gx#syntax-e
                                                             _tl1275112777_)))
                                                       (let ((_hd1275312785_
                                                              (##car _e1275212782_))
                                                             (_tl1275412787_
                                                              (##cdr _e1275212782_)))
                                                         (let ((_ids12790_
                                                                _hd1275312785_))
                                                           (let ((_clauses12792_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1275412787_))
                     (if '#t
                         (if (not (gx#identifier-list? _ids12790_))
                             (gx#raise-syntax-error
                              '#f
                              '"Bad template identifier list"
                              _stx12733_
                              _ids12790_)
                             (if (not (gx#stx-list? _clauses12792_))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _stx12733_)
                                 (let ((_ids12794_
                                        (gx#syntax->list _ids12790_)))
                                   (let ((_clauses12796_
                                          (gx#syntax->list _clauses12792_)))
                                     (let ((_clause-ids12798_
                                            (gx#gentemps _clauses12796_)))
                                       (let ((_E12800_ (gx#genident__0)))
                                         (let ((_target12802_
                                                (gx#genident__0)))
                                           (let ((_first12804_
                                                  (if (null? _clauses12796_)
                                                      _E12800_
                                                      (car _clause-ids12798_))))
                                             (let ()
                                               (gx#stx-wrap-source
                                                (gx#core-list
                                                 'let-values
                                                 (cons (cons (cons _E12800_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (gx#core-list
                            'lambda%
                            (cons _target12802_ '())
                            (gx#core-list
                             'raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _target12802_))
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_generate-body12739_
                                                  (_generate-bindings12738_
                                                   _target12802_
                                                   _ids12794_
                                                   _clauses12796_
                                                   _clause-ids12798_
                                                   _E12800_)
                                                  (cons _first12804_
                                                        (cons _expr12780_
                                                              '()))))
                                                (gx#stx-source
                                                 _stx12733_)))))))))))
                         (_E1274512760_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E1274512760_)))))
                                           (_E1274512760_))))
                                   (_E1274512760_)))))
                        (let () (_E1274412807_))))))))))))
    (begin
      (define gx#macro-expand-syntax-case__0
        (lambda (_stx13435_)
          (let ((_identifier=?13437_ 'free-identifier=?))
            (let ((_unwrap-e13439_ 'syntax-e))
              (let ((_wrap-e13441_ 'quote-syntax))
                (gx#macro-expand-syntax-case__opt-lambda12731
                 _stx13435_
                 _identifier=?13437_
                 _unwrap-e13439_
                 _wrap-e13441_))))))
      (define gx#macro-expand-syntax-case__1
        (lambda (_stx13443_ _identifier=?13444_)
          (let ((_unwrap-e13446_ 'syntax-e))
            (let ((_wrap-e13448_ 'quote-syntax))
              (gx#macro-expand-syntax-case__opt-lambda12731
               _stx13443_
               _identifier=?13444_
               _unwrap-e13446_
               _wrap-e13448_)))))
      (define gx#macro-expand-syntax-case__2
        (lambda (_stx13450_ _identifier=?13451_ _unwrap-e13452_)
          (let ((_wrap-e13454_ 'quote-syntax))
            (gx#macro-expand-syntax-case__opt-lambda12731
             _stx13450_
             _identifier=?13451_
             _unwrap-e13452_
             _wrap-e13454_))))
      (define gx#macro-expand-syntax-case
        (lambda _g13882_
          (let ((_g13881_ (length _g13882_)))
            (cond ((fx= _g13881_ 1)
                   (apply gx#macro-expand-syntax-case__0 _g13882_))
                  ((fx= _g13881_ 2)
                   (apply gx#macro-expand-syntax-case__1 _g13882_))
                  ((fx= _g13881_ 3)
                   (apply gx#macro-expand-syntax-case__2 _g13882_))
                  ((fx= _g13881_ 4)
                   (apply gx#macro-expand-syntax-case__opt-lambda12731
                          _g13882_))
                  (else (error "No clause matching arguments" _g13882_))))))))
  (define gx#syntax-local-pattern?
    (lambda (_stx12730_)
      (if (gx#identifier? _stx12730_)
          (##structure-instance-of?
           (gx#syntax-local-e__opt-lambda3895 _stx12730_ false)
           'gx#syntax-pattern::t)
          '#f)))
  (define gx#syntax-check-splice-targets
    (lambda (_hd12688_ . _rest12689_)
      (let ((_len12691_ (length _hd12688_)))
        ((letrec ((_lp12693_
                   (lambda (_rest12695_)
                     (let ((_rest1269612704_ _rest12695_))
                       (let ((_E1269912708_
                              (lambda ()
                                (error '"No clause matching"
                                       _rest1269612704_))))
                         (let ((_else1269812712_ (lambda () '#!void)))
                           (let ((_K1270012718_
                                  (lambda (_rest12715_ _hd12716_)
                                    (if (fx= _len12691_ (length _hd12716_))
                                        (_lp12693_ _rest12715_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Splice length mismatch"
                                         _hd12716_)))))
                             (if (##pair? _rest1269612704_)
                                 (let ((_hd1270112721_
                                        (##car _rest1269612704_))
                                       (_tl1270212723_
                                        (##cdr _rest1269612704_)))
                                   (let ((_hd12726_ _hd1270112721_))
                                     (let ((_rest12728_ _tl1270212723_))
                                       (_K1270012718_ _rest12728_ _hd12726_))))
                                 (_else1269812712_)))))))))
           _lp12693_)
         _rest12689_))))
  (define gx#syntax-split-splice
    (lambda (_stx12646_ _n12647_)
      ((letrec ((_lp12649_
                 (lambda (_rest12651_ _r12652_)
                   (if (gx#stx-pair? _rest12651_)
                       (let ((_g1265312660_ (gx#syntax-e _rest12651_)))
                         (let ((_E1265512664_
                                (lambda ()
                                  (error '"No clause matching"
                                         _g1265312660_))))
                           (let ((_K1265612670_
                                  (lambda (_rest12667_ _hd12668_)
                                    (_lp12649_
                                     _rest12667_
                                     (cons _hd12668_ _r12652_)))))
                             (if (##pair? _g1265312660_)
                                 (let ((_hd1265712673_ (##car _g1265312660_))
                                       (_tl1265812675_ (##cdr _g1265312660_)))
                                   (let ((_hd12678_ _hd1265712673_))
                                     (let ((_rest12680_ _tl1265812675_))
                                       (_K1265612670_ _rest12680_ _hd12678_))))
                                 (_E1265512664_)))))
                       ((letrec ((_lp12682_
                                  (lambda (_n12684_ _l12685_ _r12686_)
                                    (if (null? _l12685_)
                                        (values _l12685_ _r12686_)
                                        (if (fxpositive? _n12684_)
                                            (_lp12682_
                                             (fx- _n12684_ '1)
                                             (cdr _l12685_)
                                             (cons (car _l12685_) _r12686_))
                                            (values (reverse _l12685_)
                                                    _r12686_))))))
                          _lp12682_)
                        _n12647_
                        _r12652_
                        _rest12651_)))))
         _lp12649_)
       _stx12646_
       '()))))
