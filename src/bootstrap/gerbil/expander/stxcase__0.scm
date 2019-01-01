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
    (lambda _$args19653_
      (apply make-struct-instance gx#syntax-pattern::t _$args19653_)))
  (define gx#syntax-pattern-id
    (make-struct-field-accessor gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth
    (make-struct-field-accessor gx#syntax-pattern::t '1))
  (define gx#syntax-pattern-id-set!
    (make-struct-field-mutator gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth-set!
    (make-struct-field-mutator gx#syntax-pattern::t '1))
  (define gx#syntax-pattern::apply-macro-expander
    (lambda (_self19650_ _stx19651_)
      (gx#raise-syntax-error
       '#f
       '"Identifier used out of context"
       _stx19651_)))
  (bind-method!
   gx#syntax-pattern::t
   'apply-macro-expander
   gx#syntax-pattern::apply-macro-expander
   '#f)
  (define gx#macro-expand-syntax
    (lambda (_stx19132_)
      (letrec ((_generate19134_
                (lambda (_e19361_)
                  (letrec ((_BUG19363_
                            (lambda (_q19525_)
                              (error '"BUG: syntax; generate"
                                     _stx19132_
                                     _e19361_
                                     _q19525_)))
                           (_local-pattern-e19364_
                            (lambda (_pat19523_)
                              (gx#syntax-local-rewrap
                               (##structure-ref
                                _pat19523_
                                '2
                                gx#syntax-pattern::t
                                '#f))))
                           (_getvar19365_
                            (lambda (_q19520_ _vars19521_)
                              (assgetq _q19520_ _vars19521_ _BUG19363_)))
                           (_getarg19366_
                            (lambda (_arg19486_ _vars19487_)
                              (let* ((_arg1948819495_ _arg19486_)
                                     (_E1949019499_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _arg1948819495_)))
                                     (_K1949119508_
                                      (lambda (_e19502_ _tag19503_)
                                        (let ((_$e19505_ _tag19503_))
                                          (if (eq? 'ref _$e19505_)
                                              (_getvar19365_
                                               _e19502_
                                               _vars19487_)
                                              (if (eq? 'pattern _$e19505_)
                                                  (_local-pattern-e19364_
                                                   _e19502_)
                                                  (_BUG19363_ _arg19486_)))))))
                                (if (##pair? _arg1948819495_)
                                    (let ((_hd1949219511_
                                           (##car _arg1948819495_))
                                          (_tl1949319513_
                                           (##cdr _arg1948819495_)))
                                      (let* ((_tag19516_ _hd1949219511_)
                                             (_e19518_ _tl1949319513_))
                                        (_K1949119508_ _e19518_ _tag19516_)))
                                    (_E1949019499_))))))
                    (let _recur19368_ ((_e19370_ _e19361_) (_vars19371_ '()))
                      (let* ((_e1937219379_ _e19370_)
                             (_E1937419383_
                              (lambda ()
                                (error '"No clause matching" _e1937219379_)))
                             (_K1937519474_
                              (lambda (_body19386_ _tag19387_)
                                (let ((_$e19389_ _tag19387_))
                                  (if (eq? 'datum _$e19389_)
                                      (gx#core-list 'quote _body19386_)
                                      (if (eq? 'term _$e19389_)
                                          (let ((_id19392_
                                                 (gx#syntax-local-unwrap
                                                  _body19386_)))
                                            (if (##structure-direct-instance-of?
                                                 _id19392_
                                                 'gx#identifier-wrap::t)
                                                (let ((_marks19394_
                                                       (##unchecked-structure-ref
                                                        _id19392_
                                                        '3
                                                        gx#identifier-wrap::t
                                                        '#f)))
                                                  (if (null? _marks19394_)
                                                      (gx#core-list
                                                       'datum->syntax
                                                       '#f
                                                       (gx#core-list
                                                        'quote
                                                        _body19386_))
                                                      (gx#core-list
                                                       'datum->syntax
                                                       (gx#core-list
                                                        'quote-syntax
                                                        _body19386_)
                                                       (gx#core-list
                                                        'quote
                                                        _body19386_)
                                                       '#f
                                                       '#f)))
                                                (if (##structure-direct-instance-of?
                                                     _id19392_
                                                     'gx#syntax-quote::t)
                                                    (gx#core-list
                                                     'quote-syntax
                                                     _body19386_)
                                                    (_BUG19363_ _e19370_))))
                                          (if (eq? 'pattern _$e19389_)
                                              (_local-pattern-e19364_
                                               _body19386_)
                                              (if (eq? 'ref _$e19389_)
                                                  (_getvar19365_
                                                   _body19386_
                                                   _vars19371_)
                                                  (if (eq? 'cons _$e19389_)
                                                      (gx#core-list
                                                       'cons
                                                       (_recur19368_
                                                        (car _body19386_)
                                                        _vars19371_)
                                                       (_recur19368_
                                                        (cdr _body19386_)
                                                        _vars19371_))
                                                      (if (eq? 'vector
                                                               _$e19389_)
                                                          (gx#core-list
                                                           'list->vector
                                                           (_recur19368_
                                                            _body19386_
                                                            _vars19371_))
                                                          (if (eq? 'box
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _$e19389_)
                      (gx#core-list
                       'box
                       (_recur19368_ _body19386_ _vars19371_))
                      (if (eq? 'splice _$e19389_)
                          (let* ((_body1939519406_ _body19386_)
                                 (_E1939719410_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _body1939519406_)))
                                 (_K1939819448_
                                  (lambda (_args19413_
                                           _iv19414_
                                           _hd19415_
                                           _depth19416_)
                                    (let* ((_targets19422_
                                            (map (lambda (_g1941719419_)
                                                   (_getarg19366_
                                                    _g1941719419_
                                                    _vars19371_))
                                                 _args19413_))
                                           (_fold-in19424_
                                            (gx#gentemps _args19413_))
                                           (_fold-out19426_ (gx#genident__0))
                                           (_lambda-args19428_
                                            (foldr1 cons
                                                    (cons _fold-out19426_ '())
                                                    _fold-in19424_))
                                           (_lambda-body19445_
                                            (if (fx> _depth19416_ '1)
                                                (let ((_r-args19436_
                                                       (map (lambda (_arg19430_)
                                                              (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cdr _arg19430_)))
                    _args19413_))
              (_r-vars19437_
               (foldr2 (lambda (_arg19432_ _var19433_ _r19434_)
                         (cons (cons (cdr _arg19432_) _var19433_) _r19434_))
                       _vars19371_
                       _args19413_
                       _fold-in19424_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_recur19368_
                                                   (cons 'splice
                                                         (cons (fx- _depth19416_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)
                       (cons _hd19415_
                             (cons (cons 'var _fold-out19426_)
                                   _r-args19436_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _r-vars19437_))
                                                (let ((_hd-vars19443_
                                                       (foldr2 (lambda (_arg19439_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _var19440_
                                _r19441_)
                         (cons (cons (cdr _arg19439_) _var19440_) _r19441_))
                       _vars19371_
                       _args19413_
                       _fold-in19424_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#core-list
                                                   'cons
                                                   (_recur19368_
                                                    _hd19415_
                                                    _hd-vars19443_)
                                                   _fold-out19426_)))))
                                      (gx#core-list
                                       'begin
                                       (if (fx> (length _targets19422_) '1)
                                           (gx#core-cons*
                                            'syntax-check-splice-targets
                                            _targets19422_)
                                           '#!void)
                                       (gx#core-cons*
                                        'foldr
                                        (gx#core-list
                                         'lambda%
                                         _lambda-args19428_
                                         _lambda-body19445_)
                                        (_recur19368_ _iv19414_ _vars19371_)
                                        _targets19422_))))))
                            (if (##pair? _body1939519406_)
                                (let ((_hd1939919451_ (##car _body1939519406_))
                                      (_tl1940019453_
                                       (##cdr _body1939519406_)))
                                  (let ((_depth19456_ _hd1939919451_))
                                    (if (##pair? _tl1940019453_)
                                        (let ((_hd1940119458_
                                               (##car _tl1940019453_))
                                              (_tl1940219460_
                                               (##cdr _tl1940019453_)))
                                          (let ((_hd19463_ _hd1940119458_))
                                            (if (##pair? _tl1940219460_)
                                                (let ((_hd1940319465_
                                                       (##car _tl1940219460_))
                                                      (_tl1940419467_
                                                       (##cdr _tl1940219460_)))
                                                  (let* ((_iv19470_
                                                          _hd1940319465_)
                                                         (_args19472_
                                                          _tl1940419467_))
                                                    (_K1939819448_
                                                     _args19472_
                                                     _iv19470_
                                                     _hd19463_
                                                     _depth19456_)))
                                                (_E1939719410_))))
                                        (_E1939719410_))))
                                (_E1939719410_)))
                          (if (eq? 'var _$e19389_)
                              _body19386_
                              (_BUG19363_ _e19370_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        (if (##pair? _e1937219379_)
                            (let ((_hd1937619477_ (##car _e1937219379_))
                                  (_tl1937719479_ (##cdr _e1937219379_)))
                              (let* ((_tag19482_ _hd1937619477_)
                                     (_body19484_ _tl1937719479_))
                                (_K1937519474_ _body19484_ _tag19482_)))
                            (_E1937419383_)))))))
               (_parse19135_
                (lambda (_e19176_)
                  (letrec ((_make-cons19178_
                            (lambda (_hd19353_ _tl19354_)
                              (let ((_g19655_ _hd19353_) (_g19657_ _tl19354_))
                                (begin
                                  (let ((_g19656_
                                         (if (##values? _g19655_)
                                             (##vector-length _g19655_)
                                             1)))
                                    (if (not (##fx= _g19656_ 2))
                                        (error "Context expects 2 values"
                                               _g19656_)))
                                  (let ((_g19658_
                                         (if (##values? _g19657_)
                                             (##vector-length _g19657_)
                                             1)))
                                    (if (not (##fx= _g19658_ 2))
                                        (error "Context expects 2 values"
                                               _g19658_)))
                                  (let ((_hd-e19356_ (##vector-ref _g19655_ 0))
                                        (_hd-vars19357_
                                         (##vector-ref _g19655_ 1)))
                                    (let ((_tl-e19358_
                                           (##vector-ref _g19657_ 0))
                                          (_tl-vars19359_
                                           (##vector-ref _g19657_ 1)))
                                      (values (cons 'cons
                                                    (cons _hd-e19356_
                                                          _tl-e19358_))
                                              (append _hd-vars19357_
                                                      _tl-vars19359_))))))))
                           (_make-splice19179_
                            (lambda (_where19292_
                                     _depth19293_
                                     _hd19294_
                                     _tl19295_)
                              (let ((_g19659_ _hd19294_) (_g19661_ _tl19295_))
                                (begin
                                  (let ((_g19660_
                                         (if (##values? _g19659_)
                                             (##vector-length _g19659_)
                                             1)))
                                    (if (not (##fx= _g19660_ 2))
                                        (error "Context expects 2 values"
                                               _g19660_)))
                                  (let ((_g19662_
                                         (if (##values? _g19661_)
                                             (##vector-length _g19661_)
                                             1)))
                                    (if (not (##fx= _g19662_ 2))
                                        (error "Context expects 2 values"
                                               _g19662_)))
                                  (let ((_hd-e19297_ (##vector-ref _g19659_ 0))
                                        (_hd-vars19298_
                                         (##vector-ref _g19659_ 1)))
                                    (let ((_tl-e19299_
                                           (##vector-ref _g19661_ 0))
                                          (_tl-vars19300_
                                           (##vector-ref _g19661_ 1)))
                                      (let _lp19302_ ((_rest19304_
                                                       _hd-vars19298_)
                                                      (_targets19305_ '())
                                                      (_vars19306_
                                                       _tl-vars19300_))
                                        (let* ((_rest1930719317_ _rest19304_)
                                               (_else1930919325_
                                                (lambda ()
                                                  (if (null? _targets19305_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Misplaced ellipsis"
                                                       _stx19132_
                                                       _where19292_)
                                                      (values (cons 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _depth19293_
                                  (cons _hd-e19297_
                                        (cons _tl-e19299_ _targets19305_))))
                      _vars19306_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_K1931119334_
                                                (lambda (_rest19328_
                                                         _hd-pat19329_
                                                         _hd-depth*19330_)
                                                  (let ((_hd-depth19332_
                                                         (fx- _hd-depth*19330_
                                                              _depth19293_)))
                                                    (if (fxpositive?
                                                         _hd-depth19332_)
                                                        (_lp19302_
                                                         _rest19328_
                                                         (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd-pat19329_)
                       _targets19305_)
                 (cons (cons _hd-depth19332_ _hd-pat19329_) _vars19306_))
                (if (fxzero? _hd-depth19332_)
                    (_lp19302_
                     _rest19328_
                     (cons (cons 'pattern _hd-pat19329_) _targets19305_)
                     _vars19306_)
                    (gx#raise-syntax-error
                     '#f
                     '"Too many ellipses"
                     _stx19132_
                     _where19292_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _rest1930719317_)
                                              (let ((_hd1931219337_
                                                     (##car _rest1930719317_))
                                                    (_tl1931319339_
                                                     (##cdr _rest1930719317_)))
                                                (if (##pair? _hd1931219337_)
                                                    (let ((_hd1931419342_
                                                           (##car _hd1931219337_))
                                                          (_tl1931519344_
                                                           (##cdr _hd1931219337_)))
                                                      (let* ((_hd-depth*19347_
                                                              _hd1931419342_)
                                                             (_hd-pat19349_
                                                              _tl1931519344_)
                                                             (_rest19351_
                                                              _tl1931319339_))
                                                        (_K1931119334_
                                                         _rest19351_
                                                         _hd-pat19349_
                                                         _hd-depth*19347_)))
                                                    (_else1930919325_)))
                                              (_else1930919325_))))))))))
                           (_recur19180_
                            (lambda (_e19185_ _is-e?19186_)
                              (if (_is-e?19186_ _e19185_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Mislpaced ellipsis"
                                   _stx19132_)
                                  (if (gx#syntax-local-pattern? _e19185_)
                                      (let* ((_pat19188_
                                              (gx#syntax-local-e__0 _e19185_))
                                             (_depth19190_
                                              (##structure-ref
                                               _pat19188_
                                               '3
                                               gx#syntax-pattern::t
                                               '#f)))
                                        (if (fxpositive? _depth19190_)
                                            (values (cons 'ref _pat19188_)
                                                    (cons (cons _depth19190_
                                                                _pat19188_)
                                                          '()))
                                            (values (cons 'pattern _pat19188_)
                                                    '())))
                                      (if (gx#identifier? _e19185_)
                                          (values (cons 'term _e19185_) '())
                                          (if (gx#stx-pair? _e19185_)
                                              (let* ((_e1919219199_ _e19185_)
                                                     (_E1919419203_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _e1919219199_)))
                                                     (_E1919319282_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e1919219199_)
                                                            (let ((_e1919519207_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e1919219199_)))
                      (let ((_hd1919619210_ (##car _e1919519207_))
                            (_tl1919719212_ (##cdr _e1919519207_)))
                        (let* ((_hd19215_ _hd1919619210_)
                               (_rest19217_ _tl1919719212_))
                          (if '#t
                              (if (_is-e?19186_ _hd19215_)
                                  (let* ((_e1921819225_ _rest19217_)
                                         (_E1922019229_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _stx19132_
                                             _e19185_)))
                                         (_E1921919243_
                                          (lambda ()
                                            (if (gx#stx-pair? _e1921819225_)
                                                (let ((_e1922119233_
                                                       (gx#syntax-e
                                                        _e1921819225_)))
                                                  (let ((_hd1922219236_
                                                         (##car _e1922119233_))
                                                        (_tl1922319238_
                                                         (##cdr _e1922119233_)))
                                                    (let ((_rest19241_
                                                           _hd1922219236_))
                                                      (if (gx#stx-null?
                                                           _tl1922319238_)
                                                          (if '#t
                                                              (_recur19180_
                                                               _rest19241_
                                                               false)
                                                              (_E1922019229_))
                                                          (_E1922019229_)))))
                                                (_E1922019229_)))))
                                    (_E1921919243_))
                                  (let _lp19247_ ((_rest19249_ _rest19217_)
                                                  (_depth19250_ '0))
                                    (let* ((_e1925119258_ _rest19249_)
                                           (_E1925319262_
                                            (lambda ()
                                              (if (fxpositive? _depth19250_)
                                                  (_make-splice19179_
                                                   _e19185_
                                                   _depth19250_
                                                   (_recur19180_
                                                    _hd19215_
                                                    _is-e?19186_)
                                                   (_recur19180_
                                                    _rest19249_
                                                    _is-e?19186_))
                                                  (_make-cons19178_
                                                   (_recur19180_
                                                    _hd19215_
                                                    _is-e?19186_)
                                                   (_recur19180_
                                                    _rest19249_
                                                    _is-e?19186_)))))
                                           (_E1925219278_
                                            (lambda ()
                                              (if (gx#stx-pair? _e1925119258_)
                                                  (let ((_e1925419266_
                                                         (gx#syntax-e
                                                          _e1925119258_)))
                                                    (let ((_hd1925519269_
                                                           (##car _e1925419266_))
                                                          (_tl1925619271_
                                                           (##cdr _e1925419266_)))
                                                      (let* ((_rest-hd19274_
                                                              _hd1925519269_)
                                                             (_rest-tl19276_
                                                              _tl1925619271_))
                                                        (if '#t
                                                            (if (_is-e?19186_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _rest-hd19274_)
                        (_lp19247_ _rest-tl19276_ (fx+ _depth19250_ '1))
                        (if (fxpositive? _depth19250_)
                            (_make-splice19179_
                             _e19185_
                             _depth19250_
                             (_recur19180_ _hd19215_ _is-e?19186_)
                             (_recur19180_ _rest19249_ _is-e?19186_))
                            (_make-cons19178_
                             (_recur19180_ _hd19215_ _is-e?19186_)
                             (_recur19180_ _rest19249_ _is-e?19186_))))
                    (_E1925319262_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1925319262_)))))
                                      (_E1925219278_))))
                              (_E1919419203_)))))
                    (_E1919419203_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1919319282_))
                                              (if (gx#stx-vector? _e19185_)
                                                  (let ((_g19663_
                                                         (_recur19180_
                                                          (vector->list
                                                           (gx#stx-unwrap__0
                                                            _e19185_))
                                                          _is-e?19186_)))
                                                    (begin
                                                      (let ((_g19664_
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g19663_)
                         (##vector-length _g19663_)
                         1)))
                (if (not (##fx= _g19664_ 2))
                    (error "Context expects 2 values" _g19664_)))
              (let ((_e19286_ (##vector-ref _g19663_ 0))
                    (_vars19287_ (##vector-ref _g19663_ 1)))
                (values (cons 'vector _e19286_) _vars19287_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-box? _e19185_)
                                                      (let ((_g19665_
                                                             (_recur19180_
                                                              (unbox (gx#stx-unwrap__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _e19185_))
                      _is-e?19186_)))
                (begin
                  (let ((_g19666_
                         (if (##values? _g19665_)
                             (##vector-length _g19665_)
                             1)))
                    (if (not (##fx= _g19666_ 2))
                        (error "Context expects 2 values" _g19666_)))
                  (let ((_e19289_ (##vector-ref _g19665_ 0))
                        (_vars19290_ (##vector-ref _g19665_ 1)))
                    (values (cons 'box _e19289_) _vars19290_))))
              (values (cons 'datum _e19185_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                    (let ((_g19667_ (_recur19180_ _e19176_ gx#ellipsis?)))
                      (begin
                        (let ((_g19668_
                               (if (##values? _g19667_)
                                   (##vector-length _g19667_)
                                   1)))
                          (if (not (##fx= _g19668_ 2))
                              (error "Context expects 2 values" _g19668_)))
                        (let ((_tree19182_ (##vector-ref _g19667_ 0))
                              (_vars19183_ (##vector-ref _g19667_ 1)))
                          (if (null? _vars19183_)
                              _tree19182_
                              (gx#raise-syntax-error
                               '#f
                               '"Missing ellipsis"
                               _stx19132_
                               _vars19183_)))))))))
        (let* ((_e1913619146_ _stx19132_)
               (_E1913819150_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _stx19132_)))
               (_E1913719172_
                (lambda ()
                  (if (gx#stx-pair? _e1913619146_)
                      (let ((_e1913919154_ (gx#syntax-e _e1913619146_)))
                        (let ((_hd1914019157_ (##car _e1913919154_))
                              (_tl1914119159_ (##cdr _e1913919154_)))
                          (if (gx#stx-pair? _tl1914119159_)
                              (let ((_e1914219162_
                                     (gx#syntax-e _tl1914119159_)))
                                (let ((_hd1914319165_ (##car _e1914219162_))
                                      (_tl1914419167_ (##cdr _e1914219162_)))
                                  (let ((_form19170_ _hd1914319165_))
                                    (if (gx#stx-null? _tl1914419167_)
                                        (if '#t
                                            (gx#stx-wrap-source
                                             (_generate19134_
                                              (_parse19135_ _form19170_))
                                             (gx#stx-source _stx19132_))
                                            (_E1913819150_))
                                        (_E1913819150_)))))
                              (_E1913819150_))))
                      (_E1913819150_)))))
          (_E1913719172_)))))
  (define gx#macro-expand-syntax-case__%
    (lambda (_stx18396_ _identifier=?18397_ _unwrap-e18398_ _wrap-e18399_)
      (letrec ((_generate-bindings18401_
                (lambda (_target18996_
                         _ids18997_
                         _clauses18998_
                         _clause-ids18999_
                         _E19000_)
                  (letrec ((_generate119002_
                            (lambda (_clause19099_ _clause-id19100_ _E19101_)
                              (cons (cons _clause-id19100_ '())
                                    (cons (gx#core-list
                                           'lambda%
                                           (cons _target18996_ '())
                                           (_generate-clause18403_
                                            _target18996_
                                            _ids18997_
                                            _clause19099_
                                            _E19101_))
                                          '())))))
                    (let _lp19004_ ((_rest19006_ _clauses18998_)
                                    (_rest-ids19007_ _clause-ids18999_)
                                    (_bindings19008_ '()))
                      (let* ((_rest1900919017_ _rest19006_)
                             (_else1901119025_ (lambda () _bindings19008_))
                             (_K1901319087_
                              (lambda (_rest19028_ _clause19029_)
                                (let* ((_rest-ids1903019037_ _rest-ids19007_)
                                       (_E1903219041_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _rest-ids1903019037_)))
                                       (_K1903319075_
                                        (lambda (_rest-ids19044_
                                                 _clause-id19045_)
                                          (let* ((_rest-ids1904619054_
                                                  _rest-ids19044_)
                                                 (_else1904819062_
                                                  (lambda ()
                                                    (cons (_generate119002_
                                                           _clause19029_
                                                           _clause-id19045_
                                                           _E19000_)
                                                          _bindings19008_)))
                                                 (_K1905019067_
                                                  (lambda (_next-clause-id19065_)
                                                    (_lp19004_
                                                     _rest19028_
                                                     _rest-ids19044_
                                                     (cons (_generate119002_
                                                            _clause19029_
                                                            _clause-id19045_
                                                            _next-clause-id19065_)
                                                           _bindings19008_)))))
                                            (if (##pair? _rest-ids1904619054_)
                                                (let* ((_hd1905119070_
                                                        (##car _rest-ids1904619054_))
                                                       (_next-clause-id19073_
                                                        _hd1905119070_))
                                                  (_K1905019067_
                                                   _next-clause-id19073_))
                                                (_else1904819062_))))))
                                  (if (##pair? _rest-ids1903019037_)
                                      (let ((_hd1903419078_
                                             (##car _rest-ids1903019037_))
                                            (_tl1903519080_
                                             (##cdr _rest-ids1903019037_)))
                                        (let* ((_clause-id19083_
                                                _hd1903419078_)
                                               (_rest-ids19085_
                                                _tl1903519080_))
                                          (_K1903319075_
                                           _rest-ids19085_
                                           _clause-id19083_)))
                                      (_E1903219041_))))))
                        (if (##pair? _rest1900919017_)
                            (let ((_hd1901419090_ (##car _rest1900919017_))
                                  (_tl1901519092_ (##cdr _rest1900919017_)))
                              (let* ((_clause19095_ _hd1901419090_)
                                     (_rest19097_ _tl1901519092_))
                                (_K1901319087_ _rest19097_ _clause19095_)))
                            (_else1901119025_)))))))
               (_generate-body18402_
                (lambda (_bindings18956_ _body18957_)
                  (let _recur18959_ ((_rest18961_ _bindings18956_))
                    (let* ((_rest1896218970_ _rest18961_)
                           (_else1896418978_ (lambda () _body18957_))
                           (_K1896618984_
                            (lambda (_rest18981_ _hd18982_)
                              (gx#core-list
                               'let-values
                               (cons _hd18982_ '())
                               (_recur18959_ _rest18981_)))))
                      (if (##pair? _rest1896218970_)
                          (let ((_hd1896718987_ (##car _rest1896218970_))
                                (_tl1896818989_ (##cdr _rest1896218970_)))
                            (let* ((_hd18992_ _hd1896718987_)
                                   (_rest18994_ _tl1896818989_))
                              (_K1896618984_ _rest18994_ _hd18992_)))
                          (_else1896418978_))))))
               (_generate-clause18403_
                (lambda (_target18819_ _ids18820_ _clause18821_ _E18822_)
                  (letrec ((_generate118824_
                            (lambda (_hd18911_ _fender18912_ _body18913_)
                              (let ((_g19669_
                                     (_parse-clause18405_
                                      _hd18911_
                                      _ids18820_)))
                                (begin
                                  (let ((_g19670_
                                         (if (##values? _g19669_)
                                             (##vector-length _g19669_)
                                             1)))
                                    (if (not (##fx= _g19670_ 2))
                                        (error "Context expects 2 values"
                                               _g19670_)))
                                  (let ((_e18915_ (##vector-ref _g19669_ 0))
                                        (_mvars18916_
                                         (##vector-ref _g19669_ 1)))
                                    (let* ((_pvars18918_
                                            (map gx#syntax-local-rewrap
                                                 (gx#gentemps _mvars18916_)))
                                           (_E18920_
                                            (cons _E18822_
                                                  (cons _target18819_ '())))
                                           (_K18953_
                                            (gx#core-list
                                             'lambda%
                                             _pvars18918_
                                             (gx#core-list
                                              'let-syntax
                                              (map (lambda (_mvar18922_
                                                            _pvar18923_)
                                                     (let* ((_mvar1892418931_
                                                             _mvar18922_)
                                                            (_E1892618935_
                                                             (lambda ()
                                                               (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _mvar1892418931_)))
                    (_K1892718941_
                     (lambda (_depth18938_ _id18939_)
                       (cons _id18939_
                             (cons (gx#core-list
                                    'make-syntax-pattern
                                    (gx#core-list 'quote _id18939_)
                                    (gx#core-list 'quote _pvar18923_)
                                    _depth18938_)
                                   '())))))
               (if (##pair? _mvar1892418931_)
                   (let ((_hd1892818944_ (##car _mvar1892418931_))
                         (_tl1892918946_ (##cdr _mvar1892418931_)))
                     (let* ((_id18949_ _hd1892818944_)
                            (_depth18951_ _tl1892918946_))
                       (_K1892718941_ _depth18951_ _id18949_)))
                   (_E1892618935_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _mvars18916_
                                                   _pvars18918_)
                                              (if (eq? _fender18912_ '#t)
                                                  _body18913_
                                                  (gx#core-list
                                                   'if
                                                   _fender18912_
                                                   _body18913_
                                                   _E18920_))))))
                                      (_generate-match18404_
                                       _hd18911_
                                       _target18819_
                                       _e18915_
                                       _mvars18916_
                                       _K18953_
                                       _E18920_))))))))
                    (let* ((_e1882518845_ _clause18821_)
                           (_E1883418849_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e1882518845_)))
                           (_E1882718883_
                            (lambda ()
                              (if (gx#stx-pair? _e1882518845_)
                                  (let ((_e1883518853_
                                         (gx#syntax-e _e1882518845_)))
                                    (let ((_hd1883618856_
                                           (##car _e1883518853_))
                                          (_tl1883718858_
                                           (##cdr _e1883518853_)))
                                      (let ((_hd18861_ _hd1883618856_))
                                        (if (gx#stx-pair? _tl1883718858_)
                                            (let ((_e1883818863_
                                                   (gx#syntax-e
                                                    _tl1883718858_)))
                                              (let ((_hd1883918866_
                                                     (##car _e1883818863_))
                                                    (_tl1884018868_
                                                     (##cdr _e1883818863_)))
                                                (let ((_fender18871_
                                                       _hd1883918866_))
                                                  (if (gx#stx-pair?
                                                       _tl1884018868_)
                                                      (let ((_e1884118873_
                                                             (gx#syntax-e
                                                              _tl1884018868_)))
                                                        (let ((_hd1884218876_
                                                               (##car _e1884118873_))
                                                              (_tl1884318878_
                                                               (##cdr _e1884118873_)))
                                                          (let ((_body18881_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1884218876_))
                    (if (gx#stx-null? _tl1884318878_)
                        (if '#t
                            (_generate118824_
                             _hd18861_
                             _fender18871_
                             _body18881_)
                            (_E1883418849_))
                        (_E1883418849_)))))
              (_E1883418849_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1883418849_)))))
                                  (_E1883418849_))))
                           (_E1882618907_
                            (lambda ()
                              (if (gx#stx-pair? _e1882518845_)
                                  (let ((_e1882818887_
                                         (gx#syntax-e _e1882518845_)))
                                    (let ((_hd1882918890_
                                           (##car _e1882818887_))
                                          (_tl1883018892_
                                           (##cdr _e1882818887_)))
                                      (let ((_hd18895_ _hd1882918890_))
                                        (if (gx#stx-pair? _tl1883018892_)
                                            (let ((_e1883118897_
                                                   (gx#syntax-e
                                                    _tl1883018892_)))
                                              (let ((_hd1883218900_
                                                     (##car _e1883118897_))
                                                    (_tl1883318902_
                                                     (##cdr _e1883118897_)))
                                                (let ((_body18905_
                                                       _hd1883218900_))
                                                  (if (gx#stx-null?
                                                       _tl1883318902_)
                                                      (if '#t
                                                          (_generate118824_
                                                           _hd18895_
                                                           '#t
                                                           _body18905_)
                                                          (_E1882718883_))
                                                      (_E1882718883_)))))
                                            (_E1882718883_)))))
                                  (_E1882718883_)))))
                      (_E1882618907_)))))
               (_generate-match18404_
                (lambda (_where18568_
                         _target18569_
                         _hd18570_
                         _mvars18571_
                         _K18572_
                         _E18573_)
                  (letrec ((_BUG18575_
                            (lambda (_q18817_)
                              (error '"BUG: syntax-case; generate"
                                     _stx18396_
                                     _hd18570_
                                     _q18817_)))
                           (_recur18576_
                            (lambda (_e18667_
                                     _vars18668_
                                     _target18669_
                                     _E18670_
                                     _k18671_)
                              (let* ((_e1867218679_ _e18667_)
                                     (_E1867418683_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _e1867218679_)))
                                     (_K1867518805_
                                      (lambda (_body18686_ _tag18687_)
                                        (let ((_$e18689_ _tag18687_))
                                          (if (eq? 'any _$e18689_)
                                              (_k18671_ _vars18668_)
                                              (if (eq? 'id _$e18689_)
                                                  (gx#core-list
                                                   'if
                                                   (gx#core-list
                                                    'identifier?
                                                    _target18669_)
                                                   (gx#core-list
                                                    'if
                                                    (gx#core-list
                                                     _identifier=?18397_
                                                     (gx#core-list
                                                      _wrap-e18399_
                                                      _body18686_)
                                                     _target18669_)
                                                    (_k18671_ _vars18668_)
                                                    _E18670_)
                                                   _E18670_)
                                                  (if (eq? 'var _$e18689_)
                                                      (_k18671_
                                                       (cons (cons _body18686_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _target18669_)
                     _vars18668_))
              (if (eq? 'cons _$e18689_)
                  (let ((_$e18692_ (gx#genident__1 'e))
                        (_$hd18693_ (gx#genident__1 'hd))
                        (_$tl18694_ (gx#genident__1 'tl)))
                    (gx#core-list
                     'if
                     (gx#core-list 'stx-pair? _target18669_)
                     (gx#core-list
                      'let-values
                      (cons (cons (cons _$e18692_ '())
                                  (cons (gx#core-list
                                         _unwrap-e18398_
                                         _target18669_)
                                        '()))
                            '())
                      (gx#core-list
                       'let-values
                       (cons (cons (cons _$hd18693_ '())
                                   (cons (gx#core-list '##car _$e18692_) '()))
                             (cons (cons (cons _$tl18694_ '())
                                         (cons (gx#core-list '##cdr _$e18692_)
                                               '()))
                                   '()))
                       (let* ((_body1869518702_ _body18686_)
                              (_E1869718706_
                               (lambda ()
                                 (error '"No clause matching"
                                        _body1869518702_)))
                              (_K1869818714_
                               (lambda (_tl18709_ _hd18710_)
                                 (_recur18576_
                                  _hd18710_
                                  _vars18668_
                                  _$hd18693_
                                  _E18670_
                                  (lambda (_vars18712_)
                                    (_recur18576_
                                     _tl18709_
                                     _vars18712_
                                     _$tl18694_
                                     _E18670_
                                     _k18671_))))))
                         (if (##pair? _body1869518702_)
                             (let ((_hd1869918717_ (##car _body1869518702_))
                                   (_tl1870018719_ (##cdr _body1869518702_)))
                               (let* ((_hd18722_ _hd1869918717_)
                                      (_tl18724_ _tl1870018719_))
                                 (_K1869818714_ _tl18724_ _hd18722_)))
                             (_E1869718706_)))))
                     _E18670_))
                  (if (eq? 'splice _$e18689_)
                      (let* ((_body1872518732_ _body18686_)
                             (_E1872718736_
                              (lambda ()
                                (error '"No clause matching"
                                       _body1872518732_)))
                             (_K1872818787_
                              (lambda (_tl18739_ _hd18740_)
                                (let* ((_rlen18742_
                                        (_splice-rlen18577_ _tl18739_))
                                       (_$target18744_
                                        (gx#genident__1 'target))
                                       (_$hd18746_ (gx#genident__1 'hd))
                                       (_$tl18748_ (gx#genident__1 'tl))
                                       (_$lp18750_ (gx#genident__1 'loop))
                                       (_$lp-e18752_ (gx#genident__1 'e))
                                       (_$lp-hd18754_ (gx#genident__1 'lp-hd))
                                       (_$lp-tl18756_ (gx#genident__1 'lp-tl))
                                       (_svars18758_
                                        (_splice-vars18578_ _hd18740_))
                                       (_lvars18760_
                                        (gx#gentemps _svars18758_))
                                       (_tlvars18762_
                                        (gx#gentemps _svars18758_))
                                       (_linit18766_
                                        (map (lambda (_var18764_)
                                               (gx#core-list 'quote '()))
                                             _lvars18760_)))
                                  (letrec ((_make-loop18769_
                                            (lambda (_vars18773_)
                                              (gx#core-list
                                               'letrec-values
                                               (cons (cons (cons _$lp18750_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())
                   (cons (gx#core-list
                          'lambda%
                          (cons _$hd18746_ _lvars18760_)
                          (gx#core-list
                           'if
                           (gx#core-list 'stx-pair? _$hd18746_)
                           (gx#core-list
                            'let-values
                            (cons (cons (cons _$lp-e18752_ '())
                                        (cons (gx#core-list
                                               _unwrap-e18398_
                                               _$hd18746_)
                                              '()))
                                  '())
                            (gx#core-list
                             'let-values
                             (cons (cons (cons _$lp-hd18754_ '())
                                         (cons (gx#core-list
                                                '##car
                                                _$lp-e18752_)
                                               '()))
                                   (cons (cons (cons _$lp-tl18756_ '())
                                               (cons (gx#core-list
                                                      '##cdr
                                                      _$lp-e18752_)
                                                     '()))
                                         '()))
                             (_recur18576_
                              _hd18740_
                              '()
                              _$lp-hd18754_
                              _E18670_
                              (lambda (_hdvars18775_)
                                (cons _$lp18750_
                                      (cons _$lp-tl18756_
                                            (map (lambda (_svar18777_
                                                          _lvar18778_)
                                                   (gx#core-list
                                                    'cons
                                                    (assgetq _svar18777_
                                                             _hdvars18775_
                                                             _BUG18575_)
                                                    _lvar18778_))
                                                 _svars18758_
                                                 _lvars18760_)))))))
                           (gx#core-list
                            'let-values
                            (map (lambda (_lvar18780_ _tlvar18781_)
                                   (cons (cons _tlvar18781_ '())
                                         (cons (gx#core-list
                                                'reverse
                                                _lvar18780_)
                                               '())))
                                 _lvars18760_
                                 _tlvars18762_)
                            (_k18671_
                             (foldl2 (lambda (_svar18783_
                                              _tlvar18784_
                                              _r18785_)
                                       (cons (cons _svar18783_ _tlvar18784_)
                                             _r18785_))
                                     _vars18773_
                                     _svars18758_
                                     _tlvars18762_)))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               (cons _$lp18750_
                                                     (cons _$target18744_
                                                           _linit18766_))))))
                                    (let ((_body18771_
                                           (gx#core-list
                                            'let-values
                                            (cons (cons (cons _$target18744_
                                                              (cons _$tl18748_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (gx#core-list
                       'syntax-split-splice
                       _target18669_
                       _rlen18742_)
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())
                                            (_recur18576_
                                             _tl18739_
                                             _vars18668_
                                             _$tl18748_
                                             _E18670_
                                             _make-loop18769_))))
                                      (gx#core-list
                                       'if
                                       (gx#core-list
                                        'stx-pair/null?
                                        _target18669_)
                                       (if (zero? _rlen18742_)
                                           _body18771_
                                           (gx#core-list
                                            'if
                                            (gx#core-list
                                             'fx>=
                                             (gx#core-list
                                              'stx-length
                                              _target18669_)
                                             _rlen18742_)
                                            _body18771_
                                            _E18670_))
                                       _E18670_)))))))
                        (if (##pair? _body1872518732_)
                            (let ((_hd1872918790_ (##car _body1872518732_))
                                  (_tl1873018792_ (##cdr _body1872518732_)))
                              (let* ((_hd18795_ _hd1872918790_)
                                     (_tl18797_ _tl1873018792_))
                                (_K1872818787_ _tl18797_ _hd18795_)))
                            (_E1872718736_)))
                      (if (eq? 'null _$e18689_)
                          (gx#core-list
                           'if
                           (gx#core-list 'stx-null? _target18669_)
                           (_k18671_ _vars18668_)
                           _E18670_)
                          (if (eq? 'vector _$e18689_)
                              (let ((_$e18799_ (gx#genident__1 'e)))
                                (gx#core-list
                                 'if
                                 (gx#core-list 'stx-vector? _target18669_)
                                 (gx#core-list
                                  'let-values
                                  (cons (cons (cons _$e18799_ '())
                                              (cons (gx#core-list
                                                     'vector->list
                                                     (gx#core-list
                                                      _unwrap-e18398_
                                                      _target18669_))
                                                    '()))
                                        '())
                                  (_recur18576_
                                   _body18686_
                                   _vars18668_
                                   _$e18799_
                                   _E18670_
                                   _k18671_))
                                 _E18670_))
                              (if (eq? 'box _$e18689_)
                                  (let ((_$e18801_ (gx#genident__1 'e)))
                                    (gx#core-list
                                     'if
                                     (gx#core-list 'stx-box? _target18669_)
                                     (gx#core-list
                                      'let-values
                                      (cons (cons (cons _$e18801_ '())
                                                  (cons (gx#core-list
                                                         'unbox
                                                         (gx#core-list
                                                          _unwrap-e18398_
                                                          _target18669_))
                                                        '()))
                                            '())
                                      (_recur18576_
                                       _body18686_
                                       _vars18668_
                                       _$e18801_
                                       _E18670_
                                       _k18671_))
                                     _E18670_))
                                  (if (eq? 'datum _$e18689_)
                                      (let ((_$e18803_ (gx#genident__1 'e)))
                                        (gx#core-list
                                         'if
                                         (gx#core-list
                                          'stx-datum?
                                          _target18669_)
                                         (gx#core-list
                                          'let-values
                                          (cons (cons (cons _$e18803_ '())
                                                      (cons (gx#core-list
                                                             'stx-e
                                                             _target18669_)
                                                            '()))
                                                '())
                                          (gx#core-list
                                           'if
                                           (gx#core-list
                                            'equal?
                                            _$e18803_
                                            _body18686_)
                                           (_k18671_ _vars18668_)
                                           _E18670_))
                                         _E18670_))
                                      (_BUG18575_ _e18667_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (##pair? _e1867218679_)
                                    (let ((_hd1867618808_
                                           (##car _e1867218679_))
                                          (_tl1867718810_
                                           (##cdr _e1867218679_)))
                                      (let* ((_tag18813_ _hd1867618808_)
                                             (_body18815_ _tl1867718810_))
                                        (_K1867518805_
                                         _body18815_
                                         _tag18813_)))
                                    (_E1867418683_)))))
                           (_splice-rlen18577_
                            (lambda (_e18629_)
                              (let _lp18631_ ((_e18633_ _e18629_)
                                              (_n18634_ '0))
                                (let* ((_e1863518642_ _e18633_)
                                       (_E1863718646_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _e1863518642_)))
                                       (_K1863818655_
                                        (lambda (_body18649_ _tag18650_)
                                          (let ((_$e18652_ _tag18650_))
                                            (if (eq? 'splice _$e18652_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Ambiguous pattern"
                                                 _stx18396_
                                                 _where18568_)
                                                (if (eq? 'cons _$e18652_)
                                                    (_lp18631_
                                                     (cdr _body18649_)
                                                     (fx+ _n18634_ '1))
                                                    _n18634_))))))
                                  (if (##pair? _e1863518642_)
                                      (let ((_hd1863918658_
                                             (##car _e1863518642_))
                                            (_tl1864018660_
                                             (##cdr _e1863518642_)))
                                        (let* ((_tag18663_ _hd1863918658_)
                                               (_body18665_ _tl1864018660_))
                                          (_K1863818655_
                                           _body18665_
                                           _tag18663_)))
                                      (_E1863718646_))))))
                           (_splice-vars18578_
                            (lambda (_e18585_)
                              (let _recur18587_ ((_e18589_ _e18585_)
                                                 (_vars18590_ '()))
                                (let* ((_e1859118598_ _e18589_)
                                       (_E1859318602_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _e1859118598_)))
                                       (_K1859418617_
                                        (lambda (_body18605_ _tag18606_)
                                          (let ((_$e18608_ _tag18606_))
                                            (if (eq? 'var _$e18608_)
                                                (cons _body18605_ _vars18590_)
                                                (if (or (eq? 'cons _$e18608_)
                                                        (eq? 'splice
                                                             _$e18608_))
                                                    (_recur18587_
                                                     (cdr _body18605_)
                                                     (_recur18587_
                                                      (car _body18605_)
                                                      _vars18590_))
                                                    (if (or (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _$e18608_)
                    (eq? 'box _$e18608_))
                (_recur18587_ _body18605_ _vars18590_)
                _vars18590_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (##pair? _e1859118598_)
                                      (let ((_hd1859518620_
                                             (##car _e1859118598_))
                                            (_tl1859618622_
                                             (##cdr _e1859118598_)))
                                        (let* ((_tag18625_ _hd1859518620_)
                                               (_body18627_ _tl1859618622_))
                                          (_K1859418617_
                                           _body18627_
                                           _tag18625_)))
                                      (_E1859318602_))))))
                           (_make-body18579_
                            (lambda (_vars18581_)
                              (cons _K18572_
                                    (map (lambda (_mvar18583_)
                                           (assgetq (car _mvar18583_)
                                                    _vars18581_
                                                    _BUG18575_))
                                         _mvars18571_)))))
                    (_recur18576_
                     _hd18570_
                     '()
                     _target18569_
                     _E18573_
                     _make-body18579_))))
               (_parse-clause18405_
                (lambda (_hd18474_ _ids18475_)
                  (let _recur18477_ ((_e18479_ _hd18474_)
                                     (_vars18480_ '())
                                     (_depth18481_ '0))
                    (if (gx#identifier? _e18479_)
                        (if (gx#underscore? _e18479_)
                            (values '(any) _vars18480_)
                            (if (gx#ellipsis? _e18479_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Misplaced ellipsis"
                                 _stx18396_
                                 _hd18474_)
                                (if (find (lambda (_id18483_)
                                            (gx#bound-identifier=?
                                             _e18479_
                                             _id18483_))
                                          _ids18475_)
                                    (values (cons 'id _e18479_) _vars18480_)
                                    (if (find (lambda (_var18485_)
                                                (gx#bound-identifier=?
                                                 _e18479_
                                                 (car _var18485_)))
                                              _vars18480_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Duplicate pattern variable"
                                         _stx18396_
                                         _e18479_)
                                        (values (cons 'var _e18479_)
                                                (cons (cons _e18479_
                                                            _depth18481_)
                                                      _vars18480_))))))
                        (if (gx#stx-pair? _e18479_)
                            (let* ((_e1848618493_ _e18479_)
                                   (_E1848818497_
                                    (lambda ()
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax"
                                       _e1848618493_)))
                                   (_E1848718558_
                                    (lambda ()
                                      (if (gx#stx-pair? _e1848618493_)
                                          (let ((_e1848918501_
                                                 (gx#syntax-e _e1848618493_)))
                                            (let ((_hd1849018504_
                                                   (##car _e1848918501_))
                                                  (_tl1849118506_
                                                   (##cdr _e1848918501_)))
                                              (let* ((_hd18509_ _hd1849018504_)
                                                     (_rest18511_
                                                      _tl1849118506_))
                                                (if '#t
                                                    (let* ((_make-pair18526_
                                                            (lambda (_tag18513_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd18514_
                             _tl18515_)
                      (let* ((_hd-depth18517_
                              (if (eq? _tag18513_ 'splice)
                                  (fx+ _depth18481_ '1)
                                  _depth18481_))
                             (_g19671_
                              (_recur18477_
                               _hd18514_
                               _vars18480_
                               _hd-depth18517_)))
                        (begin
                          (let ((_g19672_
                                 (if (##values? _g19671_)
                                     (##vector-length _g19671_)
                                     1)))
                            (if (not (##fx= _g19672_ 2))
                                (error "Context expects 2 values" _g19672_)))
                          (let ((_hd18519_ (##vector-ref _g19671_ 0))
                                (_vars18520_ (##vector-ref _g19671_ 1)))
                            (let ((_g19673_
                                   (_recur18477_
                                    _tl18515_
                                    _vars18520_
                                    _depth18481_)))
                              (begin
                                (let ((_g19674_
                                       (if (##values? _g19673_)
                                           (##vector-length _g19673_)
                                           1)))
                                  (if (not (##fx= _g19674_ 2))
                                      (error "Context expects 2 values"
                                             _g19674_)))
                                (let ((_tl18522_ (##vector-ref _g19673_ 0))
                                      (_vars18523_ (##vector-ref _g19673_ 1)))
                                  (let ()
                                    (values (cons _tag18513_
                                                  (cons _hd18519_ _tl18522_))
                                            _vars18523_))))))))))
                   (_e1852718534_ _rest18511_)
                   (_E1852918538_
                    (lambda () (_make-pair18526_ 'cons _hd18509_ _rest18511_)))
                   (_E1852818554_
                    (lambda ()
                      (if (gx#stx-pair? _e1852718534_)
                          (let ((_e1853018542_ (gx#syntax-e _e1852718534_)))
                            (let ((_hd1853118545_ (##car _e1853018542_))
                                  (_tl1853218547_ (##cdr _e1853018542_)))
                              (let* ((_rest-hd18550_ _hd1853118545_)
                                     (_rest-tl18552_ _tl1853218547_))
                                (if '#t
                                    (if (gx#ellipsis? _rest-hd18550_)
                                        (_make-pair18526_
                                         'splice
                                         _hd18509_
                                         _rest-tl18552_)
                                        (_make-pair18526_
                                         'cons
                                         _hd18509_
                                         _rest18511_))
                                    (_E1852918538_)))))
                          (_E1852918538_)))))
              (_E1852818554_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1848818497_)))))
                                          (_E1848818497_)))))
                              (_E1848718558_))
                            (if (gx#stx-null? _e18479_)
                                (values '(null) _vars18480_)
                                (if (gx#stx-vector? _e18479_)
                                    (let ((_g19675_
                                           (_recur18477_
                                            (vector->list
                                             (gx#syntax-e _e18479_))
                                            _vars18480_
                                            _depth18481_)))
                                      (begin
                                        (let ((_g19676_
                                               (if (##values? _g19675_)
                                                   (##vector-length _g19675_)
                                                   1)))
                                          (if (not (##fx= _g19676_ 2))
                                              (error "Context expects 2 values"
                                                     _g19676_)))
                                        (let ((_e18562_
                                               (##vector-ref _g19675_ 0))
                                              (_vars18563_
                                               (##vector-ref _g19675_ 1)))
                                          (values (cons 'vector _e18562_)
                                                  _vars18563_))))
                                    (if (gx#stx-box? _e18479_)
                                        (let ((_g19677_
                                               (_recur18477_
                                                (unbox (gx#syntax-e _e18479_))
                                                _vars18480_
                                                _depth18481_)))
                                          (begin
                                            (let ((_g19678_
                                                   (if (##values? _g19677_)
                                                       (##vector-length
                                                        _g19677_)
                                                       1)))
                                              (if (not (##fx= _g19678_ 2))
                                                  (error "Context expects 2 values"
                                                         _g19678_)))
                                            (let ((_e18565_
                                                   (##vector-ref _g19677_ 0))
                                                  (_vars18566_
                                                   (##vector-ref _g19677_ 1)))
                                              (values (cons 'box _e18565_)
                                                      _vars18566_))))
                                        (if (gx#stx-datum? _e18479_)
                                            (values (cons 'datum
                                                          (gx#stx-e _e18479_))
                                                    _vars18480_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad pattern"
                                             _stx18396_
                                             _e18479_)))))))))))
        (let* ((_e1840618419_ _stx18396_)
               (_E1840818423_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1840618419_)))
               (_E1840718470_
                (lambda ()
                  (if (gx#stx-pair? _e1840618419_)
                      (let ((_e1840918427_ (gx#syntax-e _e1840618419_)))
                        (let ((_hd1841018430_ (##car _e1840918427_))
                              (_tl1841118432_ (##cdr _e1840918427_)))
                          (if (gx#stx-pair? _tl1841118432_)
                              (let ((_e1841218435_
                                     (gx#syntax-e _tl1841118432_)))
                                (let ((_hd1841318438_ (##car _e1841218435_))
                                      (_tl1841418440_ (##cdr _e1841218435_)))
                                  (let ((_expr18443_ _hd1841318438_))
                                    (if (gx#stx-pair? _tl1841418440_)
                                        (let ((_e1841518445_
                                               (gx#syntax-e _tl1841418440_)))
                                          (let ((_hd1841618448_
                                                 (##car _e1841518445_))
                                                (_tl1841718450_
                                                 (##cdr _e1841518445_)))
                                            (let* ((_ids18453_ _hd1841618448_)
                                                   (_clauses18455_
                                                    _tl1841718450_))
                                              (if '#t
                                                  (if (not (gx#identifier-list?
                                                            _ids18453_))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad template identifier list"
                                                       _stx18396_
                                                       _ids18453_)
                                                      (if (not (gx#stx-list?
                                                                _clauses18455_))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _stx18396_)
                                                          (let* ((_ids18457_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax->list _ids18453_))
                         (_clauses18459_ (gx#syntax->list _clauses18455_))
                         (_clause-ids18461_ (gx#gentemps _clauses18459_))
                         (_E18463_ (gx#genident__0))
                         (_target18465_ (gx#genident__0))
                         (_first18467_
                          (if (null? _clauses18459_)
                              _E18463_
                              (car _clause-ids18461_))))
                    (gx#stx-wrap-source
                     (gx#core-list
                      'begin-annotation
                      '@syntax-case
                      (gx#stx-wrap-source
                       (gx#core-list
                        'let-values
                        (cons (cons (cons _E18463_ '())
                                    (cons (gx#core-list
                                           'lambda%
                                           (cons _target18465_ '())
                                           (gx#core-list
                                            'raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _target18465_))
                                          '()))
                              '())
                        (_generate-body18402_
                         (_generate-bindings18401_
                          _target18465_
                          _ids18457_
                          _clauses18459_
                          _clause-ids18461_
                          _E18463_)
                         (cons _first18467_ (cons _expr18443_ '()))))
                       (gx#stx-source _stx18396_)))
                     (gx#stx-source _stx18396_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1840818423_)))))
                                        (_E1840818423_)))))
                              (_E1840818423_))))
                      (_E1840818423_)))))
          (_E1840718470_)))))
  (define gx#macro-expand-syntax-case__0
    (lambda (_stx19106_)
      (let* ((_identifier=?19108_ 'free-identifier=?)
             (_unwrap-e19110_ 'syntax-e)
             (_wrap-e19112_ 'quote-syntax))
        (gx#macro-expand-syntax-case__%
         _stx19106_
         _identifier=?19108_
         _unwrap-e19110_
         _wrap-e19112_))))
  (define gx#macro-expand-syntax-case__1
    (lambda (_stx19114_ _identifier=?19115_)
      (let* ((_unwrap-e19117_ 'syntax-e) (_wrap-e19119_ 'quote-syntax))
        (gx#macro-expand-syntax-case__%
         _stx19114_
         _identifier=?19115_
         _unwrap-e19117_
         _wrap-e19119_))))
  (define gx#macro-expand-syntax-case__2
    (lambda (_stx19121_ _identifier=?19122_ _unwrap-e19123_)
      (let ((_wrap-e19125_ 'quote-syntax))
        (gx#macro-expand-syntax-case__%
         _stx19121_
         _identifier=?19122_
         _unwrap-e19123_
         _wrap-e19125_))))
  (define gx#macro-expand-syntax-case
    (lambda _g19680_
      (let ((_g19679_ (length _g19680_)))
        (cond ((##fx= _g19679_ 1)
               (apply gx#macro-expand-syntax-case__0 _g19680_))
              ((##fx= _g19679_ 2)
               (apply gx#macro-expand-syntax-case__1 _g19680_))
              ((##fx= _g19679_ 3)
               (apply gx#macro-expand-syntax-case__2 _g19680_))
              ((##fx= _g19679_ 4)
               (apply gx#macro-expand-syntax-case__% _g19680_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#macro-expand-syntax-case
                _g19680_))))))
  (define gx#syntax-local-pattern?
    (lambda (_stx18393_)
      (if (gx#identifier? _stx18393_)
          (##structure-instance-of?
           (gx#syntax-local-e__% _stx18393_ false)
           'gx#syntax-pattern::t)
          '#f)))
  (define gx#syntax-check-splice-targets
    (lambda (_hd18351_ . _rest18352_)
      (let ((_len18354_ (length _hd18351_)))
        (let _lp18356_ ((_rest18358_ _rest18352_))
          (let* ((_rest1835918367_ _rest18358_)
                 (_else1836118375_ (lambda () '#!void))
                 (_K1836318381_
                  (lambda (_rest18378_ _hd18379_)
                    (if (fx= _len18354_ (length _hd18379_))
                        (_lp18356_ _rest18378_)
                        (gx#raise-syntax-error
                         '#f
                         '"Splice length mismatch"
                         _hd18379_)))))
            (if (##pair? _rest1835918367_)
                (let ((_hd1836418384_ (##car _rest1835918367_))
                      (_tl1836518386_ (##cdr _rest1835918367_)))
                  (let* ((_hd18389_ _hd1836418384_)
                         (_rest18391_ _tl1836518386_))
                    (_K1836318381_ _rest18391_ _hd18389_)))
                '#!void))))))
  (define gx#syntax-split-splice
    (lambda (_stx18309_ _n18310_)
      (let _lp18312_ ((_rest18314_ _stx18309_) (_r18315_ '()))
        (if (gx#stx-pair? _rest18314_)
            (let* ((_g1831618323_ (gx#syntax-e _rest18314_))
                   (_E1831818327_
                    (lambda () (error '"No clause matching" _g1831618323_)))
                   (_K1831918333_
                    (lambda (_rest18330_ _hd18331_)
                      (_lp18312_ _rest18330_ (cons _hd18331_ _r18315_)))))
              (if (##pair? _g1831618323_)
                  (let ((_hd1832018336_ (##car _g1831618323_))
                        (_tl1832118338_ (##cdr _g1831618323_)))
                    (let* ((_hd18341_ _hd1832018336_)
                           (_rest18343_ _tl1832118338_))
                      (_K1831918333_ _rest18343_ _hd18341_)))
                  (_E1831818327_)))
            (let _lp18345_ ((_n18347_ _n18310_)
                            (_l18348_ _r18315_)
                            (_r18349_ _rest18314_))
              (if (null? _l18348_)
                  (values _l18348_ _r18349_)
                  (if (fxpositive? _n18347_)
                      (_lp18345_
                       (fx- _n18347_ '1)
                       (cdr _l18348_)
                       (cons (car _l18348_) _r18349_))
                      (values (reverse _l18348_) _r18349_)))))))))
