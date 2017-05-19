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
    (lambda _$args14089_
      (apply make-struct-instance gx#syntax-pattern::t _$args14089_)))
  (define gx#syntax-pattern-id
    (make-struct-field-accessor gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth
    (make-struct-field-accessor gx#syntax-pattern::t '1))
  (define gx#syntax-pattern-id-set!
    (make-struct-field-mutator gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth-set!
    (make-struct-field-mutator gx#syntax-pattern::t '1))
  (define gx#syntax-pattern::apply-macro-expander
    (lambda (_self14086_ _stx14087_)
      (gx#raise-syntax-error
       '#f
       '"Identifier used out of context"
       _stx14087_)))
  (bind-method!
   gx#syntax-pattern::t
   'apply-macro-expander
   gx#syntax-pattern::apply-macro-expander
   '#f)
  (define gx#macro-expand-syntax
    (lambda (_stx13695_)
      (let ((_generate13697_
             (lambda (_e13924_)
               (let ((_BUG13926_
                      (lambda (_q14084_)
                        (error '"BUG: syntax; generate"
                               _stx13695_
                               _e13924_
                               _q14084_))))
                 (let ((_local-pattern-e13927_
                        (lambda (_pat14082_)
                          (gx#syntax-local-rewrap
                           (##structure-ref
                            _pat14082_
                            '2
                            gx#syntax-pattern::t
                            '#f)))))
                   (let ((_getvar13928_
                          (lambda (_q14079_ _vars14080_)
                            (assgetq _q14079_ _vars14080_ _BUG13926_))))
                     (let ((_getarg13929_
                            (lambda (_arg14045_ _vars14046_)
                              (let ((_arg1404714054_ _arg14045_))
                                (let ((_E1404914058_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _arg1404714054_))))
                                  (let ((_K1405014067_
                                         (lambda (_e14061_ _tag14062_)
                                           (let ((_$e14064_ _tag14062_))
                                             (if (eq? _$e14064_ 'ref)
                                                 (_getvar13928_
                                                  _e14061_
                                                  _vars14046_)
                                                 (if (eq? _$e14064_ 'pattern)
                                                     (_local-pattern-e13927_
                                                      _e14061_)
                                                     (_BUG13926_
                                                      _arg14045_)))))))
                                    (if (##pair? _arg1404714054_)
                                        (let ((_hd1405114070_
                                               (##car _arg1404714054_))
                                              (_tl1405214072_
                                               (##cdr _arg1404714054_)))
                                          (let ((_tag14075_ _hd1405114070_))
                                            (let ((_e14077_ _tl1405214072_))
                                              (_K1405014067_
                                               _e14077_
                                               _tag14075_))))
                                        (_E1404914058_))))))))
                       ((letrec ((_recur13931_
                                  (lambda (_e13933_ _vars13934_)
                                    (let ((_e1393513942_ _e13933_))
                                      (let ((_E1393713946_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _e1393513942_))))
                                        (let ((_K1393814033_
                                               (lambda (_body13949_ _tag13950_)
                                                 (let ((_$e13952_ _tag13950_))
                                                   (if (eq? _$e13952_ 'datum)
                                                       (gx#core-list
                                                        'quote
                                                        _body13949_)
                                                       (if (eq? _$e13952_
                                                                'term)
                                                           (gx#core-list
                                                            'datum->syntax
                                                            '#f
                                                            (gx#core-list
                                                             'quote
                                                             _body13949_))
                                                           (if (eq? _$e13952_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'pattern)
                       (_local-pattern-e13927_ _body13949_)
                       (if (eq? _$e13952_ 'ref)
                           (_getvar13928_ _body13949_ _vars13934_)
                           (if (eq? _$e13952_ 'cons)
                               (gx#core-list
                                'cons
                                (_recur13931_ (car _body13949_) _vars13934_)
                                (_recur13931_ (cdr _body13949_) _vars13934_))
                               (if (eq? _$e13952_ 'vector)
                                   (gx#core-list
                                    'list->vector
                                    (_recur13931_ _body13949_ _vars13934_))
                                   (if (eq? _$e13952_ 'box)
                                       (gx#core-list
                                        'box
                                        (_recur13931_ _body13949_ _vars13934_))
                                       (if (eq? _$e13952_ 'splice)
                                           (let ((_body1395413965_
                                                  _body13949_))
                                             (let ((_E1395613969_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _body1395413965_))))
                                               (let ((_K1395714007_
                                                      (lambda (_args13972_
                                                               _iv13973_
                                                               _hd13974_
                                                               _depth13975_)
                                                        (let ((_targets13981_
                                                               (map (lambda (_g1397613978_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (_getarg13929_ _g1397613978_ _vars13934_))
                            _args13972_)))
                  (let ((_fold-in13983_ (gx#gentemps _args13972_)))
                    (let ((_fold-out13985_ (gx#genident__0)))
                      (let ((_lambda-args13987_
                             (foldr1 cons
                                     (cons _fold-out13985_ '())
                                     _fold-in13983_)))
                        (let ((_lambda-body14004_
                               (if (fx> _depth13975_ '1)
                                   (let ((_r-args13995_
                                          (map (lambda (_arg13989_)
                                                 (cons 'ref (cdr _arg13989_)))
                                               _args13972_))
                                         (_r-vars13996_
                                          (foldr (lambda (_arg13991_
                                                          _var13992_
                                                          _r13993_)
                                                   (cons (cons (cdr _arg13991_)
                                                               _var13992_)
                                                         _r13993_))
                                                 _vars13934_
                                                 _args13972_
                                                 _fold-in13983_)))
                                     (_recur13931_
                                      (cons* 'splice
                                             (fx- _depth13975_ '1)
                                             _hd13974_
                                             (cons 'var _fold-out13985_)
                                             _r-args13995_)
                                      _r-vars13996_))
                                   (let ((_hd-vars14002_
                                          (foldr (lambda (_arg13998_
                                                          _var13999_
                                                          _r14000_)
                                                   (cons (cons (cdr _arg13998_)
                                                               _var13999_)
                                                         _r14000_))
                                                 _vars13934_
                                                 _args13972_
                                                 _fold-in13983_)))
                                     (gx#core-list
                                      'cons
                                      (_recur13931_ _hd13974_ _hd-vars14002_)
                                      _fold-out13985_)))))
                          (let ()
                            (gx#core-list
                             'begin
                             (if (fx> (length _targets13981_) '1)
                                 (gx#core-cons*
                                  'syntax-check-splice-targets
                                  _targets13981_)
                                 '#!void)
                             (gx#core-cons*
                              'foldr
                              (gx#core-list
                               'lambda%
                               _lambda-args13987_
                               _lambda-body14004_)
                              (_recur13931_ _iv13973_ _vars13934_)
                              _targets13981_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (##pair? _body1395413965_)
                                                     (let ((_hd1395814010_
                                                            (##car _body1395413965_))
                                                           (_tl1395914012_
                                                            (##cdr _body1395413965_)))
                                                       (let ((_depth14015_
                                                              _hd1395814010_))
                                                         (if (##pair? _tl1395914012_)
                                                             (let ((_hd1396014017_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##car _tl1395914012_))
                           (_tl1396114019_ (##cdr _tl1395914012_)))
                       (let ((_hd14022_ _hd1396014017_))
                         (if (##pair? _tl1396114019_)
                             (let ((_hd1396214024_ (##car _tl1396114019_))
                                   (_tl1396314026_ (##cdr _tl1396114019_)))
                               (let ((_iv14029_ _hd1396214024_))
                                 (let ((_args14031_ _tl1396314026_))
                                   (_K1395714007_
                                    _args14031_
                                    _iv14029_
                                    _hd14022_
                                    _depth14015_))))
                             (_E1395613969_))))
                     (_E1395613969_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E1395613969_)))))
                                           (if (eq? _$e13952_ 'var)
                                               _body13949_
                                               (_BUG13926_
                                                _e13933_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _e1393513942_)
                                              (let ((_hd1393914036_
                                                     (##car _e1393513942_))
                                                    (_tl1394014038_
                                                     (##cdr _e1393513942_)))
                                                (let ((_tag14041_
                                                       _hd1393914036_))
                                                  (let ((_body14043_
                                                         _tl1394014038_))
                                                    (_K1393814033_
                                                     _body14043_
                                                     _tag14041_))))
                                              (_E1393713946_))))))))
                          _recur13931_)
                        _e13924_
                        '()))))))))
        (let ((_parse13698_
               (lambda (_e13739_)
                 (let ((_make-cons13741_
                        (lambda (_hd13916_ _tl13917_)
                          (let ((_g14101_ _hd13916_) (_g14103_ _tl13917_))
                            (begin
                              (let ((_g14102_ (values-count _g14101_)))
                                (if (not (fx= _g14102_ 2))
                                    (error "Context expects 2 values"
                                           _g14102_)))
                              (let ((_g14104_ (values-count _g14103_)))
                                (if (not (fx= _g14104_ 2))
                                    (error "Context expects 2 values"
                                           _g14104_)))
                              (let ((_hd-e13919_ (values-ref _g14101_ 0))
                                    (_hd-vars13920_ (values-ref _g14101_ 1)))
                                (let ((_tl-e13921_ (values-ref _g14103_ 0))
                                      (_tl-vars13922_ (values-ref _g14103_ 1)))
                                  (values (cons* 'cons _hd-e13919_ _tl-e13921_)
                                          (append _hd-vars13920_
                                                  _tl-vars13922_)))))))))
                   (let ((_make-splice13742_
                          (lambda (_where13855_
                                   _depth13856_
                                   _hd13857_
                                   _tl13858_)
                            (let ((_g14097_ _hd13857_) (_g14099_ _tl13858_))
                              (begin
                                (let ((_g14098_ (values-count _g14097_)))
                                  (if (not (fx= _g14098_ 2))
                                      (error "Context expects 2 values"
                                             _g14098_)))
                                (let ((_g14100_ (values-count _g14099_)))
                                  (if (not (fx= _g14100_ 2))
                                      (error "Context expects 2 values"
                                             _g14100_)))
                                (let ((_hd-e13860_ (values-ref _g14097_ 0))
                                      (_hd-vars13861_ (values-ref _g14097_ 1)))
                                  (let ((_tl-e13862_ (values-ref _g14099_ 0))
                                        (_tl-vars13863_
                                         (values-ref _g14099_ 1)))
                                    ((letrec ((_lp13865_
                                               (lambda (_rest13867_
                                                        _targets13868_
                                                        _vars13869_)
                                                 (let ((_rest1387013880_
                                                        _rest13867_))
                                                   (let ((_E1387313884_
                                                          (lambda ()
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _rest1387013880_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_else1387213888_
                                                            (lambda ()
                                                              (if (null? _targets13868_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Misplaced ellipsis"
                           _stx13695_
                           _where13855_)
                          (values (cons* 'splice
                                         _depth13856_
                                         _hd-e13860_
                                         _tl-e13862_
                                         _targets13868_)
                                  _vars13869_)))))
               (let ((_K1387413897_
                      (lambda (_rest13891_ _hd-pat13892_ _hd-depth*13893_)
                        (let ((_hd-depth13895_
                               (fx- _hd-depth*13893_ _depth13856_)))
                          (if (fxpositive? _hd-depth13895_)
                              (_lp13865_
                               _rest13891_
                               (cons (cons 'ref _hd-pat13892_) _targets13868_)
                               (cons (cons _hd-depth13895_ _hd-pat13892_)
                                     _vars13869_))
                              (if (fxzero? _hd-depth13895_)
                                  (_lp13865_
                                   _rest13891_
                                   (cons (cons 'pattern _hd-pat13892_)
                                         _targets13868_)
                                   _vars13869_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Too many ellipses"
                                   _stx13695_
                                   _where13855_)))))))
                 (if (##pair? _rest1387013880_)
                     (let ((_hd1387513900_ (##car _rest1387013880_))
                           (_tl1387613902_ (##cdr _rest1387013880_)))
                       (if (##pair? _hd1387513900_)
                           (let ((_hd1387713905_ (##car _hd1387513900_))
                                 (_tl1387813907_ (##cdr _hd1387513900_)))
                             (let ((_hd-depth*13910_ _hd1387713905_))
                               (let ((_hd-pat13912_ _tl1387813907_))
                                 (let ((_rest13914_ _tl1387613902_))
                                   (_K1387413897_
                                    _rest13914_
                                    _hd-pat13912_
                                    _hd-depth*13910_)))))
                           (_else1387213888_)))
                     (_else1387213888_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _lp13865_)
                                     _hd-vars13861_
                                     '()
                                     _tl-vars13863_))))))))
                     (letrec ((_recur13743_
                               (lambda (_e13748_ _is-e?13749_)
                                 (if (_is-e?13749_ _e13748_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Mislpaced ellipsis"
                                      _stx13695_)
                                     (if (gx#syntax-local-pattern? _e13748_)
                                         (let ((_pat13751_
                                                (gx#syntax-local-e__0
                                                 _e13748_)))
                                           (let ((_depth13753_
                                                  (##structure-ref
                                                   _pat13751_
                                                   '3
                                                   gx#syntax-pattern::t
                                                   '#f)))
                                             (let ()
                                               (if (fxpositive? _depth13753_)
                                                   (values (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pat13751_)
                   (cons (cons _depth13753_ _pat13751_) '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (values (cons 'pattern
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pat13751_)
                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (if (gx#identifier? _e13748_)
                                             (values (cons 'term _e13748_) '())
                                             (if (gx#stx-pair? _e13748_)
                                                 (let ((_e1375513762_
                                                        _e13748_))
                                                   (let ((_E1375713766_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _e1375513762_))))
                                                     (let ((_E1375613845_
                                                            (lambda ()
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e1375513762_)
                          (let ((_e1375813770_ (gx#syntax-e _e1375513762_)))
                            (let ((_hd1375913773_ (##car _e1375813770_))
                                  (_tl1376013775_ (##cdr _e1375813770_)))
                              (let ((_hd13778_ _hd1375913773_))
                                (let ((_rest13780_ _tl1376013775_))
                                  (if '#t
                                      (if (_is-e?13749_ _hd13778_)
                                          (let ((_e1378113788_ _rest13780_))
                                            (let ((_E1378313792_
                                                   (lambda ()
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad ellipsis syntax"
                                                      _stx13695_
                                                      _e13748_))))
                                              (let ((_E1378213806_
                                                     (lambda ()
                                                       (if (gx#stx-pair?
                                                            _e1378113788_)
                                                           (let ((_e1378413796_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _e1378113788_)))
                     (let ((_hd1378513799_ (##car _e1378413796_))
                           (_tl1378613801_ (##cdr _e1378413796_)))
                       (let ((_rest13804_ _hd1378513799_))
                         (if (gx#stx-null? _tl1378613801_)
                             (if '#t
                                 (_recur13743_ _rest13804_ false)
                                 (_E1378313792_))
                             (_E1378313792_)))))
                   (_E1378313792_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let () (_E1378213806_)))))
                                          ((letrec ((_lp13810_
                                                     (lambda (_rest13812_
                                                              _depth13813_)
                                                       (let ((_e1381413821_
                                                              _rest13812_))
                                                         (let ((_E1381613825_
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (fxpositive? _depth13813_)
                              (_make-splice13742_
                               _e13748_
                               _depth13813_
                               (_recur13743_ _hd13778_ _is-e?13749_)
                               (_recur13743_ _rest13812_ _is-e?13749_))
                              (_make-cons13741_
                               (_recur13743_ _hd13778_ _is-e?13749_)
                               (_recur13743_ _rest13812_ _is-e?13749_))))))
                   (let ((_E1381513841_
                          (lambda ()
                            (if (gx#stx-pair? _e1381413821_)
                                (let ((_e1381713829_
                                       (gx#syntax-e _e1381413821_)))
                                  (let ((_hd1381813832_ (##car _e1381713829_))
                                        (_tl1381913834_ (##cdr _e1381713829_)))
                                    (let ((_rest-hd13837_ _hd1381813832_))
                                      (let ((_rest-tl13839_ _tl1381913834_))
                                        (if '#t
                                            (if (_is-e?13749_ _rest-hd13837_)
                                                (_lp13810_
                                                 _rest-tl13839_
                                                 (fx+ _depth13813_ '1))
                                                (if (fxpositive? _depth13813_)
                                                    (_make-splice13742_
                                                     _e13748_
                                                     _depth13813_
                                                     (_recur13743_
                                                      _hd13778_
                                                      _is-e?13749_)
                                                     (_recur13743_
                                                      _rest13812_
                                                      _is-e?13749_))
                                                    (_make-cons13741_
                                                     (_recur13743_
                                                      _hd13778_
                                                      _is-e?13749_)
                                                     (_recur13743_
                                                      _rest13812_
                                                      _is-e?13749_))))
                                            (_E1381613825_))))))
                                (_E1381613825_)))))
                     (let () (_E1381513841_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _lp13810_)
                                           _rest13780_
                                           '0))
                                      (_E1375713766_))))))
                          (_E1375713766_)))))
               (let () (_E1375613845_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-vector? _e13748_)
                                                     (let ((_g14091_
                                                            (_recur13743_
                                                             (vector->list
                                                              (gx#stx-unwrap__0
                                                               _e13748_))
                                                             _is-e?13749_)))
                                                       (begin
                                                         (let ((_g14092_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g14091_)))
                   (if (not (fx= _g14092_ 2))
                       (error "Context expects 2 values" _g14092_)))
                 (let ((_e13849_ (values-ref _g14091_ 0))
                       (_vars13850_ (values-ref _g14091_ 1)))
                   (values (cons 'vector _e13849_) _vars13850_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#stx-box? _e13748_)
                                                         (let ((_g14093_
                                                                (_recur13743_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (unbox (gx#stx-unwrap__0 _e13748_))
                         _is-e?13749_)))
                   (begin
                     (let ((_g14094_ (values-count _g14093_)))
                       (if (not (fx= _g14094_ 2))
                           (error "Context expects 2 values" _g14094_)))
                     (let ((_e13852_ (values-ref _g14093_ 0))
                           (_vars13853_ (values-ref _g14093_ 1)))
                       (values (cons 'box _e13852_) _vars13853_))))
                 (values (cons 'datum _e13748_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                       (let ((_g14095_ (_recur13743_ _e13739_ gx#ellipsis?)))
                         (begin
                           (let ((_g14096_ (values-count _g14095_)))
                             (if (not (fx= _g14096_ 2))
                                 (error "Context expects 2 values" _g14096_)))
                           (let ((_tree13745_ (values-ref _g14095_ 0))
                                 (_vars13746_ (values-ref _g14095_ 1)))
                             (if (null? _vars13746_)
                                 _tree13745_
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Missing ellipsis"
                                  _stx13695_
                                  _vars13746_)))))))))))
          (let ((_e1369913709_ _stx13695_))
            (let ((_E1370113713_
                   (lambda ()
                     (gx#raise-syntax-error '#f '"Bad syntax" _stx13695_))))
              (let ((_E1370013735_
                     (lambda ()
                       (if (gx#stx-pair? _e1369913709_)
                           (let ((_e1370213717_ (gx#syntax-e _e1369913709_)))
                             (let ((_hd1370313720_ (##car _e1370213717_))
                                   (_tl1370413722_ (##cdr _e1370213717_)))
                               (if (gx#stx-pair? _tl1370413722_)
                                   (let ((_e1370513725_
                                          (gx#syntax-e _tl1370413722_)))
                                     (let ((_hd1370613728_
                                            (##car _e1370513725_))
                                           (_tl1370713730_
                                            (##cdr _e1370513725_)))
                                       (let ((_form13733_ _hd1370613728_))
                                         (if (gx#stx-null? _tl1370713730_)
                                             (if '#t
                                                 (gx#stx-wrap-source
                                                  (_generate13697_
                                                   (_parse13698_ _form13733_))
                                                  (gx#stx-source _stx13695_))
                                                 (_E1370113713_))
                                             (_E1370113713_)))))
                                   (_E1370113713_))))
                           (_E1370113713_)))))
                (let () (_E1370013735_)))))))))
  (begin
    (define gx#macro-expand-syntax-case__opt-lambda12965
      (lambda (_stx12967_ _identifier=?12968_ _unwrap-e12969_ _wrap-e12970_)
        (let ((_generate-body12973_
               (lambda (_bindings13517_ _body13518_)
                 ((letrec ((_recur13520_
                            (lambda (_rest13522_)
                              (let ((_rest1352313531_ _rest13522_))
                                (let ((_E1352613535_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _rest1352313531_))))
                                  (let ((_else1352513539_
                                         (lambda () _body13518_)))
                                    (let ((_K1352713545_
                                           (lambda (_rest13542_ _hd13543_)
                                             (gx#core-list
                                              'let-values
                                              (cons _hd13543_ '())
                                              (_recur13520_ _rest13542_)))))
                                      (if (##pair? _rest1352313531_)
                                          (let ((_hd1352813548_
                                                 (##car _rest1352313531_))
                                                (_tl1352913550_
                                                 (##cdr _rest1352313531_)))
                                            (let ((_hd13553_ _hd1352813548_))
                                              (let ((_rest13555_
                                                     _tl1352913550_))
                                                (_K1352713545_
                                                 _rest13555_
                                                 _hd13553_))))
                                          (_else1352513539_)))))))))
                    _recur13520_)
                  _bindings13517_))))
          (let ((_generate-match12975_
                 (lambda (_where13139_
                          _target13140_
                          _hd13141_
                          _mvars13142_
                          _K13143_
                          _E13144_)
                   (let ((_BUG13146_
                          (lambda (_q13378_)
                            (error '"BUG: syntax-case; generate"
                                   _stx12967_
                                   _hd13141_
                                   _q13378_))))
                     (let ((_splice-rlen13148_
                            (lambda (_e13194_)
                              ((letrec ((_lp13196_
                                         (lambda (_e13198_ _n13199_)
                                           (let ((_e1320013207_ _e13198_))
                                             (let ((_E1320213211_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _e1320013207_))))
                                               (let ((_K1320313220_
                                                      (lambda (_body13214_
                                                               _tag13215_)
                                                        (let ((_$e13217_
                                                               _tag13215_))
                                                          (if (eq? _$e13217_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'splice)
                      (gx#raise-syntax-error
                       '#f
                       '"Ambiguous pattern"
                       _stx12967_
                       _where13139_)
                      (if (eq? _$e13217_ 'cons)
                          (_lp13196_ (cdr _body13214_) (fx+ _n13199_ '1))
                          _n13199_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (##pair? _e1320013207_)
                                                     (let ((_hd1320413223_
                                                            (##car _e1320013207_))
                                                           (_tl1320513225_
                                                            (##cdr _e1320013207_)))
                                                       (let ((_tag13228_
                                                              _hd1320413223_))
                                                         (let ((_body13230_
                                                                _tl1320513225_))
                                                           (_K1320313220_
                                                            _body13230_
                                                            _tag13228_))))
                                                     (_E1320213211_))))))))
                                 _lp13196_)
                               _e13194_
                               '0))))
                       (let ((_splice-vars13149_
                              (lambda (_e13156_)
                                ((letrec ((_recur13158_
                                           (lambda (_e13160_ _vars13161_)
                                             (let ((_e1316213169_ _e13160_))
                                               (let ((_E1316413173_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _e1316213169_))))
                                                 (let ((_K1316513182_
                                                        (lambda (_body13176_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tag13177_)
                  (let ((_$e13179_ _tag13177_))
                    (if (eq? _$e13179_ 'var)
                        (cons _body13176_ _vars13161_)
                        (if (memq _$e13179_ '(cons splice))
                            (_recur13158_
                             (cdr _body13176_)
                             (_recur13158_ (car _body13176_) _vars13161_))
                            (if (memq _$e13179_ '(vector box))
                                (_recur13158_ _body13176_ _vars13161_)
                                _vars13161_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (##pair? _e1316213169_)
                                                       (let ((_hd1316613185_
                                                              (##car _e1316213169_))
                                                             (_tl1316713187_
                                                              (##cdr _e1316213169_)))
                                                         (let ((_tag13190_
                                                                _hd1316613185_))
                                                           (let ((_body13192_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1316713187_))
                     (_K1316513182_ _body13192_ _tag13190_))))
               (_E1316413173_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _recur13158_)
                                 _e13156_
                                 '()))))
                         (let ((_make-body13150_
                                (lambda (_vars13152_)
                                  (cons _K13143_
                                        (map (lambda (_mvar13154_)
                                               (assgetq (car _mvar13154_)
                                                        _vars13152_
                                                        _BUG13146_))
                                             _mvars13142_)))))
                           (letrec ((_recur13147_
                                     (lambda (_e13232_
                                              _vars13233_
                                              _target13234_
                                              _E13235_
                                              _k13236_)
                                       (let ((_e1323713244_ _e13232_))
                                         (let ((_E1323913248_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _e1323713244_))))
                                           (let ((_K1324013366_
                                                  (lambda (_body13251_
                                                           _tag13252_)
                                                    (let ((_$e13254_
                                                           _tag13252_))
                                                      (if (eq? _$e13254_ 'any)
                                                          (_k13236_
                                                           _vars13233_)
                                                          (if (eq? _$e13254_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'id)
                      (gx#core-list
                       'if
                       (gx#core-list 'identifier? _target13234_)
                       (gx#core-list
                        'if
                        (gx#core-list
                         _identifier=?12968_
                         (gx#core-list _wrap-e12970_ _body13251_)
                         _target13234_)
                        (_k13236_ _vars13233_)
                        _E13235_)
                       _E13235_)
                      (if (eq? _$e13254_ 'var)
                          (_k13236_
                           (cons (cons _body13251_ _target13234_) _vars13233_))
                          (if (eq? _$e13254_ 'cons)
                              (let ((_$e13257_ (gx#genident__1 'e))
                                    (_$hd13258_ (gx#genident__1 'hd))
                                    (_$tl13259_ (gx#genident__1 'tl)))
                                (gx#core-list
                                 'if
                                 (gx#core-list 'stx-pair? _target13234_)
                                 (gx#core-list
                                  'let-values
                                  (cons (cons (cons _$e13257_ '())
                                              (cons (gx#core-list
                                                     _unwrap-e12969_
                                                     _target13234_)
                                                    '()))
                                        '())
                                  (gx#core-list
                                   'let-values
                                   (cons (cons (cons _$hd13258_ '())
                                               (cons (gx#core-list
                                                      '##car
                                                      _$e13257_)
                                                     '()))
                                         (cons (cons (cons _$tl13259_ '())
                                                     (cons (gx#core-list
                                                            '##cdr
                                                            _$e13257_)
                                                           '()))
                                               '()))
                                   (let ((_body1326013267_ _body13251_))
                                     (let ((_E1326213271_
                                            (lambda ()
                                              (error '"No clause matching"
                                                     _body1326013267_))))
                                       (let ((_K1326313279_
                                              (lambda (_tl13274_ _hd13275_)
                                                (_recur13147_
                                                 _hd13275_
                                                 _vars13233_
                                                 _$hd13258_
                                                 _E13235_
                                                 (lambda (_vars13277_)
                                                   (_recur13147_
                                                    _tl13274_
                                                    _vars13277_
                                                    _$tl13259_
                                                    _E13235_
                                                    _k13236_))))))
                                         (if (##pair? _body1326013267_)
                                             (let ((_hd1326413282_
                                                    (##car _body1326013267_))
                                                   (_tl1326513284_
                                                    (##cdr _body1326013267_)))
                                               (let ((_hd13287_
                                                      _hd1326413282_))
                                                 (let ((_tl13289_
                                                        _tl1326513284_))
                                                   (_K1326313279_
                                                    _tl13289_
                                                    _hd13287_))))
                                             (_E1326213271_)))))))
                                 _E13235_))
                              (if (eq? _$e13254_ 'splice)
                                  (let ((_body1329013297_ _body13251_))
                                    (let ((_E1329213301_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _body1329013297_))))
                                      (let ((_K1329313350_
                                             (lambda (_tl13304_ _hd13305_)
                                               (let ((_rlen13307_
                                                      (_splice-rlen13148_
                                                       _tl13304_)))
                                                 (let ((_$target13309_
                                                        (gx#genident__1
                                                         'target)))
                                                   (let ((_$hd13311_
                                                          (gx#genident__1
                                                           'hd)))
                                                     (let ((_$tl13313_
                                                            (gx#genident__1
                                                             'tl)))
                                                       (let ((_$lp13315_
                                                              (gx#genident__1
                                                               'loop)))
                                                         (let ((_$lp-e13317_
                                                                (gx#genident__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'e)))
                   (let ((_$lp-hd13319_ (gx#genident__1 'lp-hd)))
                     (let ((_$lp-tl13321_ (gx#genident__1 'lp-tl)))
                       (let ((_svars13323_ (_splice-vars13149_ _hd13305_)))
                         (let ((_lvars13325_ (gx#gentemps _svars13323_)))
                           (let ((_tlvars13327_ (gx#gentemps _svars13323_)))
                             (let ((_linit13331_
                                    (map (lambda (_var13329_)
                                           (gx#core-list 'quote '()))
                                         _lvars13325_)))
                               (let ()
                                 (let ((_make-loop13334_
                                        (lambda (_vars13336_)
                                          (gx#core-list
                                           'letrec-values
                                           (cons (cons (cons _$lp13315_ '())
                                                       (cons (gx#core-list
                                                              'lambda%
                                                              (cons _$hd13311_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _lvars13325_)
                      (gx#core-list
                       'if
                       (gx#core-list 'stx-pair? _$hd13311_)
                       (gx#core-list
                        'let-values
                        (cons (cons (cons _$lp-e13317_ '())
                                    (cons (gx#core-list
                                           _unwrap-e12969_
                                           _$hd13311_)
                                          '()))
                              '())
                        (gx#core-list
                         'let-values
                         (cons (cons (cons _$lp-hd13319_ '())
                                     (cons (gx#core-list '##car _$lp-e13317_)
                                           '()))
                               (cons (cons (cons _$lp-tl13321_ '())
                                           (cons (gx#core-list
                                                  '##cdr
                                                  _$lp-e13317_)
                                                 '()))
                                     '()))
                         (_recur13147_
                          _hd13305_
                          '()
                          _$lp-hd13319_
                          _E13235_
                          (lambda (_hdvars13338_)
                            (cons* _$lp13315_
                                   _$lp-tl13321_
                                   (map (lambda (_svar13340_ _lvar13341_)
                                          (gx#core-list
                                           'cons
                                           (assgetq _svar13340_
                                                    _hdvars13338_
                                                    _BUG13146_)
                                           _lvar13341_))
                                        _svars13323_
                                        _lvars13325_))))))
                       (gx#core-list
                        'let-values
                        (map (lambda (_lvar13343_ _tlvar13344_)
                               (cons (cons _tlvar13344_ '())
                                     (cons (gx#core-list 'reverse _lvar13343_)
                                           '())))
                             _lvars13325_
                             _tlvars13327_)
                        (_k13236_
                         (foldl (lambda (_svar13346_ _tlvar13347_ _r13348_)
                                  (cons (cons _svar13346_ _tlvar13347_)
                                        _r13348_))
                                _vars13336_
                                _svars13323_
                                _tlvars13327_)))))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons* _$lp13315_
                                                  _$target13309_
                                                  _linit13331_)))))
                                   (gx#core-list
                                    'if
                                    (gx#core-list
                                     'stx-pair/null?
                                     _target13234_)
                                    (gx#core-list
                                     'if
                                     (gx#core-list
                                      'fx>=
                                      (gx#core-list 'stx-length _target13234_)
                                      _rlen13307_)
                                     (gx#core-list
                                      'let-values
                                      (cons (cons (cons _$target13309_
                                                        (cons _$tl13313_ '()))
                                                  (cons (gx#core-list
                                                         'syntax-split-splice
                                                         _target13234_
                                                         _rlen13307_)
                                                        '()))
                                            '())
                                      (_recur13147_
                                       _tl13304_
                                       _vars13233_
                                       _$tl13313_
                                       _E13235_
                                       _make-loop13334_))
                                     _E13235_)
                                    _E13235_))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (##pair? _body1329013297_)
                                            (let ((_hd1329413353_
                                                   (##car _body1329013297_))
                                                  (_tl1329513355_
                                                   (##cdr _body1329013297_)))
                                              (let ((_hd13358_ _hd1329413353_))
                                                (let ((_tl13360_
                                                       _tl1329513355_))
                                                  (_K1329313350_
                                                   _tl13360_
                                                   _hd13358_))))
                                            (_E1329213301_)))))
                                  (if (eq? _$e13254_ 'null)
                                      (gx#core-list
                                       'if
                                       (gx#core-list 'stx-null? _target13234_)
                                       (_k13236_ _vars13233_)
                                       _E13235_)
                                      (if (eq? _$e13254_ 'vector)
                                          (let ((_$e13362_
                                                 (gx#genident__1 'e)))
                                            (gx#core-list
                                             'if
                                             (gx#core-list
                                              'stx-vector?
                                              _target13234_)
                                             (gx#core-list
                                              'let-values
                                              (cons (cons (cons _$e13362_ '())
                                                          (cons (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'vector->list
                         (gx#core-list _unwrap-e12969_ _target13234_))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (_recur13147_
                                               _body13251_
                                               _vars13233_
                                               _$e13362_
                                               _E13235_
                                               _k13236_))
                                             _E13235_))
                                          (if (eq? _$e13254_ 'box)
                                              (let ((_$e13364_
                                                     (gx#genident__1 'e)))
                                                (gx#core-list
                                                 'if
                                                 (gx#core-list
                                                  'stx-box?
                                                  _target13234_)
                                                 (gx#core-list
                                                  'let-values
                                                  (cons (cons (cons _$e13364_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (gx#core-list
                             'unbox
                             (gx#core-list _unwrap-e12969_ _target13234_))
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_recur13147_
                                                   _body13251_
                                                   _vars13233_
                                                   _$e13364_
                                                   _E13235_
                                                   _k13236_))
                                                 _E13235_))
                                              (if (eq? _$e13254_ 'datum)
                                                  (gx#core-list
                                                   'if
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _target13234_)
                                                   (gx#core-list
                                                    'if
                                                    (gx#core-list
                                                     'equal?
                                                     (gx#core-list
                                                      'stx-e
                                                      _target13234_)
                                                     _body13251_)
                                                    (_k13236_ _vars13233_)
                                                    _E13235_)
                                                   _E13235_)
                                                  (_BUG13146_
                                                   _e13232_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _e1323713244_)
                                                 (let ((_hd1324113369_
                                                        (##car _e1323713244_))
                                                       (_tl1324213371_
                                                        (##cdr _e1323713244_)))
                                                   (let ((_tag13374_
                                                          _hd1324113369_))
                                                     (let ((_body13376_
                                                            _tl1324213371_))
                                                       (_K1324013366_
                                                        _body13376_
                                                        _tag13374_))))
                                                 (_E1323913248_))))))))
                             (_recur13147_
                              _hd13141_
                              '()
                              _target13140_
                              _E13144_
                              _make-body13150_)))))))))
            (let ((_parse-clause12976_
                   (lambda (_hd13045_ _ids13046_)
                     ((letrec ((_recur13048_
                                (lambda (_e13050_ _vars13051_ _depth13052_)
                                  (if (gx#identifier? _e13050_)
                                      (if (gx#underscore? _e13050_)
                                          (values '(any) _vars13051_)
                                          (if (gx#ellipsis? _e13050_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Misplaced ellipsis"
                                               _stx12967_
                                               _hd13045_)
                                              (if (find (lambda (_id13054_)
                                                          (gx#bound-identifier=?
                                                           _e13050_
                                                           _id13054_))
                                                        _ids13046_)
                                                  (values (cons 'id _e13050_)
                                                          _vars13051_)
                                                  (if (find (lambda (_var13056_)
                                                              (gx#bound-identifier=?
                                                               _e13050_
                                                               (car _var13056_)))
                                                            _vars13051_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Duplicate pattern variable"
                                                       _stx12967_
                                                       _e13050_)
                                                      (values (cons 'var
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _e13050_)
                      (cons (cons _e13050_ _depth13052_) _vars13051_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-pair? _e13050_)
                                          (let ((_e1305713064_ _e13050_))
                                            (let ((_E1305913068_
                                                   (lambda ()
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _e1305713064_))))
                                              (let ((_E1305813129_
                                                     (lambda ()
                                                       (if (gx#stx-pair?
                                                            _e1305713064_)
                                                           (let ((_e1306013072_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _e1305713064_)))
                     (let ((_hd1306113075_ (##car _e1306013072_))
                           (_tl1306213077_ (##cdr _e1306013072_)))
                       (let ((_hd13080_ _hd1306113075_))
                         (let ((_rest13082_ _tl1306213077_))
                           (if '#t
                               (let ((_make-pair13097_
                                      (lambda (_tag13084_ _hd13085_ _tl13086_)
                                        (let ((_hd-depth13088_
                                               (if (eq? _tag13084_ 'splice)
                                                   (fx+ _depth13052_ '1)
                                                   _depth13052_)))
                                          (let ((_g14107_
                                                 (_recur13048_
                                                  _hd13085_
                                                  _vars13051_
                                                  _hd-depth13088_)))
                                            (begin
                                              (let ((_g14108_
                                                     (values-count _g14107_)))
                                                (if (not (fx= _g14108_ 2))
                                                    (error "Context expects 2 values"
                                                           _g14108_)))
                                              (let ((_hd13090_
                                                     (values-ref _g14107_ 0))
                                                    (_vars13091_
                                                     (values-ref _g14107_ 1)))
                                                (let ((_g14109_
                                                       (_recur13048_
                                                        _tl13086_
                                                        _vars13091_
                                                        _depth13052_)))
                                                  (begin
                                                    (let ((_g14110_
                                                           (values-count
                                                            _g14109_)))
                                                      (if (not (fx= _g14110_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g14110_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_tl13093_
                                                           (values-ref
                                                            _g14109_
                                                            0))
                                                          (_vars13094_
                                                           (values-ref
                                                            _g14109_
                                                            1)))
                                                      (let ()
                                                        (values (cons* _tag13084_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd13090_
                               _tl13093_)
                        _vars13094_))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (let ((_e1309813105_ _rest13082_))
                                   (let ((_E1310013109_
                                          (lambda ()
                                            (_make-pair13097_
                                             'cons
                                             _hd13080_
                                             _rest13082_))))
                                     (let ((_E1309913125_
                                            (lambda ()
                                              (if (gx#stx-pair? _e1309813105_)
                                                  (let ((_e1310113113_
                                                         (gx#syntax-e
                                                          _e1309813105_)))
                                                    (let ((_hd1310213116_
                                                           (##car _e1310113113_))
                                                          (_tl1310313118_
                                                           (##cdr _e1310113113_)))
                                                      (let ((_rest-hd13121_
                                                             _hd1310213116_))
                                                        (let ((_rest-tl13123_
                                                               _tl1310313118_))
                                                          (if '#t
                                                              (if (gx#ellipsis?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _rest-hd13121_)
                          (_make-pair13097_ 'splice _hd13080_ _rest-tl13123_)
                          (_make-pair13097_ 'cons _hd13080_ _rest13082_))
                      (_E1310013109_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1310013109_)))))
                                       (let () (_E1309913125_))))))
                               (_E1305913068_))))))
                   (_E1305913068_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let () (_E1305813129_)))))
                                          (if (gx#stx-null? _e13050_)
                                              (values '(null) _vars13051_)
                                              (if (gx#stx-vector? _e13050_)
                                                  (let ((_g14111_
                                                         (_recur13048_
                                                          (vector->list
                                                           (gx#syntax-e
                                                            _e13050_))
                                                          _vars13051_
                                                          _depth13052_)))
                                                    (begin
                                                      (let ((_g14112_
                                                             (values-count
                                                              _g14111_)))
                                                        (if (not (fx= _g14112_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g14112_)))
              (let ((_e13133_ (values-ref _g14111_ 0))
                    (_vars13134_ (values-ref _g14111_ 1)))
                (values (cons 'vector _e13133_) _vars13134_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-box? _e13050_)
                                                      (let ((_g14113_
                                                             (_recur13048_
                                                              (unbox (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _e13050_))
                      _vars13051_
                      _depth13052_)))
                (begin
                  (let ((_g14114_ (values-count _g14113_)))
                    (if (not (fx= _g14114_ 2))
                        (error "Context expects 2 values" _g14114_)))
                  (let ((_e13136_ (values-ref _g14113_ 0))
                        (_vars13137_ (values-ref _g14113_ 1)))
                    (values (cons 'box _e13136_) _vars13137_))))
              (if (gx#stx-datum? _e13050_)
                  (values (cons 'datum (gx#stx-e _e13050_)) _vars13051_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad pattern"
                   _stx12967_
                   _e13050_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        _recur13048_)
                      _hd13045_
                      '()
                      '0))))
              (let ((_generate-clause12974_
                     (lambda (_target13380_ _ids13381_ _clause13382_ _E13383_)
                       (let ((_generate113385_
                              (lambda (_hd13472_ _fender13473_ _body13474_)
                                (let ((_g14105_
                                       (_parse-clause12976_
                                        _hd13472_
                                        _ids13381_)))
                                  (begin
                                    (let ((_g14106_ (values-count _g14105_)))
                                      (if (not (fx= _g14106_ 2))
                                          (error "Context expects 2 values"
                                                 _g14106_)))
                                    (let ((_e13476_ (values-ref _g14105_ 0))
                                          (_mvars13477_
                                           (values-ref _g14105_ 1)))
                                      (let ((_pvars13479_
                                             (map gx#syntax-local-rewrap
                                                  (gx#gentemps _mvars13477_))))
                                        (let ((_E13481_
                                               (cons _E13383_
                                                     (cons _target13380_
                                                           '()))))
                                          (let ((_K13514_
                                                 (gx#core-list
                                                  'lambda%
                                                  _pvars13479_
                                                  (gx#core-list
                                                   'let-syntax
                                                   (map (lambda (_mvar13483_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pvar13484_)
                  (let ((_mvar1348513492_ _mvar13483_))
                    (let ((_E1348713496_
                           (lambda ()
                             (error '"No clause matching" _mvar1348513492_))))
                      (let ((_K1348813502_
                             (lambda (_depth13499_ _id13500_)
                               (cons _id13500_
                                     (cons (gx#core-list
                                            'make-syntax-pattern
                                            (gx#core-list 'quote _id13500_)
                                            (gx#core-list 'quote _pvar13484_)
                                            _depth13499_)
                                           '())))))
                        (if (##pair? _mvar1348513492_)
                            (let ((_hd1348913505_ (##car _mvar1348513492_))
                                  (_tl1349013507_ (##cdr _mvar1348513492_)))
                              (let ((_id13510_ _hd1348913505_))
                                (let ((_depth13512_ _tl1349013507_))
                                  (_K1348813502_ _depth13512_ _id13510_))))
                            (_E1348713496_))))))
                _mvars13477_
                _pvars13479_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (eq? _fender13473_ '#t)
                                                       _body13474_
                                                       (gx#core-list
                                                        'if
                                                        _fender13473_
                                                        _body13474_
                                                        _E13481_))))))
                                            (let ()
                                              (_generate-match12975_
                                               _hd13472_
                                               _target13380_
                                               _e13476_
                                               _mvars13477_
                                               _K13514_
                                               _E13481_)))))))))))
                         (let ((_e1338613406_ _clause13382_))
                           (let ((_E1339513410_
                                  (lambda ()
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _e1338613406_))))
                             (let ((_E1338813444_
                                    (lambda ()
                                      (if (gx#stx-pair? _e1338613406_)
                                          (let ((_e1339613414_
                                                 (gx#syntax-e _e1338613406_)))
                                            (let ((_hd1339713417_
                                                   (##car _e1339613414_))
                                                  (_tl1339813419_
                                                   (##cdr _e1339613414_)))
                                              (let ((_hd13422_ _hd1339713417_))
                                                (if (gx#stx-pair?
                                                     _tl1339813419_)
                                                    (let ((_e1339913424_
                                                           (gx#syntax-e
                                                            _tl1339813419_)))
                                                      (let ((_hd1340013427_
                                                             (##car _e1339913424_))
                                                            (_tl1340113429_
                                                             (##cdr _e1339913424_)))
                                                        (let ((_fender13432_
                                                               _hd1340013427_))
                                                          (if (gx#stx-pair?
                                                               _tl1340113429_)
                                                              (let ((_e1340213434_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl1340113429_)))
                        (let ((_hd1340313437_ (##car _e1340213434_))
                              (_tl1340413439_ (##cdr _e1340213434_)))
                          (let ((_body13442_ _hd1340313437_))
                            (if (gx#stx-null? _tl1340413439_)
                                (if '#t
                                    (_generate113385_
                                     _hd13422_
                                     _fender13432_
                                     _body13442_)
                                    (_E1339513410_))
                                (_E1339513410_)))))
                      (_E1339513410_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1339513410_)))))
                                          (_E1339513410_)))))
                               (let ((_E1338713468_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1338613406_)
                                            (let ((_e1338913448_
                                                   (gx#syntax-e
                                                    _e1338613406_)))
                                              (let ((_hd1339013451_
                                                     (##car _e1338913448_))
                                                    (_tl1339113453_
                                                     (##cdr _e1338913448_)))
                                                (let ((_hd13456_
                                                       _hd1339013451_))
                                                  (if (gx#stx-pair?
                                                       _tl1339113453_)
                                                      (let ((_e1339213458_
                                                             (gx#syntax-e
                                                              _tl1339113453_)))
                                                        (let ((_hd1339313461_
                                                               (##car _e1339213458_))
                                                              (_tl1339413463_
                                                               (##cdr _e1339213458_)))
                                                          (let ((_body13466_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1339313461_))
                    (if (gx#stx-null? _tl1339413463_)
                        (if '#t
                            (_generate113385_ _hd13456_ '#t _body13466_)
                            (_E1338813444_))
                        (_E1338813444_)))))
              (_E1338813444_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1338813444_)))))
                                 (let () (_E1338713468_))))))))))
                (let ((_generate-bindings12972_
                       (lambda (_target13557_
                                _ids13558_
                                _clauses13559_
                                _clause-ids13560_
                                _E13561_)
                         (let ((_generate113563_
                                (lambda (_clause13662_
                                         _clause-id13663_
                                         _E13664_)
                                  (cons (cons _clause-id13663_ '())
                                        (cons (gx#core-list
                                               'lambda%
                                               (cons _target13557_ '())
                                               (_generate-clause12974_
                                                _target13557_
                                                _ids13558_
                                                _clause13662_
                                                _E13664_))
                                              '())))))
                           ((letrec ((_lp13565_
                                      (lambda (_rest13567_
                                               _rest-ids13568_
                                               _bindings13569_)
                                        (let ((_rest1357013578_ _rest13567_))
                                          (let ((_E1357313582_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _rest1357013578_))))
                                            (let ((_else1357213586_
                                                   (lambda ()
                                                     _bindings13569_)))
                                              (let ((_K1357413650_
                                                     (lambda (_rest13589_
                                                              _clause13590_)
                                                       (let ((_rest-ids1359113598_
                                                              _rest-ids13568_))
                                                         (let ((_E1359313602_
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (error '"No clause matching" _rest-ids1359113598_))))
                   (let ((_K1359413638_
                          (lambda (_rest-ids13605_ _clause-id13606_)
                            (let ((_rest-ids1360713615_ _rest-ids13605_))
                              (let ((_E1361013619_
                                     (lambda ()
                                       (error '"No clause matching"
                                              _rest-ids1360713615_))))
                                (let ((_else1360913623_
                                       (lambda ()
                                         (cons (_generate113563_
                                                _clause13590_
                                                _clause-id13606_
                                                _E13561_)
                                               _bindings13569_))))
                                  (let ((_K1361113628_
                                         (lambda (_next-clause-id13626_)
                                           (_lp13565_
                                            _rest13589_
                                            _rest-ids13605_
                                            (cons (_generate113563_
                                                   _clause13590_
                                                   _clause-id13606_
                                                   _next-clause-id13626_)
                                                  _bindings13569_)))))
                                    (if (##pair? _rest-ids1360713615_)
                                        (let ((_hd1361213631_
                                               (##car _rest-ids1360713615_))
                                              (_tl1361313633_
                                               (##cdr _rest-ids1360713615_)))
                                          (let ((_next-clause-id13636_
                                                 _hd1361213631_))
                                            (_K1361113628_
                                             _next-clause-id13636_)))
                                        (_else1360913623_)))))))))
                     (if (##pair? _rest-ids1359113598_)
                         (let ((_hd1359513641_ (##car _rest-ids1359113598_))
                               (_tl1359613643_ (##cdr _rest-ids1359113598_)))
                           (let ((_clause-id13646_ _hd1359513641_))
                             (let ((_rest-ids13648_ _tl1359613643_))
                               (_K1359413638_
                                _rest-ids13648_
                                _clause-id13646_))))
                         (_E1359313602_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (##pair? _rest1357013578_)
                                                    (let ((_hd1357513653_
                                                           (##car _rest1357013578_))
                                                          (_tl1357613655_
                                                           (##cdr _rest1357013578_)))
                                                      (let ((_clause13658_
                                                             _hd1357513653_))
                                                        (let ((_rest13660_
                                                               _tl1357613655_))
                                                          (_K1357413650_
                                                           _rest13660_
                                                           _clause13658_))))
                                                    (_else1357213586_)))))))))
                              _lp13565_)
                            _clauses13559_
                            _clause-ids13560_
                            '())))))
                  (let ((_e1297712990_ _stx12967_))
                    (let ((_E1297912994_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _e1297712990_))))
                      (let ((_E1297813041_
                             (lambda ()
                               (if (gx#stx-pair? _e1297712990_)
                                   (let ((_e1298012998_
                                          (gx#syntax-e _e1297712990_)))
                                     (let ((_hd1298113001_
                                            (##car _e1298012998_))
                                           (_tl1298213003_
                                            (##cdr _e1298012998_)))
                                       (if (gx#stx-pair? _tl1298213003_)
                                           (let ((_e1298313006_
                                                  (gx#syntax-e
                                                   _tl1298213003_)))
                                             (let ((_hd1298413009_
                                                    (##car _e1298313006_))
                                                   (_tl1298513011_
                                                    (##cdr _e1298313006_)))
                                               (let ((_expr13014_
                                                      _hd1298413009_))
                                                 (if (gx#stx-pair?
                                                      _tl1298513011_)
                                                     (let ((_e1298613016_
                                                            (gx#syntax-e
                                                             _tl1298513011_)))
                                                       (let ((_hd1298713019_
                                                              (##car _e1298613016_))
                                                             (_tl1298813021_
                                                              (##cdr _e1298613016_)))
                                                         (let ((_ids13024_
                                                                _hd1298713019_))
                                                           (let ((_clauses13026_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1298813021_))
                     (if '#t
                         (if (not (gx#identifier-list? _ids13024_))
                             (gx#raise-syntax-error
                              '#f
                              '"Bad template identifier list"
                              _stx12967_
                              _ids13024_)
                             (if (not (gx#stx-list? _clauses13026_))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _stx12967_)
                                 (let ((_ids13028_
                                        (gx#syntax->list _ids13024_)))
                                   (let ((_clauses13030_
                                          (gx#syntax->list _clauses13026_)))
                                     (let ((_clause-ids13032_
                                            (gx#gentemps _clauses13030_)))
                                       (let ((_E13034_ (gx#genident__0)))
                                         (let ((_target13036_
                                                (gx#genident__0)))
                                           (let ((_first13038_
                                                  (if (null? _clauses13030_)
                                                      _E13034_
                                                      (car _clause-ids13032_))))
                                             (let ()
                                               (gx#stx-wrap-source
                                                (gx#core-list
                                                 'let-values
                                                 (cons (cons (cons _E13034_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (gx#core-list
                            'lambda%
                            (cons _target13036_ '())
                            (gx#core-list
                             'raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _target13036_))
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_generate-body12973_
                                                  (_generate-bindings12972_
                                                   _target13036_
                                                   _ids13028_
                                                   _clauses13030_
                                                   _clause-ids13032_
                                                   _E13034_)
                                                  (cons _first13038_
                                                        (cons _expr13014_
                                                              '()))))
                                                (gx#stx-source
                                                 _stx12967_)))))))))))
                         (_E1297912994_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E1297912994_)))))
                                           (_E1297912994_))))
                                   (_E1297912994_)))))
                        (let () (_E1297813041_))))))))))))
    (begin
      (define gx#macro-expand-syntax-case__0
        (lambda (_stx13669_)
          (let ((_identifier=?13671_ 'free-identifier=?))
            (let ((_unwrap-e13673_ 'syntax-e))
              (let ((_wrap-e13675_ 'quote-syntax))
                (gx#macro-expand-syntax-case__opt-lambda12965
                 _stx13669_
                 _identifier=?13671_
                 _unwrap-e13673_
                 _wrap-e13675_))))))
      (define gx#macro-expand-syntax-case__1
        (lambda (_stx13677_ _identifier=?13678_)
          (let ((_unwrap-e13680_ 'syntax-e))
            (let ((_wrap-e13682_ 'quote-syntax))
              (gx#macro-expand-syntax-case__opt-lambda12965
               _stx13677_
               _identifier=?13678_
               _unwrap-e13680_
               _wrap-e13682_)))))
      (define gx#macro-expand-syntax-case__2
        (lambda (_stx13684_ _identifier=?13685_ _unwrap-e13686_)
          (let ((_wrap-e13688_ 'quote-syntax))
            (gx#macro-expand-syntax-case__opt-lambda12965
             _stx13684_
             _identifier=?13685_
             _unwrap-e13686_
             _wrap-e13688_))))
      (define gx#macro-expand-syntax-case
        (lambda _g14116_
          (let ((_g14115_ (length _g14116_)))
            (cond ((fx= _g14115_ 1)
                   (apply gx#macro-expand-syntax-case__0 _g14116_))
                  ((fx= _g14115_ 2)
                   (apply gx#macro-expand-syntax-case__1 _g14116_))
                  ((fx= _g14115_ 3)
                   (apply gx#macro-expand-syntax-case__2 _g14116_))
                  ((fx= _g14115_ 4)
                   (apply gx#macro-expand-syntax-case__opt-lambda12965
                          _g14116_))
                  (else (error "No clause matching arguments" _g14116_))))))))
  (define gx#syntax-local-pattern?
    (lambda (_stx12964_)
      (if (gx#identifier? _stx12964_)
          (##structure-instance-of?
           (gx#syntax-local-e__opt-lambda3895 _stx12964_ false)
           'gx#syntax-pattern::t)
          '#f)))
  (define gx#syntax-check-splice-targets
    (lambda (_hd12922_ . _rest12923_)
      (let ((_len12925_ (length _hd12922_)))
        ((letrec ((_lp12927_
                   (lambda (_rest12929_)
                     (let ((_rest1293012938_ _rest12929_))
                       (let ((_E1293312942_
                              (lambda ()
                                (error '"No clause matching"
                                       _rest1293012938_))))
                         (let ((_else1293212946_ (lambda () '#!void)))
                           (let ((_K1293412952_
                                  (lambda (_rest12949_ _hd12950_)
                                    (if (fx= _len12925_ (length _hd12950_))
                                        (_lp12927_ _rest12949_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Splice length mismatch"
                                         _hd12950_)))))
                             (if (##pair? _rest1293012938_)
                                 (let ((_hd1293512955_
                                        (##car _rest1293012938_))
                                       (_tl1293612957_
                                        (##cdr _rest1293012938_)))
                                   (let ((_hd12960_ _hd1293512955_))
                                     (let ((_rest12962_ _tl1293612957_))
                                       (_K1293412952_ _rest12962_ _hd12960_))))
                                 (_else1293212946_)))))))))
           _lp12927_)
         _rest12923_))))
  (define gx#syntax-split-splice
    (lambda (_stx12880_ _n12881_)
      ((letrec ((_lp12883_
                 (lambda (_rest12885_ _r12886_)
                   (if (gx#stx-pair? _rest12885_)
                       (let ((_g1288712894_ (gx#syntax-e _rest12885_)))
                         (let ((_E1288912898_
                                (lambda ()
                                  (error '"No clause matching"
                                         _g1288712894_))))
                           (let ((_K1289012904_
                                  (lambda (_rest12901_ _hd12902_)
                                    (_lp12883_
                                     _rest12901_
                                     (cons _hd12902_ _r12886_)))))
                             (if (##pair? _g1288712894_)
                                 (let ((_hd1289112907_ (##car _g1288712894_))
                                       (_tl1289212909_ (##cdr _g1288712894_)))
                                   (let ((_hd12912_ _hd1289112907_))
                                     (let ((_rest12914_ _tl1289212909_))
                                       (_K1289012904_ _rest12914_ _hd12912_))))
                                 (_E1288912898_)))))
                       ((letrec ((_lp12916_
                                  (lambda (_n12918_ _l12919_ _r12920_)
                                    (if (null? _l12919_)
                                        (values _l12919_ _r12920_)
                                        (if (fxpositive? _n12918_)
                                            (_lp12916_
                                             (fx- _n12918_ '1)
                                             (cdr _l12919_)
                                             (cons (car _l12919_) _r12920_))
                                            (values (reverse _l12919_)
                                                    _r12920_))))))
                          _lp12916_)
                        _n12881_
                        _r12886_
                        _rest12885_)))))
         _lp12883_)
       _stx12880_
       '()))))
