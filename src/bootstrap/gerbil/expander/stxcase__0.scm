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
    (lambda _$args19623_
      (apply make-struct-instance gx#syntax-pattern::t _$args19623_)))
  (define gx#syntax-pattern-id
    (make-struct-field-accessor gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth
    (make-struct-field-accessor gx#syntax-pattern::t '1))
  (define gx#syntax-pattern-id-set!
    (make-struct-field-mutator gx#syntax-pattern::t '0))
  (define gx#syntax-pattern-depth-set!
    (make-struct-field-mutator gx#syntax-pattern::t '1))
  (define gx#syntax-pattern::apply-macro-expander
    (lambda (_self19620_ _stx19621_)
      (gx#raise-syntax-error
       '#f
       '"Identifier used out of context"
       _stx19621_)))
  (bind-method!
   gx#syntax-pattern::t
   'apply-macro-expander
   gx#syntax-pattern::apply-macro-expander
   '#f)
  (define gx#macro-expand-syntax
    (lambda (_stx19102_)
      (letrec ((_generate19104_
                (lambda (_e19331_)
                  (letrec ((_BUG19333_
                            (lambda (_q19495_)
                              (error '"BUG: syntax; generate"
                                     _stx19102_
                                     _e19331_
                                     _q19495_)))
                           (_local-pattern-e19334_
                            (lambda (_pat19493_)
                              (gx#syntax-local-rewrap
                               (##structure-ref
                                _pat19493_
                                '2
                                gx#syntax-pattern::t
                                '#f))))
                           (_getvar19335_
                            (lambda (_q19490_ _vars19491_)
                              (assgetq _q19490_ _vars19491_ _BUG19333_)))
                           (_getarg19336_
                            (lambda (_arg19456_ _vars19457_)
                              (let* ((_arg1945819465_ _arg19456_)
                                     (_E1946019469_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _arg1945819465_)))
                                     (_K1946119478_
                                      (lambda (_e19472_ _tag19473_)
                                        (let ((_$e19475_ _tag19473_))
                                          (if (eq? 'ref _$e19475_)
                                              (_getvar19335_
                                               _e19472_
                                               _vars19457_)
                                              (if (eq? 'pattern _$e19475_)
                                                  (_local-pattern-e19334_
                                                   _e19472_)
                                                  (_BUG19333_ _arg19456_)))))))
                                (if (##pair? _arg1945819465_)
                                    (let ((_hd1946219481_
                                           (##car _arg1945819465_))
                                          (_tl1946319483_
                                           (##cdr _arg1945819465_)))
                                      (let* ((_tag19486_ _hd1946219481_)
                                             (_e19488_ _tl1946319483_))
                                        (_K1946119478_ _e19488_ _tag19486_)))
                                    (_E1946019469_))))))
                    (let _recur19338_ ((_e19340_ _e19331_) (_vars19341_ '()))
                      (let* ((_e1934219349_ _e19340_)
                             (_E1934419353_
                              (lambda ()
                                (error '"No clause matching" _e1934219349_)))
                             (_K1934519444_
                              (lambda (_body19356_ _tag19357_)
                                (let ((_$e19359_ _tag19357_))
                                  (if (eq? 'datum _$e19359_)
                                      (gx#core-list 'quote _body19356_)
                                      (if (eq? 'term _$e19359_)
                                          (let ((_id19362_
                                                 (gx#syntax-local-unwrap
                                                  _body19356_)))
                                            (if (##structure-direct-instance-of?
                                                 _id19362_
                                                 'gx#identifier-wrap::t)
                                                (let ((_marks19364_
                                                       (##unchecked-structure-ref
                                                        _id19362_
                                                        '3
                                                        gx#identifier-wrap::t
                                                        '#f)))
                                                  (if (null? _marks19364_)
                                                      (gx#core-list
                                                       'datum->syntax
                                                       '#f
                                                       (gx#core-list
                                                        'quote
                                                        _body19356_))
                                                      (gx#core-list
                                                       'datum->syntax
                                                       (gx#core-list
                                                        'quote-syntax
                                                        _body19356_)
                                                       (gx#core-list
                                                        'quote
                                                        _body19356_)
                                                       '#f
                                                       '#f)))
                                                (if (##structure-direct-instance-of?
                                                     _id19362_
                                                     'gx#syntax-quote::t)
                                                    (gx#core-list
                                                     'quote-syntax
                                                     _body19356_)
                                                    (_BUG19333_ _e19340_))))
                                          (if (eq? 'pattern _$e19359_)
                                              (_local-pattern-e19334_
                                               _body19356_)
                                              (if (eq? 'ref _$e19359_)
                                                  (_getvar19335_
                                                   _body19356_
                                                   _vars19341_)
                                                  (if (eq? 'cons _$e19359_)
                                                      (gx#core-list
                                                       'cons
                                                       (_recur19338_
                                                        (car _body19356_)
                                                        _vars19341_)
                                                       (_recur19338_
                                                        (cdr _body19356_)
                                                        _vars19341_))
                                                      (if (eq? 'vector
                                                               _$e19359_)
                                                          (gx#core-list
                                                           'list->vector
                                                           (_recur19338_
                                                            _body19356_
                                                            _vars19341_))
                                                          (if (eq? 'box
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _$e19359_)
                      (gx#core-list
                       'box
                       (_recur19338_ _body19356_ _vars19341_))
                      (if (eq? 'splice _$e19359_)
                          (let* ((_body1936519376_ _body19356_)
                                 (_E1936719380_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _body1936519376_)))
                                 (_K1936819418_
                                  (lambda (_args19383_
                                           _iv19384_
                                           _hd19385_
                                           _depth19386_)
                                    (let* ((_targets19392_
                                            (map (lambda (_g1938719389_)
                                                   (_getarg19336_
                                                    _g1938719389_
                                                    _vars19341_))
                                                 _args19383_))
                                           (_fold-in19394_
                                            (gx#gentemps _args19383_))
                                           (_fold-out19396_ (gx#genident__0))
                                           (_lambda-args19398_
                                            (foldr1 cons
                                                    (cons _fold-out19396_ '())
                                                    _fold-in19394_))
                                           (_lambda-body19415_
                                            (if (fx> _depth19386_ '1)
                                                (let ((_r-args19406_
                                                       (map (lambda (_arg19400_)
                                                              (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cdr _arg19400_)))
                    _args19383_))
              (_r-vars19407_
               (foldr2 (lambda (_arg19402_ _var19403_ _r19404_)
                         (cons (cons (cdr _arg19402_) _var19403_) _r19404_))
                       _vars19341_
                       _args19383_
                       _fold-in19394_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_recur19338_
                                                   (cons 'splice
                                                         (cons (fx- _depth19386_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '1)
                       (cons _hd19385_
                             (cons (cons 'var _fold-out19396_)
                                   _r-args19406_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _r-vars19407_))
                                                (let ((_hd-vars19413_
                                                       (foldr2 (lambda (_arg19409_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _var19410_
                                _r19411_)
                         (cons (cons (cdr _arg19409_) _var19410_) _r19411_))
                       _vars19341_
                       _args19383_
                       _fold-in19394_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (gx#core-list
                                                   'cons
                                                   (_recur19338_
                                                    _hd19385_
                                                    _hd-vars19413_)
                                                   _fold-out19396_)))))
                                      (gx#core-list
                                       'begin
                                       (if (fx> (length _targets19392_) '1)
                                           (gx#core-cons*
                                            'syntax-check-splice-targets
                                            _targets19392_)
                                           '#!void)
                                       (gx#core-cons*
                                        'foldr
                                        (gx#core-list
                                         'lambda%
                                         _lambda-args19398_
                                         _lambda-body19415_)
                                        (_recur19338_ _iv19384_ _vars19341_)
                                        _targets19392_))))))
                            (if (##pair? _body1936519376_)
                                (let ((_hd1936919421_ (##car _body1936519376_))
                                      (_tl1937019423_
                                       (##cdr _body1936519376_)))
                                  (let ((_depth19426_ _hd1936919421_))
                                    (if (##pair? _tl1937019423_)
                                        (let ((_hd1937119428_
                                               (##car _tl1937019423_))
                                              (_tl1937219430_
                                               (##cdr _tl1937019423_)))
                                          (let ((_hd19433_ _hd1937119428_))
                                            (if (##pair? _tl1937219430_)
                                                (let ((_hd1937319435_
                                                       (##car _tl1937219430_))
                                                      (_tl1937419437_
                                                       (##cdr _tl1937219430_)))
                                                  (let* ((_iv19440_
                                                          _hd1937319435_)
                                                         (_args19442_
                                                          _tl1937419437_))
                                                    (_K1936819418_
                                                     _args19442_
                                                     _iv19440_
                                                     _hd19433_
                                                     _depth19426_)))
                                                (_E1936719380_))))
                                        (_E1936719380_))))
                                (_E1936719380_)))
                          (if (eq? 'var _$e19359_)
                              _body19356_
                              (_BUG19333_ _e19340_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                        (if (##pair? _e1934219349_)
                            (let ((_hd1934619447_ (##car _e1934219349_))
                                  (_tl1934719449_ (##cdr _e1934219349_)))
                              (let* ((_tag19452_ _hd1934619447_)
                                     (_body19454_ _tl1934719449_))
                                (_K1934519444_ _body19454_ _tag19452_)))
                            (_E1934419353_)))))))
               (_parse19105_
                (lambda (_e19146_)
                  (letrec ((_make-cons19148_
                            (lambda (_hd19323_ _tl19324_)
                              (let ((_g19625_ _hd19323_) (_g19627_ _tl19324_))
                                (begin
                                  (let ((_g19626_
                                         (if (##values? _g19625_)
                                             (##vector-length _g19625_)
                                             1)))
                                    (if (not (##fx= _g19626_ 2))
                                        (error "Context expects 2 values"
                                               _g19626_)))
                                  (let ((_g19628_
                                         (if (##values? _g19627_)
                                             (##vector-length _g19627_)
                                             1)))
                                    (if (not (##fx= _g19628_ 2))
                                        (error "Context expects 2 values"
                                               _g19628_)))
                                  (let ((_hd-e19326_ (##vector-ref _g19625_ 0))
                                        (_hd-vars19327_
                                         (##vector-ref _g19625_ 1)))
                                    (let ((_tl-e19328_
                                           (##vector-ref _g19627_ 0))
                                          (_tl-vars19329_
                                           (##vector-ref _g19627_ 1)))
                                      (values (cons 'cons
                                                    (cons _hd-e19326_
                                                          _tl-e19328_))
                                              (append _hd-vars19327_
                                                      _tl-vars19329_))))))))
                           (_make-splice19149_
                            (lambda (_where19262_
                                     _depth19263_
                                     _hd19264_
                                     _tl19265_)
                              (let ((_g19629_ _hd19264_) (_g19631_ _tl19265_))
                                (begin
                                  (let ((_g19630_
                                         (if (##values? _g19629_)
                                             (##vector-length _g19629_)
                                             1)))
                                    (if (not (##fx= _g19630_ 2))
                                        (error "Context expects 2 values"
                                               _g19630_)))
                                  (let ((_g19632_
                                         (if (##values? _g19631_)
                                             (##vector-length _g19631_)
                                             1)))
                                    (if (not (##fx= _g19632_ 2))
                                        (error "Context expects 2 values"
                                               _g19632_)))
                                  (let ((_hd-e19267_ (##vector-ref _g19629_ 0))
                                        (_hd-vars19268_
                                         (##vector-ref _g19629_ 1)))
                                    (let ((_tl-e19269_
                                           (##vector-ref _g19631_ 0))
                                          (_tl-vars19270_
                                           (##vector-ref _g19631_ 1)))
                                      (let _lp19272_ ((_rest19274_
                                                       _hd-vars19268_)
                                                      (_targets19275_ '())
                                                      (_vars19276_
                                                       _tl-vars19270_))
                                        (let* ((_rest1927719287_ _rest19274_)
                                               (_else1927919295_
                                                (lambda ()
                                                  (if (null? _targets19275_)
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Misplaced ellipsis"
                                                       _stx19102_
                                                       _where19262_)
                                                      (values (cons 'splice
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (cons _depth19263_
                                  (cons _hd-e19267_
                                        (cons _tl-e19269_ _targets19275_))))
                      _vars19276_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_K1928119304_
                                                (lambda (_rest19298_
                                                         _hd-pat19299_
                                                         _hd-depth*19300_)
                                                  (let ((_hd-depth19302_
                                                         (fx- _hd-depth*19300_
                                                              _depth19263_)))
                                                    (if (fxpositive?
                                                         _hd-depth19302_)
                                                        (_lp19272_
                                                         _rest19298_
                                                         (cons (cons 'ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd-pat19299_)
                       _targets19275_)
                 (cons (cons _hd-depth19302_ _hd-pat19299_) _vars19276_))
                (if (fxzero? _hd-depth19302_)
                    (_lp19272_
                     _rest19298_
                     (cons (cons 'pattern _hd-pat19299_) _targets19275_)
                     _vars19276_)
                    (gx#raise-syntax-error
                     '#f
                     '"Too many ellipses"
                     _stx19102_
                     _where19262_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (if (##pair? _rest1927719287_)
                                              (let ((_hd1928219307_
                                                     (##car _rest1927719287_))
                                                    (_tl1928319309_
                                                     (##cdr _rest1927719287_)))
                                                (if (##pair? _hd1928219307_)
                                                    (let ((_hd1928419312_
                                                           (##car _hd1928219307_))
                                                          (_tl1928519314_
                                                           (##cdr _hd1928219307_)))
                                                      (let* ((_hd-depth*19317_
                                                              _hd1928419312_)
                                                             (_hd-pat19319_
                                                              _tl1928519314_)
                                                             (_rest19321_
                                                              _tl1928319309_))
                                                        (_K1928119304_
                                                         _rest19321_
                                                         _hd-pat19319_
                                                         _hd-depth*19317_)))
                                                    (_else1927919295_)))
                                              (_else1927919295_))))))))))
                           (_recur19150_
                            (lambda (_e19155_ _is-e?19156_)
                              (if (_is-e?19156_ _e19155_)
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Mislpaced ellipsis"
                                   _stx19102_)
                                  (if (gx#syntax-local-pattern? _e19155_)
                                      (let* ((_pat19158_
                                              (gx#syntax-local-e__0 _e19155_))
                                             (_depth19160_
                                              (##structure-ref
                                               _pat19158_
                                               '3
                                               gx#syntax-pattern::t
                                               '#f)))
                                        (if (fxpositive? _depth19160_)
                                            (values (cons 'ref _pat19158_)
                                                    (cons (cons _depth19160_
                                                                _pat19158_)
                                                          '()))
                                            (values (cons 'pattern _pat19158_)
                                                    '())))
                                      (if (gx#identifier? _e19155_)
                                          (values (cons 'term _e19155_) '())
                                          (if (gx#stx-pair? _e19155_)
                                              (let* ((_e1916219169_ _e19155_)
                                                     (_E1916419173_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax"
                                                         _e1916219169_)))
                                                     (_E1916319252_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _e1916219169_)
                                                            (let ((_e1916519177_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _e1916219169_)))
                      (let ((_hd1916619180_ (##car _e1916519177_))
                            (_tl1916719182_ (##cdr _e1916519177_)))
                        (let* ((_hd19185_ _hd1916619180_)
                               (_rest19187_ _tl1916719182_))
                          (if '#t
                              (if (_is-e?19156_ _hd19185_)
                                  (let* ((_e1918819195_ _rest19187_)
                                         (_E1919019199_
                                          (lambda ()
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad ellipsis syntax"
                                             _stx19102_
                                             _e19155_)))
                                         (_E1918919213_
                                          (lambda ()
                                            (if (gx#stx-pair? _e1918819195_)
                                                (let ((_e1919119203_
                                                       (gx#syntax-e
                                                        _e1918819195_)))
                                                  (let ((_hd1919219206_
                                                         (##car _e1919119203_))
                                                        (_tl1919319208_
                                                         (##cdr _e1919119203_)))
                                                    (let ((_rest19211_
                                                           _hd1919219206_))
                                                      (if (gx#stx-null?
                                                           _tl1919319208_)
                                                          (if '#t
                                                              (_recur19150_
                                                               _rest19211_
                                                               false)
                                                              (_E1919019199_))
                                                          (_E1919019199_)))))
                                                (_E1919019199_)))))
                                    (_E1918919213_))
                                  (let _lp19217_ ((_rest19219_ _rest19187_)
                                                  (_depth19220_ '0))
                                    (let* ((_e1922119228_ _rest19219_)
                                           (_E1922319232_
                                            (lambda ()
                                              (if (fxpositive? _depth19220_)
                                                  (_make-splice19149_
                                                   _e19155_
                                                   _depth19220_
                                                   (_recur19150_
                                                    _hd19185_
                                                    _is-e?19156_)
                                                   (_recur19150_
                                                    _rest19219_
                                                    _is-e?19156_))
                                                  (_make-cons19148_
                                                   (_recur19150_
                                                    _hd19185_
                                                    _is-e?19156_)
                                                   (_recur19150_
                                                    _rest19219_
                                                    _is-e?19156_)))))
                                           (_E1922219248_
                                            (lambda ()
                                              (if (gx#stx-pair? _e1922119228_)
                                                  (let ((_e1922419236_
                                                         (gx#syntax-e
                                                          _e1922119228_)))
                                                    (let ((_hd1922519239_
                                                           (##car _e1922419236_))
                                                          (_tl1922619241_
                                                           (##cdr _e1922419236_)))
                                                      (let* ((_rest-hd19244_
                                                              _hd1922519239_)
                                                             (_rest-tl19246_
                                                              _tl1922619241_))
                                                        (if '#t
                                                            (if (_is-e?19156_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _rest-hd19244_)
                        (_lp19217_ _rest-tl19246_ (fx+ _depth19220_ '1))
                        (if (fxpositive? _depth19220_)
                            (_make-splice19149_
                             _e19155_
                             _depth19220_
                             (_recur19150_ _hd19185_ _is-e?19156_)
                             (_recur19150_ _rest19219_ _is-e?19156_))
                            (_make-cons19148_
                             (_recur19150_ _hd19185_ _is-e?19156_)
                             (_recur19150_ _rest19219_ _is-e?19156_))))
                    (_E1922319232_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1922319232_)))))
                                      (_E1922219248_))))
                              (_E1916419173_)))))
                    (_E1916419173_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_E1916319252_))
                                              (if (gx#stx-vector? _e19155_)
                                                  (let ((_g19633_
                                                         (_recur19150_
                                                          (vector->list
                                                           (gx#stx-unwrap__0
                                                            _e19155_))
                                                          _is-e?19156_)))
                                                    (begin
                                                      (let ((_g19634_
                                                             (if (##values?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _g19633_)
                         (##vector-length _g19633_)
                         1)))
                (if (not (##fx= _g19634_ 2))
                    (error "Context expects 2 values" _g19634_)))
              (let ((_e19256_ (##vector-ref _g19633_ 0))
                    (_vars19257_ (##vector-ref _g19633_ 1)))
                (values (cons 'vector _e19256_) _vars19257_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (gx#stx-box? _e19155_)
                                                      (let ((_g19635_
                                                             (_recur19150_
                                                              (unbox (gx#stx-unwrap__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _e19155_))
                      _is-e?19156_)))
                (begin
                  (let ((_g19636_
                         (if (##values? _g19635_)
                             (##vector-length _g19635_)
                             1)))
                    (if (not (##fx= _g19636_ 2))
                        (error "Context expects 2 values" _g19636_)))
                  (let ((_e19259_ (##vector-ref _g19635_ 0))
                        (_vars19260_ (##vector-ref _g19635_ 1)))
                    (values (cons 'box _e19259_) _vars19260_))))
              (values (cons 'datum _e19155_) '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                    (let ((_g19637_ (_recur19150_ _e19146_ gx#ellipsis?)))
                      (begin
                        (let ((_g19638_
                               (if (##values? _g19637_)
                                   (##vector-length _g19637_)
                                   1)))
                          (if (not (##fx= _g19638_ 2))
                              (error "Context expects 2 values" _g19638_)))
                        (let ((_tree19152_ (##vector-ref _g19637_ 0))
                              (_vars19153_ (##vector-ref _g19637_ 1)))
                          (if (null? _vars19153_)
                              _tree19152_
                              (gx#raise-syntax-error
                               '#f
                               '"Missing ellipsis"
                               _stx19102_
                               _vars19153_)))))))))
        (let* ((_e1910619116_ _stx19102_)
               (_E1910819120_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _stx19102_)))
               (_E1910719142_
                (lambda ()
                  (if (gx#stx-pair? _e1910619116_)
                      (let ((_e1910919124_ (gx#syntax-e _e1910619116_)))
                        (let ((_hd1911019127_ (##car _e1910919124_))
                              (_tl1911119129_ (##cdr _e1910919124_)))
                          (if (gx#stx-pair? _tl1911119129_)
                              (let ((_e1911219132_
                                     (gx#syntax-e _tl1911119129_)))
                                (let ((_hd1911319135_ (##car _e1911219132_))
                                      (_tl1911419137_ (##cdr _e1911219132_)))
                                  (let ((_form19140_ _hd1911319135_))
                                    (if (gx#stx-null? _tl1911419137_)
                                        (if '#t
                                            (gx#stx-wrap-source
                                             (_generate19104_
                                              (_parse19105_ _form19140_))
                                             (gx#stx-source _stx19102_))
                                            (_E1910819120_))
                                        (_E1910819120_)))))
                              (_E1910819120_))))
                      (_E1910819120_)))))
          (_E1910719142_)))))
  (define gx#macro-expand-syntax-case__%
    (lambda (_stx18366_ _identifier=?18367_ _unwrap-e18368_ _wrap-e18369_)
      (letrec ((_generate-bindings18371_
                (lambda (_target18966_
                         _ids18967_
                         _clauses18968_
                         _clause-ids18969_
                         _E18970_)
                  (letrec ((_generate118972_
                            (lambda (_clause19069_ _clause-id19070_ _E19071_)
                              (cons (cons _clause-id19070_ '())
                                    (cons (gx#core-list
                                           'lambda%
                                           (cons _target18966_ '())
                                           (_generate-clause18373_
                                            _target18966_
                                            _ids18967_
                                            _clause19069_
                                            _E19071_))
                                          '())))))
                    (let _lp18974_ ((_rest18976_ _clauses18968_)
                                    (_rest-ids18977_ _clause-ids18969_)
                                    (_bindings18978_ '()))
                      (let* ((_rest1897918987_ _rest18976_)
                             (_else1898118995_ (lambda () _bindings18978_))
                             (_K1898319057_
                              (lambda (_rest18998_ _clause18999_)
                                (let* ((_rest-ids1900019007_ _rest-ids18977_)
                                       (_E1900219011_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _rest-ids1900019007_)))
                                       (_K1900319045_
                                        (lambda (_rest-ids19014_
                                                 _clause-id19015_)
                                          (let* ((_rest-ids1901619024_
                                                  _rest-ids19014_)
                                                 (_else1901819032_
                                                  (lambda ()
                                                    (cons (_generate118972_
                                                           _clause18999_
                                                           _clause-id19015_
                                                           _E18970_)
                                                          _bindings18978_)))
                                                 (_K1902019037_
                                                  (lambda (_next-clause-id19035_)
                                                    (_lp18974_
                                                     _rest18998_
                                                     _rest-ids19014_
                                                     (cons (_generate118972_
                                                            _clause18999_
                                                            _clause-id19015_
                                                            _next-clause-id19035_)
                                                           _bindings18978_)))))
                                            (if (##pair? _rest-ids1901619024_)
                                                (let* ((_hd1902119040_
                                                        (##car _rest-ids1901619024_))
                                                       (_next-clause-id19043_
                                                        _hd1902119040_))
                                                  (_K1902019037_
                                                   _next-clause-id19043_))
                                                (_else1901819032_))))))
                                  (if (##pair? _rest-ids1900019007_)
                                      (let ((_hd1900419048_
                                             (##car _rest-ids1900019007_))
                                            (_tl1900519050_
                                             (##cdr _rest-ids1900019007_)))
                                        (let* ((_clause-id19053_
                                                _hd1900419048_)
                                               (_rest-ids19055_
                                                _tl1900519050_))
                                          (_K1900319045_
                                           _rest-ids19055_
                                           _clause-id19053_)))
                                      (_E1900219011_))))))
                        (if (##pair? _rest1897918987_)
                            (let ((_hd1898419060_ (##car _rest1897918987_))
                                  (_tl1898519062_ (##cdr _rest1897918987_)))
                              (let* ((_clause19065_ _hd1898419060_)
                                     (_rest19067_ _tl1898519062_))
                                (_K1898319057_ _rest19067_ _clause19065_)))
                            (_else1898118995_)))))))
               (_generate-body18372_
                (lambda (_bindings18926_ _body18927_)
                  (let _recur18929_ ((_rest18931_ _bindings18926_))
                    (let* ((_rest1893218940_ _rest18931_)
                           (_else1893418948_ (lambda () _body18927_))
                           (_K1893618954_
                            (lambda (_rest18951_ _hd18952_)
                              (gx#core-list
                               'let-values
                               (cons _hd18952_ '())
                               (_recur18929_ _rest18951_)))))
                      (if (##pair? _rest1893218940_)
                          (let ((_hd1893718957_ (##car _rest1893218940_))
                                (_tl1893818959_ (##cdr _rest1893218940_)))
                            (let* ((_hd18962_ _hd1893718957_)
                                   (_rest18964_ _tl1893818959_))
                              (_K1893618954_ _rest18964_ _hd18962_)))
                          (_else1893418948_))))))
               (_generate-clause18373_
                (lambda (_target18789_ _ids18790_ _clause18791_ _E18792_)
                  (letrec ((_generate118794_
                            (lambda (_hd18881_ _fender18882_ _body18883_)
                              (let ((_g19639_
                                     (_parse-clause18375_
                                      _hd18881_
                                      _ids18790_)))
                                (begin
                                  (let ((_g19640_
                                         (if (##values? _g19639_)
                                             (##vector-length _g19639_)
                                             1)))
                                    (if (not (##fx= _g19640_ 2))
                                        (error "Context expects 2 values"
                                               _g19640_)))
                                  (let ((_e18885_ (##vector-ref _g19639_ 0))
                                        (_mvars18886_
                                         (##vector-ref _g19639_ 1)))
                                    (let* ((_pvars18888_
                                            (map gx#syntax-local-rewrap
                                                 (gx#gentemps _mvars18886_)))
                                           (_E18890_
                                            (cons _E18792_
                                                  (cons _target18789_ '())))
                                           (_K18923_
                                            (gx#core-list
                                             'lambda%
                                             _pvars18888_
                                             (gx#core-list
                                              'let-syntax
                                              (map (lambda (_mvar18892_
                                                            _pvar18893_)
                                                     (let* ((_mvar1889418901_
                                                             _mvar18892_)
                                                            (_E1889618905_
                                                             (lambda ()
                                                               (error '"No clause matching"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _mvar1889418901_)))
                    (_K1889718911_
                     (lambda (_depth18908_ _id18909_)
                       (cons _id18909_
                             (cons (gx#core-list
                                    'make-syntax-pattern
                                    (gx#core-list 'quote _id18909_)
                                    (gx#core-list 'quote _pvar18893_)
                                    _depth18908_)
                                   '())))))
               (if (##pair? _mvar1889418901_)
                   (let ((_hd1889818914_ (##car _mvar1889418901_))
                         (_tl1889918916_ (##cdr _mvar1889418901_)))
                     (let* ((_id18919_ _hd1889818914_)
                            (_depth18921_ _tl1889918916_))
                       (_K1889718911_ _depth18921_ _id18919_)))
                   (_E1889618905_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   _mvars18886_
                                                   _pvars18888_)
                                              (if (eq? _fender18882_ '#t)
                                                  _body18883_
                                                  (gx#core-list
                                                   'if
                                                   _fender18882_
                                                   _body18883_
                                                   _E18890_))))))
                                      (_generate-match18374_
                                       _hd18881_
                                       _target18789_
                                       _e18885_
                                       _mvars18886_
                                       _K18923_
                                       _E18890_))))))))
                    (let* ((_e1879518815_ _clause18791_)
                           (_E1880418819_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax"
                               _e1879518815_)))
                           (_E1879718853_
                            (lambda ()
                              (if (gx#stx-pair? _e1879518815_)
                                  (let ((_e1880518823_
                                         (gx#syntax-e _e1879518815_)))
                                    (let ((_hd1880618826_
                                           (##car _e1880518823_))
                                          (_tl1880718828_
                                           (##cdr _e1880518823_)))
                                      (let ((_hd18831_ _hd1880618826_))
                                        (if (gx#stx-pair? _tl1880718828_)
                                            (let ((_e1880818833_
                                                   (gx#syntax-e
                                                    _tl1880718828_)))
                                              (let ((_hd1880918836_
                                                     (##car _e1880818833_))
                                                    (_tl1881018838_
                                                     (##cdr _e1880818833_)))
                                                (let ((_fender18841_
                                                       _hd1880918836_))
                                                  (if (gx#stx-pair?
                                                       _tl1881018838_)
                                                      (let ((_e1881118843_
                                                             (gx#syntax-e
                                                              _tl1881018838_)))
                                                        (let ((_hd1881218846_
                                                               (##car _e1881118843_))
                                                              (_tl1881318848_
                                                               (##cdr _e1881118843_)))
                                                          (let ((_body18851_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _hd1881218846_))
                    (if (gx#stx-null? _tl1881318848_)
                        (if '#t
                            (_generate118794_
                             _hd18831_
                             _fender18841_
                             _body18851_)
                            (_E1880418819_))
                        (_E1880418819_)))))
              (_E1880418819_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_E1880418819_)))))
                                  (_E1880418819_))))
                           (_E1879618877_
                            (lambda ()
                              (if (gx#stx-pair? _e1879518815_)
                                  (let ((_e1879818857_
                                         (gx#syntax-e _e1879518815_)))
                                    (let ((_hd1879918860_
                                           (##car _e1879818857_))
                                          (_tl1880018862_
                                           (##cdr _e1879818857_)))
                                      (let ((_hd18865_ _hd1879918860_))
                                        (if (gx#stx-pair? _tl1880018862_)
                                            (let ((_e1880118867_
                                                   (gx#syntax-e
                                                    _tl1880018862_)))
                                              (let ((_hd1880218870_
                                                     (##car _e1880118867_))
                                                    (_tl1880318872_
                                                     (##cdr _e1880118867_)))
                                                (let ((_body18875_
                                                       _hd1880218870_))
                                                  (if (gx#stx-null?
                                                       _tl1880318872_)
                                                      (if '#t
                                                          (_generate118794_
                                                           _hd18865_
                                                           '#t
                                                           _body18875_)
                                                          (_E1879718853_))
                                                      (_E1879718853_)))))
                                            (_E1879718853_)))))
                                  (_E1879718853_)))))
                      (_E1879618877_)))))
               (_generate-match18374_
                (lambda (_where18538_
                         _target18539_
                         _hd18540_
                         _mvars18541_
                         _K18542_
                         _E18543_)
                  (letrec ((_BUG18545_
                            (lambda (_q18787_)
                              (error '"BUG: syntax-case; generate"
                                     _stx18366_
                                     _hd18540_
                                     _q18787_)))
                           (_recur18546_
                            (lambda (_e18637_
                                     _vars18638_
                                     _target18639_
                                     _E18640_
                                     _k18641_)
                              (let* ((_e1864218649_ _e18637_)
                                     (_E1864418653_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _e1864218649_)))
                                     (_K1864518775_
                                      (lambda (_body18656_ _tag18657_)
                                        (let ((_$e18659_ _tag18657_))
                                          (if (eq? 'any _$e18659_)
                                              (_k18641_ _vars18638_)
                                              (if (eq? 'id _$e18659_)
                                                  (gx#core-list
                                                   'if
                                                   (gx#core-list
                                                    'identifier?
                                                    _target18639_)
                                                   (gx#core-list
                                                    'if
                                                    (gx#core-list
                                                     _identifier=?18367_
                                                     (gx#core-list
                                                      _wrap-e18369_
                                                      _body18656_)
                                                     _target18639_)
                                                    (_k18641_ _vars18638_)
                                                    _E18640_)
                                                   _E18640_)
                                                  (if (eq? 'var _$e18659_)
                                                      (_k18641_
                                                       (cons (cons _body18656_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _target18639_)
                     _vars18638_))
              (if (eq? 'cons _$e18659_)
                  (let ((_$e18662_ (gx#genident__1 'e))
                        (_$hd18663_ (gx#genident__1 'hd))
                        (_$tl18664_ (gx#genident__1 'tl)))
                    (gx#core-list
                     'if
                     (gx#core-list 'stx-pair? _target18639_)
                     (gx#core-list
                      'let-values
                      (cons (cons (cons _$e18662_ '())
                                  (cons (gx#core-list
                                         _unwrap-e18368_
                                         _target18639_)
                                        '()))
                            '())
                      (gx#core-list
                       'let-values
                       (cons (cons (cons _$hd18663_ '())
                                   (cons (gx#core-list '##car _$e18662_) '()))
                             (cons (cons (cons _$tl18664_ '())
                                         (cons (gx#core-list '##cdr _$e18662_)
                                               '()))
                                   '()))
                       (let* ((_body1866518672_ _body18656_)
                              (_E1866718676_
                               (lambda ()
                                 (error '"No clause matching"
                                        _body1866518672_)))
                              (_K1866818684_
                               (lambda (_tl18679_ _hd18680_)
                                 (_recur18546_
                                  _hd18680_
                                  _vars18638_
                                  _$hd18663_
                                  _E18640_
                                  (lambda (_vars18682_)
                                    (_recur18546_
                                     _tl18679_
                                     _vars18682_
                                     _$tl18664_
                                     _E18640_
                                     _k18641_))))))
                         (if (##pair? _body1866518672_)
                             (let ((_hd1866918687_ (##car _body1866518672_))
                                   (_tl1867018689_ (##cdr _body1866518672_)))
                               (let* ((_hd18692_ _hd1866918687_)
                                      (_tl18694_ _tl1867018689_))
                                 (_K1866818684_ _tl18694_ _hd18692_)))
                             (_E1866718676_)))))
                     _E18640_))
                  (if (eq? 'splice _$e18659_)
                      (let* ((_body1869518702_ _body18656_)
                             (_E1869718706_
                              (lambda ()
                                (error '"No clause matching"
                                       _body1869518702_)))
                             (_K1869818757_
                              (lambda (_tl18709_ _hd18710_)
                                (let* ((_rlen18712_
                                        (_splice-rlen18547_ _tl18709_))
                                       (_$target18714_
                                        (gx#genident__1 'target))
                                       (_$hd18716_ (gx#genident__1 'hd))
                                       (_$tl18718_ (gx#genident__1 'tl))
                                       (_$lp18720_ (gx#genident__1 'loop))
                                       (_$lp-e18722_ (gx#genident__1 'e))
                                       (_$lp-hd18724_ (gx#genident__1 'lp-hd))
                                       (_$lp-tl18726_ (gx#genident__1 'lp-tl))
                                       (_svars18728_
                                        (_splice-vars18548_ _hd18710_))
                                       (_lvars18730_
                                        (gx#gentemps _svars18728_))
                                       (_tlvars18732_
                                        (gx#gentemps _svars18728_))
                                       (_linit18736_
                                        (map (lambda (_var18734_)
                                               (gx#core-list 'quote '()))
                                             _lvars18730_)))
                                  (letrec ((_make-loop18739_
                                            (lambda (_vars18743_)
                                              (gx#core-list
                                               'letrec-values
                                               (cons (cons (cons _$lp18720_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '())
                   (cons (gx#core-list
                          'lambda%
                          (cons _$hd18716_ _lvars18730_)
                          (gx#core-list
                           'if
                           (gx#core-list 'stx-pair? _$hd18716_)
                           (gx#core-list
                            'let-values
                            (cons (cons (cons _$lp-e18722_ '())
                                        (cons (gx#core-list
                                               _unwrap-e18368_
                                               _$hd18716_)
                                              '()))
                                  '())
                            (gx#core-list
                             'let-values
                             (cons (cons (cons _$lp-hd18724_ '())
                                         (cons (gx#core-list
                                                '##car
                                                _$lp-e18722_)
                                               '()))
                                   (cons (cons (cons _$lp-tl18726_ '())
                                               (cons (gx#core-list
                                                      '##cdr
                                                      _$lp-e18722_)
                                                     '()))
                                         '()))
                             (_recur18546_
                              _hd18710_
                              '()
                              _$lp-hd18724_
                              _E18640_
                              (lambda (_hdvars18745_)
                                (cons _$lp18720_
                                      (cons _$lp-tl18726_
                                            (map (lambda (_svar18747_
                                                          _lvar18748_)
                                                   (gx#core-list
                                                    'cons
                                                    (assgetq _svar18747_
                                                             _hdvars18745_
                                                             _BUG18545_)
                                                    _lvar18748_))
                                                 _svars18728_
                                                 _lvars18730_)))))))
                           (gx#core-list
                            'let-values
                            (map (lambda (_lvar18750_ _tlvar18751_)
                                   (cons (cons _tlvar18751_ '())
                                         (cons (gx#core-list
                                                'reverse
                                                _lvar18750_)
                                               '())))
                                 _lvars18730_
                                 _tlvars18732_)
                            (_k18641_
                             (foldl2 (lambda (_svar18753_
                                              _tlvar18754_
                                              _r18755_)
                                       (cons (cons _svar18753_ _tlvar18754_)
                                             _r18755_))
                                     _vars18743_
                                     _svars18728_
                                     _tlvars18732_)))))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '())
                                               (cons _$lp18720_
                                                     (cons _$target18714_
                                                           _linit18736_))))))
                                    (let ((_body18741_
                                           (gx#core-list
                                            'let-values
                                            (cons (cons (cons _$target18714_
                                                              (cons _$tl18718_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                (cons (gx#core-list
                       'syntax-split-splice
                       _target18639_
                       _rlen18712_)
                      '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  '())
                                            (_recur18546_
                                             _tl18709_
                                             _vars18638_
                                             _$tl18718_
                                             _E18640_
                                             _make-loop18739_))))
                                      (gx#core-list
                                       'if
                                       (gx#core-list
                                        'stx-pair/null?
                                        _target18639_)
                                       (if (zero? _rlen18712_)
                                           _body18741_
                                           (gx#core-list
                                            'if
                                            (gx#core-list
                                             'fx>=
                                             (gx#core-list
                                              'stx-length
                                              _target18639_)
                                             _rlen18712_)
                                            _body18741_
                                            _E18640_))
                                       _E18640_)))))))
                        (if (##pair? _body1869518702_)
                            (let ((_hd1869918760_ (##car _body1869518702_))
                                  (_tl1870018762_ (##cdr _body1869518702_)))
                              (let* ((_hd18765_ _hd1869918760_)
                                     (_tl18767_ _tl1870018762_))
                                (_K1869818757_ _tl18767_ _hd18765_)))
                            (_E1869718706_)))
                      (if (eq? 'null _$e18659_)
                          (gx#core-list
                           'if
                           (gx#core-list 'stx-null? _target18639_)
                           (_k18641_ _vars18638_)
                           _E18640_)
                          (if (eq? 'vector _$e18659_)
                              (let ((_$e18769_ (gx#genident__1 'e)))
                                (gx#core-list
                                 'if
                                 (gx#core-list 'stx-vector? _target18639_)
                                 (gx#core-list
                                  'let-values
                                  (cons (cons (cons _$e18769_ '())
                                              (cons (gx#core-list
                                                     'vector->list
                                                     (gx#core-list
                                                      _unwrap-e18368_
                                                      _target18639_))
                                                    '()))
                                        '())
                                  (_recur18546_
                                   _body18656_
                                   _vars18638_
                                   _$e18769_
                                   _E18640_
                                   _k18641_))
                                 _E18640_))
                              (if (eq? 'box _$e18659_)
                                  (let ((_$e18771_ (gx#genident__1 'e)))
                                    (gx#core-list
                                     'if
                                     (gx#core-list 'stx-box? _target18639_)
                                     (gx#core-list
                                      'let-values
                                      (cons (cons (cons _$e18771_ '())
                                                  (cons (gx#core-list
                                                         'unbox
                                                         (gx#core-list
                                                          _unwrap-e18368_
                                                          _target18639_))
                                                        '()))
                                            '())
                                      (_recur18546_
                                       _body18656_
                                       _vars18638_
                                       _$e18771_
                                       _E18640_
                                       _k18641_))
                                     _E18640_))
                                  (if (eq? 'datum _$e18659_)
                                      (let ((_$e18773_ (gx#genident__1 'e)))
                                        (gx#core-list
                                         'if
                                         (gx#core-list
                                          'stx-datum?
                                          _target18639_)
                                         (gx#core-list
                                          'let-values
                                          (cons (cons (cons _$e18773_ '())
                                                      (cons (gx#core-list
                                                             'stx-e
                                                             _target18639_)
                                                            '()))
                                                '())
                                          (gx#core-list
                                           'if
                                           (gx#core-list
                                            'equal?
                                            _$e18773_
                                            _body18656_)
                                           (_k18641_ _vars18638_)
                                           _E18640_))
                                         _E18640_))
                                      (_BUG18545_ _e18637_))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                (if (##pair? _e1864218649_)
                                    (let ((_hd1864618778_
                                           (##car _e1864218649_))
                                          (_tl1864718780_
                                           (##cdr _e1864218649_)))
                                      (let* ((_tag18783_ _hd1864618778_)
                                             (_body18785_ _tl1864718780_))
                                        (_K1864518775_
                                         _body18785_
                                         _tag18783_)))
                                    (_E1864418653_)))))
                           (_splice-rlen18547_
                            (lambda (_e18599_)
                              (let _lp18601_ ((_e18603_ _e18599_)
                                              (_n18604_ '0))
                                (let* ((_e1860518612_ _e18603_)
                                       (_E1860718616_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _e1860518612_)))
                                       (_K1860818625_
                                        (lambda (_body18619_ _tag18620_)
                                          (let ((_$e18622_ _tag18620_))
                                            (if (eq? 'splice _$e18622_)
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Ambiguous pattern"
                                                 _stx18366_
                                                 _where18538_)
                                                (if (eq? 'cons _$e18622_)
                                                    (_lp18601_
                                                     (cdr _body18619_)
                                                     (fx+ _n18604_ '1))
                                                    _n18604_))))))
                                  (if (##pair? _e1860518612_)
                                      (let ((_hd1860918628_
                                             (##car _e1860518612_))
                                            (_tl1861018630_
                                             (##cdr _e1860518612_)))
                                        (let* ((_tag18633_ _hd1860918628_)
                                               (_body18635_ _tl1861018630_))
                                          (_K1860818625_
                                           _body18635_
                                           _tag18633_)))
                                      (_E1860718616_))))))
                           (_splice-vars18548_
                            (lambda (_e18555_)
                              (let _recur18557_ ((_e18559_ _e18555_)
                                                 (_vars18560_ '()))
                                (let* ((_e1856118568_ _e18559_)
                                       (_E1856318572_
                                        (lambda ()
                                          (error '"No clause matching"
                                                 _e1856118568_)))
                                       (_K1856418587_
                                        (lambda (_body18575_ _tag18576_)
                                          (let ((_$e18578_ _tag18576_))
                                            (if (eq? 'var _$e18578_)
                                                (cons _body18575_ _vars18560_)
                                                (if (or (eq? 'cons _$e18578_)
                                                        (eq? 'splice
                                                             _$e18578_))
                                                    (_recur18557_
                                                     (cdr _body18575_)
                                                     (_recur18557_
                                                      (car _body18575_)
                                                      _vars18560_))
                                                    (if (or (eq? 'vector
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _$e18578_)
                    (eq? 'box _$e18578_))
                (_recur18557_ _body18575_ _vars18560_)
                _vars18560_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (##pair? _e1856118568_)
                                      (let ((_hd1856518590_
                                             (##car _e1856118568_))
                                            (_tl1856618592_
                                             (##cdr _e1856118568_)))
                                        (let* ((_tag18595_ _hd1856518590_)
                                               (_body18597_ _tl1856618592_))
                                          (_K1856418587_
                                           _body18597_
                                           _tag18595_)))
                                      (_E1856318572_))))))
                           (_make-body18549_
                            (lambda (_vars18551_)
                              (cons _K18542_
                                    (map (lambda (_mvar18553_)
                                           (assgetq (car _mvar18553_)
                                                    _vars18551_
                                                    _BUG18545_))
                                         _mvars18541_)))))
                    (_recur18546_
                     _hd18540_
                     '()
                     _target18539_
                     _E18543_
                     _make-body18549_))))
               (_parse-clause18375_
                (lambda (_hd18444_ _ids18445_)
                  (let _recur18447_ ((_e18449_ _hd18444_)
                                     (_vars18450_ '())
                                     (_depth18451_ '0))
                    (if (gx#identifier? _e18449_)
                        (if (gx#underscore? _e18449_)
                            (values '(any) _vars18450_)
                            (if (gx#ellipsis? _e18449_)
                                (gx#raise-syntax-error
                                 '#f
                                 '"Misplaced ellipsis"
                                 _stx18366_
                                 _hd18444_)
                                (if (find (lambda (_id18453_)
                                            (gx#bound-identifier=?
                                             _e18449_
                                             _id18453_))
                                          _ids18445_)
                                    (values (cons 'id _e18449_) _vars18450_)
                                    (if (find (lambda (_var18455_)
                                                (gx#bound-identifier=?
                                                 _e18449_
                                                 (car _var18455_)))
                                              _vars18450_)
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Duplicate pattern variable"
                                         _stx18366_
                                         _e18449_)
                                        (values (cons 'var _e18449_)
                                                (cons (cons _e18449_
                                                            _depth18451_)
                                                      _vars18450_))))))
                        (if (gx#stx-pair? _e18449_)
                            (let* ((_e1845618463_ _e18449_)
                                   (_E1845818467_
                                    (lambda ()
                                      (gx#raise-syntax-error
                                       '#f
                                       '"Bad syntax"
                                       _e1845618463_)))
                                   (_E1845718528_
                                    (lambda ()
                                      (if (gx#stx-pair? _e1845618463_)
                                          (let ((_e1845918471_
                                                 (gx#syntax-e _e1845618463_)))
                                            (let ((_hd1846018474_
                                                   (##car _e1845918471_))
                                                  (_tl1846118476_
                                                   (##cdr _e1845918471_)))
                                              (let* ((_hd18479_ _hd1846018474_)
                                                     (_rest18481_
                                                      _tl1846118476_))
                                                (if '#t
                                                    (let* ((_make-pair18496_
                                                            (lambda (_tag18483_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _hd18484_
                             _tl18485_)
                      (let* ((_hd-depth18487_
                              (if (eq? _tag18483_ 'splice)
                                  (fx+ _depth18451_ '1)
                                  _depth18451_))
                             (_g19641_
                              (_recur18447_
                               _hd18484_
                               _vars18450_
                               _hd-depth18487_)))
                        (begin
                          (let ((_g19642_
                                 (if (##values? _g19641_)
                                     (##vector-length _g19641_)
                                     1)))
                            (if (not (##fx= _g19642_ 2))
                                (error "Context expects 2 values" _g19642_)))
                          (let ((_hd18489_ (##vector-ref _g19641_ 0))
                                (_vars18490_ (##vector-ref _g19641_ 1)))
                            (let ((_g19643_
                                   (_recur18447_
                                    _tl18485_
                                    _vars18490_
                                    _depth18451_)))
                              (begin
                                (let ((_g19644_
                                       (if (##values? _g19643_)
                                           (##vector-length _g19643_)
                                           1)))
                                  (if (not (##fx= _g19644_ 2))
                                      (error "Context expects 2 values"
                                             _g19644_)))
                                (let ((_tl18492_ (##vector-ref _g19643_ 0))
                                      (_vars18493_ (##vector-ref _g19643_ 1)))
                                  (let ()
                                    (values (cons _tag18483_
                                                  (cons _hd18489_ _tl18492_))
                                            _vars18493_))))))))))
                   (_e1849718504_ _rest18481_)
                   (_E1849918508_
                    (lambda () (_make-pair18496_ 'cons _hd18479_ _rest18481_)))
                   (_E1849818524_
                    (lambda ()
                      (if (gx#stx-pair? _e1849718504_)
                          (let ((_e1850018512_ (gx#syntax-e _e1849718504_)))
                            (let ((_hd1850118515_ (##car _e1850018512_))
                                  (_tl1850218517_ (##cdr _e1850018512_)))
                              (let* ((_rest-hd18520_ _hd1850118515_)
                                     (_rest-tl18522_ _tl1850218517_))
                                (if '#t
                                    (if (gx#ellipsis? _rest-hd18520_)
                                        (_make-pair18496_
                                         'splice
                                         _hd18479_
                                         _rest-tl18522_)
                                        (_make-pair18496_
                                         'cons
                                         _hd18479_
                                         _rest18481_))
                                    (_E1849918508_)))))
                          (_E1849918508_)))))
              (_E1849818524_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_E1845818467_)))))
                                          (_E1845818467_)))))
                              (_E1845718528_))
                            (if (gx#stx-null? _e18449_)
                                (values '(null) _vars18450_)
                                (if (gx#stx-vector? _e18449_)
                                    (let ((_g19645_
                                           (_recur18447_
                                            (vector->list
                                             (gx#syntax-e _e18449_))
                                            _vars18450_
                                            _depth18451_)))
                                      (begin
                                        (let ((_g19646_
                                               (if (##values? _g19645_)
                                                   (##vector-length _g19645_)
                                                   1)))
                                          (if (not (##fx= _g19646_ 2))
                                              (error "Context expects 2 values"
                                                     _g19646_)))
                                        (let ((_e18532_
                                               (##vector-ref _g19645_ 0))
                                              (_vars18533_
                                               (##vector-ref _g19645_ 1)))
                                          (values (cons 'vector _e18532_)
                                                  _vars18533_))))
                                    (if (gx#stx-box? _e18449_)
                                        (let ((_g19647_
                                               (_recur18447_
                                                (unbox (gx#syntax-e _e18449_))
                                                _vars18450_
                                                _depth18451_)))
                                          (begin
                                            (let ((_g19648_
                                                   (if (##values? _g19647_)
                                                       (##vector-length
                                                        _g19647_)
                                                       1)))
                                              (if (not (##fx= _g19648_ 2))
                                                  (error "Context expects 2 values"
                                                         _g19648_)))
                                            (let ((_e18535_
                                                   (##vector-ref _g19647_ 0))
                                                  (_vars18536_
                                                   (##vector-ref _g19647_ 1)))
                                              (values (cons 'box _e18535_)
                                                      _vars18536_))))
                                        (if (gx#stx-datum? _e18449_)
                                            (values (cons 'datum
                                                          (gx#stx-e _e18449_))
                                                    _vars18450_)
                                            (gx#raise-syntax-error
                                             '#f
                                             '"Bad pattern"
                                             _stx18366_
                                             _e18449_)))))))))))
        (let* ((_e1837618389_ _stx18366_)
               (_E1837818393_
                (lambda ()
                  (gx#raise-syntax-error '#f '"Bad syntax" _e1837618389_)))
               (_E1837718440_
                (lambda ()
                  (if (gx#stx-pair? _e1837618389_)
                      (let ((_e1837918397_ (gx#syntax-e _e1837618389_)))
                        (let ((_hd1838018400_ (##car _e1837918397_))
                              (_tl1838118402_ (##cdr _e1837918397_)))
                          (if (gx#stx-pair? _tl1838118402_)
                              (let ((_e1838218405_
                                     (gx#syntax-e _tl1838118402_)))
                                (let ((_hd1838318408_ (##car _e1838218405_))
                                      (_tl1838418410_ (##cdr _e1838218405_)))
                                  (let ((_expr18413_ _hd1838318408_))
                                    (if (gx#stx-pair? _tl1838418410_)
                                        (let ((_e1838518415_
                                               (gx#syntax-e _tl1838418410_)))
                                          (let ((_hd1838618418_
                                                 (##car _e1838518415_))
                                                (_tl1838718420_
                                                 (##cdr _e1838518415_)))
                                            (let* ((_ids18423_ _hd1838618418_)
                                                   (_clauses18425_
                                                    _tl1838718420_))
                                              (if '#t
                                                  (if (not (gx#identifier-list?
                                                            _ids18423_))
                                                      (gx#raise-syntax-error
                                                       '#f
                                                       '"Bad template identifier list"
                                                       _stx18366_
                                                       _ids18423_)
                                                      (if (not (gx#stx-list?
                                                                _clauses18425_))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax"
                                                           _stx18366_)
                                                          (let* ((_ids18427_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (gx#syntax->list _ids18423_))
                         (_clauses18429_ (gx#syntax->list _clauses18425_))
                         (_clause-ids18431_ (gx#gentemps _clauses18429_))
                         (_E18433_ (gx#genident__0))
                         (_target18435_ (gx#genident__0))
                         (_first18437_
                          (if (null? _clauses18429_)
                              _E18433_
                              (car _clause-ids18431_))))
                    (gx#stx-wrap-source
                     (gx#core-list
                      'begin-annotation
                      '@syntax-case
                      (gx#stx-wrap-source
                       (gx#core-list
                        'let-values
                        (cons (cons (cons _E18433_ '())
                                    (cons (gx#core-list
                                           'lambda%
                                           (cons _target18435_ '())
                                           (gx#core-list
                                            'raise-syntax-error
                                            '#f
                                            '"Bad syntax"
                                            _target18435_))
                                          '()))
                              '())
                        (_generate-body18372_
                         (_generate-bindings18371_
                          _target18435_
                          _ids18427_
                          _clauses18429_
                          _clause-ids18431_
                          _E18433_)
                         (cons _first18437_ (cons _expr18413_ '()))))
                       (gx#stx-source _stx18366_)))
                     (gx#stx-source _stx18366_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_E1837818393_)))))
                                        (_E1837818393_)))))
                              (_E1837818393_))))
                      (_E1837818393_)))))
          (_E1837718440_)))))
  (define gx#macro-expand-syntax-case__0
    (lambda (_stx19076_)
      (let* ((_identifier=?19078_ 'free-identifier=?)
             (_unwrap-e19080_ 'syntax-e)
             (_wrap-e19082_ 'quote-syntax))
        (gx#macro-expand-syntax-case__%
         _stx19076_
         _identifier=?19078_
         _unwrap-e19080_
         _wrap-e19082_))))
  (define gx#macro-expand-syntax-case__1
    (lambda (_stx19084_ _identifier=?19085_)
      (let* ((_unwrap-e19087_ 'syntax-e) (_wrap-e19089_ 'quote-syntax))
        (gx#macro-expand-syntax-case__%
         _stx19084_
         _identifier=?19085_
         _unwrap-e19087_
         _wrap-e19089_))))
  (define gx#macro-expand-syntax-case__2
    (lambda (_stx19091_ _identifier=?19092_ _unwrap-e19093_)
      (let ((_wrap-e19095_ 'quote-syntax))
        (gx#macro-expand-syntax-case__%
         _stx19091_
         _identifier=?19092_
         _unwrap-e19093_
         _wrap-e19095_))))
  (define gx#macro-expand-syntax-case
    (lambda _g19650_
      (let ((_g19649_ (length _g19650_)))
        (cond ((##fx= _g19649_ 1)
               (apply gx#macro-expand-syntax-case__0 _g19650_))
              ((##fx= _g19649_ 2)
               (apply gx#macro-expand-syntax-case__1 _g19650_))
              ((##fx= _g19649_ 3)
               (apply gx#macro-expand-syntax-case__2 _g19650_))
              ((##fx= _g19649_ 4)
               (apply gx#macro-expand-syntax-case__% _g19650_))
              (else
               (##raise-wrong-number-of-arguments-exception
                gx#macro-expand-syntax-case
                _g19650_))))))
  (define gx#syntax-local-pattern?
    (lambda (_stx18363_)
      (if (gx#identifier? _stx18363_)
          (##structure-instance-of?
           (gx#syntax-local-e__% _stx18363_ false)
           'gx#syntax-pattern::t)
          '#f)))
  (define gx#syntax-check-splice-targets
    (lambda (_hd18321_ . _rest18322_)
      (let ((_len18324_ (length _hd18321_)))
        (let _lp18326_ ((_rest18328_ _rest18322_))
          (let* ((_rest1832918337_ _rest18328_)
                 (_else1833118345_ (lambda () '#!void))
                 (_K1833318351_
                  (lambda (_rest18348_ _hd18349_)
                    (if (fx= _len18324_ (length _hd18349_))
                        (_lp18326_ _rest18348_)
                        (gx#raise-syntax-error
                         '#f
                         '"Splice length mismatch"
                         _hd18349_)))))
            (if (##pair? _rest1832918337_)
                (let ((_hd1833418354_ (##car _rest1832918337_))
                      (_tl1833518356_ (##cdr _rest1832918337_)))
                  (let* ((_hd18359_ _hd1833418354_)
                         (_rest18361_ _tl1833518356_))
                    (_K1833318351_ _rest18361_ _hd18359_)))
                '#!void))))))
  (define gx#syntax-split-splice
    (lambda (_stx18279_ _n18280_)
      (let _lp18282_ ((_rest18284_ _stx18279_) (_r18285_ '()))
        (if (gx#stx-pair? _rest18284_)
            (let* ((_g1828618293_ (gx#syntax-e _rest18284_))
                   (_E1828818297_
                    (lambda () (error '"No clause matching" _g1828618293_)))
                   (_K1828918303_
                    (lambda (_rest18300_ _hd18301_)
                      (_lp18282_ _rest18300_ (cons _hd18301_ _r18285_)))))
              (if (##pair? _g1828618293_)
                  (let ((_hd1829018306_ (##car _g1828618293_))
                        (_tl1829118308_ (##cdr _g1828618293_)))
                    (let* ((_hd18311_ _hd1829018306_)
                           (_rest18313_ _tl1829118308_))
                      (_K1828918303_ _rest18313_ _hd18311_)))
                  (_E1828818297_)))
            (let _lp18315_ ((_n18317_ _n18280_)
                            (_l18318_ _r18285_)
                            (_r18319_ _rest18284_))
              (if (null? _l18318_)
                  (values _l18318_ _r18319_)
                  (if (fxpositive? _n18317_)
                      (_lp18315_
                       (fx- _n18317_ '1)
                       (cdr _l18318_)
                       (cons (car _l18318_) _r18319_))
                      (values (reverse _l18318_) _r18319_)))))))))
