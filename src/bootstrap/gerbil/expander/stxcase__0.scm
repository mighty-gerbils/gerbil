(declare (block) (standard-bindings) (extended-bindings))
(begin
  (begin)
  (begin)
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
    (lambda _$args40110_
      (apply make-struct-instance gx#syntax-pattern::t _$args40110_)))
  (define gx#syntax-pattern-id
    (make-struct-field-accessor gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth
    (make-struct-field-accessor gx#syntax-pattern::t '1))
  (define gx#syntax-pattern-id-set!
    (make-struct-field-mutator gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth-set!
    (make-struct-field-mutator gx#syntax-pattern::t '1))
  (begin)
  (define gx#syntax-pattern::apply-macro-expander
    (lambda (_self40107_ _stx40108_)
      (gx#raise-syntax-error
       '#f
       '"Identifier used out of context"
       _stx40108_)))
  (bind-method!
   gx#syntax-pattern::t
   'apply-macro-expander
   gx#syntax-pattern::apply-macro-expander
   '#f)
  (define gx#macro-expand-syntax
    (lambda (_stx39716_)
      (let ((_generate39718_
             (lambda (_e39945_)
               (let ((_BUG39947_
                      (lambda (_q40105_)
                        (error '"BUG: syntax; generate"
                               _stx39716_
                               _e39945_
                               _q40105_))))
                 (let ((_local-pattern-e39948_
                        (lambda (_pat40103_)
                          (gx#syntax-local-rewrap
                           (gx#syntax-pattern-id _pat40103_)))))
                   (let ((_getvar39949_
                          (lambda (_q40100_ _vars40101_)
                            (assgetq _q40100_ _vars40101_ _BUG39947_))))
                     (let ((_getarg39950_
                            (lambda (_arg40066_ _vars40067_)
                              (let ((_arg4006840075_ _arg40066_))
                                (let ((_E4007040079_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _arg4006840075_))))
                                  (let ((_K4007140088_
                                         (lambda (_e40082_ _tag40083_)
                                           (let ((_$e40085_ _tag40083_))
                                             (if (eq? _$e40085_ 'ref)
                                                 (_getvar39949_
                                                  _e40082_
                                                  _vars40067_)
                                                 (if (eq? _$e40085_ 'pattern)
                                                     (_local-pattern-e39948_
                                                      _e40082_)
                                                     (_BUG39947_
                                                      _arg40066_)))))))
                                    (if (##pair? _arg4006840075_)
                                        (let ((_hd4007240091_
                                               (##car _arg4006840075_))
                                              (_tl4007340093_
                                               (##cdr _arg4006840075_)))
                                          (let ((_tag40096_ _hd4007240091_))
                                            (let ((_e40098_ _tl4007340093_))
                                              (_K4007140088_
                                               _e40098_
                                               _tag40096_))))
                                        (_E4007040079_))))))))
                       ((letrec ((_recur39952_
                                  (lambda (_e39954_ _vars39955_)
                                    (let ((_e3995639963_ _e39954_))
                                      (let ((_E3995839967_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _e3995639963_))))
                                        (let ((_K3995940054_
                                               (lambda (_body39970_ _tag39971_)
                                                 (let ((_$e39973_ _tag39971_))
                                                   (if (eq? _$e39973_ 'datum)
                                                       (gx#core-list
                                                        'quote
                                                        _body39970_)
                                                       (if (eq? _$e39973_
                                                                'term)
                                                           (gx#core-list
                                                            'datum->syntax
                                                            '#f
                                                            (gx#core-list
                                                             'quote
                                                             _body39970_))
                                                           (if (eq? _$e39973_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'pattern)
                       (_local-pattern-e39948_ _body39970_)
                       (if (eq? _$e39973_ 'ref)
                           (_getvar39949_ _body39970_ _vars39955_)
                           (if (eq? _$e39973_ 'cons)
                               (gx#core-list
                                'cons
                                (_recur39952_ (car _body39970_) _vars39955_)
                                (_recur39952_ (cdr _body39970_) _vars39955_))
                               (if (eq? _$e39973_ 'vector)
                                   (gx#core-list
                                    'list->vector
                                    (_recur39952_ _body39970_ _vars39955_))
                                   (if (eq? _$e39973_ 'box)
                                       (gx#core-list
                                        'box
                                        (_recur39952_ _body39970_ _vars39955_))
                                       (if (eq? _$e39973_ 'splice)
                                           (let ((_body3997539986_
                                                  _body39970_))
                                             (let ((_E3997739990_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _body3997539986_))))
                                               (let ((_K3997840028_
                                                      (lambda (_args39993_
                                                               _iv39994_
                                                               _hd39995_
                                                               _depth39996_)
                                                        (let ((_targets40002_
                                                               (map (lambda (_g3999739999_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (_getarg39950_ _g3999739999_ _vars39955_))
                            _args39993_)))
                  (let ((_fold-in40004_ (gx#gentemps _args39993_)))
                    (let ((_fold-out40006_ (gx#genident)))
                      (let ((_lambda-args40008_
                             (foldr cons
                                    (cons _fold-out40006_ '())
                                    _fold-in40004_)))
                        (let ((_lambda-body40025_
                               (if (fx> _depth39996_ '1)
                                   (let ((_r-args40016_
                                          (map (lambda (_arg40010_)
                                                 (cons 'ref (cdr _arg40010_)))
                                               _args39993_))
                                         (_r-vars40017_
                                          (foldr (lambda (_arg40012_
                                                          _var40013_
                                                          _r40014_)
                                                   (cons (cons (cdr _arg40012_)
                                                               _var40013_)
                                                         _r40014_))
                                                 _vars39955_
                                                 _args39993_
                                                 _fold-in40004_)))
                                     (_recur39952_
                                      (cons* 'splice
                                             (fx1- _depth39996_)
                                             _hd39995_
                                             (cons 'var _fold-out40006_)
                                             _r-args40016_)
                                      _r-vars40017_))
                                   (let ((_hd-vars40023_
                                          (foldr (lambda (_arg40019_
                                                          _var40020_
                                                          _r40021_)
                                                   (cons (cons (cdr _arg40019_)
                                                               _var40020_)
                                                         _r40021_))
                                                 _vars39955_
                                                 _args39993_
                                                 _fold-in40004_)))
                                     (gx#core-list
                                      'cons
                                      (_recur39952_ _hd39995_ _hd-vars40023_)
                                      _fold-out40006_)))))
                          (let ()
                            (gx#core-list
                             'begin
                             (if (fx> (length _targets40002_) '1)
                                 (gx#core-cons*
                                  'syntax-check-splice-targets
                                  _targets40002_)
                                 '#!void)
                             (gx#core-cons*
                              'foldr
                              (gx#core-list
                               'lambda%
                               _lambda-args40008_
                               _lambda-body40025_)
                              (_recur39952_ _iv39994_ _vars39955_)
                              _targets40002_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (##pair? _body3997539986_)
                                                     (let ((_hd3997940031_
                                                            (##car _body3997539986_))
                                                           (_tl3998040033_
                                                            (##cdr _body3997539986_)))
                                                       (let ((_depth40036_
                                                              _hd3997940031_))
                                                         (if (##pair? _tl3998040033_)
                                                             (let ((_hd3998140038_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##car _tl3998040033_))
                           (_tl3998240040_ (##cdr _tl3998040033_)))
                       (let ((_hd40043_ _hd3998140038_))
                         (if (##pair? _tl3998240040_)
                             (let ((_hd3998340045_ (##car _tl3998240040_))
                                   (_tl3998440047_ (##cdr _tl3998240040_)))
                               (let ((_iv40050_ _hd3998340045_))
                                 (let ((_args40052_ _tl3998440047_))
                                   (_K3997840028_
                                    _args40052_
                                    _iv40050_
                                    _hd40043_
                                    _depth40036_))))
                             (_E3997739990_))))
                     (_E3997739990_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E3997739990_)))))
                                           (if (eq? _$e39973_ 'var)
                                               _body39970_
                                               (_BUG39947_
                                                _e39954_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _e3995639963_)
                                              (let ((_hd3996040057_
                                                     (##car _e3995639963_))
                                                    (_tl3996140059_
                                                     (##cdr _e3995639963_)))
                                                (let ((_tag40062_
                                                       _hd3996040057_))
                                                  (let ((_body40064_
                                                         _tl3996140059_))
                                                    (_K3995940054_
                                                     _body40064_
                                                     _tag40062_))))
                                              (_E3995839967_))))))))
                          _recur39952_)
                        _e39945_
                        '()))))))))
        (let ((_parse39719_
               (lambda (_e39760_)
                 (let ((_make-cons39762_
                        (lambda (_hd39937_ _tl39938_)
                          (let ((_g40519_ _hd39937_) (_g40521_ _tl39938_))
                            (begin
                              (let ((_g40520_ (values-count _g40519_)))
                                (if (not (fx= _g40520_ 2))
                                    (error "Context expects 2 values"
                                           _g40520_)))
                              (let ((_g40522_ (values-count _g40521_)))
                                (if (not (fx= _g40522_ 2))
                                    (error "Context expects 2 values"
                                           _g40522_)))
                              (let ((_hd-e39940_ (values-ref _g40519_ 0))
                                    (_hd-vars39941_ (values-ref _g40519_ 1)))
                                (let ((_tl-e39942_ (values-ref _g40521_ 0))
                                      (_tl-vars39943_ (values-ref _g40521_ 1)))
                                  (values (cons* 'cons _hd-e39940_ _tl-e39942_)
                                          (append _hd-vars39941_
                                                  _tl-vars39943_)))))))))
                   (let ((_make-splice39763_
                          (lambda (_where39876_
                                   _depth39877_
                                   _hd39878_
                                   _tl39879_)
                            (let ((_g40515_ _hd39878_) (_g40517_ _tl39879_))
                              (begin
                                (let ((_g40516_ (values-count _g40515_)))
                                  (if (not (fx= _g40516_ 2))
                                      (error "Context expects 2 values"
                                             _g40516_)))
                                (let ((_g40518_ (values-count _g40517_)))
                                  (if (not (fx= _g40518_ 2))
                                      (error "Context expects 2 values"
                                             _g40518_)))
                                (let ((_hd-e39881_ (values-ref _g40515_ 0))
                                      (_hd-vars39882_ (values-ref _g40515_ 1)))
                                  (let ((_tl-e39883_ (values-ref _g40517_ 0))
                                        (_tl-vars39884_
                                         (values-ref _g40517_ 1)))
                                    ((letrec ((_lp39886_
                                               (lambda (_rest39888_
                                                        _targets39889_
                                                        _vars39890_)
                                                 (let ((_rest3989139901_
                                                        _rest39888_))
                                                   (let ((_E3989439905_
                                                          (lambda ()
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _rest3989139901_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_else3989339909_
                                                            (lambda ()
                                                              (if (null? _targets39889_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Misplaced ellipsis"
                           _stx39716_
                           _where39876_)
                          (values (cons* 'splice
                                         _depth39877_
                                         _hd-e39881_
                                         _tl-e39883_
                                         _targets39889_)
                                  _vars39890_)))))
               (let ((_K3989539918_
                      (lambda (_rest39912_ _hd-pat39913_ _hd-depth*39914_)
                        (let ((_hd-depth39916_
                               (fx- _hd-depth*39914_ _depth39877_)))
                          (if (fxpositive? _hd-depth39916_)
                              (_lp39886_
                               _rest39912_
                               (cons (cons 'ref _hd-pat39913_) _targets39889_)
                               (cons (cons _hd-depth39916_ _hd-pat39913_)
                                     _vars39890_))
                              (if (fxzero? _hd-depth39916_)
                                  (_lp39886_
                                   _rest39912_
                                   (cons (cons 'pattern _hd-pat39913_)
                                         _targets39889_)
                                   _vars39890_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Too many ellipses"
                                   _stx39716_
                                   _where39876_)))))))
                 (if (##pair? _rest3989139901_)
                     (let ((_hd3989639921_ (##car _rest3989139901_))
                           (_tl3989739923_ (##cdr _rest3989139901_)))
                       (if (##pair? _hd3989639921_)
                           (let ((_hd3989839926_ (##car _hd3989639921_))
                                 (_tl3989939928_ (##cdr _hd3989639921_)))
                             (let ((_hd-depth*39931_ _hd3989839926_))
                               (let ((_hd-pat39933_ _tl3989939928_))
                                 (let ((_rest39935_ _tl3989739923_))
                                   (_K3989539918_
                                    _rest39935_
                                    _hd-pat39933_
                                    _hd-depth*39931_)))))
                           (_else3989339909_)))
                     (_else3989339909_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _lp39886_)
                                     _hd-vars39882_
                                     '()
                                     _tl-vars39884_))))))))
                     (letrec ((_recur39764_
                               (lambda (_e39769_ _is-e?39770_)
                                 (if (_is-e?39770_ _e39769_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Mislpaced ellipsis"
                                      _stx39716_)
                                     (if (gx#syntax-local-pattern? _e39769_)
                                         (let ((_pat39772_
                                                (gx#syntax-local-e _e39769_)))
                                           (let ((_depth39774_
                                                  (gx#syntax-pattern-depth
                                                   _pat39772_)))
                                             (let ()
                                               (if (fxpositive? _depth39774_)
                                                   (values (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pat39772_)
                   (cons (cons _depth39774_ _pat39772_) '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (values (cons 'pattern
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pat39772_)
                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (if (gx#identifier? _e39769_)
                                             (values (cons 'term _e39769_) '())
                                             (if (gx#stx-pair? _e39769_)
                                                 (let ((_e3977639783_
                                                        _e39769_))
                                                   (let ((_E3977839787_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _e3977639783_))))
                                                     (let ((_E3977739866_
                                                            (lambda ()
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e3977639783_)
                          (let ((_e3977939791_ (gx#syntax-e _e3977639783_)))
                            (let ((_hd3978039794_ (##car _e3977939791_))
                                  (_tl3978139796_ (##cdr _e3977939791_)))
                              (let ((_hd39799_ _hd3978039794_))
                                (let ((_rest39801_ _tl3978139796_))
                                  (if '#t
                                      (if (_is-e?39770_ _hd39799_)
                                          (let ((_e3980239809_ _rest39801_))
                                            (let ((_E3980439813_
                                                   (lambda ()
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad ellipsis syntax"
                                                      _stx39716_
                                                      _e39769_))))
                                              (let ((_E3980339827_
                                                     (lambda ()
                                                       (if (gx#stx-pair?
                                                            _e3980239809_)
                                                           (let ((_e3980539817_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _e3980239809_)))
                     (let ((_hd3980639820_ (##car _e3980539817_))
                           (_tl3980739822_ (##cdr _e3980539817_)))
                       (let ((_rest39825_ _hd3980639820_))
                         (if (gx#stx-null? _tl3980739822_)
                             (if '#t
                                 (_recur39764_ _rest39825_ false)
                                 (_E3980439813_))
                             (_E3980439813_)))))
                   (_E3980439813_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let () (_E3980339827_)))))
                                          ((letrec ((_lp39831_
                                                     (lambda (_rest39833_
                                                              _depth39834_)
                                                       (let ((_e3983539842_
                                                              _rest39833_))
                                                         (let ((_E3983739846_
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (fxpositive? _depth39834_)
                              (_make-splice39763_
                               _e39769_
                               _depth39834_
                               (_recur39764_ _hd39799_ _is-e?39770_)
                               (_recur39764_ _rest39833_ _is-e?39770_))
                              (_make-cons39762_
                               (_recur39764_ _hd39799_ _is-e?39770_)
                               (_recur39764_ _rest39833_ _is-e?39770_))))))
                   (let ((_E3983639862_
                          (lambda ()
                            (if (gx#stx-pair? _e3983539842_)
                                (let ((_e3983839850_
                                       (gx#syntax-e _e3983539842_)))
                                  (let ((_hd3983939853_ (##car _e3983839850_))
                                        (_tl3984039855_ (##cdr _e3983839850_)))
                                    (let ((_rest-hd39858_ _hd3983939853_))
                                      (let ((_rest-tl39860_ _tl3984039855_))
                                        (if '#t
                                            (if (_is-e?39770_ _rest-hd39858_)
                                                (_lp39831_
                                                 _rest-tl39860_
                                                 (fx1+ _depth39834_))
                                                (if (fxpositive? _depth39834_)
                                                    (_make-splice39763_
                                                     _e39769_
                                                     _depth39834_
                                                     (_recur39764_
                                                      _hd39799_
                                                      _is-e?39770_)
                                                     (_recur39764_
                                                      _rest39833_
                                                      _is-e?39770_))
                                                    (_make-cons39762_
                                                     (_recur39764_
                                                      _hd39799_
                                                      _is-e?39770_)
                                                     (_recur39764_
                                                      _rest39833_
                                                      _is-e?39770_))))
                                            (_E3983739846_))))))
                                (_E3983739846_)))))
                     (let () (_E3983639862_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _lp39831_)
                                           _rest39801_
                                           '0))
                                      (_E3977839787_))))))
                          (_E3977839787_)))))
               (let () (_E3977739866_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-vector? _e39769_)
                                                     (let ((_g40509_
                                                            (_recur39764_
                                                             (vector->list
                                                              (gx#stx-unwrap
                                                               _e39769_))
                                                             _is-e?39770_)))
                                                       (begin
                                                         (let ((_g40510_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g40509_)))
                   (if (not (fx= _g40510_ 2))
                       (error "Context expects 2 values" _g40510_)))
                 (let ((_e39870_ (values-ref _g40509_ 0))
                       (_vars39871_ (values-ref _g40509_ 1)))
                   (values (cons 'vector _e39870_) _vars39871_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#stx-box? _e39769_)
                                                         (let ((_g40511_
                                                                (_recur39764_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (unbox (gx#stx-unwrap _e39769_))
                         _is-e?39770_)))
                   (begin
                     (let ((_g40512_ (values-count _g40511_)))
                       (if (not (fx= _g40512_ 2))
                           (error "Context expects 2 values" _g40512_)))
                     (let ((_e39873_ (values-ref _g40511_ 0))
                           (_vars39874_ (values-ref _g40511_ 1)))
                       (values (cons 'box _e39873_) _vars39874_))))
                 (values (cons 'datum _e39769_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                       (let ((_g40513_ (_recur39764_ _e39760_ gx#ellipsis?)))
                         (begin
                           (let ((_g40514_ (values-count _g40513_)))
                             (if (not (fx= _g40514_ 2))
                                 (error "Context expects 2 values" _g40514_)))
                           (let ((_tree39766_ (values-ref _g40513_ 0))
                                 (_vars39767_ (values-ref _g40513_ 1)))
                             (if (null? _vars39767_)
                                 _tree39766_
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Missing ellipsis"
                                  _stx39716_
                                  _vars39767_)))))))))))
          (let ((_e3972039730_ _stx39716_))
            (let ((_E3972239734_
                   (lambda ()
                     (gx#raise-syntax-error '#f '"Bad syntax" _stx39716_))))
              (let ((_E3972139756_
                     (lambda ()
                       (if (gx#stx-pair? _e3972039730_)
                           (let ((_e3972339738_ (gx#syntax-e _e3972039730_)))
                             (let ((_hd3972439741_ (##car _e3972339738_))
                                   (_tl3972539743_ (##cdr _e3972339738_)))
                               (if (gx#stx-pair? _tl3972539743_)
                                   (let ((_e3972639746_
                                          (gx#syntax-e _tl3972539743_)))
                                     (let ((_hd3972739749_
                                            (##car _e3972639746_))
                                           (_tl3972839751_
                                            (##cdr _e3972639746_)))
                                       (let ((_form39754_ _hd3972739749_))
                                         (if (gx#stx-null? _tl3972839751_)
                                             (if '#t
                                                 (gx#stx-wrap-source
                                                  (_generate39718_
                                                   (_parse39719_ _form39754_))
                                                  (gx#stx-source _stx39716_))
                                                 (_E3972239734_))
                                             (_E3972239734_)))))
                                   (_E3972239734_))))
                           (_E3972239734_)))))
                (let () (_E3972139756_)))))))))
  (define gx#macro-expand-syntax-case
    (let ((_opt-lambda3898639687_
           (lambda (_stx38988_
                    _identifier=?38989_
                    _unwrap-e38990_
                    _wrap-e38991_)
             (let ((_generate-body38994_
                    (lambda (_bindings39538_ _body39539_)
                      ((letrec ((_recur39541_
                                 (lambda (_rest39543_)
                                   (let ((_rest3954439552_ _rest39543_))
                                     (let ((_E3954739556_
                                            (lambda ()
                                              (error '"No clause matching"
                                                     _rest3954439552_))))
                                       (let ((_else3954639560_
                                              (lambda () _body39539_)))
                                         (let ((_K3954839566_
                                                (lambda (_rest39563_ _hd39564_)
                                                  (gx#core-list
                                                   'let-values
                                                   (cons _hd39564_ '())
                                                   (_recur39541_
                                                    _rest39563_)))))
                                           (if (##pair? _rest3954439552_)
                                               (let ((_hd3954939569_
                                                      (##car _rest3954439552_))
                                                     (_tl3955039571_
                                                      (##cdr _rest3954439552_)))
                                                 (let ((_hd39574_
                                                        _hd3954939569_))
                                                   (let ((_rest39576_
                                                          _tl3955039571_))
                                                     (_K3954839566_
                                                      _rest39576_
                                                      _hd39574_))))
                                               (_else3954639560_)))))))))
                         _recur39541_)
                       _bindings39538_))))
               (let ((_generate-match38996_
                      (lambda (_where39160_
                               _target39161_
                               _hd39162_
                               _mvars39163_
                               _K39164_
                               _E39165_)
                        (let ((_BUG39167_
                               (lambda (_q39399_)
                                 (error '"BUG: syntax-case; generate"
                                        _stx38988_
                                        _hd39162_
                                        _q39399_))))
                          (let ((_splice-rlen39169_
                                 (lambda (_e39215_)
                                   ((letrec ((_lp39217_
                                              (lambda (_e39219_ _n39220_)
                                                (let ((_e3922139228_ _e39219_))
                                                  (let ((_E3922339232_
                                                         (lambda ()
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _e3922139228_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K3922439241_
                                                           (lambda (_body39235_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tag39236_)
                     (let ((_$e39238_ _tag39236_))
                       (if (eq? _$e39238_ 'splice)
                           (gx#raise-syntax-error
                            '#f
                            '"Ambiguous pattern"
                            _stx38988_
                            _where39160_)
                           (if (eq? _$e39238_ 'cons)
                               (_lp39217_ (cdr _body39235_) (fx1+ _n39220_))
                               _n39220_))))))
              (if (##pair? _e3922139228_)
                  (let ((_hd3922539244_ (##car _e3922139228_))
                        (_tl3922639246_ (##cdr _e3922139228_)))
                    (let ((_tag39249_ _hd3922539244_))
                      (let ((_body39251_ _tl3922639246_))
                        (_K3922439241_ _body39251_ _tag39249_))))
                  (_E3922339232_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _lp39217_)
                                    _e39215_
                                    '0))))
                            (let ((_splice-vars39170_
                                   (lambda (_e39177_)
                                     ((letrec ((_recur39179_
                                                (lambda (_e39181_ _vars39182_)
                                                  (let ((_e3918339190_
                                                         _e39181_))
                                                    (let ((_E3918539194_
                                                           (lambda ()
                                                             (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _e3918339190_))))
              (let ((_K3918639203_
                     (lambda (_body39197_ _tag39198_)
                       (let ((_$e39200_ _tag39198_))
                         (if (eq? _$e39200_ 'var)
                             (cons _body39197_ _vars39182_)
                             (if (memq _$e39200_ '(cons splice))
                                 (_recur39179_
                                  (cdr _body39197_)
                                  (_recur39179_ (car _body39197_) _vars39182_))
                                 (if (memq _$e39200_ '(vector box))
                                     (_recur39179_ _body39197_ _vars39182_)
                                     _vars39182_)))))))
                (if (##pair? _e3918339190_)
                    (let ((_hd3918739206_ (##car _e3918339190_))
                          (_tl3918839208_ (##cdr _e3918339190_)))
                      (let ((_tag39211_ _hd3918739206_))
                        (let ((_body39213_ _tl3918839208_))
                          (_K3918639203_ _body39213_ _tag39211_))))
                    (_E3918539194_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _recur39179_)
                                      _e39177_
                                      '()))))
                              (let ((_make-body39171_
                                     (lambda (_vars39173_)
                                       (cons _K39164_
                                             (map (lambda (_mvar39175_)
                                                    (assgetq (car _mvar39175_)
                                                             _vars39173_
                                                             _BUG39167_))
                                                  _mvars39163_)))))
                                (letrec ((_recur39168_
                                          (lambda (_e39253_
                                                   _vars39254_
                                                   _target39255_
                                                   _E39256_
                                                   _k39257_)
                                            (let ((_e3925839265_ _e39253_))
                                              (let ((_E3926039269_
                                                     (lambda ()
                                                       (error '"No clause matching"
                                                              _e3925839265_))))
                                                (let ((_K3926139387_
                                                       (lambda (_body39272_
                                                                _tag39273_)
                                                         (let ((_$e39275_
                                                                _tag39273_))
                                                           (if (eq? _$e39275_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'any)
                       (_k39257_ _vars39254_)
                       (if (eq? _$e39275_ 'id)
                           (gx#core-list
                            'if
                            (gx#core-list 'identifier? _target39255_)
                            (gx#core-list
                             'if
                             (gx#core-list
                              _identifier=?38989_
                              (gx#core-list _wrap-e38991_ _body39272_)
                              _target39255_)
                             (_k39257_ _vars39254_)
                             _E39256_)
                            _E39256_)
                           (if (eq? _$e39275_ 'var)
                               (_k39257_
                                (cons (cons _body39272_ _target39255_)
                                      _vars39254_))
                               (if (eq? _$e39275_ 'cons)
                                   (let ((_$e39278_ (gx#genident 'e))
                                         (_$hd39279_ (gx#genident 'hd))
                                         (_$tl39280_ (gx#genident 'tl)))
                                     (gx#core-list
                                      'if
                                      (gx#core-list 'stx-pair? _target39255_)
                                      (gx#core-list
                                       'let-values
                                       (cons (cons (cons _$e39278_ '())
                                                   (cons (gx#core-list
                                                          _unwrap-e38990_
                                                          _target39255_)
                                                         '()))
                                             '())
                                       (gx#core-list
                                        'let-values
                                        (cons (cons (cons _$hd39279_ '())
                                                    (cons (gx#core-list
                                                           '##car
                                                           _$e39278_)
                                                          '()))
                                              (cons (cons (cons _$tl39280_ '())
                                                          (cons (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '##cdr
                         _$e39278_)
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        (let ((_body3928139288_ _body39272_))
                                          (let ((_E3928339292_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _body3928139288_))))
                                            (let ((_K3928439300_
                                                   (lambda (_tl39295_
                                                            _hd39296_)
                                                     (_recur39168_
                                                      _hd39296_
                                                      _vars39254_
                                                      _$hd39279_
                                                      _E39256_
                                                      (lambda (_vars39298_)
                                                        (_recur39168_
                                                         _tl39295_
                                                         _vars39298_
                                                         _$tl39280_
                                                         _E39256_
                                                         _k39257_))))))
                                              (if (##pair? _body3928139288_)
                                                  (let ((_hd3928539303_
                                                         (##car _body3928139288_))
                                                        (_tl3928639305_
                                                         (##cdr _body3928139288_)))
                                                    (let ((_hd39308_
                                                           _hd3928539303_))
                                                      (let ((_tl39310_
                                                             _tl3928639305_))
                                                        (_K3928439300_
                                                         _tl39310_
                                                         _hd39308_))))
                                                  (_E3928339292_)))))))
                                      _E39256_))
                                   (if (eq? _$e39275_ 'splice)
                                       (let ((_body3931139318_ _body39272_))
                                         (let ((_E3931339322_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _body3931139318_))))
                                           (let ((_K3931439371_
                                                  (lambda (_tl39325_ _hd39326_)
                                                    (let ((_rlen39328_
                                                           (_splice-rlen39169_
                                                            _tl39325_)))
                                                      (let ((_$target39330_
                                                             (gx#genident
                                                              'target)))
                                                        (let ((_$hd39332_
                                                               (gx#genident
                                                                'hd)))
                                                          (let ((_$tl39334_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#genident 'tl)))
                    (let ((_$lp39336_ (gx#genident 'loop)))
                      (let ((_$lp-e39338_ (gx#genident 'e)))
                        (let ((_$lp-hd39340_ (gx#genident 'lp-hd)))
                          (let ((_$lp-tl39342_ (gx#genident 'lp-tl)))
                            (let ((_svars39344_
                                   (_splice-vars39170_ _hd39326_)))
                              (let ((_lvars39346_ (gx#gentemps _svars39344_)))
                                (let ((_tlvars39348_
                                       (gx#gentemps _svars39344_)))
                                  (let ((_linit39352_
                                         (map (lambda (_var39350_)
                                                (gx#core-list 'quote '()))
                                              _lvars39346_)))
                                    (let ()
                                      (let ((_make-loop39355_
                                             (lambda (_vars39357_)
                                               (gx#core-list
                                                'letrec-values
                                                (cons (cons (cons _$lp39336_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (gx#core-list
                           'lambda%
                           (cons _$hd39332_ _lvars39346_)
                           (gx#core-list
                            'if
                            (gx#core-list 'stx-pair? _$hd39332_)
                            (gx#core-list
                             'let-values
                             (cons (cons (cons _$lp-e39338_ '())
                                         (cons (gx#core-list
                                                _unwrap-e38990_
                                                _$hd39332_)
                                               '()))
                                   '())
                             (gx#core-list
                              'let-values
                              (cons (cons (cons _$lp-hd39340_ '())
                                          (cons (gx#core-list
                                                 '##car
                                                 _$lp-e39338_)
                                                '()))
                                    (cons (cons (cons _$lp-tl39342_ '())
                                                (cons (gx#core-list
                                                       '##cdr
                                                       _$lp-e39338_)
                                                      '()))
                                          '()))
                              (_recur39168_
                               _hd39326_
                               '()
                               _$lp-hd39340_
                               _E39256_
                               (lambda (_hdvars39359_)
                                 (cons* _$lp39336_
                                        _$lp-tl39342_
                                        (map (lambda (_svar39361_ _lvar39362_)
                                               (gx#core-list
                                                'cons
                                                (assgetq _svar39361_
                                                         _hdvars39359_
                                                         _BUG39167_)
                                                _lvar39362_))
                                             _svars39344_
                                             _lvars39346_))))))
                            (gx#core-list
                             'let-values
                             (map (lambda (_lvar39364_ _tlvar39365_)
                                    (cons (cons _tlvar39365_ '())
                                          (cons (gx#core-list
                                                 'reverse
                                                 _lvar39364_)
                                                '())))
                                  _lvars39346_
                                  _tlvars39348_)
                             (_k39257_
                              (foldl (lambda (_svar39367_
                                              _tlvar39368_
                                              _r39369_)
                                       (cons (cons _svar39367_ _tlvar39368_)
                                             _r39369_))
                                     _vars39357_
                                     _svars39344_
                                     _tlvars39348_)))))
                          '()))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons* _$lp39336_
                                                       _$target39330_
                                                       _linit39352_)))))
                                        (gx#core-list
                                         'if
                                         (gx#core-list
                                          'stx-pair/null?
                                          _target39255_)
                                         (gx#core-list
                                          'if
                                          (gx#core-list
                                           'fx>=
                                           (gx#core-list
                                            'stx-length
                                            _target39255_)
                                           _rlen39328_)
                                          (gx#core-list
                                           'let-values
                                           (cons (cons (cons _$target39330_
                                                             (cons _$tl39334_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (gx#core-list
                      'syntax-split-splice
                      _target39255_
                      _rlen39328_)
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (_recur39168_
                                            _tl39325_
                                            _vars39254_
                                            _$tl39334_
                                            _E39256_
                                            _make-loop39355_))
                                          _E39256_)
                                         _E39256_))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _body3931139318_)
                                                 (let ((_hd3931539374_
                                                        (##car _body3931139318_))
                                                       (_tl3931639376_
                                                        (##cdr _body3931139318_)))
                                                   (let ((_hd39379_
                                                          _hd3931539374_))
                                                     (let ((_tl39381_
                                                            _tl3931639376_))
                                                       (_K3931439371_
                                                        _tl39381_
                                                        _hd39379_))))
                                                 (_E3931339322_)))))
                                       (if (eq? _$e39275_ 'null)
                                           (gx#core-list
                                            'if
                                            (gx#core-list
                                             'stx-null?
                                             _target39255_)
                                            (_k39257_ _vars39254_)
                                            _E39256_)
                                           (if (eq? _$e39275_ 'vector)
                                               (let ((_$e39383_
                                                      (gx#genident 'e)))
                                                 (gx#core-list
                                                  'if
                                                  (gx#core-list
                                                   'stx-vector?
                                                   _target39255_)
                                                  (gx#core-list
                                                   'let-values
                                                   (cons (cons (cons _$e39383_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons (gx#core-list
                              'vector->list
                              (gx#core-list _unwrap-e38990_ _target39255_))
                             '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_recur39168_
                                                    _body39272_
                                                    _vars39254_
                                                    _$e39383_
                                                    _E39256_
                                                    _k39257_))
                                                  _E39256_))
                                               (if (eq? _$e39275_ 'box)
                                                   (let ((_$e39385_
                                                          (gx#genident 'e)))
                                                     (gx#core-list
                                                      'if
                                                      (gx#core-list
                                                       'stx-box?
                                                       _target39255_)
                                                      (gx#core-list
                                                       'let-values
                                                       (cons (cons (cons _$e39385_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (gx#core-list
                                  'unbox
                                  (gx#core-list _unwrap-e38990_ _target39255_))
                                 '()))
                     '())
               (_recur39168_
                _body39272_
                _vars39254_
                _$e39385_
                _E39256_
                _k39257_))
              _E39256_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (eq? _$e39275_ 'datum)
                                                       (gx#core-list
                                                        'if
                                                        (gx#core-list
                                                         'stx-datum?
                                                         _target39255_)
                                                        (gx#core-list
                                                         'if
                                                         (gx#core-list
                                                          'equal?
                                                          (gx#core-list
                                                           'stx-e
                                                           _target39255_)
                                                          _body39272_)
                                                         (_k39257_ _vars39254_)
                                                         _E39256_)
                                                        _E39256_)
                                                       (_BUG39167_
                                                        _e39253_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (##pair? _e3925839265_)
                                                      (let ((_hd3926239390_
                                                             (##car _e3925839265_))
                                                            (_tl3926339392_
                                                             (##cdr _e3925839265_)))
                                                        (let ((_tag39395_
                                                               _hd3926239390_))
                                                          (let ((_body39397_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3926339392_))
                    (_K3926139387_ _body39397_ _tag39395_))))
              (_E3926039269_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_recur39168_
                                   _hd39162_
                                   '()
                                   _target39161_
                                   _E39165_
                                   _make-body39171_)))))))))
                 (let ((_parse-clause38997_
                        (lambda (_hd39066_ _ids39067_)
                          ((letrec ((_recur39069_
                                     (lambda (_e39071_
                                              _vars39072_
                                              _depth39073_)
                                       (if (gx#identifier? _e39071_)
                                           (if (gx#underscore? _e39071_)
                                               (values '(any) _vars39072_)
                                               (if (gx#ellipsis? _e39071_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Misplaced ellipsis"
                                                    _stx38988_
                                                    _hd39066_)
                                                   (if (find (lambda (_id39075_)
                                                               (gx#bound-identifier=?
                                                                _e39071_
                                                                _id39075_))
                                                             _ids39067_)
                                                       (values (cons 'id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _e39071_)
                       _vars39072_)
               (if (find (lambda (_var39077_)
                           (gx#bound-identifier=? _e39071_ (car _var39077_)))
                         _vars39072_)
                   (gx#raise-syntax-error
                    '#f
                    '"Duplicate pattern variable"
                    _stx38988_
                    _e39071_)
                   (values (cons 'var _e39071_)
                           (cons (cons _e39071_ _depth39073_) _vars39072_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (gx#stx-pair? _e39071_)
                                               (let ((_e3907839085_ _e39071_))
                                                 (let ((_E3908039089_
                                                        (lambda ()
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _e3907839085_))))
                                                   (let ((_E3907939150_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e3907839085_)
                        (let ((_e3908139093_ (gx#syntax-e _e3907839085_)))
                          (let ((_hd3908239096_ (##car _e3908139093_))
                                (_tl3908339098_ (##cdr _e3908139093_)))
                            (let ((_hd39101_ _hd3908239096_))
                              (let ((_rest39103_ _tl3908339098_))
                                (if '#t
                                    (let ((_make-pair39118_
                                           (lambda (_tag39105_
                                                    _hd39106_
                                                    _tl39107_)
                                             (let ((_hd-depth39109_
                                                    (if (eq? _tag39105_
                                                             'splice)
                                                        (fx1+ _depth39073_)
                                                        _depth39073_)))
                                               (let ((_g40525_
                                                      (_recur39069_
                                                       _hd39106_
                                                       _vars39072_
                                                       _hd-depth39109_)))
                                                 (begin
                                                   (let ((_g40526_
                                                          (values-count
                                                           _g40525_)))
                                                     (if (not (fx= _g40526_ 2))
                                                         (error "Context expects 2 values"
                                                                _g40526_)))
                                                   (let ((_hd39111_
                                                          (values-ref
                                                           _g40525_
                                                           0))
                                                         (_vars39112_
                                                          (values-ref
                                                           _g40525_
                                                           1)))
                                                     (let ((_g40527_
                                                            (_recur39069_
                                                             _tl39107_
                                                             _vars39112_
                                                             _depth39073_)))
                                                       (begin
                                                         (let ((_g40528_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g40527_)))
                   (if (not (fx= _g40528_ 2))
                       (error "Context expects 2 values" _g40528_)))
                 (let ((_tl39114_ (values-ref _g40527_ 0))
                       (_vars39115_ (values-ref _g40527_ 1)))
                   (let ()
                     (values (cons* _tag39105_ _hd39111_ _tl39114_)
                             _vars39115_))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (let ((_e3911939126_ _rest39103_))
                                        (let ((_E3912139130_
                                               (lambda ()
                                                 (_make-pair39118_
                                                  'cons
                                                  _hd39101_
                                                  _rest39103_))))
                                          (let ((_E3912039146_
                                                 (lambda ()
                                                   (if (gx#stx-pair?
                                                        _e3911939126_)
                                                       (let ((_e3912239134_
                                                              (gx#syntax-e
                                                               _e3911939126_)))
                                                         (let ((_hd3912339137_
                                                                (##car _e3912239134_))
                                                               (_tl3912439139_
                                                                (##cdr _e3912239134_)))
                                                           (let ((_rest-hd39142_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd3912339137_))
                     (let ((_rest-tl39144_ _tl3912439139_))
                       (if '#t
                           (if (gx#ellipsis? _rest-hd39142_)
                               (_make-pair39118_
                                'splice
                                _hd39101_
                                _rest-tl39144_)
                               (_make-pair39118_ 'cons _hd39101_ _rest39103_))
                           (_E3912139130_))))))
               (_E3912139130_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let () (_E3912039146_))))))
                                    (_E3908039089_))))))
                        (_E3908039089_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (_E3907939150_)))))
                                               (if (gx#stx-null? _e39071_)
                                                   (values '(null) _vars39072_)
                                                   (if (gx#stx-vector?
                                                        _e39071_)
                                                       (let ((_g40529_
                                                              (_recur39069_
                                                               (vector->list
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e39071_))
                       _vars39072_
                       _depth39073_)))
                 (begin
                   (let ((_g40530_ (values-count _g40529_)))
                     (if (not (fx= _g40530_ 2))
                         (error "Context expects 2 values" _g40530_)))
                   (let ((_e39154_ (values-ref _g40529_ 0))
                         (_vars39155_ (values-ref _g40529_ 1)))
                     (values (cons 'vector _e39154_) _vars39155_))))
               (if (gx#stx-box? _e39071_)
                   (let ((_g40531_
                          (_recur39069_
                           (unbox (gx#syntax-e _e39071_))
                           _vars39072_
                           _depth39073_)))
                     (begin
                       (let ((_g40532_ (values-count _g40531_)))
                         (if (not (fx= _g40532_ 2))
                             (error "Context expects 2 values" _g40532_)))
                       (let ((_e39157_ (values-ref _g40531_ 0))
                             (_vars39158_ (values-ref _g40531_ 1)))
                         (values (cons 'box _e39157_) _vars39158_))))
                   (if (gx#stx-datum? _e39071_)
                       (values (cons 'datum (gx#stx-e _e39071_)) _vars39072_)
                       (gx#raise-syntax-error
                        '#f
                        '"Bad pattern"
                        _stx38988_
                        _e39071_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             _recur39069_)
                           _hd39066_
                           '()
                           '0))))
                   (let ((_generate-clause38995_
                          (lambda (_target39401_
                                   _ids39402_
                                   _clause39403_
                                   _E39404_)
                            (let ((_generate139406_
                                   (lambda (_hd39493_
                                            _fender39494_
                                            _body39495_)
                                     (let ((_g40523_
                                            (_parse-clause38997_
                                             _hd39493_
                                             _ids39402_)))
                                       (begin
                                         (let ((_g40524_
                                                (values-count _g40523_)))
                                           (if (not (fx= _g40524_ 2))
                                               (error "Context expects 2 values"
                                                      _g40524_)))
                                         (let ((_e39497_
                                                (values-ref _g40523_ 0))
                                               (_mvars39498_
                                                (values-ref _g40523_ 1)))
                                           (let ((_pvars39500_
                                                  (map gx#syntax-local-rewrap
                                                       (gx#gentemps
                                                        _mvars39498_))))
                                             (let ((_E39502_
                                                    (cons _E39404_
                                                          (cons _target39401_
                                                                '()))))
                                               (let ((_K39535_
                                                      (gx#core-list
                                                       'lambda%
                                                       _pvars39500_
                                                       (gx#core-list
                                                        'let-syntax
                                                        (map (lambda (_mvar39504_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _pvar39505_)
                       (let ((_mvar3950639513_ _mvar39504_))
                         (let ((_E3950839517_
                                (lambda ()
                                  (error '"No clause matching"
                                         _mvar3950639513_))))
                           (let ((_K3950939523_
                                  (lambda (_depth39520_ _id39521_)
                                    (cons _id39521_
                                          (cons (gx#core-list
                                                 'make-syntax-pattern
                                                 (gx#core-list
                                                  'quote
                                                  _id39521_)
                                                 (gx#core-list
                                                  'quote
                                                  _pvar39505_)
                                                 _depth39520_)
                                                '())))))
                             (if (##pair? _mvar3950639513_)
                                 (let ((_hd3951039526_
                                        (##car _mvar3950639513_))
                                       (_tl3951139528_
                                        (##cdr _mvar3950639513_)))
                                   (let ((_id39531_ _hd3951039526_))
                                     (let ((_depth39533_ _tl3951139528_))
                                       (_K3950939523_
                                        _depth39533_
                                        _id39531_))))
                                 (_E3950839517_))))))
                     _mvars39498_
                     _pvars39500_)
                (if (true? _fender39494_)
                    _body39495_
                    (gx#core-list 'if _fender39494_ _body39495_ _E39502_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (_generate-match38996_
                                                    _hd39493_
                                                    _target39401_
                                                    _e39497_
                                                    _mvars39498_
                                                    _K39535_
                                                    _E39502_)))))))))))
                              (let ((_e3940739427_ _clause39403_))
                                (let ((_E3941639431_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _e3940739427_))))
                                  (let ((_E3940939465_
                                         (lambda ()
                                           (if (gx#stx-pair? _e3940739427_)
                                               (let ((_e3941739435_
                                                      (gx#syntax-e
                                                       _e3940739427_)))
                                                 (let ((_hd3941839438_
                                                        (##car _e3941739435_))
                                                       (_tl3941939440_
                                                        (##cdr _e3941739435_)))
                                                   (let ((_hd39443_
                                                          _hd3941839438_))
                                                     (if (gx#stx-pair?
                                                          _tl3941939440_)
                                                         (let ((_e3942039445_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl3941939440_)))
                   (let ((_hd3942139448_ (##car _e3942039445_))
                         (_tl3942239450_ (##cdr _e3942039445_)))
                     (let ((_fender39453_ _hd3942139448_))
                       (if (gx#stx-pair? _tl3942239450_)
                           (let ((_e3942339455_ (gx#syntax-e _tl3942239450_)))
                             (let ((_hd3942439458_ (##car _e3942339455_))
                                   (_tl3942539460_ (##cdr _e3942339455_)))
                               (let ((_body39463_ _hd3942439458_))
                                 (if (gx#stx-null? _tl3942539460_)
                                     (if '#t
                                         (_generate139406_
                                          _hd39443_
                                          _fender39453_
                                          _body39463_)
                                         (_E3941639431_))
                                     (_E3941639431_)))))
                           (_E3941639431_)))))
                 (_E3941639431_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E3941639431_)))))
                                    (let ((_E3940839489_
                                           (lambda ()
                                             (if (gx#stx-pair? _e3940739427_)
                                                 (let ((_e3941039469_
                                                        (gx#syntax-e
                                                         _e3940739427_)))
                                                   (let ((_hd3941139472_
                                                          (##car _e3941039469_))
                                                         (_tl3941239474_
                                                          (##cdr _e3941039469_)))
                                                     (let ((_hd39477_
                                                            _hd3941139472_))
                                                       (if (gx#stx-pair?
                                                            _tl3941239474_)
                                                           (let ((_e3941339479_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl3941239474_)))
                     (let ((_hd3941439482_ (##car _e3941339479_))
                           (_tl3941539484_ (##cdr _e3941339479_)))
                       (let ((_body39487_ _hd3941439482_))
                         (if (gx#stx-null? _tl3941539484_)
                             (if '#t
                                 (_generate139406_ _hd39477_ '#t _body39487_)
                                 (_E3940939465_))
                             (_E3940939465_)))))
                   (_E3940939465_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E3940939465_)))))
                                      (let () (_E3940839489_))))))))))
                     (let ((_generate-bindings38993_
                            (lambda (_target39578_
                                     _ids39579_
                                     _clauses39580_
                                     _clause-ids39581_
                                     _E39582_)
                              (let ((_generate139584_
                                     (lambda (_clause39683_
                                              _clause-id39684_
                                              _E39685_)
                                       (cons (cons _clause-id39684_ '())
                                             (cons (gx#core-list
                                                    'lambda%
                                                    (cons _target39578_ '())
                                                    (_generate-clause38995_
                                                     _target39578_
                                                     _ids39579_
                                                     _clause39683_
                                                     _E39685_))
                                                   '())))))
                                ((letrec ((_lp39586_
                                           (lambda (_rest39588_
                                                    _rest-ids39589_
                                                    _bindings39590_)
                                             (let ((_rest3959139599_
                                                    _rest39588_))
                                               (let ((_E3959439603_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _rest3959139599_))))
                                                 (let ((_else3959339607_
                                                        (lambda ()
                                                          _bindings39590_)))
                                                   (let ((_K3959539671_
                                                          (lambda (_rest39610_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause39611_)
                    (let ((_rest-ids3961239619_ _rest-ids39589_))
                      (let ((_E3961439623_
                             (lambda ()
                               (error '"No clause matching"
                                      _rest-ids3961239619_))))
                        (let ((_K3961539659_
                               (lambda (_rest-ids39626_ _clause-id39627_)
                                 (let ((_rest-ids3962839636_ _rest-ids39626_))
                                   (let ((_E3963139640_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _rest-ids3962839636_))))
                                     (let ((_else3963039644_
                                            (lambda ()
                                              (cons (_generate139584_
                                                     _clause39611_
                                                     _clause-id39627_
                                                     _E39582_)
                                                    _bindings39590_))))
                                       (let ((_K3963239649_
                                              (lambda (_next-clause-id39647_)
                                                (_lp39586_
                                                 _rest39610_
                                                 _rest-ids39626_
                                                 (cons (_generate139584_
                                                        _clause39611_
                                                        _clause-id39627_
                                                        _next-clause-id39647_)
                                                       _bindings39590_)))))
                                         (if (##pair? _rest-ids3962839636_)
                                             (let ((_hd3963339652_
                                                    (##car _rest-ids3962839636_))
                                                   (_tl3963439654_
                                                    (##cdr _rest-ids3962839636_)))
                                               (let ((_next-clause-id39657_
                                                      _hd3963339652_))
                                                 (_K3963239649_
                                                  _next-clause-id39657_)))
                                             (_else3963039644_)))))))))
                          (if (##pair? _rest-ids3961239619_)
                              (let ((_hd3961639662_
                                     (##car _rest-ids3961239619_))
                                    (_tl3961739664_
                                     (##cdr _rest-ids3961239619_)))
                                (let ((_clause-id39667_ _hd3961639662_))
                                  (let ((_rest-ids39669_ _tl3961739664_))
                                    (_K3961539659_
                                     _rest-ids39669_
                                     _clause-id39667_))))
                              (_E3961439623_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (##pair? _rest3959139599_)
                                                         (let ((_hd3959639674_
                                                                (##car _rest3959139599_))
                                                               (_tl3959739676_
                                                                (##cdr _rest3959139599_)))
                                                           (let ((_clause39679_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd3959639674_))
                     (let ((_rest39681_ _tl3959739676_))
                       (_K3959539671_ _rest39681_ _clause39679_))))
                 (_else3959339607_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _lp39586_)
                                 _clauses39580_
                                 _clause-ids39581_
                                 '())))))
                       (let ((_e3899839011_ _stx38988_))
                         (let ((_E3900039015_
                                (lambda ()
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _e3899839011_))))
                           (let ((_E3899939062_
                                  (lambda ()
                                    (if (gx#stx-pair? _e3899839011_)
                                        (let ((_e3900139019_
                                               (gx#syntax-e _e3899839011_)))
                                          (let ((_hd3900239022_
                                                 (##car _e3900139019_))
                                                (_tl3900339024_
                                                 (##cdr _e3900139019_)))
                                            (if (gx#stx-pair? _tl3900339024_)
                                                (let ((_e3900439027_
                                                       (gx#syntax-e
                                                        _tl3900339024_)))
                                                  (let ((_hd3900539030_
                                                         (##car _e3900439027_))
                                                        (_tl3900639032_
                                                         (##cdr _e3900439027_)))
                                                    (let ((_expr39035_
                                                           _hd3900539030_))
                                                      (if (gx#stx-pair?
                                                           _tl3900639032_)
                                                          (let ((_e3900739037_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl3900639032_)))
                    (let ((_hd3900839040_ (##car _e3900739037_))
                          (_tl3900939042_ (##cdr _e3900739037_)))
                      (let ((_ids39045_ _hd3900839040_))
                        (let ((_clauses39047_ _tl3900939042_))
                          (if '#t
                              (if (not (gx#identifier-list? _ids39045_))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad template identifier list"
                                   _stx38988_
                                   _ids39045_)
                                  (if (not (gx#stx-list? _clauses39047_))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax"
                                       _stx38988_)
                                      (let ((_ids39049_
                                             (gx#syntax->list _ids39045_)))
                                        (let ((_clauses39051_
                                               (gx#syntax->list
                                                _clauses39047_)))
                                          (let ((_clause-ids39053_
                                                 (gx#gentemps _clauses39051_)))
                                            (let ((_E39055_ (gx#genident)))
                                              (let ((_target39057_
                                                     (gx#genident)))
                                                (let ((_first39059_
                                                       (if (null? _clauses39051_)
                                                           _E39055_
                                                           (car _clause-ids39053_))))
                                                  (let ()
                                                    (gx#stx-wrap-source
                                                     (gx#core-list
                                                      'let-values
                                                      (cons (cons (cons _E39055_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (gx#core-list
                                 'lambda%
                                 (cons _target39057_ '())
                                 (gx#core-list
                                  'raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _target39057_))
                                '()))
                    '())
              (_generate-body38994_
               (_generate-bindings38993_
                _target39057_
                _ids39049_
                _clauses39051_
                _clause-ids39053_
                _E39055_)
               (cons _first39059_ (cons _expr39035_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gx#stx-source
                                                      _stx38988_)))))))))))
                              (_E3900039015_))))))
                  (_E3900039015_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E3900039015_))))
                                        (_E3900039015_)))))
                             (let () (_E3899939062_)))))))))))))
      (lambda _g40534_
        (let ((_g40533_ (length _g40534_)))
          (cond ((fx= _g40533_ 1)
                 (apply (lambda (_stx39690_)
                          (let ((_identifier=?39692_ 'free-identifier=?))
                            (let ((_unwrap-e39694_ 'syntax-e))
                              (let ((_wrap-e39696_ 'quote-syntax))
                                (_opt-lambda3898639687_
                                 _stx39690_
                                 _identifier=?39692_
                                 _unwrap-e39694_
                                 _wrap-e39696_)))))
                        _g40534_))
                ((fx= _g40533_ 2)
                 (apply (lambda (_stx39698_ _identifier=?39699_)
                          (let ((_unwrap-e39701_ 'syntax-e))
                            (let ((_wrap-e39703_ 'quote-syntax))
                              (_opt-lambda3898639687_
                               _stx39698_
                               _identifier=?39699_
                               _unwrap-e39701_
                               _wrap-e39703_))))
                        _g40534_))
                ((fx= _g40533_ 3)
                 (apply (lambda (_stx39705_
                                 _identifier=?39706_
                                 _unwrap-e39707_)
                          (let ((_wrap-e39709_ 'quote-syntax))
                            (_opt-lambda3898639687_
                             _stx39705_
                             _identifier=?39706_
                             _unwrap-e39707_
                             _wrap-e39709_)))
                        _g40534_))
                ((fx= _g40533_ 4)
                 (apply (lambda (_stx39711_
                                 _identifier=?39712_
                                 _unwrap-e39713_
                                 _wrap-e39714_)
                          (_opt-lambda3898639687_
                           _stx39711_
                           _identifier=?39712_
                           _unwrap-e39713_
                           _wrap-e39714_))
                        _g40534_))
                (else (error "No clause matching arguments" _g40534_)))))))
  (define gx#syntax-local-pattern?
    (lambda (_stx38985_)
      (if (gx#identifier? _stx38985_)
          (gx#syntax-pattern? (gx#syntax-local-e _stx38985_ false))
          '#f)))
  (define gx#syntax-check-splice-targets
    (lambda (_hd38943_ . _rest38944_)
      (let ((_len38946_ (length _hd38943_)))
        ((letrec ((_lp38948_
                   (lambda (_rest38950_)
                     (let ((_rest3895138959_ _rest38950_))
                       (let ((_E3895438963_
                              (lambda ()
                                (error '"No clause matching"
                                       _rest3895138959_))))
                         (let ((_else3895338967_ (lambda () (void))))
                           (let ((_K3895538973_
                                  (lambda (_rest38970_ _hd38971_)
                                    (if (fx= _len38946_ (length _hd38971_))
                                        (_lp38948_ _rest38970_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Splice length mismatch"
                                         _hd38971_)))))
                             (if (##pair? _rest3895138959_)
                                 (let ((_hd3895638976_
                                        (##car _rest3895138959_))
                                       (_tl3895738978_
                                        (##cdr _rest3895138959_)))
                                   (let ((_hd38981_ _hd3895638976_))
                                     (let ((_rest38983_ _tl3895738978_))
                                       (_K3895538973_ _rest38983_ _hd38981_))))
                                 (_else3895338967_)))))))))
           _lp38948_)
         _rest38944_))))
  (define gx#syntax-split-splice
    (lambda (_stx38901_ _n38902_)
      ((letrec ((_lp38904_
                 (lambda (_rest38906_ _r38907_)
                   (if (gx#stx-pair? _rest38906_)
                       (let ((_g3890838915_ (gx#syntax-e _rest38906_)))
                         (let ((_E3891038919_
                                (lambda ()
                                  (error '"No clause matching"
                                         _g3890838915_))))
                           (let ((_K3891138925_
                                  (lambda (_rest38922_ _hd38923_)
                                    (_lp38904_
                                     _rest38922_
                                     (cons _hd38923_ _r38907_)))))
                             (if (##pair? _g3890838915_)
                                 (let ((_hd3891238928_ (##car _g3890838915_))
                                       (_tl3891338930_ (##cdr _g3890838915_)))
                                   (let ((_hd38933_ _hd3891238928_))
                                     (let ((_rest38935_ _tl3891338930_))
                                       (_K3891138925_ _rest38935_ _hd38933_))))
                                 (_E3891038919_)))))
                       ((letrec ((_lp38937_
                                  (lambda (_n38939_ _l38940_ _r38941_)
                                    (if (null? _l38940_)
                                        (values _l38940_ _r38941_)
                                        (if (fxpositive? _n38939_)
                                            (_lp38937_
                                             (fx1- _n38939_)
                                             (cdr _l38940_)
                                             (cons (car _l38940_) _r38941_))
                                            (values (reverse _l38940_)
                                                    _r38941_))))))
                          _lp38937_)
                        _n38902_
                        _r38907_
                        _rest38906_)))))
         _lp38904_)
       _stx38901_
       '()))))
