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
    (lambda _$args14026_
      (apply make-struct-instance gx#syntax-pattern::t _$args14026_)))
  (define gx#syntax-pattern-id
    (make-struct-field-accessor gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth
    (make-struct-field-accessor gx#syntax-pattern::t '1))
  (define gx#syntax-pattern-id-set!
    (make-struct-field-mutator gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth-set!
    (make-struct-field-mutator gx#syntax-pattern::t '1))
  (define gx#syntax-pattern::apply-macro-expander
    (lambda (_self14023_ _stx14024_)
      (gx#raise-syntax-error
       '#f
       '"Identifier used out of context"
       _stx14024_)))
  (bind-method!
   gx#syntax-pattern::t
   'apply-macro-expander
   gx#syntax-pattern::apply-macro-expander
   '#f)
  (define gx#macro-expand-syntax
    (lambda (_stx13632_)
      (let ((_generate13634_
             (lambda (_e13861_)
               (let ((_BUG13863_
                      (lambda (_q14021_)
                        (error '"BUG: syntax; generate"
                               _stx13632_
                               _e13861_
                               _q14021_))))
                 (let ((_local-pattern-e13864_
                        (lambda (_pat14019_)
                          (gx#syntax-local-rewrap
                           (##structure-ref
                            _pat14019_
                            '2
                            gx#syntax-pattern::t
                            '#f)))))
                   (let ((_getvar13865_
                          (lambda (_q14016_ _vars14017_)
                            (assgetq _q14016_ _vars14017_ _BUG13863_))))
                     (let ((_getarg13866_
                            (lambda (_arg13982_ _vars13983_)
                              (let ((_arg1398413991_ _arg13982_))
                                (let ((_E1398613995_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _arg1398413991_))))
                                  (let ((_K1398714004_
                                         (lambda (_e13998_ _tag13999_)
                                           (let ((_$e14001_ _tag13999_))
                                             (if (eq? _$e14001_ 'ref)
                                                 (_getvar13865_
                                                  _e13998_
                                                  _vars13983_)
                                                 (if (eq? _$e14001_ 'pattern)
                                                     (_local-pattern-e13864_
                                                      _e13998_)
                                                     (_BUG13863_
                                                      _arg13982_)))))))
                                    (if (##pair? _arg1398413991_)
                                        (let ((_hd1398814007_
                                               (##car _arg1398413991_))
                                              (_tl1398914009_
                                               (##cdr _arg1398413991_)))
                                          (let ((_tag14012_ _hd1398814007_))
                                            (let ((_e14014_ _tl1398914009_))
                                              (_K1398714004_
                                               _e14014_
                                               _tag14012_))))
                                        (_E1398613995_))))))))
                       ((letrec ((_recur13868_
                                  (lambda (_e13870_ _vars13871_)
                                    (let ((_e1387213879_ _e13870_))
                                      (let ((_E1387413883_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _e1387213879_))))
                                        (let ((_K1387513970_
                                               (lambda (_body13886_ _tag13887_)
                                                 (let ((_$e13889_ _tag13887_))
                                                   (if (eq? _$e13889_ 'datum)
                                                       (gx#core-list
                                                        'quote
                                                        _body13886_)
                                                       (if (eq? _$e13889_
                                                                'term)
                                                           (gx#core-list
                                                            'datum->syntax
                                                            '#f
                                                            (gx#core-list
                                                             'quote
                                                             _body13886_))
                                                           (if (eq? _$e13889_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'pattern)
                       (_local-pattern-e13864_ _body13886_)
                       (if (eq? _$e13889_ 'ref)
                           (_getvar13865_ _body13886_ _vars13871_)
                           (if (eq? _$e13889_ 'cons)
                               (gx#core-list
                                'cons
                                (_recur13868_ (car _body13886_) _vars13871_)
                                (_recur13868_ (cdr _body13886_) _vars13871_))
                               (if (eq? _$e13889_ 'vector)
                                   (gx#core-list
                                    'list->vector
                                    (_recur13868_ _body13886_ _vars13871_))
                                   (if (eq? _$e13889_ 'box)
                                       (gx#core-list
                                        'box
                                        (_recur13868_ _body13886_ _vars13871_))
                                       (if (eq? _$e13889_ 'splice)
                                           (let ((_body1389113902_
                                                  _body13886_))
                                             (let ((_E1389313906_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _body1389113902_))))
                                               (let ((_K1389413944_
                                                      (lambda (_args13909_
                                                               _iv13910_
                                                               _hd13911_
                                                               _depth13912_)
                                                        (let ((_targets13918_
                                                               (map (lambda (_g1391313915_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (_getarg13866_ _g1391313915_ _vars13871_))
                            _args13909_)))
                  (let ((_fold-in13920_ (gx#gentemps _args13909_)))
                    (let ((_fold-out13922_ (gx#genident__0)))
                      (let ((_lambda-args13924_
                             (foldr1 cons
                                     (cons _fold-out13922_ '())
                                     _fold-in13920_)))
                        (let ((_lambda-body13941_
                               (if (fx> _depth13912_ '1)
                                   (let ((_r-args13932_
                                          (map (lambda (_arg13926_)
                                                 (cons 'ref (cdr _arg13926_)))
                                               _args13909_))
                                         (_r-vars13933_
                                          (foldr (lambda (_arg13928_
                                                          _var13929_
                                                          _r13930_)
                                                   (cons (cons (cdr _arg13928_)
                                                               _var13929_)
                                                         _r13930_))
                                                 _vars13871_
                                                 _args13909_
                                                 _fold-in13920_)))
                                     (_recur13868_
                                      (cons* 'splice
                                             (fx- _depth13912_ '1)
                                             _hd13911_
                                             (cons 'var _fold-out13922_)
                                             _r-args13932_)
                                      _r-vars13933_))
                                   (let ((_hd-vars13939_
                                          (foldr (lambda (_arg13935_
                                                          _var13936_
                                                          _r13937_)
                                                   (cons (cons (cdr _arg13935_)
                                                               _var13936_)
                                                         _r13937_))
                                                 _vars13871_
                                                 _args13909_
                                                 _fold-in13920_)))
                                     (gx#core-list
                                      'cons
                                      (_recur13868_ _hd13911_ _hd-vars13939_)
                                      _fold-out13922_)))))
                          (let ()
                            (gx#core-list
                             'begin
                             (if (fx> (length _targets13918_) '1)
                                 (gx#core-cons*
                                  'syntax-check-splice-targets
                                  _targets13918_)
                                 '#!void)
                             (gx#core-cons*
                              'foldr
                              (gx#core-list
                               'lambda%
                               _lambda-args13924_
                               _lambda-body13941_)
                              (_recur13868_ _iv13910_ _vars13871_)
                              _targets13918_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (##pair? _body1389113902_)
                                                     (let ((_hd1389513947_
                                                            (##car _body1389113902_))
                                                           (_tl1389613949_
                                                            (##cdr _body1389113902_)))
                                                       (let ((_depth13952_
                                                              _hd1389513947_))
                                                         (if (##pair? _tl1389613949_)
                                                             (let ((_hd1389713954_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##car _tl1389613949_))
                           (_tl1389813956_ (##cdr _tl1389613949_)))
                       (let ((_hd13959_ _hd1389713954_))
                         (if (##pair? _tl1389813956_)
                             (let ((_hd1389913961_ (##car _tl1389813956_))
                                   (_tl1390013963_ (##cdr _tl1389813956_)))
                               (let ((_iv13966_ _hd1389913961_))
                                 (let ((_args13968_ _tl1390013963_))
                                   (_K1389413944_
                                    _args13968_
                                    _iv13966_
                                    _hd13959_
                                    _depth13952_))))
                             (_E1389313906_))))
                     (_E1389313906_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E1389313906_)))))
                                           (if (eq? _$e13889_ 'var)
                                               _body13886_
                                               (_BUG13863_
                                                _e13870_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _e1387213879_)
                                              (let ((_hd1387613973_
                                                     (##car _e1387213879_))
                                                    (_tl1387713975_
                                                     (##cdr _e1387213879_)))
                                                (let ((_tag13978_
                                                       _hd1387613973_))
                                                  (let ((_body13980_
                                                         _tl1387713975_))
                                                    (_K1387513970_
                                                     _body13980_
                                                     _tag13978_))))
                                              (_E1387413883_))))))))
                          _recur13868_)
                        _e13861_
                        '()))))))))
        (let ((_parse13635_
               (lambda (_e13676_)
                 (let ((_make-cons13678_
                        (lambda (_hd13853_ _tl13854_)
                          (let ((_g14038_ _hd13853_) (_g14040_ _tl13854_))
                            (begin
                              (let ((_g14039_ (values-count _g14038_)))
                                (if (not (fx= _g14039_ 2))
                                    (error "Context expects 2 values"
                                           _g14039_)))
                              (let ((_g14041_ (values-count _g14040_)))
                                (if (not (fx= _g14041_ 2))
                                    (error "Context expects 2 values"
                                           _g14041_)))
                              (let ((_hd-e13856_ (values-ref _g14038_ 0))
                                    (_hd-vars13857_ (values-ref _g14038_ 1)))
                                (let ((_tl-e13858_ (values-ref _g14040_ 0))
                                      (_tl-vars13859_ (values-ref _g14040_ 1)))
                                  (values (cons* 'cons _hd-e13856_ _tl-e13858_)
                                          (append _hd-vars13857_
                                                  _tl-vars13859_)))))))))
                   (let ((_make-splice13679_
                          (lambda (_where13792_
                                   _depth13793_
                                   _hd13794_
                                   _tl13795_)
                            (let ((_g14034_ _hd13794_) (_g14036_ _tl13795_))
                              (begin
                                (let ((_g14035_ (values-count _g14034_)))
                                  (if (not (fx= _g14035_ 2))
                                      (error "Context expects 2 values"
                                             _g14035_)))
                                (let ((_g14037_ (values-count _g14036_)))
                                  (if (not (fx= _g14037_ 2))
                                      (error "Context expects 2 values"
                                             _g14037_)))
                                (let ((_hd-e13797_ (values-ref _g14034_ 0))
                                      (_hd-vars13798_ (values-ref _g14034_ 1)))
                                  (let ((_tl-e13799_ (values-ref _g14036_ 0))
                                        (_tl-vars13800_
                                         (values-ref _g14036_ 1)))
                                    ((letrec ((_lp13802_
                                               (lambda (_rest13804_
                                                        _targets13805_
                                                        _vars13806_)
                                                 (let ((_rest1380713817_
                                                        _rest13804_))
                                                   (let ((_E1381013821_
                                                          (lambda ()
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _rest1380713817_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_else1380913825_
                                                            (lambda ()
                                                              (if (null? _targets13805_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Misplaced ellipsis"
                           _stx13632_
                           _where13792_)
                          (values (cons* 'splice
                                         _depth13793_
                                         _hd-e13797_
                                         _tl-e13799_
                                         _targets13805_)
                                  _vars13806_)))))
               (let ((_K1381113834_
                      (lambda (_rest13828_ _hd-pat13829_ _hd-depth*13830_)
                        (let ((_hd-depth13832_
                               (fx- _hd-depth*13830_ _depth13793_)))
                          (if (fxpositive? _hd-depth13832_)
                              (_lp13802_
                               _rest13828_
                               (cons (cons 'ref _hd-pat13829_) _targets13805_)
                               (cons (cons _hd-depth13832_ _hd-pat13829_)
                                     _vars13806_))
                              (if (fxzero? _hd-depth13832_)
                                  (_lp13802_
                                   _rest13828_
                                   (cons (cons 'pattern _hd-pat13829_)
                                         _targets13805_)
                                   _vars13806_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Too many ellipses"
                                   _stx13632_
                                   _where13792_)))))))
                 (if (##pair? _rest1380713817_)
                     (let ((_hd1381213837_ (##car _rest1380713817_))
                           (_tl1381313839_ (##cdr _rest1380713817_)))
                       (if (##pair? _hd1381213837_)
                           (let ((_hd1381413842_ (##car _hd1381213837_))
                                 (_tl1381513844_ (##cdr _hd1381213837_)))
                             (let ((_hd-depth*13847_ _hd1381413842_))
                               (let ((_hd-pat13849_ _tl1381513844_))
                                 (let ((_rest13851_ _tl1381313839_))
                                   (_K1381113834_
                                    _rest13851_
                                    _hd-pat13849_
                                    _hd-depth*13847_)))))
                           (_else1380913825_)))
                     (_else1380913825_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _lp13802_)
                                     _hd-vars13798_
                                     '()
                                     _tl-vars13800_))))))))
                     (letrec ((_recur13680_
                               (lambda (_e13685_ _is-e?13686_)
                                 (if (_is-e?13686_ _e13685_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Mislpaced ellipsis"
                                      _stx13632_)
                                     (if (gx#syntax-local-pattern? _e13685_)
                                         (let ((_pat13688_
                                                (gx#syntax-local-e__0
                                                 _e13685_)))
                                           (let ((_depth13690_
                                                  (##structure-ref
                                                   _pat13688_
                                                   '3
                                                   gx#syntax-pattern::t
                                                   '#f)))
                                             (let ()
                                               (if (fxpositive? _depth13690_)
                                                   (values (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pat13688_)
                   (cons (cons _depth13690_ _pat13688_) '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (values (cons 'pattern
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pat13688_)
                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (if (gx#identifier? _e13685_)
                                             (values (cons 'term _e13685_) '())
                                             (if (gx#stx-pair? _e13685_)
                                                 (let ((_e1369213699_
                                                        _e13685_))
                                                   (let ((_E1369413703_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _e1369213699_))))
                                                     (let ((_E1369313782_
                                                            (lambda ()
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e1369213699_)
                          (let ((_e1369513707_ (gx#syntax-e _e1369213699_)))
                            (let ((_hd1369613710_ (##car _e1369513707_))
                                  (_tl1369713712_ (##cdr _e1369513707_)))
                              (let ((_hd13715_ _hd1369613710_))
                                (let ((_rest13717_ _tl1369713712_))
                                  (if '#t
                                      (if (_is-e?13686_ _hd13715_)
                                          (let ((_e1371813725_ _rest13717_))
                                            (let ((_E1372013729_
                                                   (lambda ()
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad ellipsis syntax"
                                                      _stx13632_
                                                      _e13685_))))
                                              (let ((_E1371913743_
                                                     (lambda ()
                                                       (if (gx#stx-pair?
                                                            _e1371813725_)
                                                           (let ((_e1372113733_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _e1371813725_)))
                     (let ((_hd1372213736_ (##car _e1372113733_))
                           (_tl1372313738_ (##cdr _e1372113733_)))
                       (let ((_rest13741_ _hd1372213736_))
                         (if (gx#stx-null? _tl1372313738_)
                             (if '#t
                                 (_recur13680_ _rest13741_ false)
                                 (_E1372013729_))
                             (_E1372013729_)))))
                   (_E1372013729_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let () (_E1371913743_)))))
                                          ((letrec ((_lp13747_
                                                     (lambda (_rest13749_
                                                              _depth13750_)
                                                       (let ((_e1375113758_
                                                              _rest13749_))
                                                         (let ((_E1375313762_
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (fxpositive? _depth13750_)
                              (_make-splice13679_
                               _e13685_
                               _depth13750_
                               (_recur13680_ _hd13715_ _is-e?13686_)
                               (_recur13680_ _rest13749_ _is-e?13686_))
                              (_make-cons13678_
                               (_recur13680_ _hd13715_ _is-e?13686_)
                               (_recur13680_ _rest13749_ _is-e?13686_))))))
                   (let ((_E1375213778_
                          (lambda ()
                            (if (gx#stx-pair? _e1375113758_)
                                (let ((_e1375413766_
                                       (gx#syntax-e _e1375113758_)))
                                  (let ((_hd1375513769_ (##car _e1375413766_))
                                        (_tl1375613771_ (##cdr _e1375413766_)))
                                    (let ((_rest-hd13774_ _hd1375513769_))
                                      (let ((_rest-tl13776_ _tl1375613771_))
                                        (if '#t
                                            (if (_is-e?13686_ _rest-hd13774_)
                                                (_lp13747_
                                                 _rest-tl13776_
                                                 (fx+ _depth13750_ '1))
                                                (if (fxpositive? _depth13750_)
                                                    (_make-splice13679_
                                                     _e13685_
                                                     _depth13750_
                                                     (_recur13680_
                                                      _hd13715_
                                                      _is-e?13686_)
                                                     (_recur13680_
                                                      _rest13749_
                                                      _is-e?13686_))
                                                    (_make-cons13678_
                                                     (_recur13680_
                                                      _hd13715_
                                                      _is-e?13686_)
                                                     (_recur13680_
                                                      _rest13749_
                                                      _is-e?13686_))))
                                            (_E1375313762_))))))
                                (_E1375313762_)))))
                     (let () (_E1375213778_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _lp13747_)
                                           _rest13717_
                                           '0))
                                      (_E1369413703_))))))
                          (_E1369413703_)))))
               (let () (_E1369313782_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-vector? _e13685_)
                                                     (let ((_g14028_
                                                            (_recur13680_
                                                             (vector->list
                                                              (gx#stx-unwrap__0
                                                               _e13685_))
                                                             _is-e?13686_)))
                                                       (begin
                                                         (let ((_g14029_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g14028_)))
                   (if (not (fx= _g14029_ 2))
                       (error "Context expects 2 values" _g14029_)))
                 (let ((_e13786_ (values-ref _g14028_ 0))
                       (_vars13787_ (values-ref _g14028_ 1)))
                   (values (cons 'vector _e13786_) _vars13787_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#stx-box? _e13685_)
                                                         (let ((_g14030_
                                                                (_recur13680_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (unbox (gx#stx-unwrap__0 _e13685_))
                         _is-e?13686_)))
                   (begin
                     (let ((_g14031_ (values-count _g14030_)))
                       (if (not (fx= _g14031_ 2))
                           (error "Context expects 2 values" _g14031_)))
                     (let ((_e13789_ (values-ref _g14030_ 0))
                           (_vars13790_ (values-ref _g14030_ 1)))
                       (values (cons 'box _e13789_) _vars13790_))))
                 (values (cons 'datum _e13685_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                       (let ((_g14032_ (_recur13680_ _e13676_ gx#ellipsis?)))
                         (begin
                           (let ((_g14033_ (values-count _g14032_)))
                             (if (not (fx= _g14033_ 2))
                                 (error "Context expects 2 values" _g14033_)))
                           (let ((_tree13682_ (values-ref _g14032_ 0))
                                 (_vars13683_ (values-ref _g14032_ 1)))
                             (if (null? _vars13683_)
                                 _tree13682_
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Missing ellipsis"
                                  _stx13632_
                                  _vars13683_)))))))))))
          (let ((_e1363613646_ _stx13632_))
            (let ((_E1363813650_
                   (lambda ()
                     (gx#raise-syntax-error '#f '"Bad syntax" _stx13632_))))
              (let ((_E1363713672_
                     (lambda ()
                       (if (gx#stx-pair? _e1363613646_)
                           (let ((_e1363913654_ (gx#syntax-e _e1363613646_)))
                             (let ((_hd1364013657_ (##car _e1363913654_))
                                   (_tl1364113659_ (##cdr _e1363913654_)))
                               (if (gx#stx-pair? _tl1364113659_)
                                   (let ((_e1364213662_
                                          (gx#syntax-e _tl1364113659_)))
                                     (let ((_hd1364313665_
                                            (##car _e1364213662_))
                                           (_tl1364413667_
                                            (##cdr _e1364213662_)))
                                       (let ((_form13670_ _hd1364313665_))
                                         (if (gx#stx-null? _tl1364413667_)
                                             (if '#t
                                                 (gx#stx-wrap-source
                                                  (_generate13634_
                                                   (_parse13635_ _form13670_))
                                                  (gx#stx-source _stx13632_))
                                                 (_E1363813650_))
                                             (_E1363813650_)))))
                                   (_E1363813650_))))
                           (_E1363813650_)))))
                (let () (_E1363713672_)))))))))
  (begin
    (define gx#macro-expand-syntax-case__opt-lambda12902
      (lambda (_stx12904_ _identifier=?12905_ _unwrap-e12906_ _wrap-e12907_)
        (let ((_generate-body12910_
               (lambda (_bindings13454_ _body13455_)
                 ((letrec ((_recur13457_
                            (lambda (_rest13459_)
                              (let ((_rest1346013468_ _rest13459_))
                                (let ((_E1346313472_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _rest1346013468_))))
                                  (let ((_else1346213476_
                                         (lambda () _body13455_)))
                                    (let ((_K1346413482_
                                           (lambda (_rest13479_ _hd13480_)
                                             (gx#core-list
                                              'let-values
                                              (cons _hd13480_ '())
                                              (_recur13457_ _rest13479_)))))
                                      (if (##pair? _rest1346013468_)
                                          (let ((_hd1346513485_
                                                 (##car _rest1346013468_))
                                                (_tl1346613487_
                                                 (##cdr _rest1346013468_)))
                                            (let ((_hd13490_ _hd1346513485_))
                                              (let ((_rest13492_
                                                     _tl1346613487_))
                                                (_K1346413482_
                                                 _rest13492_
                                                 _hd13490_))))
                                          (_else1346213476_)))))))))
                    _recur13457_)
                  _bindings13454_))))
          (let ((_generate-match12912_
                 (lambda (_where13076_
                          _target13077_
                          _hd13078_
                          _mvars13079_
                          _K13080_
                          _E13081_)
                   (let ((_BUG13083_
                          (lambda (_q13315_)
                            (error '"BUG: syntax-case; generate"
                                   _stx12904_
                                   _hd13078_
                                   _q13315_))))
                     (let ((_splice-rlen13085_
                            (lambda (_e13131_)
                              ((letrec ((_lp13133_
                                         (lambda (_e13135_ _n13136_)
                                           (let ((_e1313713144_ _e13135_))
                                             (let ((_E1313913148_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _e1313713144_))))
                                               (let ((_K1314013157_
                                                      (lambda (_body13151_
                                                               _tag13152_)
                                                        (let ((_$e13154_
                                                               _tag13152_))
                                                          (if (eq? _$e13154_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'splice)
                      (gx#raise-syntax-error
                       '#f
                       '"Ambiguous pattern"
                       _stx12904_
                       _where13076_)
                      (if (eq? _$e13154_ 'cons)
                          (_lp13133_ (cdr _body13151_) (fx+ _n13136_ '1))
                          _n13136_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (##pair? _e1313713144_)
                                                     (let ((_hd1314113160_
                                                            (##car _e1313713144_))
                                                           (_tl1314213162_
                                                            (##cdr _e1313713144_)))
                                                       (let ((_tag13165_
                                                              _hd1314113160_))
                                                         (let ((_body13167_
                                                                _tl1314213162_))
                                                           (_K1314013157_
                                                            _body13167_
                                                            _tag13165_))))
                                                     (_E1313913148_))))))))
                                 _lp13133_)
                               _e13131_
                               '0))))
                       (let ((_splice-vars13086_
                              (lambda (_e13093_)
                                ((letrec ((_recur13095_
                                           (lambda (_e13097_ _vars13098_)
                                             (let ((_e1309913106_ _e13097_))
                                               (let ((_E1310113110_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _e1309913106_))))
                                                 (let ((_K1310213119_
                                                        (lambda (_body13113_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tag13114_)
                  (let ((_$e13116_ _tag13114_))
                    (if (eq? _$e13116_ 'var)
                        (cons _body13113_ _vars13098_)
                        (if (memq _$e13116_ '(cons splice))
                            (_recur13095_
                             (cdr _body13113_)
                             (_recur13095_ (car _body13113_) _vars13098_))
                            (if (memq _$e13116_ '(vector box))
                                (_recur13095_ _body13113_ _vars13098_)
                                _vars13098_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (##pair? _e1309913106_)
                                                       (let ((_hd1310313122_
                                                              (##car _e1309913106_))
                                                             (_tl1310413124_
                                                              (##cdr _e1309913106_)))
                                                         (let ((_tag13127_
                                                                _hd1310313122_))
                                                           (let ((_body13129_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1310413124_))
                     (_K1310213119_ _body13129_ _tag13127_))))
               (_E1310113110_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _recur13095_)
                                 _e13093_
                                 '()))))
                         (let ((_make-body13087_
                                (lambda (_vars13089_)
                                  (cons _K13080_
                                        (map (lambda (_mvar13091_)
                                               (assgetq (car _mvar13091_)
                                                        _vars13089_
                                                        _BUG13083_))
                                             _mvars13079_)))))
                           (letrec ((_recur13084_
                                     (lambda (_e13169_
                                              _vars13170_
                                              _target13171_
                                              _E13172_
                                              _k13173_)
                                       (let ((_e1317413181_ _e13169_))
                                         (let ((_E1317613185_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _e1317413181_))))
                                           (let ((_K1317713303_
                                                  (lambda (_body13188_
                                                           _tag13189_)
                                                    (let ((_$e13191_
                                                           _tag13189_))
                                                      (if (eq? _$e13191_ 'any)
                                                          (_k13173_
                                                           _vars13170_)
                                                          (if (eq? _$e13191_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'id)
                      (gx#core-list
                       'if
                       (gx#core-list 'identifier? _target13171_)
                       (gx#core-list
                        'if
                        (gx#core-list
                         _identifier=?12905_
                         (gx#core-list _wrap-e12907_ _body13188_)
                         _target13171_)
                        (_k13173_ _vars13170_)
                        _E13172_)
                       _E13172_)
                      (if (eq? _$e13191_ 'var)
                          (_k13173_
                           (cons (cons _body13188_ _target13171_) _vars13170_))
                          (if (eq? _$e13191_ 'cons)
                              (let ((_$e13194_ (gx#genident__1 'e))
                                    (_$hd13195_ (gx#genident__1 'hd))
                                    (_$tl13196_ (gx#genident__1 'tl)))
                                (gx#core-list
                                 'if
                                 (gx#core-list 'stx-pair? _target13171_)
                                 (gx#core-list
                                  'let-values
                                  (cons (cons (cons _$e13194_ '())
                                              (cons (gx#core-list
                                                     _unwrap-e12906_
                                                     _target13171_)
                                                    '()))
                                        '())
                                  (gx#core-list
                                   'let-values
                                   (cons (cons (cons _$hd13195_ '())
                                               (cons (gx#core-list
                                                      '##car
                                                      _$e13194_)
                                                     '()))
                                         (cons (cons (cons _$tl13196_ '())
                                                     (cons (gx#core-list
                                                            '##cdr
                                                            _$e13194_)
                                                           '()))
                                               '()))
                                   (let ((_body1319713204_ _body13188_))
                                     (let ((_E1319913208_
                                            (lambda ()
                                              (error '"No clause matching"
                                                     _body1319713204_))))
                                       (let ((_K1320013216_
                                              (lambda (_tl13211_ _hd13212_)
                                                (_recur13084_
                                                 _hd13212_
                                                 _vars13170_
                                                 _$hd13195_
                                                 _E13172_
                                                 (lambda (_vars13214_)
                                                   (_recur13084_
                                                    _tl13211_
                                                    _vars13214_
                                                    _$tl13196_
                                                    _E13172_
                                                    _k13173_))))))
                                         (if (##pair? _body1319713204_)
                                             (let ((_hd1320113219_
                                                    (##car _body1319713204_))
                                                   (_tl1320213221_
                                                    (##cdr _body1319713204_)))
                                               (let ((_hd13224_
                                                      _hd1320113219_))
                                                 (let ((_tl13226_
                                                        _tl1320213221_))
                                                   (_K1320013216_
                                                    _tl13226_
                                                    _hd13224_))))
                                             (_E1319913208_)))))))
                                 _E13172_))
                              (if (eq? _$e13191_ 'splice)
                                  (let ((_body1322713234_ _body13188_))
                                    (let ((_E1322913238_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _body1322713234_))))
                                      (let ((_K1323013287_
                                             (lambda (_tl13241_ _hd13242_)
                                               (let ((_rlen13244_
                                                      (_splice-rlen13085_
                                                       _tl13241_)))
                                                 (let ((_$target13246_
                                                        (gx#genident__1
                                                         'target)))
                                                   (let ((_$hd13248_
                                                          (gx#genident__1
                                                           'hd)))
                                                     (let ((_$tl13250_
                                                            (gx#genident__1
                                                             'tl)))
                                                       (let ((_$lp13252_
                                                              (gx#genident__1
                                                               'loop)))
                                                         (let ((_$lp-e13254_
                                                                (gx#genident__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'e)))
                   (let ((_$lp-hd13256_ (gx#genident__1 'lp-hd)))
                     (let ((_$lp-tl13258_ (gx#genident__1 'lp-tl)))
                       (let ((_svars13260_ (_splice-vars13086_ _hd13242_)))
                         (let ((_lvars13262_ (gx#gentemps _svars13260_)))
                           (let ((_tlvars13264_ (gx#gentemps _svars13260_)))
                             (let ((_linit13268_
                                    (map (lambda (_var13266_)
                                           (gx#core-list 'quote '()))
                                         _lvars13262_)))
                               (let ()
                                 (let ((_make-loop13271_
                                        (lambda (_vars13273_)
                                          (gx#core-list
                                           'letrec-values
                                           (cons (cons (cons _$lp13252_ '())
                                                       (cons (gx#core-list
                                                              'lambda%
                                                              (cons _$hd13248_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _lvars13262_)
                      (gx#core-list
                       'if
                       (gx#core-list 'stx-pair? _$hd13248_)
                       (gx#core-list
                        'let-values
                        (cons (cons (cons _$lp-e13254_ '())
                                    (cons (gx#core-list
                                           _unwrap-e12906_
                                           _$hd13248_)
                                          '()))
                              '())
                        (gx#core-list
                         'let-values
                         (cons (cons (cons _$lp-hd13256_ '())
                                     (cons (gx#core-list '##car _$lp-e13254_)
                                           '()))
                               (cons (cons (cons _$lp-tl13258_ '())
                                           (cons (gx#core-list
                                                  '##cdr
                                                  _$lp-e13254_)
                                                 '()))
                                     '()))
                         (_recur13084_
                          _hd13242_
                          '()
                          _$lp-hd13256_
                          _E13172_
                          (lambda (_hdvars13275_)
                            (cons* _$lp13252_
                                   _$lp-tl13258_
                                   (map (lambda (_svar13277_ _lvar13278_)
                                          (gx#core-list
                                           'cons
                                           (assgetq _svar13277_
                                                    _hdvars13275_
                                                    _BUG13083_)
                                           _lvar13278_))
                                        _svars13260_
                                        _lvars13262_))))))
                       (gx#core-list
                        'let-values
                        (map (lambda (_lvar13280_ _tlvar13281_)
                               (cons (cons _tlvar13281_ '())
                                     (cons (gx#core-list 'reverse _lvar13280_)
                                           '())))
                             _lvars13262_
                             _tlvars13264_)
                        (_k13173_
                         (foldl (lambda (_svar13283_ _tlvar13284_ _r13285_)
                                  (cons (cons _svar13283_ _tlvar13284_)
                                        _r13285_))
                                _vars13273_
                                _svars13260_
                                _tlvars13264_)))))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons* _$lp13252_
                                                  _$target13246_
                                                  _linit13268_)))))
                                   (gx#core-list
                                    'if
                                    (gx#core-list
                                     'stx-pair/null?
                                     _target13171_)
                                    (gx#core-list
                                     'if
                                     (gx#core-list
                                      'fx>=
                                      (gx#core-list 'stx-length _target13171_)
                                      _rlen13244_)
                                     (gx#core-list
                                      'let-values
                                      (cons (cons (cons _$target13246_
                                                        (cons _$tl13250_ '()))
                                                  (cons (gx#core-list
                                                         'syntax-split-splice
                                                         _target13171_
                                                         _rlen13244_)
                                                        '()))
                                            '())
                                      (_recur13084_
                                       _tl13241_
                                       _vars13170_
                                       _$tl13250_
                                       _E13172_
                                       _make-loop13271_))
                                     _E13172_)
                                    _E13172_))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (##pair? _body1322713234_)
                                            (let ((_hd1323113290_
                                                   (##car _body1322713234_))
                                                  (_tl1323213292_
                                                   (##cdr _body1322713234_)))
                                              (let ((_hd13295_ _hd1323113290_))
                                                (let ((_tl13297_
                                                       _tl1323213292_))
                                                  (_K1323013287_
                                                   _tl13297_
                                                   _hd13295_))))
                                            (_E1322913238_)))))
                                  (if (eq? _$e13191_ 'null)
                                      (gx#core-list
                                       'if
                                       (gx#core-list 'stx-null? _target13171_)
                                       (_k13173_ _vars13170_)
                                       _E13172_)
                                      (if (eq? _$e13191_ 'vector)
                                          (let ((_$e13299_
                                                 (gx#genident__1 'e)))
                                            (gx#core-list
                                             'if
                                             (gx#core-list
                                              'stx-vector?
                                              _target13171_)
                                             (gx#core-list
                                              'let-values
                                              (cons (cons (cons _$e13299_ '())
                                                          (cons (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'vector->list
                         (gx#core-list _unwrap-e12906_ _target13171_))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (_recur13084_
                                               _body13188_
                                               _vars13170_
                                               _$e13299_
                                               _E13172_
                                               _k13173_))
                                             _E13172_))
                                          (if (eq? _$e13191_ 'box)
                                              (let ((_$e13301_
                                                     (gx#genident__1 'e)))
                                                (gx#core-list
                                                 'if
                                                 (gx#core-list
                                                  'stx-box?
                                                  _target13171_)
                                                 (gx#core-list
                                                  'let-values
                                                  (cons (cons (cons _$e13301_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (gx#core-list
                             'unbox
                             (gx#core-list _unwrap-e12906_ _target13171_))
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_recur13084_
                                                   _body13188_
                                                   _vars13170_
                                                   _$e13301_
                                                   _E13172_
                                                   _k13173_))
                                                 _E13172_))
                                              (if (eq? _$e13191_ 'datum)
                                                  (gx#core-list
                                                   'if
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _target13171_)
                                                   (gx#core-list
                                                    'if
                                                    (gx#core-list
                                                     'equal?
                                                     (gx#core-list
                                                      'stx-e
                                                      _target13171_)
                                                     _body13188_)
                                                    (_k13173_ _vars13170_)
                                                    _E13172_)
                                                   _E13172_)
                                                  (_BUG13083_
                                                   _e13169_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _e1317413181_)
                                                 (let ((_hd1317813306_
                                                        (##car _e1317413181_))
                                                       (_tl1317913308_
                                                        (##cdr _e1317413181_)))
                                                   (let ((_tag13311_
                                                          _hd1317813306_))
                                                     (let ((_body13313_
                                                            _tl1317913308_))
                                                       (_K1317713303_
                                                        _body13313_
                                                        _tag13311_))))
                                                 (_E1317613185_))))))))
                             (_recur13084_
                              _hd13078_
                              '()
                              _target13077_
                              _E13081_
                              _make-body13087_)))))))))
            (let ((_parse-clause12913_
                   (lambda (_hd12982_ _ids12983_)
                     ((letrec ((_recur12985_
                                (lambda (_e12987_ _vars12988_ _depth12989_)
                                  (if (gx#identifier? _e12987_)
                                      (if (gx#underscore? _e12987_)
                                          (values '(any) _vars12988_)
                                          (if (gx#ellipsis? _e12987_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Misplaced ellipsis"
                                               _stx12904_
                                               _hd12982_)
                                              (if (find (lambda (_id12991_)
                                                          (gx#bound-identifier=?
                                                           _e12987_
                                                           _id12991_))
                                                        _ids12983_)
                                                  (values (cons 'id _e12987_)
                                                          _vars12988_)
                                                  (if (find (lambda (_var12993_)
                                                              (gx#bound-identifier=?
                                                               _e12987_
                                                               (car _var12993_)))
                                                            _vars12988_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Duplicate pattern variable"
                                                       _stx12904_
                                                       _e12987_)
                                                      (values (cons 'var
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _e12987_)
                      (cons (cons _e12987_ _depth12989_) _vars12988_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-pair? _e12987_)
                                          (let ((_e1299413001_ _e12987_))
                                            (let ((_E1299613005_
                                                   (lambda ()
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _e1299413001_))))
                                              (let ((_E1299513066_
                                                     (lambda ()
                                                       (if (gx#stx-pair?
                                                            _e1299413001_)
                                                           (let ((_e1299713009_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _e1299413001_)))
                     (let ((_hd1299813012_ (##car _e1299713009_))
                           (_tl1299913014_ (##cdr _e1299713009_)))
                       (let ((_hd13017_ _hd1299813012_))
                         (let ((_rest13019_ _tl1299913014_))
                           (if '#t
                               (let ((_make-pair13034_
                                      (lambda (_tag13021_ _hd13022_ _tl13023_)
                                        (let ((_hd-depth13025_
                                               (if (eq? _tag13021_ 'splice)
                                                   (fx+ _depth12989_ '1)
                                                   _depth12989_)))
                                          (let ((_g14044_
                                                 (_recur12985_
                                                  _hd13022_
                                                  _vars12988_
                                                  _hd-depth13025_)))
                                            (begin
                                              (let ((_g14045_
                                                     (values-count _g14044_)))
                                                (if (not (fx= _g14045_ 2))
                                                    (error "Context expects 2 values"
                                                           _g14045_)))
                                              (let ((_hd13027_
                                                     (values-ref _g14044_ 0))
                                                    (_vars13028_
                                                     (values-ref _g14044_ 1)))
                                                (let ((_g14046_
                                                       (_recur12985_
                                                        _tl13023_
                                                        _vars13028_
                                                        _depth12989_)))
                                                  (begin
                                                    (let ((_g14047_
                                                           (values-count
                                                            _g14046_)))
                                                      (if (not (fx= _g14047_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g14047_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_tl13030_
                                                           (values-ref
                                                            _g14046_
                                                            0))
                                                          (_vars13031_
                                                           (values-ref
                                                            _g14046_
                                                            1)))
                                                      (let ()
                                                        (values (cons* _tag13021_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd13027_
                               _tl13030_)
                        _vars13031_))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (let ((_e1303513042_ _rest13019_))
                                   (let ((_E1303713046_
                                          (lambda ()
                                            (_make-pair13034_
                                             'cons
                                             _hd13017_
                                             _rest13019_))))
                                     (let ((_E1303613062_
                                            (lambda ()
                                              (if (gx#stx-pair? _e1303513042_)
                                                  (let ((_e1303813050_
                                                         (gx#syntax-e
                                                          _e1303513042_)))
                                                    (let ((_hd1303913053_
                                                           (##car _e1303813050_))
                                                          (_tl1304013055_
                                                           (##cdr _e1303813050_)))
                                                      (let ((_rest-hd13058_
                                                             _hd1303913053_))
                                                        (let ((_rest-tl13060_
                                                               _tl1304013055_))
                                                          (if '#t
                                                              (if (gx#ellipsis?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _rest-hd13058_)
                          (_make-pair13034_ 'splice _hd13017_ _rest-tl13060_)
                          (_make-pair13034_ 'cons _hd13017_ _rest13019_))
                      (_E1303713046_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1303713046_)))))
                                       (let () (_E1303613062_))))))
                               (_E1299613005_))))))
                   (_E1299613005_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let () (_E1299513066_)))))
                                          (if (gx#stx-null? _e12987_)
                                              (values '(null) _vars12988_)
                                              (if (gx#stx-vector? _e12987_)
                                                  (let ((_g14048_
                                                         (_recur12985_
                                                          (vector->list
                                                           (gx#syntax-e
                                                            _e12987_))
                                                          _vars12988_
                                                          _depth12989_)))
                                                    (begin
                                                      (let ((_g14049_
                                                             (values-count
                                                              _g14048_)))
                                                        (if (not (fx= _g14049_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g14049_)))
              (let ((_e13070_ (values-ref _g14048_ 0))
                    (_vars13071_ (values-ref _g14048_ 1)))
                (values (cons 'vector _e13070_) _vars13071_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-box? _e12987_)
                                                      (let ((_g14050_
                                                             (_recur12985_
                                                              (unbox (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _e12987_))
                      _vars12988_
                      _depth12989_)))
                (begin
                  (let ((_g14051_ (values-count _g14050_)))
                    (if (not (fx= _g14051_ 2))
                        (error "Context expects 2 values" _g14051_)))
                  (let ((_e13073_ (values-ref _g14050_ 0))
                        (_vars13074_ (values-ref _g14050_ 1)))
                    (values (cons 'box _e13073_) _vars13074_))))
              (if (gx#stx-datum? _e12987_)
                  (values (cons 'datum (gx#stx-e _e12987_)) _vars12988_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad pattern"
                   _stx12904_
                   _e12987_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        _recur12985_)
                      _hd12982_
                      '()
                      '0))))
              (let ((_generate-clause12911_
                     (lambda (_target13317_ _ids13318_ _clause13319_ _E13320_)
                       (let ((_generate113322_
                              (lambda (_hd13409_ _fender13410_ _body13411_)
                                (let ((_g14042_
                                       (_parse-clause12913_
                                        _hd13409_
                                        _ids13318_)))
                                  (begin
                                    (let ((_g14043_ (values-count _g14042_)))
                                      (if (not (fx= _g14043_ 2))
                                          (error "Context expects 2 values"
                                                 _g14043_)))
                                    (let ((_e13413_ (values-ref _g14042_ 0))
                                          (_mvars13414_
                                           (values-ref _g14042_ 1)))
                                      (let ((_pvars13416_
                                             (map gx#syntax-local-rewrap
                                                  (gx#gentemps _mvars13414_))))
                                        (let ((_E13418_
                                               (cons _E13320_
                                                     (cons _target13317_
                                                           '()))))
                                          (let ((_K13451_
                                                 (gx#core-list
                                                  'lambda%
                                                  _pvars13416_
                                                  (gx#core-list
                                                   'let-syntax
                                                   (map (lambda (_mvar13420_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pvar13421_)
                  (let ((_mvar1342213429_ _mvar13420_))
                    (let ((_E1342413433_
                           (lambda ()
                             (error '"No clause matching" _mvar1342213429_))))
                      (let ((_K1342513439_
                             (lambda (_depth13436_ _id13437_)
                               (cons _id13437_
                                     (cons (gx#core-list
                                            'make-syntax-pattern
                                            (gx#core-list 'quote _id13437_)
                                            (gx#core-list 'quote _pvar13421_)
                                            _depth13436_)
                                           '())))))
                        (if (##pair? _mvar1342213429_)
                            (let ((_hd1342613442_ (##car _mvar1342213429_))
                                  (_tl1342713444_ (##cdr _mvar1342213429_)))
                              (let ((_id13447_ _hd1342613442_))
                                (let ((_depth13449_ _tl1342713444_))
                                  (_K1342513439_ _depth13449_ _id13447_))))
                            (_E1342413433_))))))
                _mvars13414_
                _pvars13416_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (eq? _fender13410_ '#t)
                                                       _body13411_
                                                       (gx#core-list
                                                        'if
                                                        _fender13410_
                                                        _body13411_
                                                        _E13418_))))))
                                            (let ()
                                              (_generate-match12912_
                                               _hd13409_
                                               _target13317_
                                               _e13413_
                                               _mvars13414_
                                               _K13451_
                                               _E13418_)))))))))))
                         (let ((_e1332313343_ _clause13319_))
                           (let ((_E1333213347_
                                  (lambda ()
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _e1332313343_))))
                             (let ((_E1332513381_
                                    (lambda ()
                                      (if (gx#stx-pair? _e1332313343_)
                                          (let ((_e1333313351_
                                                 (gx#syntax-e _e1332313343_)))
                                            (let ((_hd1333413354_
                                                   (##car _e1333313351_))
                                                  (_tl1333513356_
                                                   (##cdr _e1333313351_)))
                                              (let ((_hd13359_ _hd1333413354_))
                                                (if (gx#stx-pair?
                                                     _tl1333513356_)
                                                    (let ((_e1333613361_
                                                           (gx#syntax-e
                                                            _tl1333513356_)))
                                                      (let ((_hd1333713364_
                                                             (##car _e1333613361_))
                                                            (_tl1333813366_
                                                             (##cdr _e1333613361_)))
                                                        (let ((_fender13369_
                                                               _hd1333713364_))
                                                          (if (gx#stx-pair?
                                                               _tl1333813366_)
                                                              (let ((_e1333913371_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl1333813366_)))
                        (let ((_hd1334013374_ (##car _e1333913371_))
                              (_tl1334113376_ (##cdr _e1333913371_)))
                          (let ((_body13379_ _hd1334013374_))
                            (if (gx#stx-null? _tl1334113376_)
                                (if '#t
                                    (_generate113322_
                                     _hd13359_
                                     _fender13369_
                                     _body13379_)
                                    (_E1333213347_))
                                (_E1333213347_)))))
                      (_E1333213347_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1333213347_)))))
                                          (_E1333213347_)))))
                               (let ((_E1332413405_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1332313343_)
                                            (let ((_e1332613385_
                                                   (gx#syntax-e
                                                    _e1332313343_)))
                                              (let ((_hd1332713388_
                                                     (##car _e1332613385_))
                                                    (_tl1332813390_
                                                     (##cdr _e1332613385_)))
                                                (let ((_hd13393_
                                                       _hd1332713388_))
                                                  (if (gx#stx-pair?
                                                       _tl1332813390_)
                                                      (let ((_e1332913395_
                                                             (gx#syntax-e
                                                              _tl1332813390_)))
                                                        (let ((_hd1333013398_
                                                               (##car _e1332913395_))
                                                              (_tl1333113400_
                                                               (##cdr _e1332913395_)))
                                                          (let ((_body13403_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1333013398_))
                    (if (gx#stx-null? _tl1333113400_)
                        (if '#t
                            (_generate113322_ _hd13393_ '#t _body13403_)
                            (_E1332513381_))
                        (_E1332513381_)))))
              (_E1332513381_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1332513381_)))))
                                 (let () (_E1332413405_))))))))))
                (let ((_generate-bindings12909_
                       (lambda (_target13494_
                                _ids13495_
                                _clauses13496_
                                _clause-ids13497_
                                _E13498_)
                         (let ((_generate113500_
                                (lambda (_clause13599_
                                         _clause-id13600_
                                         _E13601_)
                                  (cons (cons _clause-id13600_ '())
                                        (cons (gx#core-list
                                               'lambda%
                                               (cons _target13494_ '())
                                               (_generate-clause12911_
                                                _target13494_
                                                _ids13495_
                                                _clause13599_
                                                _E13601_))
                                              '())))))
                           ((letrec ((_lp13502_
                                      (lambda (_rest13504_
                                               _rest-ids13505_
                                               _bindings13506_)
                                        (let ((_rest1350713515_ _rest13504_))
                                          (let ((_E1351013519_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _rest1350713515_))))
                                            (let ((_else1350913523_
                                                   (lambda ()
                                                     _bindings13506_)))
                                              (let ((_K1351113587_
                                                     (lambda (_rest13526_
                                                              _clause13527_)
                                                       (let ((_rest-ids1352813535_
                                                              _rest-ids13505_))
                                                         (let ((_E1353013539_
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (error '"No clause matching" _rest-ids1352813535_))))
                   (let ((_K1353113575_
                          (lambda (_rest-ids13542_ _clause-id13543_)
                            (let ((_rest-ids1354413552_ _rest-ids13542_))
                              (let ((_E1354713556_
                                     (lambda ()
                                       (error '"No clause matching"
                                              _rest-ids1354413552_))))
                                (let ((_else1354613560_
                                       (lambda ()
                                         (cons (_generate113500_
                                                _clause13527_
                                                _clause-id13543_
                                                _E13498_)
                                               _bindings13506_))))
                                  (let ((_K1354813565_
                                         (lambda (_next-clause-id13563_)
                                           (_lp13502_
                                            _rest13526_
                                            _rest-ids13542_
                                            (cons (_generate113500_
                                                   _clause13527_
                                                   _clause-id13543_
                                                   _next-clause-id13563_)
                                                  _bindings13506_)))))
                                    (if (##pair? _rest-ids1354413552_)
                                        (let ((_hd1354913568_
                                               (##car _rest-ids1354413552_))
                                              (_tl1355013570_
                                               (##cdr _rest-ids1354413552_)))
                                          (let ((_next-clause-id13573_
                                                 _hd1354913568_))
                                            (_K1354813565_
                                             _next-clause-id13573_)))
                                        (_else1354613560_)))))))))
                     (if (##pair? _rest-ids1352813535_)
                         (let ((_hd1353213578_ (##car _rest-ids1352813535_))
                               (_tl1353313580_ (##cdr _rest-ids1352813535_)))
                           (let ((_clause-id13583_ _hd1353213578_))
                             (let ((_rest-ids13585_ _tl1353313580_))
                               (_K1353113575_
                                _rest-ids13585_
                                _clause-id13583_))))
                         (_E1353013539_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (##pair? _rest1350713515_)
                                                    (let ((_hd1351213590_
                                                           (##car _rest1350713515_))
                                                          (_tl1351313592_
                                                           (##cdr _rest1350713515_)))
                                                      (let ((_clause13595_
                                                             _hd1351213590_))
                                                        (let ((_rest13597_
                                                               _tl1351313592_))
                                                          (_K1351113587_
                                                           _rest13597_
                                                           _clause13595_))))
                                                    (_else1350913523_)))))))))
                              _lp13502_)
                            _clauses13496_
                            _clause-ids13497_
                            '())))))
                  (let ((_e1291412927_ _stx12904_))
                    (let ((_E1291612931_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _e1291412927_))))
                      (let ((_E1291512978_
                             (lambda ()
                               (if (gx#stx-pair? _e1291412927_)
                                   (let ((_e1291712935_
                                          (gx#syntax-e _e1291412927_)))
                                     (let ((_hd1291812938_
                                            (##car _e1291712935_))
                                           (_tl1291912940_
                                            (##cdr _e1291712935_)))
                                       (if (gx#stx-pair? _tl1291912940_)
                                           (let ((_e1292012943_
                                                  (gx#syntax-e
                                                   _tl1291912940_)))
                                             (let ((_hd1292112946_
                                                    (##car _e1292012943_))
                                                   (_tl1292212948_
                                                    (##cdr _e1292012943_)))
                                               (let ((_expr12951_
                                                      _hd1292112946_))
                                                 (if (gx#stx-pair?
                                                      _tl1292212948_)
                                                     (let ((_e1292312953_
                                                            (gx#syntax-e
                                                             _tl1292212948_)))
                                                       (let ((_hd1292412956_
                                                              (##car _e1292312953_))
                                                             (_tl1292512958_
                                                              (##cdr _e1292312953_)))
                                                         (let ((_ids12961_
                                                                _hd1292412956_))
                                                           (let ((_clauses12963_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1292512958_))
                     (if '#t
                         (if (not (gx#identifier-list? _ids12961_))
                             (gx#raise-syntax-error
                              '#f
                              '"Bad template identifier list"
                              _stx12904_
                              _ids12961_)
                             (if (not (gx#stx-list? _clauses12963_))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _stx12904_)
                                 (let ((_ids12965_
                                        (gx#syntax->list _ids12961_)))
                                   (let ((_clauses12967_
                                          (gx#syntax->list _clauses12963_)))
                                     (let ((_clause-ids12969_
                                            (gx#gentemps _clauses12967_)))
                                       (let ((_E12971_ (gx#genident__0)))
                                         (let ((_target12973_
                                                (gx#genident__0)))
                                           (let ((_first12975_
                                                  (if (null? _clauses12967_)
                                                      _E12971_
                                                      (car _clause-ids12969_))))
                                             (let ()
                                               (gx#stx-wrap-source
                                                (gx#core-list
                                                 'let-values
                                                 (cons (cons (cons _E12971_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (gx#core-list
                            'lambda%
                            (cons _target12973_ '())
                            (gx#core-list
                             'raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _target12973_))
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_generate-body12910_
                                                  (_generate-bindings12909_
                                                   _target12973_
                                                   _ids12965_
                                                   _clauses12967_
                                                   _clause-ids12969_
                                                   _E12971_)
                                                  (cons _first12975_
                                                        (cons _expr12951_
                                                              '()))))
                                                (gx#stx-source
                                                 _stx12904_)))))))))))
                         (_E1291612931_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E1291612931_)))))
                                           (_E1291612931_))))
                                   (_E1291612931_)))))
                        (let () (_E1291512978_))))))))))))
    (begin
      (define gx#macro-expand-syntax-case__0
        (lambda (_stx13606_)
          (let ((_identifier=?13608_ 'free-identifier=?))
            (let ((_unwrap-e13610_ 'syntax-e))
              (let ((_wrap-e13612_ 'quote-syntax))
                (gx#macro-expand-syntax-case__opt-lambda12902
                 _stx13606_
                 _identifier=?13608_
                 _unwrap-e13610_
                 _wrap-e13612_))))))
      (define gx#macro-expand-syntax-case__1
        (lambda (_stx13614_ _identifier=?13615_)
          (let ((_unwrap-e13617_ 'syntax-e))
            (let ((_wrap-e13619_ 'quote-syntax))
              (gx#macro-expand-syntax-case__opt-lambda12902
               _stx13614_
               _identifier=?13615_
               _unwrap-e13617_
               _wrap-e13619_)))))
      (define gx#macro-expand-syntax-case__2
        (lambda (_stx13621_ _identifier=?13622_ _unwrap-e13623_)
          (let ((_wrap-e13625_ 'quote-syntax))
            (gx#macro-expand-syntax-case__opt-lambda12902
             _stx13621_
             _identifier=?13622_
             _unwrap-e13623_
             _wrap-e13625_))))
      (define gx#macro-expand-syntax-case
        (lambda _g14053_
          (let ((_g14052_ (length _g14053_)))
            (cond ((fx= _g14052_ 1)
                   (apply gx#macro-expand-syntax-case__0 _g14053_))
                  ((fx= _g14052_ 2)
                   (apply gx#macro-expand-syntax-case__1 _g14053_))
                  ((fx= _g14052_ 3)
                   (apply gx#macro-expand-syntax-case__2 _g14053_))
                  ((fx= _g14052_ 4)
                   (apply gx#macro-expand-syntax-case__opt-lambda12902
                          _g14053_))
                  (else (error "No clause matching arguments" _g14053_))))))))
  (define gx#syntax-local-pattern?
    (lambda (_stx12901_)
      (if (gx#identifier? _stx12901_)
          (##structure-instance-of?
           (gx#syntax-local-e__opt-lambda3895 _stx12901_ false)
           'gx#syntax-pattern::t)
          '#f)))
  (define gx#syntax-check-splice-targets
    (lambda (_hd12859_ . _rest12860_)
      (let ((_len12862_ (length _hd12859_)))
        ((letrec ((_lp12864_
                   (lambda (_rest12866_)
                     (let ((_rest1286712875_ _rest12866_))
                       (let ((_E1287012879_
                              (lambda ()
                                (error '"No clause matching"
                                       _rest1286712875_))))
                         (let ((_else1286912883_ (lambda () '#!void)))
                           (let ((_K1287112889_
                                  (lambda (_rest12886_ _hd12887_)
                                    (if (fx= _len12862_ (length _hd12887_))
                                        (_lp12864_ _rest12886_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Splice length mismatch"
                                         _hd12887_)))))
                             (if (##pair? _rest1286712875_)
                                 (let ((_hd1287212892_
                                        (##car _rest1286712875_))
                                       (_tl1287312894_
                                        (##cdr _rest1286712875_)))
                                   (let ((_hd12897_ _hd1287212892_))
                                     (let ((_rest12899_ _tl1287312894_))
                                       (_K1287112889_ _rest12899_ _hd12897_))))
                                 (_else1286912883_)))))))))
           _lp12864_)
         _rest12860_))))
  (define gx#syntax-split-splice
    (lambda (_stx12817_ _n12818_)
      ((letrec ((_lp12820_
                 (lambda (_rest12822_ _r12823_)
                   (if (gx#stx-pair? _rest12822_)
                       (let ((_g1282412831_ (gx#syntax-e _rest12822_)))
                         (let ((_E1282612835_
                                (lambda ()
                                  (error '"No clause matching"
                                         _g1282412831_))))
                           (let ((_K1282712841_
                                  (lambda (_rest12838_ _hd12839_)
                                    (_lp12820_
                                     _rest12838_
                                     (cons _hd12839_ _r12823_)))))
                             (if (##pair? _g1282412831_)
                                 (let ((_hd1282812844_ (##car _g1282412831_))
                                       (_tl1282912846_ (##cdr _g1282412831_)))
                                   (let ((_hd12849_ _hd1282812844_))
                                     (let ((_rest12851_ _tl1282912846_))
                                       (_K1282712841_ _rest12851_ _hd12849_))))
                                 (_E1282612835_)))))
                       ((letrec ((_lp12853_
                                  (lambda (_n12855_ _l12856_ _r12857_)
                                    (if (null? _l12856_)
                                        (values _l12856_ _r12857_)
                                        (if (fxpositive? _n12855_)
                                            (_lp12853_
                                             (fx- _n12855_ '1)
                                             (cdr _l12856_)
                                             (cons (car _l12856_) _r12857_))
                                            (values (reverse _l12856_)
                                                    _r12857_))))))
                          _lp12853_)
                        _n12818_
                        _r12823_
                        _rest12822_)))))
         _lp12820_)
       _stx12817_
       '()))))
