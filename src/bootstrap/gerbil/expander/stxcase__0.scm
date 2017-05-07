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
    (lambda _$args12054_
      (apply make-struct-instance gx#syntax-pattern::t _$args12054_)))
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
    (lambda (_self12051_ _stx12052_)
      (gx#raise-syntax-error
       '#f
       '"Identifier used out of context"
       _stx12052_)))
  (bind-method!
   gx#syntax-pattern::t
   'apply-macro-expander
   gx#syntax-pattern::apply-macro-expander
   '#f)
  (define gx#macro-expand-syntax
    (lambda (_stx11660_)
      (let ((_generate11662_
             (lambda (_e11889_)
               (let ((_BUG11891_
                      (lambda (_q12049_)
                        (error '"BUG: syntax; generate"
                               _stx11660_
                               _e11889_
                               _q12049_))))
                 (let ((_local-pattern-e11892_
                        (lambda (_pat12047_)
                          (gx#syntax-local-rewrap
                           (gx#syntax-pattern-id _pat12047_)))))
                   (let ((_getvar11893_
                          (lambda (_q12044_ _vars12045_)
                            (assgetq _q12044_ _vars12045_ _BUG11891_))))
                     (let ((_getarg11894_
                            (lambda (_arg12010_ _vars12011_)
                              (let ((_arg1201212019_ _arg12010_))
                                (let ((_E1201412023_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _arg1201212019_))))
                                  (let ((_K1201512032_
                                         (lambda (_e12026_ _tag12027_)
                                           (let ((_$e12029_ _tag12027_))
                                             (if (eq? _$e12029_ 'ref)
                                                 (_getvar11893_
                                                  _e12026_
                                                  _vars12011_)
                                                 (if (eq? _$e12029_ 'pattern)
                                                     (_local-pattern-e11892_
                                                      _e12026_)
                                                     (_BUG11891_
                                                      _arg12010_)))))))
                                    (if (##pair? _arg1201212019_)
                                        (let ((_hd1201612035_
                                               (##car _arg1201212019_))
                                              (_tl1201712037_
                                               (##cdr _arg1201212019_)))
                                          (let ((_tag12040_ _hd1201612035_))
                                            (let ((_e12042_ _tl1201712037_))
                                              (_K1201512032_
                                               _e12042_
                                               _tag12040_))))
                                        (_E1201412023_))))))))
                       ((letrec ((_recur11896_
                                  (lambda (_e11898_ _vars11899_)
                                    (let ((_e1190011907_ _e11898_))
                                      (let ((_E1190211911_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _e1190011907_))))
                                        (let ((_K1190311998_
                                               (lambda (_body11914_ _tag11915_)
                                                 (let ((_$e11917_ _tag11915_))
                                                   (if (eq? _$e11917_ 'datum)
                                                       (gx#core-list
                                                        'quote
                                                        _body11914_)
                                                       (if (eq? _$e11917_
                                                                'term)
                                                           (gx#core-list
                                                            'datum->syntax
                                                            '#f
                                                            (gx#core-list
                                                             'quote
                                                             _body11914_))
                                                           (if (eq? _$e11917_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'pattern)
                       (_local-pattern-e11892_ _body11914_)
                       (if (eq? _$e11917_ 'ref)
                           (_getvar11893_ _body11914_ _vars11899_)
                           (if (eq? _$e11917_ 'cons)
                               (gx#core-list
                                'cons
                                (_recur11896_ (car _body11914_) _vars11899_)
                                (_recur11896_ (cdr _body11914_) _vars11899_))
                               (if (eq? _$e11917_ 'vector)
                                   (gx#core-list
                                    'list->vector
                                    (_recur11896_ _body11914_ _vars11899_))
                                   (if (eq? _$e11917_ 'box)
                                       (gx#core-list
                                        'box
                                        (_recur11896_ _body11914_ _vars11899_))
                                       (if (eq? _$e11917_ 'splice)
                                           (let ((_body1191911930_
                                                  _body11914_))
                                             (let ((_E1192111934_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _body1191911930_))))
                                               (let ((_K1192211972_
                                                      (lambda (_args11937_
                                                               _iv11938_
                                                               _hd11939_
                                                               _depth11940_)
                                                        (let ((_targets11946_
                                                               (map (lambda (_g1194111943_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (_getarg11894_ _g1194111943_ _vars11899_))
                            _args11937_)))
                  (let ((_fold-in11948_ (gx#gentemps _args11937_)))
                    (let ((_fold-out11950_ (gx#genident)))
                      (let ((_lambda-args11952_
                             (foldr cons
                                    (cons _fold-out11950_ '())
                                    _fold-in11948_)))
                        (let ((_lambda-body11969_
                               (if (fx> _depth11940_ '1)
                                   (let ((_r-args11960_
                                          (map (lambda (_arg11954_)
                                                 (cons 'ref (cdr _arg11954_)))
                                               _args11937_))
                                         (_r-vars11961_
                                          (foldr (lambda (_arg11956_
                                                          _var11957_
                                                          _r11958_)
                                                   (cons (cons (cdr _arg11956_)
                                                               _var11957_)
                                                         _r11958_))
                                                 _vars11899_
                                                 _args11937_
                                                 _fold-in11948_)))
                                     (_recur11896_
                                      (cons* 'splice
                                             (fx1- _depth11940_)
                                             _hd11939_
                                             (cons 'var _fold-out11950_)
                                             _r-args11960_)
                                      _r-vars11961_))
                                   (let ((_hd-vars11967_
                                          (foldr (lambda (_arg11963_
                                                          _var11964_
                                                          _r11965_)
                                                   (cons (cons (cdr _arg11963_)
                                                               _var11964_)
                                                         _r11965_))
                                                 _vars11899_
                                                 _args11937_
                                                 _fold-in11948_)))
                                     (gx#core-list
                                      'cons
                                      (_recur11896_ _hd11939_ _hd-vars11967_)
                                      _fold-out11950_)))))
                          (let ()
                            (gx#core-list
                             'begin
                             (if (fx> (length _targets11946_) '1)
                                 (gx#core-cons*
                                  'syntax-check-splice-targets
                                  _targets11946_)
                                 '#!void)
                             (gx#core-cons*
                              'foldr
                              (gx#core-list
                               'lambda%
                               _lambda-args11952_
                               _lambda-body11969_)
                              (_recur11896_ _iv11938_ _vars11899_)
                              _targets11946_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (##pair? _body1191911930_)
                                                     (let ((_hd1192311975_
                                                            (##car _body1191911930_))
                                                           (_tl1192411977_
                                                            (##cdr _body1191911930_)))
                                                       (let ((_depth11980_
                                                              _hd1192311975_))
                                                         (if (##pair? _tl1192411977_)
                                                             (let ((_hd1192511982_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##car _tl1192411977_))
                           (_tl1192611984_ (##cdr _tl1192411977_)))
                       (let ((_hd11987_ _hd1192511982_))
                         (if (##pair? _tl1192611984_)
                             (let ((_hd1192711989_ (##car _tl1192611984_))
                                   (_tl1192811991_ (##cdr _tl1192611984_)))
                               (let ((_iv11994_ _hd1192711989_))
                                 (let ((_args11996_ _tl1192811991_))
                                   (_K1192211972_
                                    _args11996_
                                    _iv11994_
                                    _hd11987_
                                    _depth11980_))))
                             (_E1192111934_))))
                     (_E1192111934_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E1192111934_)))))
                                           (if (eq? _$e11917_ 'var)
                                               _body11914_
                                               (_BUG11891_
                                                _e11898_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _e1190011907_)
                                              (let ((_hd1190412001_
                                                     (##car _e1190011907_))
                                                    (_tl1190512003_
                                                     (##cdr _e1190011907_)))
                                                (let ((_tag12006_
                                                       _hd1190412001_))
                                                  (let ((_body12008_
                                                         _tl1190512003_))
                                                    (_K1190311998_
                                                     _body12008_
                                                     _tag12006_))))
                                              (_E1190211911_))))))))
                          _recur11896_)
                        _e11889_
                        '()))))))))
        (let ((_parse11663_
               (lambda (_e11704_)
                 (let ((_make-cons11706_
                        (lambda (_hd11881_ _tl11882_)
                          (let ((_g12463_ _hd11881_) (_g12465_ _tl11882_))
                            (begin
                              (let ((_g12464_ (values-count _g12463_)))
                                (if (not (fx= _g12464_ 2))
                                    (error "Context expects 2 values"
                                           _g12464_)))
                              (let ((_g12466_ (values-count _g12465_)))
                                (if (not (fx= _g12466_ 2))
                                    (error "Context expects 2 values"
                                           _g12466_)))
                              (let ((_hd-e11884_ (values-ref _g12463_ 0))
                                    (_hd-vars11885_ (values-ref _g12463_ 1)))
                                (let ((_tl-e11886_ (values-ref _g12465_ 0))
                                      (_tl-vars11887_ (values-ref _g12465_ 1)))
                                  (values (cons* 'cons _hd-e11884_ _tl-e11886_)
                                          (append _hd-vars11885_
                                                  _tl-vars11887_)))))))))
                   (let ((_make-splice11707_
                          (lambda (_where11820_
                                   _depth11821_
                                   _hd11822_
                                   _tl11823_)
                            (let ((_g12459_ _hd11822_) (_g12461_ _tl11823_))
                              (begin
                                (let ((_g12460_ (values-count _g12459_)))
                                  (if (not (fx= _g12460_ 2))
                                      (error "Context expects 2 values"
                                             _g12460_)))
                                (let ((_g12462_ (values-count _g12461_)))
                                  (if (not (fx= _g12462_ 2))
                                      (error "Context expects 2 values"
                                             _g12462_)))
                                (let ((_hd-e11825_ (values-ref _g12459_ 0))
                                      (_hd-vars11826_ (values-ref _g12459_ 1)))
                                  (let ((_tl-e11827_ (values-ref _g12461_ 0))
                                        (_tl-vars11828_
                                         (values-ref _g12461_ 1)))
                                    ((letrec ((_lp11830_
                                               (lambda (_rest11832_
                                                        _targets11833_
                                                        _vars11834_)
                                                 (let ((_rest1183511845_
                                                        _rest11832_))
                                                   (let ((_E1183811849_
                                                          (lambda ()
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _rest1183511845_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_else1183711853_
                                                            (lambda ()
                                                              (if (null? _targets11833_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Misplaced ellipsis"
                           _stx11660_
                           _where11820_)
                          (values (cons* 'splice
                                         _depth11821_
                                         _hd-e11825_
                                         _tl-e11827_
                                         _targets11833_)
                                  _vars11834_)))))
               (let ((_K1183911862_
                      (lambda (_rest11856_ _hd-pat11857_ _hd-depth*11858_)
                        (let ((_hd-depth11860_
                               (fx- _hd-depth*11858_ _depth11821_)))
                          (if (fxpositive? _hd-depth11860_)
                              (_lp11830_
                               _rest11856_
                               (cons (cons 'ref _hd-pat11857_) _targets11833_)
                               (cons (cons _hd-depth11860_ _hd-pat11857_)
                                     _vars11834_))
                              (if (fxzero? _hd-depth11860_)
                                  (_lp11830_
                                   _rest11856_
                                   (cons (cons 'pattern _hd-pat11857_)
                                         _targets11833_)
                                   _vars11834_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Too many ellipses"
                                   _stx11660_
                                   _where11820_)))))))
                 (if (##pair? _rest1183511845_)
                     (let ((_hd1184011865_ (##car _rest1183511845_))
                           (_tl1184111867_ (##cdr _rest1183511845_)))
                       (if (##pair? _hd1184011865_)
                           (let ((_hd1184211870_ (##car _hd1184011865_))
                                 (_tl1184311872_ (##cdr _hd1184011865_)))
                             (let ((_hd-depth*11875_ _hd1184211870_))
                               (let ((_hd-pat11877_ _tl1184311872_))
                                 (let ((_rest11879_ _tl1184111867_))
                                   (_K1183911862_
                                    _rest11879_
                                    _hd-pat11877_
                                    _hd-depth*11875_)))))
                           (_else1183711853_)))
                     (_else1183711853_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _lp11830_)
                                     _hd-vars11826_
                                     '()
                                     _tl-vars11828_))))))))
                     (letrec ((_recur11708_
                               (lambda (_e11713_ _is-e?11714_)
                                 (if (_is-e?11714_ _e11713_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Mislpaced ellipsis"
                                      _stx11660_)
                                     (if (gx#syntax-local-pattern? _e11713_)
                                         (let ((_pat11716_
                                                (gx#syntax-local-e _e11713_)))
                                           (let ((_depth11718_
                                                  (gx#syntax-pattern-depth
                                                   _pat11716_)))
                                             (let ()
                                               (if (fxpositive? _depth11718_)
                                                   (values (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pat11716_)
                   (cons (cons _depth11718_ _pat11716_) '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (values (cons 'pattern
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pat11716_)
                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (if (gx#identifier? _e11713_)
                                             (values (cons 'term _e11713_) '())
                                             (if (gx#stx-pair? _e11713_)
                                                 (let ((_e1172011727_
                                                        _e11713_))
                                                   (let ((_E1172211731_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _e1172011727_))))
                                                     (let ((_E1172111810_
                                                            (lambda ()
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e1172011727_)
                          (let ((_e1172311735_ (gx#syntax-e _e1172011727_)))
                            (let ((_hd1172411738_ (##car _e1172311735_))
                                  (_tl1172511740_ (##cdr _e1172311735_)))
                              (let ((_hd11743_ _hd1172411738_))
                                (let ((_rest11745_ _tl1172511740_))
                                  (if '#t
                                      (if (_is-e?11714_ _hd11743_)
                                          (let ((_e1174611753_ _rest11745_))
                                            (let ((_E1174811757_
                                                   (lambda ()
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad ellipsis syntax"
                                                      _stx11660_
                                                      _e11713_))))
                                              (let ((_E1174711771_
                                                     (lambda ()
                                                       (if (gx#stx-pair?
                                                            _e1174611753_)
                                                           (let ((_e1174911761_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _e1174611753_)))
                     (let ((_hd1175011764_ (##car _e1174911761_))
                           (_tl1175111766_ (##cdr _e1174911761_)))
                       (let ((_rest11769_ _hd1175011764_))
                         (if (gx#stx-null? _tl1175111766_)
                             (if '#t
                                 (_recur11708_ _rest11769_ false)
                                 (_E1174811757_))
                             (_E1174811757_)))))
                   (_E1174811757_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let () (_E1174711771_)))))
                                          ((letrec ((_lp11775_
                                                     (lambda (_rest11777_
                                                              _depth11778_)
                                                       (let ((_e1177911786_
                                                              _rest11777_))
                                                         (let ((_E1178111790_
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (fxpositive? _depth11778_)
                              (_make-splice11707_
                               _e11713_
                               _depth11778_
                               (_recur11708_ _hd11743_ _is-e?11714_)
                               (_recur11708_ _rest11777_ _is-e?11714_))
                              (_make-cons11706_
                               (_recur11708_ _hd11743_ _is-e?11714_)
                               (_recur11708_ _rest11777_ _is-e?11714_))))))
                   (let ((_E1178011806_
                          (lambda ()
                            (if (gx#stx-pair? _e1177911786_)
                                (let ((_e1178211794_
                                       (gx#syntax-e _e1177911786_)))
                                  (let ((_hd1178311797_ (##car _e1178211794_))
                                        (_tl1178411799_ (##cdr _e1178211794_)))
                                    (let ((_rest-hd11802_ _hd1178311797_))
                                      (let ((_rest-tl11804_ _tl1178411799_))
                                        (if '#t
                                            (if (_is-e?11714_ _rest-hd11802_)
                                                (_lp11775_
                                                 _rest-tl11804_
                                                 (fx1+ _depth11778_))
                                                (if (fxpositive? _depth11778_)
                                                    (_make-splice11707_
                                                     _e11713_
                                                     _depth11778_
                                                     (_recur11708_
                                                      _hd11743_
                                                      _is-e?11714_)
                                                     (_recur11708_
                                                      _rest11777_
                                                      _is-e?11714_))
                                                    (_make-cons11706_
                                                     (_recur11708_
                                                      _hd11743_
                                                      _is-e?11714_)
                                                     (_recur11708_
                                                      _rest11777_
                                                      _is-e?11714_))))
                                            (_E1178111790_))))))
                                (_E1178111790_)))))
                     (let () (_E1178011806_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _lp11775_)
                                           _rest11745_
                                           '0))
                                      (_E1172211731_))))))
                          (_E1172211731_)))))
               (let () (_E1172111810_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-vector? _e11713_)
                                                     (let ((_g12453_
                                                            (_recur11708_
                                                             (vector->list
                                                              (gx#stx-unwrap
                                                               _e11713_))
                                                             _is-e?11714_)))
                                                       (begin
                                                         (let ((_g12454_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g12453_)))
                   (if (not (fx= _g12454_ 2))
                       (error "Context expects 2 values" _g12454_)))
                 (let ((_e11814_ (values-ref _g12453_ 0))
                       (_vars11815_ (values-ref _g12453_ 1)))
                   (values (cons 'vector _e11814_) _vars11815_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#stx-box? _e11713_)
                                                         (let ((_g12455_
                                                                (_recur11708_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (unbox (gx#stx-unwrap _e11713_))
                         _is-e?11714_)))
                   (begin
                     (let ((_g12456_ (values-count _g12455_)))
                       (if (not (fx= _g12456_ 2))
                           (error "Context expects 2 values" _g12456_)))
                     (let ((_e11817_ (values-ref _g12455_ 0))
                           (_vars11818_ (values-ref _g12455_ 1)))
                       (values (cons 'box _e11817_) _vars11818_))))
                 (values (cons 'datum _e11713_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                       (let ((_g12457_ (_recur11708_ _e11704_ gx#ellipsis?)))
                         (begin
                           (let ((_g12458_ (values-count _g12457_)))
                             (if (not (fx= _g12458_ 2))
                                 (error "Context expects 2 values" _g12458_)))
                           (let ((_tree11710_ (values-ref _g12457_ 0))
                                 (_vars11711_ (values-ref _g12457_ 1)))
                             (if (null? _vars11711_)
                                 _tree11710_
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Missing ellipsis"
                                  _stx11660_
                                  _vars11711_)))))))))))
          (let ((_e1166411674_ _stx11660_))
            (let ((_E1166611678_
                   (lambda ()
                     (gx#raise-syntax-error '#f '"Bad syntax" _stx11660_))))
              (let ((_E1166511700_
                     (lambda ()
                       (if (gx#stx-pair? _e1166411674_)
                           (let ((_e1166711682_ (gx#syntax-e _e1166411674_)))
                             (let ((_hd1166811685_ (##car _e1166711682_))
                                   (_tl1166911687_ (##cdr _e1166711682_)))
                               (if (gx#stx-pair? _tl1166911687_)
                                   (let ((_e1167011690_
                                          (gx#syntax-e _tl1166911687_)))
                                     (let ((_hd1167111693_
                                            (##car _e1167011690_))
                                           (_tl1167211695_
                                            (##cdr _e1167011690_)))
                                       (let ((_form11698_ _hd1167111693_))
                                         (if (gx#stx-null? _tl1167211695_)
                                             (if '#t
                                                 (gx#stx-wrap-source
                                                  (_generate11662_
                                                   (_parse11663_ _form11698_))
                                                  (gx#stx-source _stx11660_))
                                                 (_E1166611678_))
                                             (_E1166611678_)))))
                                   (_E1166611678_))))
                           (_E1166611678_)))))
                (let () (_E1166511700_)))))))))
  (define gx#macro-expand-syntax-case
    (let ((_opt-lambda1093011631_
           (lambda (_stx10932_
                    _identifier=?10933_
                    _unwrap-e10934_
                    _wrap-e10935_)
             (let ((_generate-body10938_
                    (lambda (_bindings11482_ _body11483_)
                      ((letrec ((_recur11485_
                                 (lambda (_rest11487_)
                                   (let ((_rest1148811496_ _rest11487_))
                                     (let ((_E1149111500_
                                            (lambda ()
                                              (error '"No clause matching"
                                                     _rest1148811496_))))
                                       (let ((_else1149011504_
                                              (lambda () _body11483_)))
                                         (let ((_K1149211510_
                                                (lambda (_rest11507_ _hd11508_)
                                                  (gx#core-list
                                                   'let-values
                                                   (cons _hd11508_ '())
                                                   (_recur11485_
                                                    _rest11507_)))))
                                           (if (##pair? _rest1148811496_)
                                               (let ((_hd1149311513_
                                                      (##car _rest1148811496_))
                                                     (_tl1149411515_
                                                      (##cdr _rest1148811496_)))
                                                 (let ((_hd11518_
                                                        _hd1149311513_))
                                                   (let ((_rest11520_
                                                          _tl1149411515_))
                                                     (_K1149211510_
                                                      _rest11520_
                                                      _hd11518_))))
                                               (_else1149011504_)))))))))
                         _recur11485_)
                       _bindings11482_))))
               (let ((_generate-match10940_
                      (lambda (_where11104_
                               _target11105_
                               _hd11106_
                               _mvars11107_
                               _K11108_
                               _E11109_)
                        (let ((_BUG11111_
                               (lambda (_q11343_)
                                 (error '"BUG: syntax-case; generate"
                                        _stx10932_
                                        _hd11106_
                                        _q11343_))))
                          (let ((_splice-rlen11113_
                                 (lambda (_e11159_)
                                   ((letrec ((_lp11161_
                                              (lambda (_e11163_ _n11164_)
                                                (let ((_e1116511172_ _e11163_))
                                                  (let ((_E1116711176_
                                                         (lambda ()
                                                           (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _e1116511172_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_K1116811185_
                                                           (lambda (_body11179_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _tag11180_)
                     (let ((_$e11182_ _tag11180_))
                       (if (eq? _$e11182_ 'splice)
                           (gx#raise-syntax-error
                            '#f
                            '"Ambiguous pattern"
                            _stx10932_
                            _where11104_)
                           (if (eq? _$e11182_ 'cons)
                               (_lp11161_ (cdr _body11179_) (fx1+ _n11164_))
                               _n11164_))))))
              (if (##pair? _e1116511172_)
                  (let ((_hd1116911188_ (##car _e1116511172_))
                        (_tl1117011190_ (##cdr _e1116511172_)))
                    (let ((_tag11193_ _hd1116911188_))
                      (let ((_body11195_ _tl1117011190_))
                        (_K1116811185_ _body11195_ _tag11193_))))
                  (_E1116711176_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      _lp11161_)
                                    _e11159_
                                    '0))))
                            (let ((_splice-vars11114_
                                   (lambda (_e11121_)
                                     ((letrec ((_recur11123_
                                                (lambda (_e11125_ _vars11126_)
                                                  (let ((_e1112711134_
                                                         _e11125_))
                                                    (let ((_E1112911138_
                                                           (lambda ()
                                                             (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _e1112711134_))))
              (let ((_K1113011147_
                     (lambda (_body11141_ _tag11142_)
                       (let ((_$e11144_ _tag11142_))
                         (if (eq? _$e11144_ 'var)
                             (cons _body11141_ _vars11126_)
                             (if (memq _$e11144_ '(cons splice))
                                 (_recur11123_
                                  (cdr _body11141_)
                                  (_recur11123_ (car _body11141_) _vars11126_))
                                 (if (memq _$e11144_ '(vector box))
                                     (_recur11123_ _body11141_ _vars11126_)
                                     _vars11126_)))))))
                (if (##pair? _e1112711134_)
                    (let ((_hd1113111150_ (##car _e1112711134_))
                          (_tl1113211152_ (##cdr _e1112711134_)))
                      (let ((_tag11155_ _hd1113111150_))
                        (let ((_body11157_ _tl1113211152_))
                          (_K1113011147_ _body11157_ _tag11155_))))
                    (_E1112911138_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        _recur11123_)
                                      _e11121_
                                      '()))))
                              (let ((_make-body11115_
                                     (lambda (_vars11117_)
                                       (cons _K11108_
                                             (map (lambda (_mvar11119_)
                                                    (assgetq (car _mvar11119_)
                                                             _vars11117_
                                                             _BUG11111_))
                                                  _mvars11107_)))))
                                (letrec ((_recur11112_
                                          (lambda (_e11197_
                                                   _vars11198_
                                                   _target11199_
                                                   _E11200_
                                                   _k11201_)
                                            (let ((_e1120211209_ _e11197_))
                                              (let ((_E1120411213_
                                                     (lambda ()
                                                       (error '"No clause matching"
                                                              _e1120211209_))))
                                                (let ((_K1120511331_
                                                       (lambda (_body11216_
                                                                _tag11217_)
                                                         (let ((_$e11219_
                                                                _tag11217_))
                                                           (if (eq? _$e11219_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'any)
                       (_k11201_ _vars11198_)
                       (if (eq? _$e11219_ 'id)
                           (gx#core-list
                            'if
                            (gx#core-list 'identifier? _target11199_)
                            (gx#core-list
                             'if
                             (gx#core-list
                              _identifier=?10933_
                              (gx#core-list _wrap-e10935_ _body11216_)
                              _target11199_)
                             (_k11201_ _vars11198_)
                             _E11200_)
                            _E11200_)
                           (if (eq? _$e11219_ 'var)
                               (_k11201_
                                (cons (cons _body11216_ _target11199_)
                                      _vars11198_))
                               (if (eq? _$e11219_ 'cons)
                                   (let ((_$e11222_ (gx#genident 'e))
                                         (_$hd11223_ (gx#genident 'hd))
                                         (_$tl11224_ (gx#genident 'tl)))
                                     (gx#core-list
                                      'if
                                      (gx#core-list 'stx-pair? _target11199_)
                                      (gx#core-list
                                       'let-values
                                       (cons (cons (cons _$e11222_ '())
                                                   (cons (gx#core-list
                                                          _unwrap-e10934_
                                                          _target11199_)
                                                         '()))
                                             '())
                                       (gx#core-list
                                        'let-values
                                        (cons (cons (cons _$hd11223_ '())
                                                    (cons (gx#core-list
                                                           '##car
                                                           _$e11222_)
                                                          '()))
                                              (cons (cons (cons _$tl11224_ '())
                                                          (cons (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '##cdr
                         _$e11222_)
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '()))
                                        (let ((_body1122511232_ _body11216_))
                                          (let ((_E1122711236_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _body1122511232_))))
                                            (let ((_K1122811244_
                                                   (lambda (_tl11239_
                                                            _hd11240_)
                                                     (_recur11112_
                                                      _hd11240_
                                                      _vars11198_
                                                      _$hd11223_
                                                      _E11200_
                                                      (lambda (_vars11242_)
                                                        (_recur11112_
                                                         _tl11239_
                                                         _vars11242_
                                                         _$tl11224_
                                                         _E11200_
                                                         _k11201_))))))
                                              (if (##pair? _body1122511232_)
                                                  (let ((_hd1122911247_
                                                         (##car _body1122511232_))
                                                        (_tl1123011249_
                                                         (##cdr _body1122511232_)))
                                                    (let ((_hd11252_
                                                           _hd1122911247_))
                                                      (let ((_tl11254_
                                                             _tl1123011249_))
                                                        (_K1122811244_
                                                         _tl11254_
                                                         _hd11252_))))
                                                  (_E1122711236_)))))))
                                      _E11200_))
                                   (if (eq? _$e11219_ 'splice)
                                       (let ((_body1125511262_ _body11216_))
                                         (let ((_E1125711266_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _body1125511262_))))
                                           (let ((_K1125811315_
                                                  (lambda (_tl11269_ _hd11270_)
                                                    (let ((_rlen11272_
                                                           (_splice-rlen11113_
                                                            _tl11269_)))
                                                      (let ((_$target11274_
                                                             (gx#genident
                                                              'target)))
                                                        (let ((_$hd11276_
                                                               (gx#genident
                                                                'hd)))
                                                          (let ((_$tl11278_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#genident 'tl)))
                    (let ((_$lp11280_ (gx#genident 'loop)))
                      (let ((_$lp-e11282_ (gx#genident 'e)))
                        (let ((_$lp-hd11284_ (gx#genident 'lp-hd)))
                          (let ((_$lp-tl11286_ (gx#genident 'lp-tl)))
                            (let ((_svars11288_
                                   (_splice-vars11114_ _hd11270_)))
                              (let ((_lvars11290_ (gx#gentemps _svars11288_)))
                                (let ((_tlvars11292_
                                       (gx#gentemps _svars11288_)))
                                  (let ((_linit11296_
                                         (map (lambda (_var11294_)
                                                (gx#core-list 'quote '()))
                                              _lvars11290_)))
                                    (let ()
                                      (let ((_make-loop11299_
                                             (lambda (_vars11301_)
                                               (gx#core-list
                                                'letrec-values
                                                (cons (cons (cons _$lp11280_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '())
                    (cons (gx#core-list
                           'lambda%
                           (cons _$hd11276_ _lvars11290_)
                           (gx#core-list
                            'if
                            (gx#core-list 'stx-pair? _$hd11276_)
                            (gx#core-list
                             'let-values
                             (cons (cons (cons _$lp-e11282_ '())
                                         (cons (gx#core-list
                                                _unwrap-e10934_
                                                _$hd11276_)
                                               '()))
                                   '())
                             (gx#core-list
                              'let-values
                              (cons (cons (cons _$lp-hd11284_ '())
                                          (cons (gx#core-list
                                                 '##car
                                                 _$lp-e11282_)
                                                '()))
                                    (cons (cons (cons _$lp-tl11286_ '())
                                                (cons (gx#core-list
                                                       '##cdr
                                                       _$lp-e11282_)
                                                      '()))
                                          '()))
                              (_recur11112_
                               _hd11270_
                               '()
                               _$lp-hd11284_
                               _E11200_
                               (lambda (_hdvars11303_)
                                 (cons* _$lp11280_
                                        _$lp-tl11286_
                                        (map (lambda (_svar11305_ _lvar11306_)
                                               (gx#core-list
                                                'cons
                                                (assgetq _svar11305_
                                                         _hdvars11303_
                                                         _BUG11111_)
                                                _lvar11306_))
                                             _svars11288_
                                             _lvars11290_))))))
                            (gx#core-list
                             'let-values
                             (map (lambda (_lvar11308_ _tlvar11309_)
                                    (cons (cons _tlvar11309_ '())
                                          (cons (gx#core-list
                                                 'reverse
                                                 _lvar11308_)
                                                '())))
                                  _lvars11290_
                                  _tlvars11292_)
                             (_k11201_
                              (foldl (lambda (_svar11311_
                                              _tlvar11312_
                                              _r11313_)
                                       (cons (cons _svar11311_ _tlvar11312_)
                                             _r11313_))
                                     _vars11301_
                                     _svars11288_
                                     _tlvars11292_)))))
                          '()))
              '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (cons* _$lp11280_
                                                       _$target11274_
                                                       _linit11296_)))))
                                        (gx#core-list
                                         'if
                                         (gx#core-list
                                          'stx-pair/null?
                                          _target11199_)
                                         (gx#core-list
                                          'if
                                          (gx#core-list
                                           'fx>=
                                           (gx#core-list
                                            'stx-length
                                            _target11199_)
                                           _rlen11272_)
                                          (gx#core-list
                                           'let-values
                                           (cons (cons (cons _$target11274_
                                                             (cons _$tl11278_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '()))
               (cons (gx#core-list
                      'syntax-split-splice
                      _target11199_
                      _rlen11272_)
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (_recur11112_
                                            _tl11269_
                                            _vars11198_
                                            _$tl11278_
                                            _E11200_
                                            _make-loop11299_))
                                          _E11200_)
                                         _E11200_))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _body1125511262_)
                                                 (let ((_hd1125911318_
                                                        (##car _body1125511262_))
                                                       (_tl1126011320_
                                                        (##cdr _body1125511262_)))
                                                   (let ((_hd11323_
                                                          _hd1125911318_))
                                                     (let ((_tl11325_
                                                            _tl1126011320_))
                                                       (_K1125811315_
                                                        _tl11325_
                                                        _hd11323_))))
                                                 (_E1125711266_)))))
                                       (if (eq? _$e11219_ 'null)
                                           (gx#core-list
                                            'if
                                            (gx#core-list
                                             'stx-null?
                                             _target11199_)
                                            (_k11201_ _vars11198_)
                                            _E11200_)
                                           (if (eq? _$e11219_ 'vector)
                                               (let ((_$e11327_
                                                      (gx#genident 'e)))
                                                 (gx#core-list
                                                  'if
                                                  (gx#core-list
                                                   'stx-vector?
                                                   _target11199_)
                                                  (gx#core-list
                                                   'let-values
                                                   (cons (cons (cons _$e11327_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons (gx#core-list
                              'vector->list
                              (gx#core-list _unwrap-e10934_ _target11199_))
                             '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_recur11112_
                                                    _body11216_
                                                    _vars11198_
                                                    _$e11327_
                                                    _E11200_
                                                    _k11201_))
                                                  _E11200_))
                                               (if (eq? _$e11219_ 'box)
                                                   (let ((_$e11329_
                                                          (gx#genident 'e)))
                                                     (gx#core-list
                                                      'if
                                                      (gx#core-list
                                                       'stx-box?
                                                       _target11199_)
                                                      (gx#core-list
                                                       'let-values
                                                       (cons (cons (cons _$e11329_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 '())
                           (cons (gx#core-list
                                  'unbox
                                  (gx#core-list _unwrap-e10934_ _target11199_))
                                 '()))
                     '())
               (_recur11112_
                _body11216_
                _vars11198_
                _$e11329_
                _E11200_
                _k11201_))
              _E11200_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (eq? _$e11219_ 'datum)
                                                       (gx#core-list
                                                        'if
                                                        (gx#core-list
                                                         'stx-datum?
                                                         _target11199_)
                                                        (gx#core-list
                                                         'if
                                                         (gx#core-list
                                                          'equal?
                                                          (gx#core-list
                                                           'stx-e
                                                           _target11199_)
                                                          _body11216_)
                                                         (_k11201_ _vars11198_)
                                                         _E11200_)
                                                        _E11200_)
                                                       (_BUG11111_
                                                        _e11197_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (##pair? _e1120211209_)
                                                      (let ((_hd1120611334_
                                                             (##car _e1120211209_))
                                                            (_tl1120711336_
                                                             (##cdr _e1120211209_)))
                                                        (let ((_tag11339_
                                                               _hd1120611334_))
                                                          (let ((_body11341_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1120711336_))
                    (_K1120511331_ _body11341_ _tag11339_))))
              (_E1120411213_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (_recur11112_
                                   _hd11106_
                                   '()
                                   _target11105_
                                   _E11109_
                                   _make-body11115_)))))))))
                 (let ((_parse-clause10941_
                        (lambda (_hd11010_ _ids11011_)
                          ((letrec ((_recur11013_
                                     (lambda (_e11015_
                                              _vars11016_
                                              _depth11017_)
                                       (if (gx#identifier? _e11015_)
                                           (if (gx#underscore? _e11015_)
                                               (values '(any) _vars11016_)
                                               (if (gx#ellipsis? _e11015_)
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Misplaced ellipsis"
                                                    _stx10932_
                                                    _hd11010_)
                                                   (if (find (lambda (_id11019_)
                                                               (gx#bound-identifier=?
                                                                _e11015_
                                                                _id11019_))
                                                             _ids11011_)
                                                       (values (cons 'id
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _e11015_)
                       _vars11016_)
               (if (find (lambda (_var11021_)
                           (gx#bound-identifier=? _e11015_ (car _var11021_)))
                         _vars11016_)
                   (gx#raise-syntax-error
                    '#f
                    '"Duplicate pattern variable"
                    _stx10932_
                    _e11015_)
                   (values (cons 'var _e11015_)
                           (cons (cons _e11015_ _depth11017_) _vars11016_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (if (gx#stx-pair? _e11015_)
                                               (let ((_e1102211029_ _e11015_))
                                                 (let ((_E1102411033_
                                                        (lambda ()
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _e1102211029_))))
                                                   (let ((_E1102311094_
                                                          (lambda ()
                                                            (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e1102211029_)
                        (let ((_e1102511037_ (gx#syntax-e _e1102211029_)))
                          (let ((_hd1102611040_ (##car _e1102511037_))
                                (_tl1102711042_ (##cdr _e1102511037_)))
                            (let ((_hd11045_ _hd1102611040_))
                              (let ((_rest11047_ _tl1102711042_))
                                (if '#t
                                    (let ((_make-pair11062_
                                           (lambda (_tag11049_
                                                    _hd11050_
                                                    _tl11051_)
                                             (let ((_hd-depth11053_
                                                    (if (eq? _tag11049_
                                                             'splice)
                                                        (fx1+ _depth11017_)
                                                        _depth11017_)))
                                               (let ((_g12469_
                                                      (_recur11013_
                                                       _hd11050_
                                                       _vars11016_
                                                       _hd-depth11053_)))
                                                 (begin
                                                   (let ((_g12470_
                                                          (values-count
                                                           _g12469_)))
                                                     (if (not (fx= _g12470_ 2))
                                                         (error "Context expects 2 values"
                                                                _g12470_)))
                                                   (let ((_hd11055_
                                                          (values-ref
                                                           _g12469_
                                                           0))
                                                         (_vars11056_
                                                          (values-ref
                                                           _g12469_
                                                           1)))
                                                     (let ((_g12471_
                                                            (_recur11013_
                                                             _tl11051_
                                                             _vars11056_
                                                             _depth11017_)))
                                                       (begin
                                                         (let ((_g12472_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g12471_)))
                   (if (not (fx= _g12472_ 2))
                       (error "Context expects 2 values" _g12472_)))
                 (let ((_tl11058_ (values-ref _g12471_ 0))
                       (_vars11059_ (values-ref _g12471_ 1)))
                   (let ()
                     (values (cons* _tag11049_ _hd11055_ _tl11058_)
                             _vars11059_))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (let ((_e1106311070_ _rest11047_))
                                        (let ((_E1106511074_
                                               (lambda ()
                                                 (_make-pair11062_
                                                  'cons
                                                  _hd11045_
                                                  _rest11047_))))
                                          (let ((_E1106411090_
                                                 (lambda ()
                                                   (if (gx#stx-pair?
                                                        _e1106311070_)
                                                       (let ((_e1106611078_
                                                              (gx#syntax-e
                                                               _e1106311070_)))
                                                         (let ((_hd1106711081_
                                                                (##car _e1106611078_))
                                                               (_tl1106811083_
                                                                (##cdr _e1106611078_)))
                                                           (let ((_rest-hd11086_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd1106711081_))
                     (let ((_rest-tl11088_ _tl1106811083_))
                       (if '#t
                           (if (gx#ellipsis? _rest-hd11086_)
                               (_make-pair11062_
                                'splice
                                _hd11045_
                                _rest-tl11088_)
                               (_make-pair11062_ 'cons _hd11045_ _rest11047_))
                           (_E1106511074_))))))
               (_E1106511074_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let () (_E1106411090_))))))
                                    (_E1102411033_))))))
                        (_E1102411033_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (_E1102311094_)))))
                                               (if (gx#stx-null? _e11015_)
                                                   (values '(null) _vars11016_)
                                                   (if (gx#stx-vector?
                                                        _e11015_)
                                                       (let ((_g12473_
                                                              (_recur11013_
                                                               (vector->list
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _e11015_))
                       _vars11016_
                       _depth11017_)))
                 (begin
                   (let ((_g12474_ (values-count _g12473_)))
                     (if (not (fx= _g12474_ 2))
                         (error "Context expects 2 values" _g12474_)))
                   (let ((_e11098_ (values-ref _g12473_ 0))
                         (_vars11099_ (values-ref _g12473_ 1)))
                     (values (cons 'vector _e11098_) _vars11099_))))
               (if (gx#stx-box? _e11015_)
                   (let ((_g12475_
                          (_recur11013_
                           (unbox (gx#syntax-e _e11015_))
                           _vars11016_
                           _depth11017_)))
                     (begin
                       (let ((_g12476_ (values-count _g12475_)))
                         (if (not (fx= _g12476_ 2))
                             (error "Context expects 2 values" _g12476_)))
                       (let ((_e11101_ (values-ref _g12475_ 0))
                             (_vars11102_ (values-ref _g12475_ 1)))
                         (values (cons 'box _e11101_) _vars11102_))))
                   (if (gx#stx-datum? _e11015_)
                       (values (cons 'datum (gx#stx-e _e11015_)) _vars11016_)
                       (gx#raise-syntax-error
                        '#f
                        '"Bad pattern"
                        _stx10932_
                        _e11015_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             _recur11013_)
                           _hd11010_
                           '()
                           '0))))
                   (let ((_generate-clause10939_
                          (lambda (_target11345_
                                   _ids11346_
                                   _clause11347_
                                   _E11348_)
                            (let ((_generate111350_
                                   (lambda (_hd11437_
                                            _fender11438_
                                            _body11439_)
                                     (let ((_g12467_
                                            (_parse-clause10941_
                                             _hd11437_
                                             _ids11346_)))
                                       (begin
                                         (let ((_g12468_
                                                (values-count _g12467_)))
                                           (if (not (fx= _g12468_ 2))
                                               (error "Context expects 2 values"
                                                      _g12468_)))
                                         (let ((_e11441_
                                                (values-ref _g12467_ 0))
                                               (_mvars11442_
                                                (values-ref _g12467_ 1)))
                                           (let ((_pvars11444_
                                                  (map gx#syntax-local-rewrap
                                                       (gx#gentemps
                                                        _mvars11442_))))
                                             (let ((_E11446_
                                                    (cons _E11348_
                                                          (cons _target11345_
                                                                '()))))
                                               (let ((_K11479_
                                                      (gx#core-list
                                                       'lambda%
                                                       _pvars11444_
                                                       (gx#core-list
                                                        'let-syntax
                                                        (map (lambda (_mvar11448_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _pvar11449_)
                       (let ((_mvar1145011457_ _mvar11448_))
                         (let ((_E1145211461_
                                (lambda ()
                                  (error '"No clause matching"
                                         _mvar1145011457_))))
                           (let ((_K1145311467_
                                  (lambda (_depth11464_ _id11465_)
                                    (cons _id11465_
                                          (cons (gx#core-list
                                                 'make-syntax-pattern
                                                 (gx#core-list
                                                  'quote
                                                  _id11465_)
                                                 (gx#core-list
                                                  'quote
                                                  _pvar11449_)
                                                 _depth11464_)
                                                '())))))
                             (if (##pair? _mvar1145011457_)
                                 (let ((_hd1145411470_
                                        (##car _mvar1145011457_))
                                       (_tl1145511472_
                                        (##cdr _mvar1145011457_)))
                                   (let ((_id11475_ _hd1145411470_))
                                     (let ((_depth11477_ _tl1145511472_))
                                       (_K1145311467_
                                        _depth11477_
                                        _id11475_))))
                                 (_E1145211461_))))))
                     _mvars11442_
                     _pvars11444_)
                (if (true? _fender11438_)
                    _body11439_
                    (gx#core-list 'if _fender11438_ _body11439_ _E11446_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ()
                                                   (_generate-match10940_
                                                    _hd11437_
                                                    _target11345_
                                                    _e11441_
                                                    _mvars11442_
                                                    _K11479_
                                                    _E11446_)))))))))))
                              (let ((_e1135111371_ _clause11347_))
                                (let ((_E1136011375_
                                       (lambda ()
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax"
                                          _e1135111371_))))
                                  (let ((_E1135311409_
                                         (lambda ()
                                           (if (gx#stx-pair? _e1135111371_)
                                               (let ((_e1136111379_
                                                      (gx#syntax-e
                                                       _e1135111371_)))
                                                 (let ((_hd1136211382_
                                                        (##car _e1136111379_))
                                                       (_tl1136311384_
                                                        (##cdr _e1136111379_)))
                                                   (let ((_hd11387_
                                                          _hd1136211382_))
                                                     (if (gx#stx-pair?
                                                          _tl1136311384_)
                                                         (let ((_e1136411389_
                                                                (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tl1136311384_)))
                   (let ((_hd1136511392_ (##car _e1136411389_))
                         (_tl1136611394_ (##cdr _e1136411389_)))
                     (let ((_fender11397_ _hd1136511392_))
                       (if (gx#stx-pair? _tl1136611394_)
                           (let ((_e1136711399_ (gx#syntax-e _tl1136611394_)))
                             (let ((_hd1136811402_ (##car _e1136711399_))
                                   (_tl1136911404_ (##cdr _e1136711399_)))
                               (let ((_body11407_ _hd1136811402_))
                                 (if (gx#stx-null? _tl1136911404_)
                                     (if '#t
                                         (_generate111350_
                                          _hd11387_
                                          _fender11397_
                                          _body11407_)
                                         (_E1136011375_))
                                     (_E1136011375_)))))
                           (_E1136011375_)))))
                 (_E1136011375_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_E1136011375_)))))
                                    (let ((_E1135211433_
                                           (lambda ()
                                             (if (gx#stx-pair? _e1135111371_)
                                                 (let ((_e1135411413_
                                                        (gx#syntax-e
                                                         _e1135111371_)))
                                                   (let ((_hd1135511416_
                                                          (##car _e1135411413_))
                                                         (_tl1135611418_
                                                          (##cdr _e1135411413_)))
                                                     (let ((_hd11421_
                                                            _hd1135511416_))
                                                       (if (gx#stx-pair?
                                                            _tl1135611418_)
                                                           (let ((_e1135711423_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _tl1135611418_)))
                     (let ((_hd1135811426_ (##car _e1135711423_))
                           (_tl1135911428_ (##cdr _e1135711423_)))
                       (let ((_body11431_ _hd1135811426_))
                         (if (gx#stx-null? _tl1135911428_)
                             (if '#t
                                 (_generate111350_ _hd11421_ '#t _body11431_)
                                 (_E1135311409_))
                             (_E1135311409_)))))
                   (_E1135311409_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_E1135311409_)))))
                                      (let () (_E1135211433_))))))))))
                     (let ((_generate-bindings10937_
                            (lambda (_target11522_
                                     _ids11523_
                                     _clauses11524_
                                     _clause-ids11525_
                                     _E11526_)
                              (let ((_generate111528_
                                     (lambda (_clause11627_
                                              _clause-id11628_
                                              _E11629_)
                                       (cons (cons _clause-id11628_ '())
                                             (cons (gx#core-list
                                                    'lambda%
                                                    (cons _target11522_ '())
                                                    (_generate-clause10939_
                                                     _target11522_
                                                     _ids11523_
                                                     _clause11627_
                                                     _E11629_))
                                                   '())))))
                                ((letrec ((_lp11530_
                                           (lambda (_rest11532_
                                                    _rest-ids11533_
                                                    _bindings11534_)
                                             (let ((_rest1153511543_
                                                    _rest11532_))
                                               (let ((_E1153811547_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _rest1153511543_))))
                                                 (let ((_else1153711551_
                                                        (lambda ()
                                                          _bindings11534_)))
                                                   (let ((_K1153911615_
                                                          (lambda (_rest11554_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _clause11555_)
                    (let ((_rest-ids1155611563_ _rest-ids11533_))
                      (let ((_E1155811567_
                             (lambda ()
                               (error '"No clause matching"
                                      _rest-ids1155611563_))))
                        (let ((_K1155911603_
                               (lambda (_rest-ids11570_ _clause-id11571_)
                                 (let ((_rest-ids1157211580_ _rest-ids11570_))
                                   (let ((_E1157511584_
                                          (lambda ()
                                            (error '"No clause matching"
                                                   _rest-ids1157211580_))))
                                     (let ((_else1157411588_
                                            (lambda ()
                                              (cons (_generate111528_
                                                     _clause11555_
                                                     _clause-id11571_
                                                     _E11526_)
                                                    _bindings11534_))))
                                       (let ((_K1157611593_
                                              (lambda (_next-clause-id11591_)
                                                (_lp11530_
                                                 _rest11554_
                                                 _rest-ids11570_
                                                 (cons (_generate111528_
                                                        _clause11555_
                                                        _clause-id11571_
                                                        _next-clause-id11591_)
                                                       _bindings11534_)))))
                                         (if (##pair? _rest-ids1157211580_)
                                             (let ((_hd1157711596_
                                                    (##car _rest-ids1157211580_))
                                                   (_tl1157811598_
                                                    (##cdr _rest-ids1157211580_)))
                                               (let ((_next-clause-id11601_
                                                      _hd1157711596_))
                                                 (_K1157611593_
                                                  _next-clause-id11601_)))
                                             (_else1157411588_)))))))))
                          (if (##pair? _rest-ids1155611563_)
                              (let ((_hd1156011606_
                                     (##car _rest-ids1155611563_))
                                    (_tl1156111608_
                                     (##cdr _rest-ids1155611563_)))
                                (let ((_clause-id11611_ _hd1156011606_))
                                  (let ((_rest-ids11613_ _tl1156111608_))
                                    (_K1155911603_
                                     _rest-ids11613_
                                     _clause-id11611_))))
                              (_E1155811567_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (##pair? _rest1153511543_)
                                                         (let ((_hd1154011618_
                                                                (##car _rest1153511543_))
                                                               (_tl1154111620_
                                                                (##cdr _rest1153511543_)))
                                                           (let ((_clause11623_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _hd1154011618_))
                     (let ((_rest11625_ _tl1154111620_))
                       (_K1153911615_ _rest11625_ _clause11623_))))
                 (_else1153711551_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _lp11530_)
                                 _clauses11524_
                                 _clause-ids11525_
                                 '())))))
                       (let ((_e1094210955_ _stx10932_))
                         (let ((_E1094410959_
                                (lambda ()
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax"
                                   _e1094210955_))))
                           (let ((_E1094311006_
                                  (lambda ()
                                    (if (gx#stx-pair? _e1094210955_)
                                        (let ((_e1094510963_
                                               (gx#syntax-e _e1094210955_)))
                                          (let ((_hd1094610966_
                                                 (##car _e1094510963_))
                                                (_tl1094710968_
                                                 (##cdr _e1094510963_)))
                                            (if (gx#stx-pair? _tl1094710968_)
                                                (let ((_e1094810971_
                                                       (gx#syntax-e
                                                        _tl1094710968_)))
                                                  (let ((_hd1094910974_
                                                         (##car _e1094810971_))
                                                        (_tl1095010976_
                                                         (##cdr _e1094810971_)))
                                                    (let ((_expr10979_
                                                           _hd1094910974_))
                                                      (if (gx#stx-pair?
                                                           _tl1095010976_)
                                                          (let ((_e1095110981_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _tl1095010976_)))
                    (let ((_hd1095210984_ (##car _e1095110981_))
                          (_tl1095310986_ (##cdr _e1095110981_)))
                      (let ((_ids10989_ _hd1095210984_))
                        (let ((_clauses10991_ _tl1095310986_))
                          (if '#t
                              (if (not (gx#identifier-list? _ids10989_))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad template identifier list"
                                   _stx10932_
                                   _ids10989_)
                                  (if (not (gx#stx-list? _clauses10991_))
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax"
                                       _stx10932_)
                                      (let ((_ids10993_
                                             (gx#syntax->list _ids10989_)))
                                        (let ((_clauses10995_
                                               (gx#syntax->list
                                                _clauses10991_)))
                                          (let ((_clause-ids10997_
                                                 (gx#gentemps _clauses10995_)))
                                            (let ((_E10999_ (gx#genident)))
                                              (let ((_target11001_
                                                     (gx#genident)))
                                                (let ((_first11003_
                                                       (if (null? _clauses10995_)
                                                           _E10999_
                                                           (car _clause-ids10997_))))
                                                  (let ()
                                                    (gx#stx-wrap-source
                                                     (gx#core-list
                                                      'let-values
                                                      (cons (cons (cons _E10999_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                '())
                          (cons (gx#core-list
                                 'lambda%
                                 (cons _target11001_ '())
                                 (gx#core-list
                                  'raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _target11001_))
                                '()))
                    '())
              (_generate-body10938_
               (_generate-bindings10937_
                _target11001_
                _ids10993_
                _clauses10995_
                _clause-ids10997_
                _E10999_)
               (cons _first11003_ (cons _expr10979_ '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (gx#stx-source
                                                      _stx10932_)))))))))))
                              (_E1094410959_))))))
                  (_E1094410959_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1094410959_))))
                                        (_E1094410959_)))))
                             (let () (_E1094311006_)))))))))))))
      (lambda _g12478_
        (let ((_g12477_ (length _g12478_)))
          (cond ((fx= _g12477_ 1)
                 (apply (lambda (_stx11634_)
                          (let ((_identifier=?11636_ 'free-identifier=?))
                            (let ((_unwrap-e11638_ 'syntax-e))
                              (let ((_wrap-e11640_ 'quote-syntax))
                                (_opt-lambda1093011631_
                                 _stx11634_
                                 _identifier=?11636_
                                 _unwrap-e11638_
                                 _wrap-e11640_)))))
                        _g12478_))
                ((fx= _g12477_ 2)
                 (apply (lambda (_stx11642_ _identifier=?11643_)
                          (let ((_unwrap-e11645_ 'syntax-e))
                            (let ((_wrap-e11647_ 'quote-syntax))
                              (_opt-lambda1093011631_
                               _stx11642_
                               _identifier=?11643_
                               _unwrap-e11645_
                               _wrap-e11647_))))
                        _g12478_))
                ((fx= _g12477_ 3)
                 (apply (lambda (_stx11649_
                                 _identifier=?11650_
                                 _unwrap-e11651_)
                          (let ((_wrap-e11653_ 'quote-syntax))
                            (_opt-lambda1093011631_
                             _stx11649_
                             _identifier=?11650_
                             _unwrap-e11651_
                             _wrap-e11653_)))
                        _g12478_))
                ((fx= _g12477_ 4)
                 (apply (lambda (_stx11655_
                                 _identifier=?11656_
                                 _unwrap-e11657_
                                 _wrap-e11658_)
                          (_opt-lambda1093011631_
                           _stx11655_
                           _identifier=?11656_
                           _unwrap-e11657_
                           _wrap-e11658_))
                        _g12478_))
                (else (error "No clause matching arguments" _g12478_)))))))
  (define gx#syntax-local-pattern?
    (lambda (_stx10929_)
      (if (gx#identifier? _stx10929_)
          (gx#syntax-pattern? (gx#syntax-local-e _stx10929_ false))
          '#f)))
  (define gx#syntax-check-splice-targets
    (lambda (_hd10887_ . _rest10888_)
      (let ((_len10890_ (length _hd10887_)))
        ((letrec ((_lp10892_
                   (lambda (_rest10894_)
                     (let ((_rest1089510903_ _rest10894_))
                       (let ((_E1089810907_
                              (lambda ()
                                (error '"No clause matching"
                                       _rest1089510903_))))
                         (let ((_else1089710911_ (lambda () (void))))
                           (let ((_K1089910917_
                                  (lambda (_rest10914_ _hd10915_)
                                    (if (fx= _len10890_ (length _hd10915_))
                                        (_lp10892_ _rest10914_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Splice length mismatch"
                                         _hd10915_)))))
                             (if (##pair? _rest1089510903_)
                                 (let ((_hd1090010920_
                                        (##car _rest1089510903_))
                                       (_tl1090110922_
                                        (##cdr _rest1089510903_)))
                                   (let ((_hd10925_ _hd1090010920_))
                                     (let ((_rest10927_ _tl1090110922_))
                                       (_K1089910917_ _rest10927_ _hd10925_))))
                                 (_else1089710911_)))))))))
           _lp10892_)
         _rest10888_))))
  (define gx#syntax-split-splice
    (lambda (_stx10845_ _n10846_)
      ((letrec ((_lp10848_
                 (lambda (_rest10850_ _r10851_)
                   (if (gx#stx-pair? _rest10850_)
                       (let ((_g1085210859_ (gx#syntax-e _rest10850_)))
                         (let ((_E1085410863_
                                (lambda ()
                                  (error '"No clause matching"
                                         _g1085210859_))))
                           (let ((_K1085510869_
                                  (lambda (_rest10866_ _hd10867_)
                                    (_lp10848_
                                     _rest10866_
                                     (cons _hd10867_ _r10851_)))))
                             (if (##pair? _g1085210859_)
                                 (let ((_hd1085610872_ (##car _g1085210859_))
                                       (_tl1085710874_ (##cdr _g1085210859_)))
                                   (let ((_hd10877_ _hd1085610872_))
                                     (let ((_rest10879_ _tl1085710874_))
                                       (_K1085510869_ _rest10879_ _hd10877_))))
                                 (_E1085410863_)))))
                       ((letrec ((_lp10881_
                                  (lambda (_n10883_ _l10884_ _r10885_)
                                    (if (null? _l10884_)
                                        (values _l10884_ _r10885_)
                                        (if (fxpositive? _n10883_)
                                            (_lp10881_
                                             (fx1- _n10883_)
                                             (cdr _l10884_)
                                             (cons (car _l10884_) _r10885_))
                                            (values (reverse _l10884_)
                                                    _r10885_))))))
                          _lp10881_)
                        _n10846_
                        _r10851_
                        _rest10850_)))))
         _lp10848_)
       _stx10845_
       '()))))
