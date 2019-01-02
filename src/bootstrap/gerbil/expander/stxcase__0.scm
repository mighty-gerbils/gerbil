(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gx#syntax-pattern::t
    (make-struct-type
     'gx#syntax-pattern::t
     gx#expander::t
     '2
     'syntax-pattern
     '()
     '#f
     '(id depth)))
  (define gx#syntax-pattern? (make-struct-predicate gx#syntax-pattern::t))
  (define gx#make-syntax-pattern
    (lambda _$args19656_
      (apply make-struct-instance gx#syntax-pattern::t _$args19656_)))
  (define gx#syntax-pattern-id
    (make-struct-field-accessor gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth
    (make-struct-field-accessor gx#syntax-pattern::t '1))
  (define gx#syntax-pattern-id-set!
    (make-struct-field-mutator gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth-set!
    (make-struct-field-mutator gx#syntax-pattern::t '1))
  (define gx#syntax-pattern::apply-macro-expander
    (lambda (_self19653_ _stx19654_)
      (gx#raise-syntax-error
       '#f
       '"Identifier used out of context"
       _stx19654_)))
  (bind-method!
   gx#syntax-pattern::t
   'apply-macro-expander
   gx#syntax-pattern::apply-macro-expander
   '#f)
  (define gx#macro-expand-syntax
    (lambda (_stx19135_)
      (letrec ((_generate19137_
                (lambda (_e19364_)
                  (letrec ((_BUG19366_
                            (lambda (_q19528_)
                              (error '"BUG: syntax; generate"
                                     _stx19135_
                                     _e19364_
                                     _q19528_)))
                           (_local-pattern-e19367_
                            (lambda (_pat19526_)
                              (gx#syntax-local-rewrap
                               (##structure-ref
                                _pat19526_
                                '2
                                gx#syntax-pattern::t
                                '#f))))
                           (_getvar19368_
                            (lambda (_q19523_ _vars19524_)
                              (assgetq _q19523_ _vars19524_ _BUG19366_)))
                           (_getarg19369_
                            (lambda (_arg19489_ _vars19490_)
                              (let* ((_arg1949119498_ _arg19489_)
                                     (_E1949319502_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _arg1949119498_)))
                                     (_K1949419511_
                                      (lambda (_e19505_ _tag19506_)
                                        (let ((_$e19508_ _tag19506_))
                                          (if (eq? 'ref _$e19508_)
                                              (_getvar19368_
                                               _e19505_
                                               _vars19490_)
                                              (if (eq? 'pattern _$e19508_)
                                                  (_local-pattern-e19367_
                                                   _e19505_)
                                                  (_BUG19366_ _arg19489_)))))))
                                (if (##pair? _arg1949119498_)
                                    (let ((_hd1949519514_
                                           (##car _arg1949119498_))
                                          (_tl1949619516_
                                           (##cdr _arg1949119498_)))
                                      (let* ((_tag19519_ _hd1949519514_)
                                             (_e19521_ _tl1949619516_))
                                        (_K1949419511_ _e19521_ _tag19519_)))
                                    (_E1949319502_))))))
                    (let _recur19371_ ((_e19373_ _e19364_) (_vars19374_ '()))
                      (let* ((_e1937519382_ _e19373_)
                             (_E1937719386_
                              (lambda ()
                                (error '"No clause matching" _e1937519382_)))
                             (_K1937819477_
                              (lambda (_body19389_ _tag19390_)
                                (let ((_$e19392_ _tag19390_))
                                  (if (eq? 'datum _$e19392_)
                                      (gx#core-list 'quote _body19389_)
                                      (if (eq? 'term _$e19392_)
                                          (let ((_id19395_
                                                 (gx#syntax-local-unwrap
                                                  _body19389_)))
                                            (if (##structure-direct-instance-of?
                                                 _id19395_
                                                 'gx#identifier-wrap::t)
                                                (let ((_marks19397_
                                                       (##unchecked-structure-ref
                                                        _id19395_
                                                        '3
                                                        gx#identifier-wrap::t
                                                        '#f)))
                                                  (if (null? _marks19397_)
                                                      (gx#core-list
                                                       'datum->syntax
                                                       '#f
                                                       (gx#core-list
                                                        'quote
                                                        _body19389_))
                                                      (gx#core-list
                                                       'datum->syntax
                                                       (gx#core-list
                                                        'quote-syntax
                                                        _body19389_)
                                                       (gx#core-list
                                                        'quote
                                                        _body19389_)
                                                       '#f
                                                       '#f)))
                                                (if (##structure-direct-instance-of?
                                                     _id19395_
                                                     'gx#syntax-quote::t)
                                                    (gx#core-list
                                                     'quote-syntax
                                                     _body19389_)
                                                    (_BUG19366_ _e19373_))))
                                          (if (eq? 'pattern _$e19392_)
                                              (_local-pattern-e19367_
                                               _body19389_)
                                              (if (eq? 'ref _$e19392_)
                                                  (_getvar19368_
                                                   _body19389_
                                                   _vars19374_)
                                                  (if (eq? 'cons _$e19392_)
                                                      (gx#core-list
                                                       'cons
                                                       (_recur19371_
                                                        (car _body19389_)
                                                        _vars19374_)
                                                       (_recur19371_
                                                        (cdr _body19389_)
                                                        _vars19374_))
                                                      (if (eq? 'vector
                                                               _$e19392_)
                                                          (gx#core-list
                                                           'list->vector
                                                           (_recur19371_
                                                            _body19389_
                                                            _vars19374_))
                                                          (if (eq? 'box
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _$e19392_)
                      (gx#core-list
                       'box
                       (_recur19371_ _body19389_ _vars19374_))
                      (if (eq? 'splice _$e19392_)
                          (let* ((_body1939819409_ _body19389_)
                                 (_E1940019413_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _body1939819409_)))
                                 (_K1940119451_
                                  (lambda (_args19416_
                                           _iv19417_
                                           _hd19418_
                                           _depth19419_)
                                    (let* ((_targets19425_
                                            (map (lambda (_g1942019422_)
                                                   (_getarg19369_
                                                    _g1942019422_
                                                    _vars19374_))
                                                 _args19416_))
                                           (_fold-in19427_
                                            (gx#gentemps _args19416_))
                                           (_fold-out19429_ (gx#genident__0))
                                           (_lambda-args19431_
                                            (foldr1 cons
                                                    (cons _fold-out19429_ '())
                                                    _fold-in19427_))
                                           (_lambda-body19448_
                                            (if (fx> _depth19419_ '1)
                                                (let ((_r-args19439_
                                                       (map (lambda (_arg19433_)
                                                              (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cdr _arg19433_)))
                    _args19416_))
              (_r-vars19440_
               (foldr2 (lambda (_arg19435_ _var19436_ _r19437_)
                         (cons (cons (cdr _arg19435_) _var19436_) _r19437_))
                       _vars19374_
                       _args19416_
                       _fold-in19427_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_recur19371_
                                                   (cons 'splice
                                                         (cons (fx- _depth19419_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)
                       (cons _hd19418_
                             (cons (cons 'var _fold-out19429_)
                                   _r-args19439_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _r-vars19440_))
                                                (let ((_hd-vars19446_
                                                       (foldr2 (lambda (_arg19442_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _var19443_
                                _r19444_)
                         (cons (cons (cdr _arg19442_) _var19443_) _r19444_))
                       _vars19374_
                       _args19416_
                       _fold-in19427_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#core-list
                                                   'cons
                                                   (_recur19371_
                                                    _hd19418_
                                                    _hd-vars19446_)
                                                   _fold-out19429_)))))
                                      (gx#core-list
                                       'begin
                                       (if (fx> (length _targets19425_) '1)
                                           (gx#core-cons*
                                            'syntax-check-splice-targets
                                            _targets19425_)
                                           '#!void)
                                       (gx#core-cons*
                                        'foldr
                                        (gx#core-list
                                         'lambda%
                                         _lambda-args19431_
                                         _lambda-body19448_)
                                        (_recur19371_ _iv19417_ _vars19374_)
                                        _targets19425_))))))
                            (if (##pair? _body1939819409_)
                                (let ((_hd1940219454_ (##car _body1939819409_))
                                      (_tl1940319456_
                                       (##cdr _body1939819409_)))
                                  (let ((_depth19459_ _hd1940219454_))
                                    (if (##pair? _tl1940319456_)
                                        (let ((_hd1940419461_
                                               (##car _tl1940319456_))
                                              (_tl1940519463_
                                               (##cdr _tl1940319456_)))
                                          (let ((_hd19466_ _hd1940419461_))
                                            (if (##pair? _tl1940519463_)
                                                (let ((_hd1940619468_
                                                       (##car _tl1940519463_))
                                                      (_tl1940719470_
                                                       (##cdr _tl1940519463_)))
                                                  (let* ((_iv19473_
                                                          _hd1940619468_)
                                                         (_args19475_
                                                          _tl1940719470_))
                                                    (_K1940119451_
                                                     _args19475_
                                                     _iv19473_
                                                     _hd19466_
                                                     _depth19459_)))
                                                (_E1940019413_))))
                                        (_E1940019413_))))
                                (_E1940019413_)))
                          (if (eq? 'var _$e19392_)
                              _body19389_
                              (_BUG19366_ _e19373_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        (if (##pair? _e1937519382_)
                            (let ((_hd1937919480_ (##car _e1937519382_))
                                  (_tl1938019482_ (##cdr _e1937519382_)))
                              (let* ((_tag19485_ _hd1937919480_)
                                     (_body19487_ _tl1938019482_))
                                (_K1937819477_ _body19487_ _tag19485_)))
                            (_E1937719386_)))))))
               (_parse19138_
                (lambda (_e19179_)
                  (letrec ((_make-cons19181_
                            (lambda (_hd19356_ _tl19357_)
                              (let ((_g19658_ _hd19356_) (_g19660_ _tl19357_))
                                (begin
                                  (let ((_g19659_
                                         (if (##values? _g19658_)
                                             (##vector-length _g19658_)
                                             1)))
                                    (if (not (##fx= _g19659_ 2))
                                        (error "Context expects 2 values"
                                               _g19659_)))
                                  (let ((_g19661_
                                         (if (##values? _g19660_)
                                             (##vector-length _g19660_)
                                             1)))
                                    (if (not (##fx= _g19661_ 2))
                                        (error "Context expects 2 values"
                                               _g19661_)))
                                  (let ((_hd-e19359_ (##vector-ref _g19658_ 0))
                                        (_hd-vars19360_
                                         (##vector-ref _g19658_ 1)))
                                    (let ((_tl-e19361_
                                           (##vector-ref _g19660_ 0))
                                          (_tl-vars19362_
                                           (##vector-ref _g19660_ 1)))
                                      (values (cons 'cons
                                                    (cons _hd-e19359_
                                                          _tl-e19361_))
                                              (append _hd-vars19360_
                                                      _tl-vars19362_))))))))
                           (_make-splice19182_
                            (lambda (_where19295_
                                     _depth19296_
                                     _hd19297_
                                     _tl19298_)
                              (let ((_g19662_ _hd19297_) (_g19664_ _tl19298_))
                                (begin
                                  (let ((_g19663_
                                         (if (##values? _g19662_)
                                             (##vector-length _g19662_)
                                             1)))
                                    (if (not (##fx= _g19663_ 2))
                                        (error "Context expects 2 values"
                                               _g19663_)))
                                  (let ((_g19665_
                                         (if (##values? _g19664_)
                                             (##vector-length _g19664_)
                                             1)))
                                    (if (not (##fx= _g19665_ 2))
                                        (error "Context expects 2 values"
                                               _g19665_)))
                                  (let ((_hd-e19300_ (##vector-ref _g19662_ 0))
                                        (_hd-vars19301_
                                         (##vector-ref _g19662_ 1)))
                                    (let ((_tl-e19302_
                                           (##vector-ref _g19664_ 0))
                                          (_tl-vars19303_
                                           (##vector-ref _g19664_ 1)))
                                      (let _lp19305_ ((_rest19307_
                                                       _hd-vars19301_)
                                                      (_targets19308_ '())
                                                      (_vars19309_
                                                       _tl-vars19303_))
                                        (let* ((_rest1931019320_ _rest19307_)
                                               (_else1931219328_
                                                (lambda ()
                                                  (if (null? _targets19308_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Misplaced ellipsis"
                                                       _stx19135_
                                                       _where19295_)
                                                      (values (cons 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _depth19296_
                                  (cons _hd-e19300_
                                        (cons _tl-e19302_ _targets19308_))))
                      _vars19309_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_K1931419337_
                                                (lambda (_rest19331_
                                                         _hd-pat19332_
                                                         _hd-depth*19333_)
                                                  (let ((_hd-depth19335_
                                                         (fx- _hd-depth*19333_
                                                              _depth19296_)))
                                                    (if (fxpositive?
                                                         _hd-depth19335_)
                                                        (_lp19305_
                                                         _rest19331_
                                                         (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd-pat19332_)
                       _targets19308_)
                 (cons (cons _hd-depth19335_ _hd-pat19332_) _vars19309_))
                (if (fxzero? _hd-depth19335_)
                    (_lp19305_
                     _rest19331_
                     (cons (cons 'pattern _hd-pat19332_) _targets19308_)
                     _vars19309_)
                    (gx#raise-syntax-error
                     '#f
                     '"Too many ellipses"
                     _stx19135_
                     _where19295_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _rest1931019320_)
                                              (let ((_hd1931519340_
                                                     (##car _rest1931019320_))
                                                    (_tl1931619342_
                                                     (##cdr _rest1931019320_)))
                                                (if (##pair? _hd1931519340_)
                                                    (let ((_hd1931719345_
                                                           (##car _hd1931519340_))
                                                          (_tl1931819347_
                                                           (##cdr _hd1931519340_)))
                                                      (let* ((_hd-depth*19350_
                                                              _hd1931719345_)
                                                             (_hd-pat19352_
                                                              _tl1931819347_)
                                                             (_rest19354_
                                                              _tl1931619342_))
                                                        (_K1931419337_
                                                         _rest19354_
                                                         _hd-pat19352_
                                                         _hd-depth*19350_)))
                                                    (_else1931219328_)))
                                              (_else1931219328_))))))))))
                           (_recur19183_
                            (lambda (_e19188_ _is-e?19189_)
                              (if (_is-e?19189_ _e19188_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Mislpaced ellipsis"
                                   _stx19135_)
                                  (if (gx#syntax-local-pattern? _e19188_)
                                      (let* ((_pat19191_
                                              (gx#syntax-local-e__0 _e19188_))
                                             (_depth19193_
                                              (##structure-ref
                                               _pat19191_
                                               '3
                                               gx#syntax-pattern::t
                                               '#f)))
                                        (if (fxpositive? _depth19193_)
                                            (values (cons 'ref _pat19191_)
                                                    (cons (cons _depth19193_
                                                                _pat19191_)
                                                          '()))
                                            (values (cons 'pattern _pat19191_)
                                                    '())))
                                      (if (gx#identifier? _e19188_)
                                          (values (cons 'term _e19188_) '())
                                          (if (gx#stx-pair? _e19188_)
                                              (let* ((_e1919519202_ _e19188_)
                                                     (_E1919719206_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _e1919519202_)))
                                                     (_E1919619285_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e1919519202_)
                                                            (let ((_e1919819210_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e1919519202_)))
                      (let ((_hd1919919213_ (##car _e1919819210_))
                            (_tl1920019215_ (##cdr _e1919819210_)))
                        (let* ((_hd19218_ _hd1919919213_)
                               (_rest19220_ _tl1920019215_))
                          (if '#t
                              (if (_is-e?19189_ _hd19218_)
                                  (let* ((_e1922119228_ _rest19220_)
                                         (_E1922319232_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _stx19135_
                                             _e19188_)))
                                         (_E1922219246_
                                          (lambda ()
                                            (if (gx#stx-pair? _e1922119228_)
                                                (let ((_e1922419236_
                                                       (gx#syntax-e
                                                        _e1922119228_)))
                                                  (let ((_hd1922519239_
                                                         (##car _e1922419236_))
                                                        (_tl1922619241_
                                                         (##cdr _e1922419236_)))
                                                    (let ((_rest19244_
                                                           _hd1922519239_))
                                                      (if (gx#stx-null?
                                                           _tl1922619241_)
                                                          (if '#t
                                                              (_recur19183_
                                                               _rest19244_
                                                               false)
                                                              (_E1922319232_))
                                                          (_E1922319232_)))))
                                                (_E1922319232_)))))
                                    (_E1922219246_))
                                  (let _lp19250_ ((_rest19252_ _rest19220_)
                                                  (_depth19253_ '0))
                                    (let* ((_e1925419261_ _rest19252_)
                                           (_E1925619265_
                                            (lambda ()
                                              (if (fxpositive? _depth19253_)
                                                  (_make-splice19182_
                                                   _e19188_
                                                   _depth19253_
                                                   (_recur19183_
                                                    _hd19218_
                                                    _is-e?19189_)
                                                   (_recur19183_
                                                    _rest19252_
                                                    _is-e?19189_))
                                                  (_make-cons19181_
                                                   (_recur19183_
                                                    _hd19218_
                                                    _is-e?19189_)
                                                   (_recur19183_
                                                    _rest19252_
                                                    _is-e?19189_)))))
                                           (_E1925519281_
                                            (lambda ()
                                              (if (gx#stx-pair? _e1925419261_)
                                                  (let ((_e1925719269_
                                                         (gx#syntax-e
                                                          _e1925419261_)))
                                                    (let ((_hd1925819272_
                                                           (##car _e1925719269_))
                                                          (_tl1925919274_
                                                           (##cdr _e1925719269_)))
                                                      (let* ((_rest-hd19277_
                                                              _hd1925819272_)
                                                             (_rest-tl19279_
                                                              _tl1925919274_))
                                                        (if '#t
                                                            (if (_is-e?19189_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _rest-hd19277_)
                        (_lp19250_ _rest-tl19279_ (fx+ _depth19253_ '1))
                        (if (fxpositive? _depth19253_)
                            (_make-splice19182_
                             _e19188_
                             _depth19253_
                             (_recur19183_ _hd19218_ _is-e?19189_)
                             (_recur19183_ _rest19252_ _is-e?19189_))
                            (_make-cons19181_
                             (_recur19183_ _hd19218_ _is-e?19189_)
                             (_recur19183_ _rest19252_ _is-e?19189_))))
                    (_E1925619265_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1925619265_)))))
                                      (_E1925519281_))))
                              (_E1919719206_)))))
                    (_E1919719206_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1919619285_))
                                              (if (gx#stx-vector? _e19188_)
                                                  (let ((_g19666_
                                                         (_recur19183_
                                                          (vector->list
                                                           (gx#stx-unwrap__0
                                                            _e19188_))
                                                          _is-e?19189_)))
                                                    (begin
                                                      (let ((_g19667_
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g19666_)
                         (##vector-length _g19666_)
                         1)))
                (if (not (##fx= _g19667_ 2))
                    (error "Context expects 2 values" _g19667_)))
              (let ((_e19289_ (##vector-ref _g19666_ 0))
                    (_vars19290_ (##vector-ref _g19666_ 1)))
                (values (cons 'vector _e19289_) _vars19290_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-box? _e19188_)
                                                      (let ((_g19668_
                                                             (_recur19183_
                                                              (unbox (gx#stx-unwrap__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _e19188_))
                      _is-e?19189_)))
                (begin
                  (let ((_g19669_
                         (if (##values? _g19668_)
                             (##vector-length _g19668_)
                             1)))
                    (if (not (##fx= _g19669_ 2))
                        (error "Context expects 2 values" _g19669_)))
                  (let ((_e19292_ (##vector-ref _g19668_ 0))
                        (_vars19293_ (##vector-ref _g19668_ 1)))
                    (values (cons 'box _e19292_) _vars19293_))))
              (values (cons 'datum _e19188_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                    (let ((_g19670_ (_recur19183_ _e19179_ gx#ellipsis?)))
                      (begin
                        (let ((_g19671_
                               (if (##values? _g19670_)
                                   (##vector-length _g19670_)
                                   1)))
                          (if (not (##fx= _g19671_ 2))
                              (error "Context expects 2 values" _g19671_)))
                        (let ((_tree19185_ (##vector-ref _g19670_ 0))
                              (_vars19186_ (##vector-ref _g19670_ 1)))
                          (if (null? _vars19186_)
                              _tree19185_
                              (gx#raise-syntax-error
                               '#f
                               '"Missing ellipsis"
                               _stx19135_
                               _vars19186_)))))))))
        (let* ((_e1913919149_ _stx19135_)
               (_E1914119153_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _stx19135_)))
               (_E1914019175_
                (lambda ()
                  (if (gx#stx-pair? _e1913919149_)
                      (let ((_e1914219157_ (gx#syntax-e _e1913919149_)))
                        (let ((_hd1914319160_ (##car _e1914219157_))
                              (_tl1914419162_ (##cdr _e1914219157_)))
                          (if (gx#stx-pair? _tl1914419162_)
                              (let ((_e1914519165_
                                     (gx#syntax-e _tl1914419162_)))
                                (let ((_hd1914619168_ (##car _e1914519165_))
                                      (_tl1914719170_ (##cdr _e1914519165_)))
                                  (let ((_form19173_ _hd1914619168_))
                                    (if (gx#stx-null? _tl1914719170_)
                                        (if '#t
                                            (gx#stx-wrap-source
                                             (_generate19137_
                                              (_parse19138_ _form19173_))
                                             (gx#stx-source _stx19135_))
                                            (_E1914119153_))
                                        (_E1914119153_)))))
                              (_E1914119153_))))
                      (_E1914119153_)))))
          (_E1914019175_)))))
  (define gx#macro-expand-syntax-case__%
    (lambda (_stx18399_ _identifier=?18400_ _unwrap-e18401_ _wrap-e18402_)
      (letrec ((_generate-bindings18404_
                (lambda (_target18999_
                         _ids19000_
                         _clauses19001_
                         _clause-ids19002_
                         _E19003_)
                  (letrec ((_generate119005_
                            (lambda (_clause19102_ _clause-id19103_ _E19104_)
                              (cons (cons _clause-id19103_ '())
                                    (cons (gx#core-list
                                           'lambda%
                                           (cons _target18999_ '())
                                           (_generate-clause18406_
                                            _target18999_
                                            _ids19000_
                                            _clause19102_
                                            _E19104_))
                                          '())))))
                    (let _lp19007_ ((_rest19009_ _clauses19001_)
                                    (_rest-ids19010_ _clause-ids19002_)
                                    (_bindings19011_ '()))
                      (let* ((_rest1901219020_ _rest19009_)
                             (_else1901419028_ (lambda () _bindings19011_))
                             (_K1901619090_
                              (lambda (_rest19031_ _clause19032_)
                                (let* ((_rest-ids1903319040_ _rest-ids19010_)
                                       (_E1903519044_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _rest-ids1903319040_)))
                                       (_K1903619078_
                                        (lambda (_rest-ids19047_
                                                 _clause-id19048_)
                                          (let* ((_rest-ids1904919057_
                                                  _rest-ids19047_)
                                                 (_else1905119065_
                                                  (lambda ()
                                                    (cons (_generate119005_
                                                           _clause19032_
                                                           _clause-id19048_
                                                           _E19003_)
                                                          _bindings19011_)))
                                                 (_K1905319070_
                                                  (lambda (_next-clause-id19068_)
                                                    (_lp19007_
                                                     _rest19031_
                                                     _rest-ids19047_
                                                     (cons (_generate119005_
                                                            _clause19032_
                                                            _clause-id19048_
                                                            _next-clause-id19068_)
                                                           _bindings19011_)))))
                                            (if (##pair? _rest-ids1904919057_)
                                                (let* ((_hd1905419073_
                                                        (##car _rest-ids1904919057_))
                                                       (_next-clause-id19076_
                                                        _hd1905419073_))
                                                  (_K1905319070_
                                                   _next-clause-id19076_))
                                                (_else1905119065_))))))
                                  (if (##pair? _rest-ids1903319040_)
                                      (let ((_hd1903719081_
                                             (##car _rest-ids1903319040_))
                                            (_tl1903819083_
                                             (##cdr _rest-ids1903319040_)))
                                        (let* ((_clause-id19086_
                                                _hd1903719081_)
                                               (_rest-ids19088_
                                                _tl1903819083_))
                                          (_K1903619078_
                                           _rest-ids19088_
                                           _clause-id19086_)))
                                      (_E1903519044_))))))
                        (if (##pair? _rest1901219020_)
                            (let ((_hd1901719093_ (##car _rest1901219020_))
                                  (_tl1901819095_ (##cdr _rest1901219020_)))
                              (let* ((_clause19098_ _hd1901719093_)
                                     (_rest19100_ _tl1901819095_))
                                (_K1901619090_ _rest19100_ _clause19098_)))
                            (_else1901419028_)))))))
               (_generate-body18405_
                (lambda (_bindings18959_ _body18960_)
                  (let _recur18962_ ((_rest18964_ _bindings18959_))
                    (let* ((_rest1896518973_ _rest18964_)
                           (_else1896718981_ (lambda () _body18960_))
                           (_K1896918987_
                            (lambda (_rest18984_ _hd18985_)
                              (gx#core-list
                               'let-values
                               (cons _hd18985_ '())
                               (_recur18962_ _rest18984_)))))
                      (if (##pair? _rest1896518973_)
                          (let ((_hd1897018990_ (##car _rest1896518973_))
                                (_tl1897118992_ (##cdr _rest1896518973_)))
                            (let* ((_hd18995_ _hd1897018990_)
                                   (_rest18997_ _tl1897118992_))
                              (_K1896918987_ _rest18997_ _hd18995_)))
                          (_else1896718981_))))))
               (_generate-clause18406_
                (lambda (_target18822_ _ids18823_ _clause18824_ _E18825_)
                  (letrec ((_generate118827_
                            (lambda (_hd18914_ _fender18915_ _body18916_)
                              (let ((_g19672_
                                     (_parse-clause18408_
                                      _hd18914_
                                      _ids18823_)))
                                (begin
                                  (let ((_g19673_
                                         (if (##values? _g19672_)
                                             (##vector-length _g19672_)
                                             1)))
                                    (if (not (##fx= _g19673_ 2))
                                        (error "Context expects 2 values"
                                               _g19673_)))
                                  (let ((_e18918_ (##vector-ref _g19672_ 0))
                                        (_mvars18919_
                                         (##vector-ref _g19672_ 1)))
                                    (let* ((_pvars18921_
                                            (map gx#syntax-local-rewrap
                                                 (gx#gentemps _mvars18919_)))
                                           (_E18923_
                                            (cons _E18825_
                                                  (cons _target18822_ '())))
                                           (_K18956_
                                            (gx#core-list
                                             'lambda%
                                             _pvars18921_
                                             (gx#core-list
                                              'let-syntax
                                              (map (lambda (_mvar18925_
                                                            _pvar18926_)
                                                     (let* ((_mvar1892718934_
                                                             _mvar18925_)
                                                            (_E1892918938_
                                                             (lambda ()
                                                               (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _mvar1892718934_)))
                    (_K1893018944_
                     (lambda (_depth18941_ _id18942_)
                       (cons _id18942_
                             (cons (gx#core-list
                                    'make-syntax-pattern
                                    (gx#core-list 'quote _id18942_)
                                    (gx#core-list 'quote _pvar18926_)
                                    _depth18941_)
                                   '())))))
               (if (##pair? _mvar1892718934_)
                   (let ((_hd1893118947_ (##car _mvar1892718934_))
                         (_tl1893218949_ (##cdr _mvar1892718934_)))
                     (let* ((_id18952_ _hd1893118947_)
                            (_depth18954_ _tl1893218949_))
                       (_K1893018944_ _depth18954_ _id18952_)))
                   (_E1892918938_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _mvars18919_
                                                   _pvars18921_)
                                              (if (eq? _fender18915_ '#t)
                                                  _body18916_
                                                  (gx#core-list
                                                   'if
                                                   _fender18915_
                                                   _body18916_
                                                   _E18923_))))))
                                      (_generate-match18407_
                                       _hd18914_
                                       _target18822_
                                       _e18918_
                                       _mvars18919_
                                       _K18956_
                                       _E18923_))))))))
                    (let* ((_e1882818848_ _clause18824_)
                           (_E1883718852_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e1882818848_)))
                           (_E1883018886_
                            (lambda ()
                              (if (gx#stx-pair? _e1882818848_)
                                  (let ((_e1883818856_
                                         (gx#syntax-e _e1882818848_)))
                                    (let ((_hd1883918859_
                                           (##car _e1883818856_))
                                          (_tl1884018861_
                                           (##cdr _e1883818856_)))
                                      (let ((_hd18864_ _hd1883918859_))
                                        (if (gx#stx-pair? _tl1884018861_)
                                            (let ((_e1884118866_
                                                   (gx#syntax-e
                                                    _tl1884018861_)))
                                              (let ((_hd1884218869_
                                                     (##car _e1884118866_))
                                                    (_tl1884318871_
                                                     (##cdr _e1884118866_)))
                                                (let ((_fender18874_
                                                       _hd1884218869_))
                                                  (if (gx#stx-pair?
                                                       _tl1884318871_)
                                                      (let ((_e1884418876_
                                                             (gx#syntax-e
                                                              _tl1884318871_)))
                                                        (let ((_hd1884518879_
                                                               (##car _e1884418876_))
                                                              (_tl1884618881_
                                                               (##cdr _e1884418876_)))
                                                          (let ((_body18884_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1884518879_))
                    (if (gx#stx-null? _tl1884618881_)
                        (if '#t
                            (_generate118827_
                             _hd18864_
                             _fender18874_
                             _body18884_)
                            (_E1883718852_))
                        (_E1883718852_)))))
              (_E1883718852_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1883718852_)))))
                                  (_E1883718852_))))
                           (_E1882918910_
                            (lambda ()
                              (if (gx#stx-pair? _e1882818848_)
                                  (let ((_e1883118890_
                                         (gx#syntax-e _e1882818848_)))
                                    (let ((_hd1883218893_
                                           (##car _e1883118890_))
                                          (_tl1883318895_
                                           (##cdr _e1883118890_)))
                                      (let ((_hd18898_ _hd1883218893_))
                                        (if (gx#stx-pair? _tl1883318895_)
                                            (let ((_e1883418900_
                                                   (gx#syntax-e
                                                    _tl1883318895_)))
                                              (let ((_hd1883518903_
                                                     (##car _e1883418900_))
                                                    (_tl1883618905_
                                                     (##cdr _e1883418900_)))
                                                (let ((_body18908_
                                                       _hd1883518903_))
                                                  (if (gx#stx-null?
                                                       _tl1883618905_)
                                                      (if '#t
                                                          (_generate118827_
                                                           _hd18898_
                                                           '#t
                                                           _body18908_)
                                                          (_E1883018886_))
                                                      (_E1883018886_)))))
                                            (_E1883018886_)))))
                                  (_E1883018886_)))))
                      (_E1882918910_)))))
               (_generate-match18407_
                (lambda (_where18571_
                         _target18572_
                         _hd18573_
                         _mvars18574_
                         _K18575_
                         _E18576_)
                  (letrec ((_BUG18578_
                            (lambda (_q18820_)
                              (error '"BUG: syntax-case; generate"
                                     _stx18399_
                                     _hd18573_
                                     _q18820_)))
                           (_recur18579_
                            (lambda (_e18670_
                                     _vars18671_
                                     _target18672_
                                     _E18673_
                                     _k18674_)
                              (let* ((_e1867518682_ _e18670_)
                                     (_E1867718686_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _e1867518682_)))
                                     (_K1867818808_
                                      (lambda (_body18689_ _tag18690_)
                                        (let ((_$e18692_ _tag18690_))
                                          (if (eq? 'any _$e18692_)
                                              (_k18674_ _vars18671_)
                                              (if (eq? 'id _$e18692_)
                                                  (gx#core-list
                                                   'if
                                                   (gx#core-list
                                                    'identifier?
                                                    _target18672_)
                                                   (gx#core-list
                                                    'if
                                                    (gx#core-list
                                                     _identifier=?18400_
                                                     (gx#core-list
                                                      _wrap-e18402_
                                                      _body18689_)
                                                     _target18672_)
                                                    (_k18674_ _vars18671_)
                                                    _E18673_)
                                                   _E18673_)
                                                  (if (eq? 'var _$e18692_)
                                                      (_k18674_
                                                       (cons (cons _body18689_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _target18672_)
                     _vars18671_))
              (if (eq? 'cons _$e18692_)
                  (let ((_$e18695_ (gx#genident__1 'e))
                        (_$hd18696_ (gx#genident__1 'hd))
                        (_$tl18697_ (gx#genident__1 'tl)))
                    (gx#core-list
                     'if
                     (gx#core-list 'stx-pair? _target18672_)
                     (gx#core-list
                      'let-values
                      (cons (cons (cons _$e18695_ '())
                                  (cons (gx#core-list
                                         _unwrap-e18401_
                                         _target18672_)
                                        '()))
                            '())
                      (gx#core-list
                       'let-values
                       (cons (cons (cons _$hd18696_ '())
                                   (cons (gx#core-list '##car _$e18695_) '()))
                             (cons (cons (cons _$tl18697_ '())
                                         (cons (gx#core-list '##cdr _$e18695_)
                                               '()))
                                   '()))
                       (let* ((_body1869818705_ _body18689_)
                              (_E1870018709_
                               (lambda ()
                                 (error '"No clause matching"
                                        _body1869818705_)))
                              (_K1870118717_
                               (lambda (_tl18712_ _hd18713_)
                                 (_recur18579_
                                  _hd18713_
                                  _vars18671_
                                  _$hd18696_
                                  _E18673_
                                  (lambda (_vars18715_)
                                    (_recur18579_
                                     _tl18712_
                                     _vars18715_
                                     _$tl18697_
                                     _E18673_
                                     _k18674_))))))
                         (if (##pair? _body1869818705_)
                             (let ((_hd1870218720_ (##car _body1869818705_))
                                   (_tl1870318722_ (##cdr _body1869818705_)))
                               (let* ((_hd18725_ _hd1870218720_)
                                      (_tl18727_ _tl1870318722_))
                                 (_K1870118717_ _tl18727_ _hd18725_)))
                             (_E1870018709_)))))
                     _E18673_))
                  (if (eq? 'splice _$e18692_)
                      (let* ((_body1872818735_ _body18689_)
                             (_E1873018739_
                              (lambda ()
                                (error '"No clause matching"
                                       _body1872818735_)))
                             (_K1873118790_
                              (lambda (_tl18742_ _hd18743_)
                                (let* ((_rlen18745_
                                        (_splice-rlen18580_ _tl18742_))
                                       (_$target18747_
                                        (gx#genident__1 'target))
                                       (_$hd18749_ (gx#genident__1 'hd))
                                       (_$tl18751_ (gx#genident__1 'tl))
                                       (_$lp18753_ (gx#genident__1 'loop))
                                       (_$lp-e18755_ (gx#genident__1 'e))
                                       (_$lp-hd18757_ (gx#genident__1 'lp-hd))
                                       (_$lp-tl18759_ (gx#genident__1 'lp-tl))
                                       (_svars18761_
                                        (_splice-vars18581_ _hd18743_))
                                       (_lvars18763_
                                        (gx#gentemps _svars18761_))
                                       (_tlvars18765_
                                        (gx#gentemps _svars18761_))
                                       (_linit18769_
                                        (map (lambda (_var18767_)
                                               (gx#core-list 'quote '()))
                                             _lvars18763_)))
                                  (letrec ((_make-loop18772_
                                            (lambda (_vars18776_)
                                              (gx#core-list
                                               'letrec-values
                                               (cons (cons (cons _$lp18753_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())
                   (cons (gx#core-list
                          'lambda%
                          (cons _$hd18749_ _lvars18763_)
                          (gx#core-list
                           'if
                           (gx#core-list 'stx-pair? _$hd18749_)
                           (gx#core-list
                            'let-values
                            (cons (cons (cons _$lp-e18755_ '())
                                        (cons (gx#core-list
                                               _unwrap-e18401_
                                               _$hd18749_)
                                              '()))
                                  '())
                            (gx#core-list
                             'let-values
                             (cons (cons (cons _$lp-hd18757_ '())
                                         (cons (gx#core-list
                                                '##car
                                                _$lp-e18755_)
                                               '()))
                                   (cons (cons (cons _$lp-tl18759_ '())
                                               (cons (gx#core-list
                                                      '##cdr
                                                      _$lp-e18755_)
                                                     '()))
                                         '()))
                             (_recur18579_
                              _hd18743_
                              '()
                              _$lp-hd18757_
                              _E18673_
                              (lambda (_hdvars18778_)
                                (cons _$lp18753_
                                      (cons _$lp-tl18759_
                                            (map (lambda (_svar18780_
                                                          _lvar18781_)
                                                   (gx#core-list
                                                    'cons
                                                    (assgetq _svar18780_
                                                             _hdvars18778_
                                                             _BUG18578_)
                                                    _lvar18781_))
                                                 _svars18761_
                                                 _lvars18763_)))))))
                           (gx#core-list
                            'let-values
                            (map (lambda (_lvar18783_ _tlvar18784_)
                                   (cons (cons _tlvar18784_ '())
                                         (cons (gx#core-list
                                                'reverse
                                                _lvar18783_)
                                               '())))
                                 _lvars18763_
                                 _tlvars18765_)
                            (_k18674_
                             (foldl2 (lambda (_svar18786_
                                              _tlvar18787_
                                              _r18788_)
                                       (cons (cons _svar18786_ _tlvar18787_)
                                             _r18788_))
                                     _vars18776_
                                     _svars18761_
                                     _tlvars18765_)))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               (cons _$lp18753_
                                                     (cons _$target18747_
                                                           _linit18769_))))))
                                    (let ((_body18774_
                                           (gx#core-list
                                            'let-values
                                            (cons (cons (cons _$target18747_
                                                              (cons _$tl18751_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (gx#core-list
                       'syntax-split-splice
                       _target18672_
                       _rlen18745_)
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())
                                            (_recur18579_
                                             _tl18742_
                                             _vars18671_
                                             _$tl18751_
                                             _E18673_
                                             _make-loop18772_))))
                                      (gx#core-list
                                       'if
                                       (gx#core-list
                                        'stx-pair/null?
                                        _target18672_)
                                       (if (zero? _rlen18745_)
                                           _body18774_
                                           (gx#core-list
                                            'if
                                            (gx#core-list
                                             'fx>=
                                             (gx#core-list
                                              'stx-length
                                              _target18672_)
                                             _rlen18745_)
                                            _body18774_
                                            _E18673_))
                                       _E18673_)))))))
                        (if (##pair? _body1872818735_)
                            (let ((_hd1873218793_ (##car _body1872818735_))
                                  (_tl1873318795_ (##cdr _body1872818735_)))
                              (let* ((_hd18798_ _hd1873218793_)
                                     (_tl18800_ _tl1873318795_))
                                (_K1873118790_ _tl18800_ _hd18798_)))
                            (_E1873018739_)))
                      (if (eq? 'null _$e18692_)
                          (gx#core-list
                           'if
                           (gx#core-list 'stx-null? _target18672_)
                           (_k18674_ _vars18671_)
                           _E18673_)
                          (if (eq? 'vector _$e18692_)
                              (let ((_$e18802_ (gx#genident__1 'e)))
                                (gx#core-list
                                 'if
                                 (gx#core-list 'stx-vector? _target18672_)
                                 (gx#core-list
                                  'let-values
                                  (cons (cons (cons _$e18802_ '())
                                              (cons (gx#core-list
                                                     'vector->list
                                                     (gx#core-list
                                                      _unwrap-e18401_
                                                      _target18672_))
                                                    '()))
                                        '())
                                  (_recur18579_
                                   _body18689_
                                   _vars18671_
                                   _$e18802_
                                   _E18673_
                                   _k18674_))
                                 _E18673_))
                              (if (eq? 'box _$e18692_)
                                  (let ((_$e18804_ (gx#genident__1 'e)))
                                    (gx#core-list
                                     'if
                                     (gx#core-list 'stx-box? _target18672_)
                                     (gx#core-list
                                      'let-values
                                      (cons (cons (cons _$e18804_ '())
                                                  (cons (gx#core-list
                                                         'unbox
                                                         (gx#core-list
                                                          _unwrap-e18401_
                                                          _target18672_))
                                                        '()))
                                            '())
                                      (_recur18579_
                                       _body18689_
                                       _vars18671_
                                       _$e18804_
                                       _E18673_
                                       _k18674_))
                                     _E18673_))
                                  (if (eq? 'datum _$e18692_)
                                      (let ((_$e18806_ (gx#genident__1 'e)))
                                        (gx#core-list
                                         'if
                                         (gx#core-list
                                          'stx-datum?
                                          _target18672_)
                                         (gx#core-list
                                          'let-values
                                          (cons (cons (cons _$e18806_ '())
                                                      (cons (gx#core-list
                                                             'stx-e
                                                             _target18672_)
                                                            '()))
                                                '())
                                          (gx#core-list
                                           'if
                                           (gx#core-list
                                            'equal?
                                            _$e18806_
                                            _body18689_)
                                           (_k18674_ _vars18671_)
                                           _E18673_))
                                         _E18673_))
                                      (_BUG18578_ _e18670_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (##pair? _e1867518682_)
                                    (let ((_hd1867918811_
                                           (##car _e1867518682_))
                                          (_tl1868018813_
                                           (##cdr _e1867518682_)))
                                      (let* ((_tag18816_ _hd1867918811_)
                                             (_body18818_ _tl1868018813_))
                                        (_K1867818808_
                                         _body18818_
                                         _tag18816_)))
                                    (_E1867718686_)))))
                           (_splice-rlen18580_
                            (lambda (_e18632_)
                              (let _lp18634_ ((_e18636_ _e18632_)
                                              (_n18637_ '0))
                                (let* ((_e1863818645_ _e18636_)
                                       (_E1864018649_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _e1863818645_)))
                                       (_K1864118658_
                                        (lambda (_body18652_ _tag18653_)
                                          (let ((_$e18655_ _tag18653_))
                                            (if (eq? 'splice _$e18655_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Ambiguous pattern"
                                                 _stx18399_
                                                 _where18571_)
                                                (if (eq? 'cons _$e18655_)
                                                    (_lp18634_
                                                     (cdr _body18652_)
                                                     (fx+ _n18637_ '1))
                                                    _n18637_))))))
                                  (if (##pair? _e1863818645_)
                                      (let ((_hd1864218661_
                                             (##car _e1863818645_))
                                            (_tl1864318663_
                                             (##cdr _e1863818645_)))
                                        (let* ((_tag18666_ _hd1864218661_)
                                               (_body18668_ _tl1864318663_))
                                          (_K1864118658_
                                           _body18668_
                                           _tag18666_)))
                                      (_E1864018649_))))))
                           (_splice-vars18581_
                            (lambda (_e18588_)
                              (let _recur18590_ ((_e18592_ _e18588_)
                                                 (_vars18593_ '()))
                                (let* ((_e1859418601_ _e18592_)
                                       (_E1859618605_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _e1859418601_)))
                                       (_K1859718620_
                                        (lambda (_body18608_ _tag18609_)
                                          (let ((_$e18611_ _tag18609_))
                                            (if (eq? 'var _$e18611_)
                                                (cons _body18608_ _vars18593_)
                                                (if (or (eq? 'cons _$e18611_)
                                                        (eq? 'splice
                                                             _$e18611_))
                                                    (_recur18590_
                                                     (cdr _body18608_)
                                                     (_recur18590_
                                                      (car _body18608_)
                                                      _vars18593_))
                                                    (if (or (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _$e18611_)
                    (eq? 'box _$e18611_))
                (_recur18590_ _body18608_ _vars18593_)
                _vars18593_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (##pair? _e1859418601_)
                                      (let ((_hd1859818623_
                                             (##car _e1859418601_))
                                            (_tl1859918625_
                                             (##cdr _e1859418601_)))
                                        (let* ((_tag18628_ _hd1859818623_)
                                               (_body18630_ _tl1859918625_))
                                          (_K1859718620_
                                           _body18630_
                                           _tag18628_)))
                                      (_E1859618605_))))))
                           (_make-body18582_
                            (lambda (_vars18584_)
                              (cons _K18575_
                                    (map (lambda (_mvar18586_)
                                           (assgetq (car _mvar18586_)
                                                    _vars18584_
                                                    _BUG18578_))
                                         _mvars18574_)))))
                    (_recur18579_
                     _hd18573_
                     '()
                     _target18572_
                     _E18576_
                     _make-body18582_))))
               (_parse-clause18408_
                (lambda (_hd18477_ _ids18478_)
                  (let _recur18480_ ((_e18482_ _hd18477_)
                                     (_vars18483_ '())
                                     (_depth18484_ '0))
                    (if (gx#identifier? _e18482_)
                        (if (gx#underscore? _e18482_)
                            (values '(any) _vars18483_)
                            (if (gx#ellipsis? _e18482_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Misplaced ellipsis"
                                 _stx18399_
                                 _hd18477_)
                                (if (find (lambda (_id18486_)
                                            (gx#bound-identifier=?
                                             _e18482_
                                             _id18486_))
                                          _ids18478_)
                                    (values (cons 'id _e18482_) _vars18483_)
                                    (if (find (lambda (_var18488_)
                                                (gx#bound-identifier=?
                                                 _e18482_
                                                 (car _var18488_)))
                                              _vars18483_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Duplicate pattern variable"
                                         _stx18399_
                                         _e18482_)
                                        (values (cons 'var _e18482_)
                                                (cons (cons _e18482_
                                                            _depth18484_)
                                                      _vars18483_))))))
                        (if (gx#stx-pair? _e18482_)
                            (let* ((_e1848918496_ _e18482_)
                                   (_E1849118500_
                                    (lambda ()
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax"
                                       _e1848918496_)))
                                   (_E1849018561_
                                    (lambda ()
                                      (if (gx#stx-pair? _e1848918496_)
                                          (let ((_e1849218504_
                                                 (gx#syntax-e _e1848918496_)))
                                            (let ((_hd1849318507_
                                                   (##car _e1849218504_))
                                                  (_tl1849418509_
                                                   (##cdr _e1849218504_)))
                                              (let* ((_hd18512_ _hd1849318507_)
                                                     (_rest18514_
                                                      _tl1849418509_))
                                                (if '#t
                                                    (let* ((_make-pair18529_
                                                            (lambda (_tag18516_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd18517_
                             _tl18518_)
                      (let* ((_hd-depth18520_
                              (if (eq? _tag18516_ 'splice)
                                  (fx+ _depth18484_ '1)
                                  _depth18484_))
                             (_g19674_
                              (_recur18480_
                               _hd18517_
                               _vars18483_
                               _hd-depth18520_)))
                        (begin
                          (let ((_g19675_
                                 (if (##values? _g19674_)
                                     (##vector-length _g19674_)
                                     1)))
                            (if (not (##fx= _g19675_ 2))
                                (error "Context expects 2 values" _g19675_)))
                          (let ((_hd18522_ (##vector-ref _g19674_ 0))
                                (_vars18523_ (##vector-ref _g19674_ 1)))
                            (let ((_g19676_
                                   (_recur18480_
                                    _tl18518_
                                    _vars18523_
                                    _depth18484_)))
                              (begin
                                (let ((_g19677_
                                       (if (##values? _g19676_)
                                           (##vector-length _g19676_)
                                           1)))
                                  (if (not (##fx= _g19677_ 2))
                                      (error "Context expects 2 values"
                                             _g19677_)))
                                (let ((_tl18525_ (##vector-ref _g19676_ 0))
                                      (_vars18526_ (##vector-ref _g19676_ 1)))
                                  (let ()
                                    (values (cons _tag18516_
                                                  (cons _hd18522_ _tl18525_))
                                            _vars18526_))))))))))
                   (_e1853018537_ _rest18514_)
                   (_E1853218541_
                    (lambda () (_make-pair18529_ 'cons _hd18512_ _rest18514_)))
                   (_E1853118557_
                    (lambda ()
                      (if (gx#stx-pair? _e1853018537_)
                          (let ((_e1853318545_ (gx#syntax-e _e1853018537_)))
                            (let ((_hd1853418548_ (##car _e1853318545_))
                                  (_tl1853518550_ (##cdr _e1853318545_)))
                              (let* ((_rest-hd18553_ _hd1853418548_)
                                     (_rest-tl18555_ _tl1853518550_))
                                (if '#t
                                    (if (gx#ellipsis? _rest-hd18553_)
                                        (_make-pair18529_
                                         'splice
                                         _hd18512_
                                         _rest-tl18555_)
                                        (_make-pair18529_
                                         'cons
                                         _hd18512_
                                         _rest18514_))
                                    (_E1853218541_)))))
                          (_E1853218541_)))))
              (_E1853118557_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1849118500_)))))
                                          (_E1849118500_)))))
                              (_E1849018561_))
                            (if (gx#stx-null? _e18482_)
                                (values '(null) _vars18483_)
                                (if (gx#stx-vector? _e18482_)
                                    (let ((_g19678_
                                           (_recur18480_
                                            (vector->list
                                             (gx#syntax-e _e18482_))
                                            _vars18483_
                                            _depth18484_)))
                                      (begin
                                        (let ((_g19679_
                                               (if (##values? _g19678_)
                                                   (##vector-length _g19678_)
                                                   1)))
                                          (if (not (##fx= _g19679_ 2))
                                              (error "Context expects 2 values"
                                                     _g19679_)))
                                        (let ((_e18565_
                                               (##vector-ref _g19678_ 0))
                                              (_vars18566_
                                               (##vector-ref _g19678_ 1)))
                                          (values (cons 'vector _e18565_)
                                                  _vars18566_))))
                                    (if (gx#stx-box? _e18482_)
                                        (let ((_g19680_
                                               (_recur18480_
                                                (unbox (gx#syntax-e _e18482_))
                                                _vars18483_
                                                _depth18484_)))
                                          (begin
                                            (let ((_g19681_
                                                   (if (##values? _g19680_)
                                                       (##vector-length
                                                        _g19680_)
                                                       1)))
                                              (if (not (##fx= _g19681_ 2))
                                                  (error "Context expects 2 values"
                                                         _g19681_)))
                                            (let ((_e18568_
                                                   (##vector-ref _g19680_ 0))
                                                  (_vars18569_
                                                   (##vector-ref _g19680_ 1)))
                                              (values (cons 'box _e18568_)
                                                      _vars18569_))))
                                        (if (gx#stx-datum? _e18482_)
                                            (values (cons 'datum
                                                          (gx#stx-e _e18482_))
                                                    _vars18483_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad pattern"
                                             _stx18399_
                                             _e18482_)))))))))))
        (let* ((_e1840918422_ _stx18399_)
               (_E1841118426_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1840918422_)))
               (_E1841018473_
                (lambda ()
                  (if (gx#stx-pair? _e1840918422_)
                      (let ((_e1841218430_ (gx#syntax-e _e1840918422_)))
                        (let ((_hd1841318433_ (##car _e1841218430_))
                              (_tl1841418435_ (##cdr _e1841218430_)))
                          (if (gx#stx-pair? _tl1841418435_)
                              (let ((_e1841518438_
                                     (gx#syntax-e _tl1841418435_)))
                                (let ((_hd1841618441_ (##car _e1841518438_))
                                      (_tl1841718443_ (##cdr _e1841518438_)))
                                  (let ((_expr18446_ _hd1841618441_))
                                    (if (gx#stx-pair? _tl1841718443_)
                                        (let ((_e1841818448_
                                               (gx#syntax-e _tl1841718443_)))
                                          (let ((_hd1841918451_
                                                 (##car _e1841818448_))
                                                (_tl1842018453_
                                                 (##cdr _e1841818448_)))
                                            (let* ((_ids18456_ _hd1841918451_)
                                                   (_clauses18458_
                                                    _tl1842018453_))
                                              (if '#t
                                                  (if (not (gx#identifier-list?
                                                            _ids18456_))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad template identifier list"
                                                       _stx18399_
                                                       _ids18456_)
                                                      (if (not (gx#stx-list?
                                                                _clauses18458_))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _stx18399_)
                                                          (let* ((_ids18460_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax->list _ids18456_))
                         (_clauses18462_ (gx#syntax->list _clauses18458_))
                         (_clause-ids18464_ (gx#gentemps _clauses18462_))
                         (_E18466_ (gx#genident__0))
                         (_target18468_ (gx#genident__0))
                         (_first18470_
                          (if (null? _clauses18462_)
                              _E18466_
                              (car _clause-ids18464_))))
                    (gx#stx-wrap-source
                     (gx#core-list
                      'begin-annotation
                      '@syntax-case
                      (gx#stx-wrap-source
                       (gx#core-list
                        'let-values
                        (cons (cons (cons _E18466_ '())
                                    (cons (gx#core-list
                                           'lambda%
                                           (cons _target18468_ '())
                                           (gx#core-list
                                            'raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _target18468_))
                                          '()))
                              '())
                        (_generate-body18405_
                         (_generate-bindings18404_
                          _target18468_
                          _ids18460_
                          _clauses18462_
                          _clause-ids18464_
                          _E18466_)
                         (cons _first18470_ (cons _expr18446_ '()))))
                       (gx#stx-source _stx18399_)))
                     (gx#stx-source _stx18399_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1841118426_)))))
                                        (_E1841118426_)))))
                              (_E1841118426_))))
                      (_E1841118426_)))))
          (_E1841018473_)))))
  (define gx#macro-expand-syntax-case__0
    (lambda (_stx19109_)
      (let* ((_identifier=?19111_ 'free-identifier=?)
             (_unwrap-e19113_ 'syntax-e)
             (_wrap-e19115_ 'quote-syntax))
        (gx#macro-expand-syntax-case__%
         _stx19109_
         _identifier=?19111_
         _unwrap-e19113_
         _wrap-e19115_))))
  (define gx#macro-expand-syntax-case__1
    (lambda (_stx19117_ _identifier=?19118_)
      (let* ((_unwrap-e19120_ 'syntax-e) (_wrap-e19122_ 'quote-syntax))
        (gx#macro-expand-syntax-case__%
         _stx19117_
         _identifier=?19118_
         _unwrap-e19120_
         _wrap-e19122_))))
  (define gx#macro-expand-syntax-case__2
    (lambda (_stx19124_ _identifier=?19125_ _unwrap-e19126_)
      (let ((_wrap-e19128_ 'quote-syntax))
        (gx#macro-expand-syntax-case__%
         _stx19124_
         _identifier=?19125_
         _unwrap-e19126_
         _wrap-e19128_))))
  (define gx#macro-expand-syntax-case
    (lambda _g19683_
      (let ((_g19682_ (length _g19683_)))
        (cond ((##fx= _g19682_ 1)
               (apply gx#macro-expand-syntax-case__0 _g19683_))
              ((##fx= _g19682_ 2)
               (apply gx#macro-expand-syntax-case__1 _g19683_))
              ((##fx= _g19682_ 3)
               (apply gx#macro-expand-syntax-case__2 _g19683_))
              ((##fx= _g19682_ 4)
               (apply gx#macro-expand-syntax-case__% _g19683_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#macro-expand-syntax-case
                _g19683_))))))
  (define gx#syntax-local-pattern?
    (lambda (_stx18396_)
      (if (gx#identifier? _stx18396_)
          (##structure-instance-of?
           (gx#syntax-local-e__% _stx18396_ false)
           'gx#syntax-pattern::t)
          '#f)))
  (define gx#syntax-check-splice-targets
    (lambda (_hd18354_ . _rest18355_)
      (let ((_len18357_ (length _hd18354_)))
        (let _lp18359_ ((_rest18361_ _rest18355_))
          (let* ((_rest1836218370_ _rest18361_)
                 (_else1836418378_ (lambda () '#!void))
                 (_K1836618384_
                  (lambda (_rest18381_ _hd18382_)
                    (if (fx= _len18357_ (length _hd18382_))
                        (_lp18359_ _rest18381_)
                        (gx#raise-syntax-error
                         '#f
                         '"Splice length mismatch"
                         _hd18382_)))))
            (if (##pair? _rest1836218370_)
                (let ((_hd1836718387_ (##car _rest1836218370_))
                      (_tl1836818389_ (##cdr _rest1836218370_)))
                  (let* ((_hd18392_ _hd1836718387_)
                         (_rest18394_ _tl1836818389_))
                    (_K1836618384_ _rest18394_ _hd18392_)))
                '#!void))))))
  (define gx#syntax-split-splice
    (lambda (_stx18312_ _n18313_)
      (let _lp18315_ ((_rest18317_ _stx18312_) (_r18318_ '()))
        (if (gx#stx-pair? _rest18317_)
            (let* ((_g1831918326_ (gx#syntax-e _rest18317_))
                   (_E1832118330_
                    (lambda () (error '"No clause matching" _g1831918326_)))
                   (_K1832218336_
                    (lambda (_rest18333_ _hd18334_)
                      (_lp18315_ _rest18333_ (cons _hd18334_ _r18318_)))))
              (if (##pair? _g1831918326_)
                  (let ((_hd1832318339_ (##car _g1831918326_))
                        (_tl1832418341_ (##cdr _g1831918326_)))
                    (let* ((_hd18344_ _hd1832318339_)
                           (_rest18346_ _tl1832418341_))
                      (_K1832218336_ _rest18346_ _hd18344_)))
                  (_E1832118330_)))
            (let _lp18348_ ((_n18350_ _n18313_)
                            (_l18351_ _r18318_)
                            (_r18352_ _rest18317_))
              (if (null? _l18351_)
                  (values _l18351_ _r18352_)
                  (if (fxpositive? _n18350_)
                      (_lp18348_
                       (fx- _n18350_ '1)
                       (cdr _l18351_)
                       (cons (car _l18351_) _r18352_))
                      (values (reverse _l18351_) _r18352_)))))))))
