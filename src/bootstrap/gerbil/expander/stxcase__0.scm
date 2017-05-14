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
    (lambda _$args13727_
      (apply make-struct-instance gx#syntax-pattern::t _$args13727_)))
  (define gx#syntax-pattern-id
    (make-struct-field-accessor gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth
    (make-struct-field-accessor gx#syntax-pattern::t '1))
  (define gx#syntax-pattern-id-set!
    (make-struct-field-mutator gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth-set!
    (make-struct-field-mutator gx#syntax-pattern::t '1))
  (define gx#syntax-pattern::apply-macro-expander
    (lambda (_self13724_ _stx13725_)
      (gx#raise-syntax-error
       '#f
       '"Identifier used out of context"
       _stx13725_)))
  (bind-method!
   gx#syntax-pattern::t
   'apply-macro-expander
   gx#syntax-pattern::apply-macro-expander
   '#f)
  (define gx#macro-expand-syntax
    (lambda (_stx13333_)
      (let ((_generate13335_
             (lambda (_e13562_)
               (let ((_BUG13564_
                      (lambda (_q13722_)
                        (error '"BUG: syntax; generate"
                               _stx13333_
                               _e13562_
                               _q13722_))))
                 (let ((_local-pattern-e13565_
                        (lambda (_pat13720_)
                          (gx#syntax-local-rewrap
                           (##structure-ref
                            _pat13720_
                            '2
                            gx#syntax-pattern::t
                            '#f)))))
                   (let ((_getvar13566_
                          (lambda (_q13717_ _vars13718_)
                            (assgetq _q13717_ _vars13718_ _BUG13564_))))
                     (let ((_getarg13567_
                            (lambda (_arg13683_ _vars13684_)
                              (let ((_arg1368513692_ _arg13683_))
                                (let ((_E1368713696_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _arg1368513692_))))
                                  (let ((_K1368813705_
                                         (lambda (_e13699_ _tag13700_)
                                           (let ((_$e13702_ _tag13700_))
                                             (if (eq? _$e13702_ 'ref)
                                                 (_getvar13566_
                                                  _e13699_
                                                  _vars13684_)
                                                 (if (eq? _$e13702_ 'pattern)
                                                     (_local-pattern-e13565_
                                                      _e13699_)
                                                     (_BUG13564_
                                                      _arg13683_)))))))
                                    (if (##pair? _arg1368513692_)
                                        (let ((_hd1368913708_
                                               (##car _arg1368513692_))
                                              (_tl1369013710_
                                               (##cdr _arg1368513692_)))
                                          (let ((_tag13713_ _hd1368913708_))
                                            (let ((_e13715_ _tl1369013710_))
                                              (_K1368813705_
                                               _e13715_
                                               _tag13713_))))
                                        (_E1368713696_))))))))
                       ((letrec ((_recur13569_
                                  (lambda (_e13571_ _vars13572_)
                                    (let ((_e1357313580_ _e13571_))
                                      (let ((_E1357513584_
                                             (lambda ()
                                               (error '"No clause matching"
                                                      _e1357313580_))))
                                        (let ((_K1357613671_
                                               (lambda (_body13587_ _tag13588_)
                                                 (let ((_$e13590_ _tag13588_))
                                                   (if (eq? _$e13590_ 'datum)
                                                       (gx#core-list
                                                        'quote
                                                        _body13587_)
                                                       (if (eq? _$e13590_
                                                                'term)
                                                           (gx#core-list
                                                            'datum->syntax
                                                            '#f
                                                            (gx#core-list
                                                             'quote
                                                             _body13587_))
                                                           (if (eq? _$e13590_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            'pattern)
                       (_local-pattern-e13565_ _body13587_)
                       (if (eq? _$e13590_ 'ref)
                           (_getvar13566_ _body13587_ _vars13572_)
                           (if (eq? _$e13590_ 'cons)
                               (gx#core-list
                                'cons
                                (_recur13569_ (car _body13587_) _vars13572_)
                                (_recur13569_ (cdr _body13587_) _vars13572_))
                               (if (eq? _$e13590_ 'vector)
                                   (gx#core-list
                                    'list->vector
                                    (_recur13569_ _body13587_ _vars13572_))
                                   (if (eq? _$e13590_ 'box)
                                       (gx#core-list
                                        'box
                                        (_recur13569_ _body13587_ _vars13572_))
                                       (if (eq? _$e13590_ 'splice)
                                           (let ((_body1359213603_
                                                  _body13587_))
                                             (let ((_E1359413607_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _body1359213603_))))
                                               (let ((_K1359513645_
                                                      (lambda (_args13610_
                                                               _iv13611_
                                                               _hd13612_
                                                               _depth13613_)
                                                        (let ((_targets13619_
                                                               (map (lambda (_g1361413616_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (_getarg13567_ _g1361413616_ _vars13572_))
                            _args13610_)))
                  (let ((_fold-in13621_ (gx#gentemps _args13610_)))
                    (let ((_fold-out13623_ (gx#genident__0)))
                      (let ((_lambda-args13625_
                             (foldr1 cons
                                     (cons _fold-out13623_ '())
                                     _fold-in13621_)))
                        (let ((_lambda-body13642_
                               (if (fx> _depth13613_ '1)
                                   (let ((_r-args13633_
                                          (map (lambda (_arg13627_)
                                                 (cons 'ref (cdr _arg13627_)))
                                               _args13610_))
                                         (_r-vars13634_
                                          (foldr (lambda (_arg13629_
                                                          _var13630_
                                                          _r13631_)
                                                   (cons (cons (cdr _arg13629_)
                                                               _var13630_)
                                                         _r13631_))
                                                 _vars13572_
                                                 _args13610_
                                                 _fold-in13621_)))
                                     (_recur13569_
                                      (cons* 'splice
                                             (fx- _depth13613_ '1)
                                             _hd13612_
                                             (cons 'var _fold-out13623_)
                                             _r-args13633_)
                                      _r-vars13634_))
                                   (let ((_hd-vars13640_
                                          (foldr (lambda (_arg13636_
                                                          _var13637_
                                                          _r13638_)
                                                   (cons (cons (cdr _arg13636_)
                                                               _var13637_)
                                                         _r13638_))
                                                 _vars13572_
                                                 _args13610_
                                                 _fold-in13621_)))
                                     (gx#core-list
                                      'cons
                                      (_recur13569_ _hd13612_ _hd-vars13640_)
                                      _fold-out13623_)))))
                          (let ()
                            (gx#core-list
                             'begin
                             (if (fx> (length _targets13619_) '1)
                                 (gx#core-cons*
                                  'syntax-check-splice-targets
                                  _targets13619_)
                                 '#!void)
                             (gx#core-cons*
                              'foldr
                              (gx#core-list
                               'lambda%
                               _lambda-args13625_
                               _lambda-body13642_)
                              (_recur13569_ _iv13611_ _vars13572_)
                              _targets13619_)))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (##pair? _body1359213603_)
                                                     (let ((_hd1359613648_
                                                            (##car _body1359213603_))
                                                           (_tl1359713650_
                                                            (##cdr _body1359213603_)))
                                                       (let ((_depth13653_
                                                              _hd1359613648_))
                                                         (if (##pair? _tl1359713650_)
                                                             (let ((_hd1359813655_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (##car _tl1359713650_))
                           (_tl1359913657_ (##cdr _tl1359713650_)))
                       (let ((_hd13660_ _hd1359813655_))
                         (if (##pair? _tl1359913657_)
                             (let ((_hd1360013662_ (##car _tl1359913657_))
                                   (_tl1360113664_ (##cdr _tl1359913657_)))
                               (let ((_iv13667_ _hd1360013662_))
                                 (let ((_args13669_ _tl1360113664_))
                                   (_K1359513645_
                                    _args13669_
                                    _iv13667_
                                    _hd13660_
                                    _depth13653_))))
                             (_E1359413607_))))
                     (_E1359413607_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E1359413607_)))))
                                           (if (eq? _$e13590_ 'var)
                                               _body13587_
                                               (_BUG13564_
                                                _e13571_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _e1357313580_)
                                              (let ((_hd1357713674_
                                                     (##car _e1357313580_))
                                                    (_tl1357813676_
                                                     (##cdr _e1357313580_)))
                                                (let ((_tag13679_
                                                       _hd1357713674_))
                                                  (let ((_body13681_
                                                         _tl1357813676_))
                                                    (_K1357613671_
                                                     _body13681_
                                                     _tag13679_))))
                                              (_E1357513584_))))))))
                          _recur13569_)
                        _e13562_
                        '()))))))))
        (let ((_parse13336_
               (lambda (_e13377_)
                 (let ((_make-cons13379_
                        (lambda (_hd13554_ _tl13555_)
                          (let ((_g13739_ _hd13554_) (_g13741_ _tl13555_))
                            (begin
                              (let ((_g13740_ (values-count _g13739_)))
                                (if (not (fx= _g13740_ 2))
                                    (error "Context expects 2 values"
                                           _g13740_)))
                              (let ((_g13742_ (values-count _g13741_)))
                                (if (not (fx= _g13742_ 2))
                                    (error "Context expects 2 values"
                                           _g13742_)))
                              (let ((_hd-e13557_ (values-ref _g13739_ 0))
                                    (_hd-vars13558_ (values-ref _g13739_ 1)))
                                (let ((_tl-e13559_ (values-ref _g13741_ 0))
                                      (_tl-vars13560_ (values-ref _g13741_ 1)))
                                  (values (cons* 'cons _hd-e13557_ _tl-e13559_)
                                          (append _hd-vars13558_
                                                  _tl-vars13560_)))))))))
                   (let ((_make-splice13380_
                          (lambda (_where13493_
                                   _depth13494_
                                   _hd13495_
                                   _tl13496_)
                            (let ((_g13735_ _hd13495_) (_g13737_ _tl13496_))
                              (begin
                                (let ((_g13736_ (values-count _g13735_)))
                                  (if (not (fx= _g13736_ 2))
                                      (error "Context expects 2 values"
                                             _g13736_)))
                                (let ((_g13738_ (values-count _g13737_)))
                                  (if (not (fx= _g13738_ 2))
                                      (error "Context expects 2 values"
                                             _g13738_)))
                                (let ((_hd-e13498_ (values-ref _g13735_ 0))
                                      (_hd-vars13499_ (values-ref _g13735_ 1)))
                                  (let ((_tl-e13500_ (values-ref _g13737_ 0))
                                        (_tl-vars13501_
                                         (values-ref _g13737_ 1)))
                                    ((letrec ((_lp13503_
                                               (lambda (_rest13505_
                                                        _targets13506_
                                                        _vars13507_)
                                                 (let ((_rest1350813518_
                                                        _rest13505_))
                                                   (let ((_E1351113522_
                                                          (lambda ()
                                                            (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _rest1350813518_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ((_else1351013526_
                                                            (lambda ()
                                                              (if (null? _targets13506_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#raise-syntax-error
                           '#f
                           '"Misplaced ellipsis"
                           _stx13333_
                           _where13493_)
                          (values (cons* 'splice
                                         _depth13494_
                                         _hd-e13498_
                                         _tl-e13500_
                                         _targets13506_)
                                  _vars13507_)))))
               (let ((_K1351213535_
                      (lambda (_rest13529_ _hd-pat13530_ _hd-depth*13531_)
                        (let ((_hd-depth13533_
                               (fx- _hd-depth*13531_ _depth13494_)))
                          (if (fxpositive? _hd-depth13533_)
                              (_lp13503_
                               _rest13529_
                               (cons (cons 'ref _hd-pat13530_) _targets13506_)
                               (cons (cons _hd-depth13533_ _hd-pat13530_)
                                     _vars13507_))
                              (if (fxzero? _hd-depth13533_)
                                  (_lp13503_
                                   _rest13529_
                                   (cons (cons 'pattern _hd-pat13530_)
                                         _targets13506_)
                                   _vars13507_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Too many ellipses"
                                   _stx13333_
                                   _where13493_)))))))
                 (if (##pair? _rest1350813518_)
                     (let ((_hd1351313538_ (##car _rest1350813518_))
                           (_tl1351413540_ (##cdr _rest1350813518_)))
                       (if (##pair? _hd1351313538_)
                           (let ((_hd1351513543_ (##car _hd1351313538_))
                                 (_tl1351613545_ (##cdr _hd1351313538_)))
                             (let ((_hd-depth*13548_ _hd1351513543_))
                               (let ((_hd-pat13550_ _tl1351613545_))
                                 (let ((_rest13552_ _tl1351413540_))
                                   (_K1351213535_
                                    _rest13552_
                                    _hd-pat13550_
                                    _hd-depth*13548_)))))
                           (_else1351013526_)))
                     (_else1351013526_)))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                       _lp13503_)
                                     _hd-vars13499_
                                     '()
                                     _tl-vars13501_))))))))
                     (letrec ((_recur13381_
                               (lambda (_e13386_ _is-e?13387_)
                                 (if (_is-e?13387_ _e13386_)
                                     (gx#raise-syntax-error
                                      '#f
                                      '"Mislpaced ellipsis"
                                      _stx13333_)
                                     (if (gx#syntax-local-pattern? _e13386_)
                                         (let ((_pat13389_
                                                (gx#syntax-local-e__0
                                                 _e13386_)))
                                           (let ((_depth13391_
                                                  (##structure-ref
                                                   _pat13389_
                                                   '3
                                                   gx#syntax-pattern::t
                                                   '#f)))
                                             (let ()
                                               (if (fxpositive? _depth13391_)
                                                   (values (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pat13389_)
                   (cons (cons _depth13391_ _pat13389_) '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (values (cons 'pattern
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pat13389_)
                   '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                         (if (gx#identifier? _e13386_)
                                             (values (cons 'term _e13386_) '())
                                             (if (gx#stx-pair? _e13386_)
                                                 (let ((_e1339313400_
                                                        _e13386_))
                                                   (let ((_E1339513404_
                                                          (lambda ()
                                                            (gx#raise-syntax-error
                                                             '#f
                                                             '"Bad syntax"
                                                             _e1339313400_))))
                                                     (let ((_E1339413483_
                                                            (lambda ()
                                                              (if (gx#stx-pair?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _e1339313400_)
                          (let ((_e1339613408_ (gx#syntax-e _e1339313400_)))
                            (let ((_hd1339713411_ (##car _e1339613408_))
                                  (_tl1339813413_ (##cdr _e1339613408_)))
                              (let ((_hd13416_ _hd1339713411_))
                                (let ((_rest13418_ _tl1339813413_))
                                  (if '#t
                                      (if (_is-e?13387_ _hd13416_)
                                          (let ((_e1341913426_ _rest13418_))
                                            (let ((_E1342113430_
                                                   (lambda ()
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad ellipsis syntax"
                                                      _stx13333_
                                                      _e13386_))))
                                              (let ((_E1342013444_
                                                     (lambda ()
                                                       (if (gx#stx-pair?
                                                            _e1341913426_)
                                                           (let ((_e1342213434_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _e1341913426_)))
                     (let ((_hd1342313437_ (##car _e1342213434_))
                           (_tl1342413439_ (##cdr _e1342213434_)))
                       (let ((_rest13442_ _hd1342313437_))
                         (if (gx#stx-null? _tl1342413439_)
                             (if '#t
                                 (_recur13381_ _rest13442_ false)
                                 (_E1342113430_))
                             (_E1342113430_)))))
                   (_E1342113430_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let () (_E1342013444_)))))
                                          ((letrec ((_lp13448_
                                                     (lambda (_rest13450_
                                                              _depth13451_)
                                                       (let ((_e1345213459_
                                                              _rest13450_))
                                                         (let ((_E1345413463_
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (if (fxpositive? _depth13451_)
                              (_make-splice13380_
                               _e13386_
                               _depth13451_
                               (_recur13381_ _hd13416_ _is-e?13387_)
                               (_recur13381_ _rest13450_ _is-e?13387_))
                              (_make-cons13379_
                               (_recur13381_ _hd13416_ _is-e?13387_)
                               (_recur13381_ _rest13450_ _is-e?13387_))))))
                   (let ((_E1345313479_
                          (lambda ()
                            (if (gx#stx-pair? _e1345213459_)
                                (let ((_e1345513467_
                                       (gx#syntax-e _e1345213459_)))
                                  (let ((_hd1345613470_ (##car _e1345513467_))
                                        (_tl1345713472_ (##cdr _e1345513467_)))
                                    (let ((_rest-hd13475_ _hd1345613470_))
                                      (let ((_rest-tl13477_ _tl1345713472_))
                                        (if '#t
                                            (if (_is-e?13387_ _rest-hd13475_)
                                                (_lp13448_
                                                 _rest-tl13477_
                                                 (fx+ _depth13451_ '1))
                                                (if (fxpositive? _depth13451_)
                                                    (_make-splice13380_
                                                     _e13386_
                                                     _depth13451_
                                                     (_recur13381_
                                                      _hd13416_
                                                      _is-e?13387_)
                                                     (_recur13381_
                                                      _rest13450_
                                                      _is-e?13387_))
                                                    (_make-cons13379_
                                                     (_recur13381_
                                                      _hd13416_
                                                      _is-e?13387_)
                                                     (_recur13381_
                                                      _rest13450_
                                                      _is-e?13387_))))
                                            (_E1345413463_))))))
                                (_E1345413463_)))))
                     (let () (_E1345313479_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             _lp13448_)
                                           _rest13418_
                                           '0))
                                      (_E1339513404_))))))
                          (_E1339513404_)))))
               (let () (_E1339413483_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (gx#stx-vector? _e13386_)
                                                     (let ((_g13729_
                                                            (_recur13381_
                                                             (vector->list
                                                              (gx#stx-unwrap__0
                                                               _e13386_))
                                                             _is-e?13387_)))
                                                       (begin
                                                         (let ((_g13730_
                                                                (values-count
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _g13729_)))
                   (if (not (fx= _g13730_ 2))
                       (error "Context expects 2 values" _g13730_)))
                 (let ((_e13487_ (values-ref _g13729_ 0))
                       (_vars13488_ (values-ref _g13729_ 1)))
                   (values (cons 'vector _e13487_) _vars13488_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (if (gx#stx-box? _e13386_)
                                                         (let ((_g13731_
                                                                (_recur13381_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (unbox (gx#stx-unwrap__0 _e13386_))
                         _is-e?13387_)))
                   (begin
                     (let ((_g13732_ (values-count _g13731_)))
                       (if (not (fx= _g13732_ 2))
                           (error "Context expects 2 values" _g13732_)))
                     (let ((_e13490_ (values-ref _g13731_ 0))
                           (_vars13491_ (values-ref _g13731_ 1)))
                       (values (cons 'box _e13490_) _vars13491_))))
                 (values (cons 'datum _e13386_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                       (let ((_g13733_ (_recur13381_ _e13377_ gx#ellipsis?)))
                         (begin
                           (let ((_g13734_ (values-count _g13733_)))
                             (if (not (fx= _g13734_ 2))
                                 (error "Context expects 2 values" _g13734_)))
                           (let ((_tree13383_ (values-ref _g13733_ 0))
                                 (_vars13384_ (values-ref _g13733_ 1)))
                             (if (null? _vars13384_)
                                 _tree13383_
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Missing ellipsis"
                                  _stx13333_
                                  _vars13384_)))))))))))
          (let ((_e1333713347_ _stx13333_))
            (let ((_E1333913351_
                   (lambda ()
                     (gx#raise-syntax-error '#f '"Bad syntax" _stx13333_))))
              (let ((_E1333813373_
                     (lambda ()
                       (if (gx#stx-pair? _e1333713347_)
                           (let ((_e1334013355_ (gx#syntax-e _e1333713347_)))
                             (let ((_hd1334113358_ (##car _e1334013355_))
                                   (_tl1334213360_ (##cdr _e1334013355_)))
                               (if (gx#stx-pair? _tl1334213360_)
                                   (let ((_e1334313363_
                                          (gx#syntax-e _tl1334213360_)))
                                     (let ((_hd1334413366_
                                            (##car _e1334313363_))
                                           (_tl1334513368_
                                            (##cdr _e1334313363_)))
                                       (let ((_form13371_ _hd1334413366_))
                                         (if (gx#stx-null? _tl1334513368_)
                                             (if '#t
                                                 (gx#stx-wrap-source
                                                  (_generate13335_
                                                   (_parse13336_ _form13371_))
                                                  (gx#stx-source _stx13333_))
                                                 (_E1333913351_))
                                             (_E1333913351_)))))
                                   (_E1333913351_))))
                           (_E1333913351_)))))
                (let () (_E1333813373_)))))))))
  (begin
    (define gx#macro-expand-syntax-case__opt-lambda12603
      (lambda (_stx12605_ _identifier=?12606_ _unwrap-e12607_ _wrap-e12608_)
        (let ((_generate-body12611_
               (lambda (_bindings13155_ _body13156_)
                 ((letrec ((_recur13158_
                            (lambda (_rest13160_)
                              (let ((_rest1316113169_ _rest13160_))
                                (let ((_E1316413173_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _rest1316113169_))))
                                  (let ((_else1316313177_
                                         (lambda () _body13156_)))
                                    (let ((_K1316513183_
                                           (lambda (_rest13180_ _hd13181_)
                                             (gx#core-list
                                              'let-values
                                              (cons _hd13181_ '())
                                              (_recur13158_ _rest13180_)))))
                                      (if (##pair? _rest1316113169_)
                                          (let ((_hd1316613186_
                                                 (##car _rest1316113169_))
                                                (_tl1316713188_
                                                 (##cdr _rest1316113169_)))
                                            (let ((_hd13191_ _hd1316613186_))
                                              (let ((_rest13193_
                                                     _tl1316713188_))
                                                (_K1316513183_
                                                 _rest13193_
                                                 _hd13191_))))
                                          (_else1316313177_)))))))))
                    _recur13158_)
                  _bindings13155_))))
          (let ((_generate-match12613_
                 (lambda (_where12777_
                          _target12778_
                          _hd12779_
                          _mvars12780_
                          _K12781_
                          _E12782_)
                   (let ((_BUG12784_
                          (lambda (_q13016_)
                            (error '"BUG: syntax-case; generate"
                                   _stx12605_
                                   _hd12779_
                                   _q13016_))))
                     (let ((_splice-rlen12786_
                            (lambda (_e12832_)
                              ((letrec ((_lp12834_
                                         (lambda (_e12836_ _n12837_)
                                           (let ((_e1283812845_ _e12836_))
                                             (let ((_E1284012849_
                                                    (lambda ()
                                                      (error '"No clause matching"
                                                             _e1283812845_))))
                                               (let ((_K1284112858_
                                                      (lambda (_body12852_
                                                               _tag12853_)
                                                        (let ((_$e12855_
                                                               _tag12853_))
                                                          (if (eq? _$e12855_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'splice)
                      (gx#raise-syntax-error
                       '#f
                       '"Ambiguous pattern"
                       _stx12605_
                       _where12777_)
                      (if (eq? _$e12855_ 'cons)
                          (_lp12834_ (cdr _body12852_) (fx+ _n12837_ '1))
                          _n12837_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if (##pair? _e1283812845_)
                                                     (let ((_hd1284212861_
                                                            (##car _e1283812845_))
                                                           (_tl1284312863_
                                                            (##cdr _e1283812845_)))
                                                       (let ((_tag12866_
                                                              _hd1284212861_))
                                                         (let ((_body12868_
                                                                _tl1284312863_))
                                                           (_K1284112858_
                                                            _body12868_
                                                            _tag12866_))))
                                                     (_E1284012849_))))))))
                                 _lp12834_)
                               _e12832_
                               '0))))
                       (let ((_splice-vars12787_
                              (lambda (_e12794_)
                                ((letrec ((_recur12796_
                                           (lambda (_e12798_ _vars12799_)
                                             (let ((_e1280012807_ _e12798_))
                                               (let ((_E1280212811_
                                                      (lambda ()
                                                        (error '"No clause matching"
                                                               _e1280012807_))))
                                                 (let ((_K1280312820_
                                                        (lambda (_body12814_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _tag12815_)
                  (let ((_$e12817_ _tag12815_))
                    (if (eq? _$e12817_ 'var)
                        (cons _body12814_ _vars12799_)
                        (if (memq _$e12817_ '(cons splice))
                            (_recur12796_
                             (cdr _body12814_)
                             (_recur12796_ (car _body12814_) _vars12799_))
                            (if (memq _$e12817_ '(vector box))
                                (_recur12796_ _body12814_ _vars12799_)
                                _vars12799_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (##pair? _e1280012807_)
                                                       (let ((_hd1280412823_
                                                              (##car _e1280012807_))
                                                             (_tl1280512825_
                                                              (##cdr _e1280012807_)))
                                                         (let ((_tag12828_
                                                                _hd1280412823_))
                                                           (let ((_body12830_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1280512825_))
                     (_K1280312820_ _body12830_ _tag12828_))))
               (_E1280212811_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   _recur12796_)
                                 _e12794_
                                 '()))))
                         (let ((_make-body12788_
                                (lambda (_vars12790_)
                                  (cons _K12781_
                                        (map (lambda (_mvar12792_)
                                               (assgetq (car _mvar12792_)
                                                        _vars12790_
                                                        _BUG12784_))
                                             _mvars12780_)))))
                           (letrec ((_recur12785_
                                     (lambda (_e12870_
                                              _vars12871_
                                              _target12872_
                                              _E12873_
                                              _k12874_)
                                       (let ((_e1287512882_ _e12870_))
                                         (let ((_E1287712886_
                                                (lambda ()
                                                  (error '"No clause matching"
                                                         _e1287512882_))))
                                           (let ((_K1287813004_
                                                  (lambda (_body12889_
                                                           _tag12890_)
                                                    (let ((_$e12892_
                                                           _tag12890_))
                                                      (if (eq? _$e12892_ 'any)
                                                          (_k12874_
                                                           _vars12871_)
                                                          (if (eq? _$e12892_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           'id)
                      (gx#core-list
                       'if
                       (gx#core-list 'identifier? _target12872_)
                       (gx#core-list
                        'if
                        (gx#core-list
                         _identifier=?12606_
                         (gx#core-list _wrap-e12608_ _body12889_)
                         _target12872_)
                        (_k12874_ _vars12871_)
                        _E12873_)
                       _E12873_)
                      (if (eq? _$e12892_ 'var)
                          (_k12874_
                           (cons (cons _body12889_ _target12872_) _vars12871_))
                          (if (eq? _$e12892_ 'cons)
                              (let ((_$e12895_ (gx#genident__1 'e))
                                    (_$hd12896_ (gx#genident__1 'hd))
                                    (_$tl12897_ (gx#genident__1 'tl)))
                                (gx#core-list
                                 'if
                                 (gx#core-list 'stx-pair? _target12872_)
                                 (gx#core-list
                                  'let-values
                                  (cons (cons (cons _$e12895_ '())
                                              (cons (gx#core-list
                                                     _unwrap-e12607_
                                                     _target12872_)
                                                    '()))
                                        '())
                                  (gx#core-list
                                   'let-values
                                   (cons (cons (cons _$hd12896_ '())
                                               (cons (gx#core-list
                                                      '##car
                                                      _$e12895_)
                                                     '()))
                                         (cons (cons (cons _$tl12897_ '())
                                                     (cons (gx#core-list
                                                            '##cdr
                                                            _$e12895_)
                                                           '()))
                                               '()))
                                   (let ((_body1289812905_ _body12889_))
                                     (let ((_E1290012909_
                                            (lambda ()
                                              (error '"No clause matching"
                                                     _body1289812905_))))
                                       (let ((_K1290112917_
                                              (lambda (_tl12912_ _hd12913_)
                                                (_recur12785_
                                                 _hd12913_
                                                 _vars12871_
                                                 _$hd12896_
                                                 _E12873_
                                                 (lambda (_vars12915_)
                                                   (_recur12785_
                                                    _tl12912_
                                                    _vars12915_
                                                    _$tl12897_
                                                    _E12873_
                                                    _k12874_))))))
                                         (if (##pair? _body1289812905_)
                                             (let ((_hd1290212920_
                                                    (##car _body1289812905_))
                                                   (_tl1290312922_
                                                    (##cdr _body1289812905_)))
                                               (let ((_hd12925_
                                                      _hd1290212920_))
                                                 (let ((_tl12927_
                                                        _tl1290312922_))
                                                   (_K1290112917_
                                                    _tl12927_
                                                    _hd12925_))))
                                             (_E1290012909_)))))))
                                 _E12873_))
                              (if (eq? _$e12892_ 'splice)
                                  (let ((_body1292812935_ _body12889_))
                                    (let ((_E1293012939_
                                           (lambda ()
                                             (error '"No clause matching"
                                                    _body1292812935_))))
                                      (let ((_K1293112988_
                                             (lambda (_tl12942_ _hd12943_)
                                               (let ((_rlen12945_
                                                      (_splice-rlen12786_
                                                       _tl12942_)))
                                                 (let ((_$target12947_
                                                        (gx#genident__1
                                                         'target)))
                                                   (let ((_$hd12949_
                                                          (gx#genident__1
                                                           'hd)))
                                                     (let ((_$tl12951_
                                                            (gx#genident__1
                                                             'tl)))
                                                       (let ((_$lp12953_
                                                              (gx#genident__1
                                                               'loop)))
                                                         (let ((_$lp-e12955_
                                                                (gx#genident__1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'e)))
                   (let ((_$lp-hd12957_ (gx#genident__1 'lp-hd)))
                     (let ((_$lp-tl12959_ (gx#genident__1 'lp-tl)))
                       (let ((_svars12961_ (_splice-vars12787_ _hd12943_)))
                         (let ((_lvars12963_ (gx#gentemps _svars12961_)))
                           (let ((_tlvars12965_ (gx#gentemps _svars12961_)))
                             (let ((_linit12969_
                                    (map (lambda (_var12967_)
                                           (gx#core-list 'quote '()))
                                         _lvars12963_)))
                               (let ()
                                 (let ((_make-loop12972_
                                        (lambda (_vars12974_)
                                          (gx#core-list
                                           'letrec-values
                                           (cons (cons (cons _$lp12953_ '())
                                                       (cons (gx#core-list
                                                              'lambda%
                                                              (cons _$hd12949_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _lvars12963_)
                      (gx#core-list
                       'if
                       (gx#core-list 'stx-pair? _$hd12949_)
                       (gx#core-list
                        'let-values
                        (cons (cons (cons _$lp-e12955_ '())
                                    (cons (gx#core-list
                                           _unwrap-e12607_
                                           _$hd12949_)
                                          '()))
                              '())
                        (gx#core-list
                         'let-values
                         (cons (cons (cons _$lp-hd12957_ '())
                                     (cons (gx#core-list '##car _$lp-e12955_)
                                           '()))
                               (cons (cons (cons _$lp-tl12959_ '())
                                           (cons (gx#core-list
                                                  '##cdr
                                                  _$lp-e12955_)
                                                 '()))
                                     '()))
                         (_recur12785_
                          _hd12943_
                          '()
                          _$lp-hd12957_
                          _E12873_
                          (lambda (_hdvars12976_)
                            (cons* _$lp12953_
                                   _$lp-tl12959_
                                   (map (lambda (_svar12978_ _lvar12979_)
                                          (gx#core-list
                                           'cons
                                           (assgetq _svar12978_
                                                    _hdvars12976_
                                                    _BUG12784_)
                                           _lvar12979_))
                                        _svars12961_
                                        _lvars12963_))))))
                       (gx#core-list
                        'let-values
                        (map (lambda (_lvar12981_ _tlvar12982_)
                               (cons (cons _tlvar12982_ '())
                                     (cons (gx#core-list 'reverse _lvar12981_)
                                           '())))
                             _lvars12963_
                             _tlvars12965_)
                        (_k12874_
                         (foldl (lambda (_svar12984_ _tlvar12985_ _r12986_)
                                  (cons (cons _svar12984_ _tlvar12985_)
                                        _r12986_))
                                _vars12974_
                                _svars12961_
                                _tlvars12965_)))))
                     '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 '())
                                           (cons* _$lp12953_
                                                  _$target12947_
                                                  _linit12969_)))))
                                   (gx#core-list
                                    'if
                                    (gx#core-list
                                     'stx-pair/null?
                                     _target12872_)
                                    (gx#core-list
                                     'if
                                     (gx#core-list
                                      'fx>=
                                      (gx#core-list 'stx-length _target12872_)
                                      _rlen12945_)
                                     (gx#core-list
                                      'let-values
                                      (cons (cons (cons _$target12947_
                                                        (cons _$tl12951_ '()))
                                                  (cons (gx#core-list
                                                         'syntax-split-splice
                                                         _target12872_
                                                         _rlen12945_)
                                                        '()))
                                            '())
                                      (_recur12785_
                                       _tl12942_
                                       _vars12871_
                                       _$tl12951_
                                       _E12873_
                                       _make-loop12972_))
                                     _E12873_)
                                    _E12873_))))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (if (##pair? _body1292812935_)
                                            (let ((_hd1293212991_
                                                   (##car _body1292812935_))
                                                  (_tl1293312993_
                                                   (##cdr _body1292812935_)))
                                              (let ((_hd12996_ _hd1293212991_))
                                                (let ((_tl12998_
                                                       _tl1293312993_))
                                                  (_K1293112988_
                                                   _tl12998_
                                                   _hd12996_))))
                                            (_E1293012939_)))))
                                  (if (eq? _$e12892_ 'null)
                                      (gx#core-list
                                       'if
                                       (gx#core-list 'stx-null? _target12872_)
                                       (_k12874_ _vars12871_)
                                       _E12873_)
                                      (if (eq? _$e12892_ 'vector)
                                          (let ((_$e13000_
                                                 (gx#genident__1 'e)))
                                            (gx#core-list
                                             'if
                                             (gx#core-list
                                              'stx-vector?
                                              _target12872_)
                                             (gx#core-list
                                              'let-values
                                              (cons (cons (cons _$e13000_ '())
                                                          (cons (gx#core-list
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         'vector->list
                         (gx#core-list _unwrap-e12607_ _target12872_))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (_recur12785_
                                               _body12889_
                                               _vars12871_
                                               _$e13000_
                                               _E12873_
                                               _k12874_))
                                             _E12873_))
                                          (if (eq? _$e12892_ 'box)
                                              (let ((_$e13002_
                                                     (gx#genident__1 'e)))
                                                (gx#core-list
                                                 'if
                                                 (gx#core-list
                                                  'stx-box?
                                                  _target12872_)
                                                 (gx#core-list
                                                  'let-values
                                                  (cons (cons (cons _$e13002_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                      (cons (gx#core-list
                             'unbox
                             (gx#core-list _unwrap-e12607_ _target12872_))
                            '()))
                '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_recur12785_
                                                   _body12889_
                                                   _vars12871_
                                                   _$e13002_
                                                   _E12873_
                                                   _k12874_))
                                                 _E12873_))
                                              (if (eq? _$e12892_ 'datum)
                                                  (gx#core-list
                                                   'if
                                                   (gx#core-list
                                                    'stx-datum?
                                                    _target12872_)
                                                   (gx#core-list
                                                    'if
                                                    (gx#core-list
                                                     'equal?
                                                     (gx#core-list
                                                      'stx-e
                                                      _target12872_)
                                                     _body12889_)
                                                    (_k12874_ _vars12871_)
                                                    _E12873_)
                                                   _E12873_)
                                                  (_BUG12784_
                                                   _e12870_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (if (##pair? _e1287512882_)
                                                 (let ((_hd1287913007_
                                                        (##car _e1287512882_))
                                                       (_tl1288013009_
                                                        (##cdr _e1287512882_)))
                                                   (let ((_tag13012_
                                                          _hd1287913007_))
                                                     (let ((_body13014_
                                                            _tl1288013009_))
                                                       (_K1287813004_
                                                        _body13014_
                                                        _tag13012_))))
                                                 (_E1287712886_))))))))
                             (_recur12785_
                              _hd12779_
                              '()
                              _target12778_
                              _E12782_
                              _make-body12788_)))))))))
            (let ((_parse-clause12614_
                   (lambda (_hd12683_ _ids12684_)
                     ((letrec ((_recur12686_
                                (lambda (_e12688_ _vars12689_ _depth12690_)
                                  (if (gx#identifier? _e12688_)
                                      (if (gx#underscore? _e12688_)
                                          (values '(any) _vars12689_)
                                          (if (gx#ellipsis? _e12688_)
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Misplaced ellipsis"
                                               _stx12605_
                                               _hd12683_)
                                              (if (find (lambda (_id12692_)
                                                          (gx#bound-identifier=?
                                                           _e12688_
                                                           _id12692_))
                                                        _ids12684_)
                                                  (values (cons 'id _e12688_)
                                                          _vars12689_)
                                                  (if (find (lambda (_var12694_)
                                                              (gx#bound-identifier=?
                                                               _e12688_
                                                               (car _var12694_)))
                                                            _vars12689_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Duplicate pattern variable"
                                                       _stx12605_
                                                       _e12688_)
                                                      (values (cons 'var
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _e12688_)
                      (cons (cons _e12688_ _depth12690_) _vars12689_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (if (gx#stx-pair? _e12688_)
                                          (let ((_e1269512702_ _e12688_))
                                            (let ((_E1269712706_
                                                   (lambda ()
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax"
                                                      _e1269512702_))))
                                              (let ((_E1269612767_
                                                     (lambda ()
                                                       (if (gx#stx-pair?
                                                            _e1269512702_)
                                                           (let ((_e1269812710_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax-e _e1269512702_)))
                     (let ((_hd1269912713_ (##car _e1269812710_))
                           (_tl1270012715_ (##cdr _e1269812710_)))
                       (let ((_hd12718_ _hd1269912713_))
                         (let ((_rest12720_ _tl1270012715_))
                           (if '#t
                               (let ((_make-pair12735_
                                      (lambda (_tag12722_ _hd12723_ _tl12724_)
                                        (let ((_hd-depth12726_
                                               (if (eq? _tag12722_ 'splice)
                                                   (fx+ _depth12690_ '1)
                                                   _depth12690_)))
                                          (let ((_g13745_
                                                 (_recur12686_
                                                  _hd12723_
                                                  _vars12689_
                                                  _hd-depth12726_)))
                                            (begin
                                              (let ((_g13746_
                                                     (values-count _g13745_)))
                                                (if (not (fx= _g13746_ 2))
                                                    (error "Context expects 2 values"
                                                           _g13746_)))
                                              (let ((_hd12728_
                                                     (values-ref _g13745_ 0))
                                                    (_vars12729_
                                                     (values-ref _g13745_ 1)))
                                                (let ((_g13747_
                                                       (_recur12686_
                                                        _tl12724_
                                                        _vars12729_
                                                        _depth12690_)))
                                                  (begin
                                                    (let ((_g13748_
                                                           (values-count
                                                            _g13747_)))
                                                      (if (not (fx= _g13748_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            2))
                  (error "Context expects 2 values" _g13748_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((_tl12731_
                                                           (values-ref
                                                            _g13747_
                                                            0))
                                                          (_vars12732_
                                                           (values-ref
                                                            _g13747_
                                                            1)))
                                                      (let ()
                                                        (values (cons* _tag12722_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               _hd12728_
                               _tl12731_)
                        _vars12732_))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                 (let ((_e1273612743_ _rest12720_))
                                   (let ((_E1273812747_
                                          (lambda ()
                                            (_make-pair12735_
                                             'cons
                                             _hd12718_
                                             _rest12720_))))
                                     (let ((_E1273712763_
                                            (lambda ()
                                              (if (gx#stx-pair? _e1273612743_)
                                                  (let ((_e1273912751_
                                                         (gx#syntax-e
                                                          _e1273612743_)))
                                                    (let ((_hd1274012754_
                                                           (##car _e1273912751_))
                                                          (_tl1274112756_
                                                           (##cdr _e1273912751_)))
                                                      (let ((_rest-hd12759_
                                                             _hd1274012754_))
                                                        (let ((_rest-tl12761_
                                                               _tl1274112756_))
                                                          (if '#t
                                                              (if (gx#ellipsis?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _rest-hd12759_)
                          (_make-pair12735_ 'splice _hd12718_ _rest-tl12761_)
                          (_make-pair12735_ 'cons _hd12718_ _rest12720_))
                      (_E1273812747_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1273812747_)))))
                                       (let () (_E1273712763_))))))
                               (_E1269712706_))))))
                   (_E1269712706_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (let () (_E1269612767_)))))
                                          (if (gx#stx-null? _e12688_)
                                              (values '(null) _vars12689_)
                                              (if (gx#stx-vector? _e12688_)
                                                  (let ((_g13749_
                                                         (_recur12686_
                                                          (vector->list
                                                           (gx#syntax-e
                                                            _e12688_))
                                                          _vars12689_
                                                          _depth12690_)))
                                                    (begin
                                                      (let ((_g13750_
                                                             (values-count
                                                              _g13749_)))
                                                        (if (not (fx= _g13750_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              2))
                    (error "Context expects 2 values" _g13750_)))
              (let ((_e12771_ (values-ref _g13749_ 0))
                    (_vars12772_ (values-ref _g13749_ 1)))
                (values (cons 'vector _e12771_) _vars12772_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-box? _e12688_)
                                                      (let ((_g13751_
                                                             (_recur12686_
                                                              (unbox (gx#syntax-e
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _e12688_))
                      _vars12689_
                      _depth12690_)))
                (begin
                  (let ((_g13752_ (values-count _g13751_)))
                    (if (not (fx= _g13752_ 2))
                        (error "Context expects 2 values" _g13752_)))
                  (let ((_e12774_ (values-ref _g13751_ 0))
                        (_vars12775_ (values-ref _g13751_ 1)))
                    (values (cons 'box _e12774_) _vars12775_))))
              (if (gx#stx-datum? _e12688_)
                  (values (cons 'datum (gx#stx-e _e12688_)) _vars12689_)
                  (gx#raise-syntax-error
                   '#f
                   '"Bad pattern"
                   _stx12605_
                   _e12688_))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        _recur12686_)
                      _hd12683_
                      '()
                      '0))))
              (let ((_generate-clause12612_
                     (lambda (_target13018_ _ids13019_ _clause13020_ _E13021_)
                       (let ((_generate113023_
                              (lambda (_hd13110_ _fender13111_ _body13112_)
                                (let ((_g13743_
                                       (_parse-clause12614_
                                        _hd13110_
                                        _ids13019_)))
                                  (begin
                                    (let ((_g13744_ (values-count _g13743_)))
                                      (if (not (fx= _g13744_ 2))
                                          (error "Context expects 2 values"
                                                 _g13744_)))
                                    (let ((_e13114_ (values-ref _g13743_ 0))
                                          (_mvars13115_
                                           (values-ref _g13743_ 1)))
                                      (let ((_pvars13117_
                                             (map gx#syntax-local-rewrap
                                                  (gx#gentemps _mvars13115_))))
                                        (let ((_E13119_
                                               (cons _E13021_
                                                     (cons _target13018_
                                                           '()))))
                                          (let ((_K13152_
                                                 (gx#core-list
                                                  'lambda%
                                                  _pvars13117_
                                                  (gx#core-list
                                                   'let-syntax
                                                   (map (lambda (_mvar13121_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _pvar13122_)
                  (let ((_mvar1312313130_ _mvar13121_))
                    (let ((_E1312513134_
                           (lambda ()
                             (error '"No clause matching" _mvar1312313130_))))
                      (let ((_K1312613140_
                             (lambda (_depth13137_ _id13138_)
                               (cons _id13138_
                                     (cons (gx#core-list
                                            'make-syntax-pattern
                                            (gx#core-list 'quote _id13138_)
                                            (gx#core-list 'quote _pvar13122_)
                                            _depth13137_)
                                           '())))))
                        (if (##pair? _mvar1312313130_)
                            (let ((_hd1312713143_ (##car _mvar1312313130_))
                                  (_tl1312813145_ (##cdr _mvar1312313130_)))
                              (let ((_id13148_ _hd1312713143_))
                                (let ((_depth13150_ _tl1312813145_))
                                  (_K1312613140_ _depth13150_ _id13148_))))
                            (_E1312513134_))))))
                _mvars13115_
                _pvars13117_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (if (eq? _fender13111_ '#t)
                                                       _body13112_
                                                       (gx#core-list
                                                        'if
                                                        _fender13111_
                                                        _body13112_
                                                        _E13119_))))))
                                            (let ()
                                              (_generate-match12613_
                                               _hd13110_
                                               _target13018_
                                               _e13114_
                                               _mvars13115_
                                               _K13152_
                                               _E13119_)))))))))))
                         (let ((_e1302413044_ _clause13020_))
                           (let ((_E1303313048_
                                  (lambda ()
                                    (gx#raise-syntax-error
                                     '#f
                                     '"Bad syntax"
                                     _e1302413044_))))
                             (let ((_E1302613082_
                                    (lambda ()
                                      (if (gx#stx-pair? _e1302413044_)
                                          (let ((_e1303413052_
                                                 (gx#syntax-e _e1302413044_)))
                                            (let ((_hd1303513055_
                                                   (##car _e1303413052_))
                                                  (_tl1303613057_
                                                   (##cdr _e1303413052_)))
                                              (let ((_hd13060_ _hd1303513055_))
                                                (if (gx#stx-pair?
                                                     _tl1303613057_)
                                                    (let ((_e1303713062_
                                                           (gx#syntax-e
                                                            _tl1303613057_)))
                                                      (let ((_hd1303813065_
                                                             (##car _e1303713062_))
                                                            (_tl1303913067_
                                                             (##cdr _e1303713062_)))
                                                        (let ((_fender13070_
                                                               _hd1303813065_))
                                                          (if (gx#stx-pair?
                                                               _tl1303913067_)
                                                              (let ((_e1304013072_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _tl1303913067_)))
                        (let ((_hd1304113075_ (##car _e1304013072_))
                              (_tl1304213077_ (##cdr _e1304013072_)))
                          (let ((_body13080_ _hd1304113075_))
                            (if (gx#stx-null? _tl1304213077_)
                                (if '#t
                                    (_generate113023_
                                     _hd13060_
                                     _fender13070_
                                     _body13080_)
                                    (_E1303313048_))
                                (_E1303313048_)))))
                      (_E1303313048_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1303313048_)))))
                                          (_E1303313048_)))))
                               (let ((_E1302513106_
                                      (lambda ()
                                        (if (gx#stx-pair? _e1302413044_)
                                            (let ((_e1302713086_
                                                   (gx#syntax-e
                                                    _e1302413044_)))
                                              (let ((_hd1302813089_
                                                     (##car _e1302713086_))
                                                    (_tl1302913091_
                                                     (##cdr _e1302713086_)))
                                                (let ((_hd13094_
                                                       _hd1302813089_))
                                                  (if (gx#stx-pair?
                                                       _tl1302913091_)
                                                      (let ((_e1303013096_
                                                             (gx#syntax-e
                                                              _tl1302913091_)))
                                                        (let ((_hd1303113099_
                                                               (##car _e1303013096_))
                                                              (_tl1303213101_
                                                               (##cdr _e1303013096_)))
                                                          (let ((_body13104_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1303113099_))
                    (if (gx#stx-null? _tl1303213101_)
                        (if '#t
                            (_generate113023_ _hd13094_ '#t _body13104_)
                            (_E1302613082_))
                        (_E1302613082_)))))
              (_E1302613082_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1302613082_)))))
                                 (let () (_E1302513106_))))))))))
                (let ((_generate-bindings12610_
                       (lambda (_target13195_
                                _ids13196_
                                _clauses13197_
                                _clause-ids13198_
                                _E13199_)
                         (let ((_generate113201_
                                (lambda (_clause13300_
                                         _clause-id13301_
                                         _E13302_)
                                  (cons (cons _clause-id13301_ '())
                                        (cons (gx#core-list
                                               'lambda%
                                               (cons _target13195_ '())
                                               (_generate-clause12612_
                                                _target13195_
                                                _ids13196_
                                                _clause13300_
                                                _E13302_))
                                              '())))))
                           ((letrec ((_lp13203_
                                      (lambda (_rest13205_
                                               _rest-ids13206_
                                               _bindings13207_)
                                        (let ((_rest1320813216_ _rest13205_))
                                          (let ((_E1321113220_
                                                 (lambda ()
                                                   (error '"No clause matching"
                                                          _rest1320813216_))))
                                            (let ((_else1321013224_
                                                   (lambda ()
                                                     _bindings13207_)))
                                              (let ((_K1321213288_
                                                     (lambda (_rest13227_
                                                              _clause13228_)
                                                       (let ((_rest-ids1322913236_
                                                              _rest-ids13206_))
                                                         (let ((_E1323113240_
                                                                (lambda ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (error '"No clause matching" _rest-ids1322913236_))))
                   (let ((_K1323213276_
                          (lambda (_rest-ids13243_ _clause-id13244_)
                            (let ((_rest-ids1324513253_ _rest-ids13243_))
                              (let ((_E1324813257_
                                     (lambda ()
                                       (error '"No clause matching"
                                              _rest-ids1324513253_))))
                                (let ((_else1324713261_
                                       (lambda ()
                                         (cons (_generate113201_
                                                _clause13228_
                                                _clause-id13244_
                                                _E13199_)
                                               _bindings13207_))))
                                  (let ((_K1324913266_
                                         (lambda (_next-clause-id13264_)
                                           (_lp13203_
                                            _rest13227_
                                            _rest-ids13243_
                                            (cons (_generate113201_
                                                   _clause13228_
                                                   _clause-id13244_
                                                   _next-clause-id13264_)
                                                  _bindings13207_)))))
                                    (if (##pair? _rest-ids1324513253_)
                                        (let ((_hd1325013269_
                                               (##car _rest-ids1324513253_))
                                              (_tl1325113271_
                                               (##cdr _rest-ids1324513253_)))
                                          (let ((_next-clause-id13274_
                                                 _hd1325013269_))
                                            (_K1324913266_
                                             _next-clause-id13274_)))
                                        (_else1324713261_)))))))))
                     (if (##pair? _rest-ids1322913236_)
                         (let ((_hd1323313279_ (##car _rest-ids1322913236_))
                               (_tl1323413281_ (##cdr _rest-ids1322913236_)))
                           (let ((_clause-id13284_ _hd1323313279_))
                             (let ((_rest-ids13286_ _tl1323413281_))
                               (_K1323213276_
                                _rest-ids13286_
                                _clause-id13284_))))
                         (_E1323113240_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (##pair? _rest1320813216_)
                                                    (let ((_hd1321313291_
                                                           (##car _rest1320813216_))
                                                          (_tl1321413293_
                                                           (##cdr _rest1320813216_)))
                                                      (let ((_clause13296_
                                                             _hd1321313291_))
                                                        (let ((_rest13298_
                                                               _tl1321413293_))
                                                          (_K1321213288_
                                                           _rest13298_
                                                           _clause13296_))))
                                                    (_else1321013224_)))))))))
                              _lp13203_)
                            _clauses13197_
                            _clause-ids13198_
                            '())))))
                  (let ((_e1261512628_ _stx12605_))
                    (let ((_E1261712632_
                           (lambda ()
                             (gx#raise-syntax-error
                              '#f
                              '"Bad syntax"
                              _e1261512628_))))
                      (let ((_E1261612679_
                             (lambda ()
                               (if (gx#stx-pair? _e1261512628_)
                                   (let ((_e1261812636_
                                          (gx#syntax-e _e1261512628_)))
                                     (let ((_hd1261912639_
                                            (##car _e1261812636_))
                                           (_tl1262012641_
                                            (##cdr _e1261812636_)))
                                       (if (gx#stx-pair? _tl1262012641_)
                                           (let ((_e1262112644_
                                                  (gx#syntax-e
                                                   _tl1262012641_)))
                                             (let ((_hd1262212647_
                                                    (##car _e1262112644_))
                                                   (_tl1262312649_
                                                    (##cdr _e1262112644_)))
                                               (let ((_expr12652_
                                                      _hd1262212647_))
                                                 (if (gx#stx-pair?
                                                      _tl1262312649_)
                                                     (let ((_e1262412654_
                                                            (gx#syntax-e
                                                             _tl1262312649_)))
                                                       (let ((_hd1262512657_
                                                              (##car _e1262412654_))
                                                             (_tl1262612659_
                                                              (##cdr _e1262412654_)))
                                                         (let ((_ids12662_
                                                                _hd1262512657_))
                                                           (let ((_clauses12664_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _tl1262612659_))
                     (if '#t
                         (if (not (gx#identifier-list? _ids12662_))
                             (gx#raise-syntax-error
                              '#f
                              '"Bad template identifier list"
                              _stx12605_
                              _ids12662_)
                             (if (not (gx#stx-list? _clauses12664_))
                                 (gx#raise-syntax-error
                                  '#f
                                  '"Bad syntax"
                                  _stx12605_)
                                 (let ((_ids12666_
                                        (gx#syntax->list _ids12662_)))
                                   (let ((_clauses12668_
                                          (gx#syntax->list _clauses12664_)))
                                     (let ((_clause-ids12670_
                                            (gx#gentemps _clauses12668_)))
                                       (let ((_E12672_ (gx#genident__0)))
                                         (let ((_target12674_
                                                (gx#genident__0)))
                                           (let ((_first12676_
                                                  (if (null? _clauses12668_)
                                                      _E12672_
                                                      (car _clause-ids12670_))))
                                             (let ()
                                               (gx#stx-wrap-source
                                                (gx#core-list
                                                 'let-values
                                                 (cons (cons (cons _E12672_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           '())
                     (cons (gx#core-list
                            'lambda%
                            (cons _target12674_ '())
                            (gx#core-list
                             'raise-syntax-error
                             '#f
                             '"Bad syntax"
                             _target12674_))
                           '()))
               '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_generate-body12611_
                                                  (_generate-bindings12610_
                                                   _target12674_
                                                   _ids12666_
                                                   _clauses12668_
                                                   _clause-ids12670_
                                                   _E12672_)
                                                  (cons _first12676_
                                                        (cons _expr12652_
                                                              '()))))
                                                (gx#stx-source
                                                 _stx12605_)))))))))))
                         (_E1261712632_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_E1261712632_)))))
                                           (_E1261712632_))))
                                   (_E1261712632_)))))
                        (let () (_E1261612679_))))))))))))
    (begin
      (define gx#macro-expand-syntax-case__0
        (lambda (_stx13307_)
          (let ((_identifier=?13309_ 'free-identifier=?))
            (let ((_unwrap-e13311_ 'syntax-e))
              (let ((_wrap-e13313_ 'quote-syntax))
                (gx#macro-expand-syntax-case__opt-lambda12603
                 _stx13307_
                 _identifier=?13309_
                 _unwrap-e13311_
                 _wrap-e13313_))))))
      (define gx#macro-expand-syntax-case__1
        (lambda (_stx13315_ _identifier=?13316_)
          (let ((_unwrap-e13318_ 'syntax-e))
            (let ((_wrap-e13320_ 'quote-syntax))
              (gx#macro-expand-syntax-case__opt-lambda12603
               _stx13315_
               _identifier=?13316_
               _unwrap-e13318_
               _wrap-e13320_)))))
      (define gx#macro-expand-syntax-case__2
        (lambda (_stx13322_ _identifier=?13323_ _unwrap-e13324_)
          (let ((_wrap-e13326_ 'quote-syntax))
            (gx#macro-expand-syntax-case__opt-lambda12603
             _stx13322_
             _identifier=?13323_
             _unwrap-e13324_
             _wrap-e13326_))))
      (define gx#macro-expand-syntax-case
        (lambda _g13754_
          (let ((_g13753_ (length _g13754_)))
            (cond ((fx= _g13753_ 1)
                   (apply gx#macro-expand-syntax-case__0 _g13754_))
                  ((fx= _g13753_ 2)
                   (apply gx#macro-expand-syntax-case__1 _g13754_))
                  ((fx= _g13753_ 3)
                   (apply gx#macro-expand-syntax-case__2 _g13754_))
                  ((fx= _g13753_ 4)
                   (apply gx#macro-expand-syntax-case__opt-lambda12603
                          _g13754_))
                  (else (error "No clause matching arguments" _g13754_))))))))
  (define gx#syntax-local-pattern?
    (lambda (_stx12602_)
      (if (gx#identifier? _stx12602_)
          (##structure-instance-of?
           (gx#syntax-local-e__opt-lambda3802 _stx12602_ false)
           'gx#syntax-pattern::t)
          '#f)))
  (define gx#syntax-check-splice-targets
    (lambda (_hd12560_ . _rest12561_)
      (let ((_len12563_ (length _hd12560_)))
        ((letrec ((_lp12565_
                   (lambda (_rest12567_)
                     (let ((_rest1256812576_ _rest12567_))
                       (let ((_E1257112580_
                              (lambda ()
                                (error '"No clause matching"
                                       _rest1256812576_))))
                         (let ((_else1257012584_ (lambda () '#!void)))
                           (let ((_K1257212590_
                                  (lambda (_rest12587_ _hd12588_)
                                    (if (fx= _len12563_ (length _hd12588_))
                                        (_lp12565_ _rest12587_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Splice length mismatch"
                                         _hd12588_)))))
                             (if (##pair? _rest1256812576_)
                                 (let ((_hd1257312593_
                                        (##car _rest1256812576_))
                                       (_tl1257412595_
                                        (##cdr _rest1256812576_)))
                                   (let ((_hd12598_ _hd1257312593_))
                                     (let ((_rest12600_ _tl1257412595_))
                                       (_K1257212590_ _rest12600_ _hd12598_))))
                                 (_else1257012584_)))))))))
           _lp12565_)
         _rest12561_))))
  (define gx#syntax-split-splice
    (lambda (_stx12518_ _n12519_)
      ((letrec ((_lp12521_
                 (lambda (_rest12523_ _r12524_)
                   (if (gx#stx-pair? _rest12523_)
                       (let ((_g1252512532_ (gx#syntax-e _rest12523_)))
                         (let ((_E1252712536_
                                (lambda ()
                                  (error '"No clause matching"
                                         _g1252512532_))))
                           (let ((_K1252812542_
                                  (lambda (_rest12539_ _hd12540_)
                                    (_lp12521_
                                     _rest12539_
                                     (cons _hd12540_ _r12524_)))))
                             (if (##pair? _g1252512532_)
                                 (let ((_hd1252912545_ (##car _g1252512532_))
                                       (_tl1253012547_ (##cdr _g1252512532_)))
                                   (let ((_hd12550_ _hd1252912545_))
                                     (let ((_rest12552_ _tl1253012547_))
                                       (_K1252812542_ _rest12552_ _hd12550_))))
                                 (_E1252712536_)))))
                       ((letrec ((_lp12554_
                                  (lambda (_n12556_ _l12557_ _r12558_)
                                    (if (null? _l12557_)
                                        (values _l12557_ _r12558_)
                                        (if (fxpositive? _n12556_)
                                            (_lp12554_
                                             (fx- _n12556_ '1)
                                             (cdr _l12557_)
                                             (cons (car _l12557_) _r12558_))
                                            (values (reverse _l12557_)
                                                    _r12558_))))))
                          _lp12554_)
                        _n12519_
                        _r12524_
                        _rest12523_)))))
         _lp12521_)
       _stx12518_
       '()))))
